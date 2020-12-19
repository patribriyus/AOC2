onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/clk
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/reset
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/state
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/next_state
add wave -noupdate /testbench_md_mas_mc/uut/controlador_MD/MD/RAM
add wave -noupdate -expand /testbench_md_mas_mc/uut/MC/MC_data
add wave -noupdate /testbench_md_mas_mc/uut/MC/MC_Din
add wave -noupdate /testbench_md_mas_mc/uut/MC/MC_Dout
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/palabra_UC
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/ADDR
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/Din
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/RE
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/WE
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/ready
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/Dout
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/Bus_TRDY
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/Bus_DevSel
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/dir_cjto
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/MC_WE
add wave -noupdate -expand -group MC /testbench_md_mas_mc/uut/MC/MC_RE
add wave -noupdate -expand -group MC -color Salmon -itemcolor Salmon /testbench_md_mas_mc/uut/MC/hit
add wave -noupdate /testbench_md_mas_mc/uut/controlador_MD/contar_palabras
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/rm
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/wm
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/wh
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/inc_rm
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/inc_wm
add wave -noupdate -expand -group contadores /testbench_md_mas_mc/uut/MC/inc_wh
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {249 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 350
configure wave -valuecolwidth 100
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
WaveRestoreZoom {186 ns} {392 ns}
