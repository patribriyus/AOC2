onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/uut/clk
add wave -noupdate -expand -group CONTADORES -color Gold -itemcolor gold -radix decimal -radixshowbase 0 /testbench/uut/ciclos
add wave -noupdate -expand -group CONTADORES -color Gold -itemcolor gold -radix decimal -radixshowbase 0 /testbench/uut/paradas_control
add wave -noupdate -expand -group CONTADORES -color Gold -itemcolor gold -radix decimal -radixshowbase 0 /testbench/uut/paradas_datos
add wave -noupdate -expand -group CONTADORES -color Gold -itemcolor gold -radix decimal -radixshowbase 0 /testbench/uut/paradas_memoria
add wave -noupdate -color Yellow -itemcolor Yellow -radix decimal -radixshowbase 0 /testbench/uut/Mem_D/MC/rm
add wave -noupdate -color Yellow -itemcolor Yellow -radix decimal -radixshowbase 0 /testbench/uut/Mem_D/MC/wm
add wave -noupdate -color Yellow -itemcolor Yellow -radix decimal -radixshowbase 0 /testbench/uut/Mem_D/MC/wh
add wave -noupdate /testbench/uut/PC_in
add wave -noupdate -color Violet -itemcolor Violet -radix hexadecimal /testbench/uut/PC_out
add wave -noupdate -color Violet -itemcolor Violet /testbench/uut/IR_in
add wave -noupdate -expand -group IR /testbench/uut/DirSalto_ID
add wave -noupdate -expand -group IR -color gold -itemcolor gold /testbench/uut/IR_ID
add wave -noupdate -expand -group IR /testbench/uut/PC4_ID
add wave -noupdate -group BTB /testbench/uut/b_predictor/clk
add wave -noupdate -group BTB /testbench/uut/b_predictor/reset
add wave -noupdate -group BTB /testbench/uut/b_predictor/PC4
add wave -noupdate -group BTB /testbench/uut/b_predictor/branch_address_out
add wave -noupdate -group BTB /testbench/uut/b_predictor/prediction_out
add wave -noupdate -group BTB /testbench/uut/b_predictor/PC4_ID
add wave -noupdate -group BTB /testbench/uut/b_predictor/prediction_in
add wave -noupdate -group BTB /testbench/uut/b_predictor/branch_address_in
add wave -noupdate -group BTB /testbench/uut/b_predictor/update
add wave -noupdate -group BTB /testbench/uut/b_predictor/valid
add wave -noupdate -group BTB /testbench/uut/b_predictor/prediction
add wave -noupdate -group BTB /testbench/uut/b_predictor/tag
add wave -noupdate -group BTB /testbench/uut/b_predictor/address
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn0
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn1
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn2
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/DIn3
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/ctrl
add wave -noupdate -group Mux_PC /testbench/uut/muxPC/Dout
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/CLK
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/ADDR
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/Din
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/WE
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/RE
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/Dout
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/RAM
add wave -noupdate -group MEM_I /testbench/uut/Mem_I/dir_7
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/IR_in
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/PC4_in
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/address_predicted
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/prediction
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/clk
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/reset
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/load
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/IR_ID
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/PC4_ID
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/address_predicted_ID
add wave -noupdate -group Banco_IFID /testbench/uut/Banco_IF_ID/prediction_ID
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/clk
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/reset
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RA
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RB
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusW
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/RegWrite
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusA
add wave -noupdate -expand -group BR /testbench/uut/Register_bank/BusB
add wave -noupdate -expand -group BR -color coral -itemcolor coral -radix decimal -childformat {{/testbench/uut/Register_bank/reg_file(0) -radix decimal} {/testbench/uut/Register_bank/reg_file(1) -radix decimal} {/testbench/uut/Register_bank/reg_file(2) -radix decimal} {/testbench/uut/Register_bank/reg_file(3) -radix decimal} {/testbench/uut/Register_bank/reg_file(4) -radix decimal} {/testbench/uut/Register_bank/reg_file(5) -radix decimal} {/testbench/uut/Register_bank/reg_file(6) -radix decimal} {/testbench/uut/Register_bank/reg_file(7) -radix decimal} {/testbench/uut/Register_bank/reg_file(8) -radix decimal} {/testbench/uut/Register_bank/reg_file(9) -radix decimal} {/testbench/uut/Register_bank/reg_file(10) -radix decimal} {/testbench/uut/Register_bank/reg_file(11) -radix decimal} {/testbench/uut/Register_bank/reg_file(12) -radix decimal} {/testbench/uut/Register_bank/reg_file(13) -radix decimal} {/testbench/uut/Register_bank/reg_file(14) -radix decimal} {/testbench/uut/Register_bank/reg_file(15) -radix decimal} {/testbench/uut/Register_bank/reg_file(16) -radix decimal} {/testbench/uut/Register_bank/reg_file(17) -radix decimal} {/testbench/uut/Register_bank/reg_file(18) -radix decimal} {/testbench/uut/Register_bank/reg_file(19) -radix decimal} {/testbench/uut/Register_bank/reg_file(20) -radix decimal} {/testbench/uut/Register_bank/reg_file(21) -radix decimal} {/testbench/uut/Register_bank/reg_file(22) -radix decimal} {/testbench/uut/Register_bank/reg_file(23) -radix decimal} {/testbench/uut/Register_bank/reg_file(24) -radix decimal} {/testbench/uut/Register_bank/reg_file(25) -radix decimal} {/testbench/uut/Register_bank/reg_file(26) -radix decimal} {/testbench/uut/Register_bank/reg_file(27) -radix decimal} {/testbench/uut/Register_bank/reg_file(28) -radix decimal} {/testbench/uut/Register_bank/reg_file(29) -radix decimal} {/testbench/uut/Register_bank/reg_file(30) -radix decimal} {/testbench/uut/Register_bank/reg_file(31) -radix decimal}} -radixshowbase 0 -subitemconfig {/testbench/uut/Register_bank/reg_file(0) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(1) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(2) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(3) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(4) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(5) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(6) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(7) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(8) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(9) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(10) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(11) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(12) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(13) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(14) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(15) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(16) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(17) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(18) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(19) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(20) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(21) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(22) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(23) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(24) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(25) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(26) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(27) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(28) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(29) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(30) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0} /testbench/uut/Register_bank/reg_file(31) {-color coral -height 15 -itemcolor coral -radix decimal -radixshowbase 0}} /testbench/uut/Register_bank/reg_file
add wave -noupdate -group UC /testbench/uut/UC_seg/IR_op_code
add wave -noupdate -group UC /testbench/uut/UC_seg/Branch
add wave -noupdate -group UC /testbench/uut/UC_seg/RegDst
add wave -noupdate -group UC /testbench/uut/UC_seg/ALUSrc
add wave -noupdate -group UC /testbench/uut/UC_seg/FP_add
add wave -noupdate -group UC /testbench/uut/UC_seg/MemWrite
add wave -noupdate -group UC /testbench/uut/UC_seg/MemRead
add wave -noupdate -group UC /testbench/uut/UC_seg/MemtoReg
add wave -noupdate -group UC /testbench/uut/UC_seg/RegWrite
add wave -noupdate -group UC /testbench/uut/UC_seg/Update_Rs
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/clk
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/reset
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/load
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/busA
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/busB
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/busA_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/busB_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/RegDst_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/ALUSrc_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemWrite_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemRead_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemtoReg_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/RegWrite_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/inm_ext
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/inm_ext_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/RegDst_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/ALUSrc_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemWrite_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemRead_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/MemtoReg_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/RegWrite_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/ALUctrl_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/ALUctrl_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rs_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rs_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rt_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rd_ID
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rt_EX
add wave -noupdate -group Banco_IDEX /testbench/uut/Banco_ID_EX/Reg_Rd_EX
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Reg_Rs_EX
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Reg_Rt_EX
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/RegWrite_MEM
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/RW_MEM
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/RegWrite_WB
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/RW_WB
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/MUX_ctrl_A
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/MUX_ctrl_B
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Corto_A_Mem
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Corto_B_Mem
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Corto_A_WB
add wave -noupdate -group UA /testbench/uut/Unidad_Ant/Corto_B_WB
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/DIn0
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/DIn1
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/DIn2
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/DIn3
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/ctrl
add wave -noupdate -group Mux_A /testbench/uut/Mux_A/Dout
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/DIn0
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/DIn1
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/DIn2
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/DIn3
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/ctrl
add wave -noupdate -group Mux_B /testbench/uut/Mux_B/Dout
add wave -noupdate -group Mux_ALUSrc /testbench/uut/muxALU_src/DIn0
add wave -noupdate -group Mux_ALUSrc /testbench/uut/muxALU_src/DIn1
add wave -noupdate -group Mux_ALUSrc /testbench/uut/muxALU_src/ctrl
add wave -noupdate -group Mux_ALUSrc /testbench/uut/muxALU_src/Dout
add wave -noupdate -group Mux_dst /testbench/uut/mux_dst/DIn0
add wave -noupdate -group Mux_dst /testbench/uut/mux_dst/DIn1
add wave -noupdate -group Mux_dst /testbench/uut/mux_dst/ctrl
add wave -noupdate -group Mux_dst /testbench/uut/mux_dst/Dout
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/ALU_out_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/ALU_out_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/clk
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/reset
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/load
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemWrite_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemRead_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemtoReg_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/RegWrite_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemWrite_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemRead_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/MemtoReg_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/RegWrite_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/BusB_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/BusB_MEM
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/RW_EX
add wave -noupdate -group Banco_EXMEM /testbench/uut/Banco_EX_MEM/RW_MEM
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/CLK
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/reset
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/ADDR
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/Din
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/RE
add wave -noupdate -expand -group MC -color gold -itemcolor gold /testbench/uut/Mem_D/MC/WE
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/ready
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/Dout
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Bus_Din
add wave -noupdate -expand -group MC -color {Orange Red} /testbench/uut/Mem_D/MC/Bus_TRDY
add wave -noupdate -expand -group MC -color {Orange Red} /testbench/uut/Mem_D/MC/Bus_DevSel
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_send_addr
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_send_data
add wave -noupdate -expand -group MC -color {Orange Red} /testbench/uut/Mem_D/MC/MC_frame
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Bus_ADDR
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Bus_data_out
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_bus_Rd_Wr
add wave -noupdate -expand -group MC -color Salmon -itemcolor Salmon -expand -subitemconfig {/testbench/uut/Mem_D/MC/MC_data(0) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(1) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(2) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(3) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(4) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(5) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(6) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(7) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(8) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(9) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(10) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(11) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(12) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(13) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(14) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_data(15) {-color Salmon -height 15 -itemcolor Salmon}} /testbench/uut/Mem_D/MC/MC_data
add wave -noupdate -expand -group MC -color Salmon -itemcolor Salmon -expand -subitemconfig {/testbench/uut/Mem_D/MC/MC_Tags(0) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_Tags(1) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_Tags(2) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/MC/MC_Tags(3) {-color Salmon -height 15 -itemcolor Salmon}} /testbench/uut/Mem_D/MC/MC_Tags
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/valid_bits_in
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/valid_bits_out
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/mask
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/dir_cjto
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/dir_palabra
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/internal_MC_bus_Rd_Wr
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/mux_origen
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_WE
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_RE
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Tags_WE
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/hit
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/valid_bit
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/replace_block
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/block_addr
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/palabra_UC
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/dir_MC
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Din
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Dout
add wave -noupdate -expand -group MC /testbench/uut/Mem_D/MC/MC_Tags_Dout
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/CLK
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/reset
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/ADDR
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/Din
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/RE
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/WE
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/ready
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/Dout
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Bus_Din
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/Bus_TRDY
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/Bus_DevSel
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_send_addr
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_send_data
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_frame
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Bus_ADDR
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Bus_data_out
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_bus_Rd_Wr
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_data
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Tags
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/valid_bits_in
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/valid_bits_out
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/mask
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/dir_cjto
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/dir_palabra
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/internal_MC_bus_Rd_Wr
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/mux_origen
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_WE
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_RE
add wave -noupdate -expand -group MC_UC -color {Orange Red} -itemcolor {Orange Red} /testbench/uut/Mem_D/MC/MC_Tags_WE
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/hit
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/valid_bit
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/replace_block
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/block_addr
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/palabra_UC
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/dir_MC
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Din
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Dout
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/MC_Tags_Dout
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/inc_rm
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/inc_wm
add wave -noupdate -expand -group MC_UC /testbench/uut/Mem_D/MC/inc_wh
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/CLK
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/enable
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/ADDR
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/Din
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/WE
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/RE
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/Dout
add wave -noupdate -expand -group MD -color Salmon -itemcolor Salmon -expand -subitemconfig {/testbench/uut/Mem_D/controlador_MD/MD/RAM(0) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(1) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(2) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(3) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(4) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(5) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(6) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(7) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(8) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(9) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(10) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(11) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(12) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(13) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(14) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(15) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(16) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(17) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(18) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(19) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(20) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(21) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(22) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(23) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(24) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(25) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(26) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(27) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(28) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(29) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(30) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(31) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(32) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(33) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(34) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(35) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(36) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(37) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(38) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(39) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(40) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(41) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(42) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(43) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(44) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(45) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(46) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(47) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(48) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(49) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(50) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(51) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(52) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(53) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(54) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(55) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(56) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(57) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(58) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(59) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(60) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(61) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(62) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(63) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(64) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(65) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(66) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(67) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(68) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(69) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(70) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(71) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(72) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(73) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(74) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(75) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(76) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(77) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(78) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(79) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(80) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(81) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(82) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(83) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(84) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(85) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(86) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(87) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(88) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(89) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(90) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(91) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(92) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(93) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(94) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(95) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(96) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(97) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(98) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(99) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(100) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(101) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(102) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(103) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(104) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(105) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(106) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(107) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(108) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(109) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(110) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(111) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(112) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(113) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(114) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(115) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(116) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(117) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(118) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(119) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(120) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(121) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(122) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(123) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(124) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(125) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(126) {-color Salmon -height 15 -itemcolor Salmon} /testbench/uut/Mem_D/controlador_MD/MD/RAM(127) {-color Salmon -height 15 -itemcolor Salmon}} /testbench/uut/Mem_D/controlador_MD/MD/RAM
add wave -noupdate -expand -group MD /testbench/uut/Mem_D/controlador_MD/MD/dir_7
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/CLK
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/reset
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/Bus_Frame
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/bus_Rd_Wr
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/Bus_AD
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_Bus_DEVsel
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_Bus_TRDY
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_send_data
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_Dout
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/BUS_RE
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/BUS_WE
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MEM_WE
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/contar_palabras
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/resetear_cuenta
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_enable
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/memoria_preparada
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/contar_retardos
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/direccion_distinta
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/reset_retardo
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/load_addr
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/Addr_in_range
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/addr_frame
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/last_addr
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/cuenta_palabras
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/cuenta_retardos
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/MD_addr
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/state
add wave -noupdate -group MD_UC /testbench/uut/Mem_D/controlador_MD/next_state
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/ALU_out_MEM
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/ALU_out_WB
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/MEM_out
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/MDR
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/clk
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/reset
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/load
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/MemtoReg_MEM
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/RegWrite_MEM
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/MemtoReg_WB
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/RegWrite_WB
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/RW_MEM
add wave -noupdate -group Banco_MEMWB /testbench/uut/Banco_MEM_WB/RW_WB
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 394
configure wave -valuecolwidth 78
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
WaveRestoreZoom {0 ns} {544 ns}
