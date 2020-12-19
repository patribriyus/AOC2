onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/uut/PC_out
add wave -noupdate -expand -group BEQ/BNE /testbench/uut/RegWrite_ID
add wave -noupdate -expand -group BEQ/BNE /testbench/uut/MemRead_EX
add wave -noupdate -expand -group BEQ/BNE /testbench/uut/IR_in
add wave -noupdate -expand -group BEQ/BNE /testbench/uut/IR_ID
add wave -noupdate -expand -group BR -color Salmon -itemcolor Salmon /testbench/uut/Register_bank/RA
add wave -noupdate -expand -group BR -color Salmon -itemcolor Salmon /testbench/uut/Register_bank/RB
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RegWrite
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusA
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusB
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/reg_file
add wave -noupdate /testbench/uut/RegWrite_MEM
add wave -noupdate /testbench/uut/RW_MEM
add wave -noupdate -expand -group ALU -color Salmon -itemcolor Salmon /testbench/uut/ALU_MIPs/DA
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/DB
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/ALUctrl
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/Dout
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/RAM
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/ADDR
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/Din
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/WE
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/RE
add wave -noupdate -expand -group MEM_D -color Magenta /testbench/uut/Mem_D/Dout
add wave -noupdate /testbench/uut/saltar
add wave -noupdate /testbench/uut/avanzar_ID
add wave -noupdate /testbench/uut/riesgo_beq
add wave -noupdate /testbench/uut/riesgo_lw_uso
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {205 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 254
configure wave -valuecolwidth 84
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {105 ns}
