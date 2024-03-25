Basic Single port memory with simple testbench

Simulation Steps :

verilator --binary --trace -j 0 -Wall memory.sv memory_tb.sv  
obj_dir/Vmemory
gtkwave test.vcd

//TODO --> Multi port memory and rigourous testing
