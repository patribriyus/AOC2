----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:18 05/15/2014 
-- Design Name: 
-- Module Name:    UC_slave - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: la UC incluye un contador de 2 bits para llevar la cuenta de las transferencias de bloque y una m�quina de estados
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UC_MC is
    Port ( 	clk : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			RE : in  STD_LOGIC; --RE y WE son las ordenes del MIPs
			WE : in  STD_LOGIC;
			hit : in  STD_LOGIC; --se activa si hay acierto
			bus_TRDY : in  STD_LOGIC; --indica que la memoria no puede realizar la operaci�n solicitada en este ciclo
			Bus_DevSel: in  STD_LOGIC; --indica que la memoria ha reconocido que la direcci�n est� dentro de su rango
			MC_RE : out  STD_LOGIC; --RE y WE de la MC
            MC_WE : out  STD_LOGIC;
            MC_bus_Rd_Wr : out  STD_LOGIC; --1 para escritura en Memoria y 0 para lectura
            MC_tags_WE : out  STD_LOGIC; -- para escribir la etiqueta en la memoria de etiquetas
            palabra : out  STD_LOGIC_VECTOR (1 downto 0);--indica la palabra actual dentro de una transferencia de bloque (1�, 2�...)
            mux_origen: out STD_LOGIC; -- Se utiliza para elegir si el origen de la direcci�n y el dato es el Mips (cuando vale 0) o la UC y el bus (cuando vale 1)
            ready : out  STD_LOGIC; -- indica si podemos procesar la orden actual del MIPS en este ciclo. En caso contrario habr� que detener el MIPs
            block_addr : out  STD_LOGIC; -- indica si la direcci�n a enviar es la de bloque (rm) o la de palabra (w)
			MC_send_addr : out  STD_LOGIC; --ordena que se env�en la direcci�n y las se�ales de control al bus
            MC_send_data : out  STD_LOGIC; --ordena que se env�en los datos
            Frame : out  STD_LOGIC; --indica que la operaci�n no ha terminado
			Replace_block	: out  STD_LOGIC; -- indica que se ha reemplazado un bloque
			inc_rm : out STD_LOGIC; -- indica que ha habido un fallo de lectura
			inc_wm : out STD_LOGIC; -- indica que ha habido un fallo de escritura
			inc_wh : out STD_LOGIC -- indica que ha habido un acierto de escritura
           );
end UC_MC;

architecture Behavioral of UC_MC is


component counter_2bits is
		    Port ( clk : in  STD_LOGIC;
		           reset : in  STD_LOGIC;
		           count_enable : in  STD_LOGIC;
		           count : out  STD_LOGIC_VECTOR (1 downto 0)
					  );
end component;		           
-------------------------------------------------------------------------------------------------
-- poner en el siguiente type el nombre de vuestros estados
type state_type is (Inicio, read_wr, r_w_transf, r_w_lastword); 
signal state, next_state : state_type; 
signal last_word: STD_LOGIC; --se activa cuando se est� pidiendo la �ltima palabra de un bloque
signal count_enable: STD_LOGIC; -- se activa si se ha recibido una palabra de un bloque para que se incremente el contador de palabras
signal palabra_UC : STD_LOGIC_VECTOR (1 downto 0);
signal w_reset,new_reset: STD_LOGIC; --se activa cuando se ha escrito la palabra en MP
begin
 
new_reset <= reset or w_reset;
--el contador nos dice cuantas palabras hemos recibido. Se usa para saber cuando se termina la transferencia del bloque y para direccionar la palabra en la que se escribe el dato leido del bus en la MC
word_counter: counter_2bits port map (clk, new_reset, count_enable, palabra_UC); --indica la palabra actual dentro de una transferencia de bloque (1�, 2�...)

last_word <= '1' when palabra_UC="11" else '0';--se activa cuando estamos pidiendo la �ltima palabra

palabra <= palabra_UC;

   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= Inicio;
         else
            state <= next_state;
         end if;        
      end if;
   end process;
 

   -- Poned aqu� el c�digo de vuestra m�quina de estados
   OUTPUT_DECODE: process (state, hit, last_word, bus_TRDY, RE, WE, Bus_DevSel)
   begin
		-- Se comienza dando los valores por defecto, si no se asigna otro valor en un estado valdr�n lo que se asigna aqu�
		-- As� no hay que asignar valor a todas las se�ales en cada caso
		MC_WE <= '0';
		MC_bus_Rd_Wr <= '0';
		MC_tags_WE <= '0';
        MC_RE <= RE;
        ready <= '0';
        mux_origen <= '0';
        MC_send_addr <= '0';
        MC_send_data <= '0';
        next_state <= state;  
		count_enable <= '0';
		Frame <= '0';
		Replace_block <= '0';	
		block_addr <= '0';
		inc_rm <= '0';
		inc_wm <= '0';
		inc_wh <= '0';
			
        -- Estado Inicio                
        if (state = Inicio) then 
			-- si no piden nada no hacemos nada
			if (RE = '0' and WE= '0') then
				next_state <= Inicio;
				ready <= '1';
				
			-- Acierto en lectura
			elsif (RE = '1' and hit = '1') then
				MC_RE <= '1'; ready <= '1';
				next_state <= Inicio;
				
			-- Fallo en lectura
			elsif (RE= '1' and hit= '0') then
				Frame <= '1';
				mux_origen <= '1';
				MC_send_addr <= '1';
				block_addr <= '1';
				inc_rm <= '1';
				next_state <= read_wr;
			
			-- Acierto en escritura
			elsif (WE= '1' and hit= '1') then
				Frame <= '1';
				inc_wh  <= '1';
				MC_WE <= '1';
				MC_send_addr <= '1';
				MC_bus_Rd_Wr <= '1';
				next_state <= read_wr;
				
			-- Fallo en escritura
			elsif (WE= '1' and hit= '0') then
				Frame <= '1';
				inc_wm <= '1';
				MC_send_addr <= '1';
				MC_bus_Rd_Wr <= '1';
				next_state <= read_wr;
			end if;
		
		-- **************read_wr ESTADO**************
		elsif (state = read_wr) then
			-- Fallo en lectura
			if (RE= '1' and hit= '0') then
				Frame <= '1';
				mux_origen <= '1';
				block_addr <= '1';
				if (Bus_DevSel = '0') then
					MC_send_addr <= '1';
					next_state <= read_wr;
				else
					next_state <= r_w_transf;
				end if;
			
			-- Acierto en escritura
			elsif (WE= '1' and hit= '1') then
				Frame <= '1';
				MC_WE <= '1';
				MC_bus_Rd_Wr <= '1';
				if (Bus_DevSel = '0') then
					MC_send_addr <= '1';
					next_state <= read_wr;
				else
					next_state <= r_w_transf;
				end if;
			
			-- Fallo en escritura
			elsif (WE= '1' and hit= '0') then
				Frame <= '1';
				MC_bus_Rd_Wr <= '1';
				if (Bus_DevSel = '0') then
					MC_send_addr <= '1';
					next_state <= read_wr;
				else
					next_state <= r_w_transf;
				end if;
			end if;
					
		-- **************r_w_transf ESTADO**************	
		elsif (state = r_w_transf) then
			-- Fallo en lectura
			if (RE= '1' and hit= '0') then
				Frame <= '1';
				mux_origen <= '1';
				block_addr <= '1';
				if (bus_TRDY = '0') then
					next_state <= r_w_transf;
				elsif (bus_TRDY = '1' and last_word = '0') then
					MC_WE <= '1';
					count_enable <= '1';
					next_state <= r_w_transf;
				else
					MC_WE <= '1';
					count_enable <= '1';
					next_state <= r_w_lastword;
				end if;
			
			-- Acierto en escritura
			elsif (WE= '1' and hit= '1') then
				Frame <= '1';
				MC_WE <= '1';
				MC_bus_Rd_Wr <= '1';
				if (bus_TRDY = '0') then
					next_state <= r_w_transf;
				elsif (bus_TRDY = '1') then
					MC_send_data <= '1';
					count_enable <= '1';
					w_reset <= '1';
					next_state <= r_w_lastword;
				end if;
			
			-- Fallo en escritura
			elsif (WE= '1' and hit= '0') then
				Frame <= '1';
				MC_bus_Rd_Wr <= '1';
				if (bus_TRDY = '0') then
					next_state <= r_w_transf;
				elsif (bus_TRDY = '1') then
					MC_send_data <= '1';
					count_enable <= '1';
					w_reset <= '1';
					next_state <= r_w_lastword;
				end if;
			end if;
		
		-- **************ULTIMO ESTADO**************
		elsif (state = r_w_lastword) then
			-- Fallo en lectura
			if (RE= '1' and hit= '0') then
				ready <= '1';
				MC_tags_WE <= '1';
				Replace_block <= '1';
				next_state <= Inicio;
			
			-- Acierto en escritura
			elsif (WE= '1' and hit= '1') then
				ready <= '1';
				w_reset <= '0';
				next_state <= Inicio;
			
			-- Fallo en escritura
			elsif (WE= '1' and hit= '0') then
				ready <= '1';
				w_reset <= '0';
				next_state <= Inicio;
			end if;
				
		end if;
   end process;
 
   
end Behavioral;

