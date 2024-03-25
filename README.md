Basic Single port memory with simple testbench


Design Aspects 

1. Asynchronous posedge reset
2. Parametrized address and data widths
3. Separate read and write ports
4. Single read/write possible at a time


Simulation Steps :

verilator --binary --trace -j 0 -Wall memory.sv memory_tb.sv  
obj_dir/Vmemory
gtkwave test.vcd




//TODO --> Multi port memory and rigourous testing
