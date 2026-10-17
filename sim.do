vlog -reportprogress 300 -work work C:/Users/laure/Desktop/an4_semestru1/Sio/Cursuri/Curs1/*.sv
vsim -gui work.testNumarator
log -r *
run -all
do wave.do