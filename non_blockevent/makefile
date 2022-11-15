all:
		clear
		vlib work
		vlog -sv non_blockevent.sv
		vsim work.non_blockevent -l  non_blockevent.log -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv non_blockevent.sv

simulate:
		vsim non_blockevent non_blockevent.log -c -do "run -all;quit;"

clear:
		clear

