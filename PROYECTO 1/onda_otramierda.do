onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/uut/load_PC
add wave -noupdate /testbench/uut/saltar
add wave -noupdate -expand /testbench/uut/PCSrc
add wave -noupdate /testbench/uut/PC_out
add wave -noupdate /testbench/uut/IR_ID
add wave -noupdate /testbench/uut/Register_bank/reg_file
add wave -noupdate /testbench/uut/ALU_out_EX
add wave -noupdate /testbench/uut/Mem_D/RAM
add wave -noupdate -expand -group BR -color Salmon -itemcolor Salmon /testbench/uut/Register_bank/RA
add wave -noupdate -expand -group BR -color Salmon -itemcolor Salmon /testbench/uut/Register_bank/RB
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RegWrite
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusA
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusB
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/reg_file
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/DIn0
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/DIn1
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/DIn2
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/DIn3
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/ctrl
add wave -noupdate -expand -group Mux_A /testbench/uut/Mux_A/Dout
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/DIn0
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/DIn1
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/DIn2
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/DIn3
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/ctrl
add wave -noupdate -expand -group Mux_B /testbench/uut/Mux_B/Dout
add wave -noupdate /testbench/uut/RegWrite_MEM
add wave -noupdate /testbench/uut/RW_MEM
add wave -noupdate /testbench/uut/Reg_Rt_EX
add wave -noupdate -expand -group ALU -color Salmon -itemcolor Salmon /testbench/uut/ALU_MIPs/DA
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/DB
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/ALUctrl
add wave -noupdate -expand -group ALU /testbench/uut/ALU_MIPs/Dout
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/ADDR
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/Din
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/WE
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/RE
add wave -noupdate -expand -group MEM_D -color Magenta /testbench/uut/Mem_D/Dout
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/RAM
add wave -noupdate -expand -group MEM_D /testbench/uut/Mem_D/dir_7
add wave -noupdate /testbench/uut/avanzar_ID
add wave -noupdate /testbench/uut/riesgo_beq
add wave -noupdate /testbench/uut/riesgo_lw_uso
add wave -noupdate -group Mux_busW /testbench/uut/mux_busW/DIn0
add wave -noupdate -group Mux_busW /testbench/uut/mux_busW/DIn1
add wave -noupdate -group Mux_busW /testbench/uut/mux_busW/ctrl
add wave -noupdate -group Mux_busW /testbench/uut/mux_busW/Dout
add wave -noupdate -group Mux_ALU_src /testbench/uut/muxALU_src/DIn0
add wave -noupdate -group Mux_ALU_src /testbench/uut/muxALU_src/DIn1
add wave -noupdate -group Mux_ALU_src /testbench/uut/muxALU_src/ctrl
add wave -noupdate -group Mux_ALU_src /testbench/uut/muxALU_src/Dout
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn0
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn1
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn2
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn3
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/ctrl
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/Dout
add wave -noupdate -group adder_dir /testbench/uut/adder_dir/Din0
add wave -noupdate -group adder_dir /testbench/uut/adder_dir/Din1
add wave -noupdate -group adder_dir /testbench/uut/adder_dir/Dout
add wave -noupdate -group sign_ext /testbench/uut/sign_ext/inm
add wave -noupdate -group sign_ext /testbench/uut/sign_ext/inm_ext
add wave -noupdate -group two_bits_shift /testbench/uut/two_bits_shift/Din
add wave -noupdate -group two_bits_shift /testbench/uut/two_bits_shift/Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {67 ns} 0}
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
WaveRestoreZoom {21 ns} {123 ns}
