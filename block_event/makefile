
all:
		clear
		vlib work
		vlog -sv block_event.sv
		vsim work.block_event -l  block_event.log -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv block_event.sv

simulate:
		vsim block_event  block_event.log -c -do "run -all;quit;"

clear:
		clear

