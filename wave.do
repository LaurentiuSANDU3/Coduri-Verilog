onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group DUT -radix unsigned /testNumarator/DUT/data_i
add wave -noupdate -expand -group DUT /testNumarator/DUT/load_i
add wave -noupdate -expand -group DUT /testNumarator/DUT/enable_i
add wave -noupdate -expand -group DUT /testNumarator/DUT/up_down_i
add wave -noupdate -expand -group DUT /testNumarator/DUT/clk_i
add wave -noupdate -expand -group DUT /testNumarator/DUT/rst_i
add wave -noupdate -expand -group DUT -radix unsigned /testNumarator/DUT/counter_o
add wave -noupdate -expand -group DUT /testNumarator/DUT/overflow_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {616 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {788 ps}
