module memory_tb;
	reg clk, reset;
	wire [7:0] read_data;
	reg write_enable;
	reg [7:0] write_data;
	reg [9:0] addr;

	initial  begin
		$dumpfile("test.vcd");
		$dumpvars(0,tb);
		clk=1'b0;
		reset = 1'b1;
		#5 reset = 1'b0;
		write_enable=1'b1;
		addr = 10'b1;
		write_data = 8'd4;
		#7 write_enable = 1'b0;
		#10 $finish;
	end

	initial forever begin
		#1 clk = ~clk;
	end


	memory m(.clk(clk),.reset(reset),.write_enable(write_enable),.write_data(write_data),.read_data(read_data),.addr(addr)); 


	wire _unused_ok = &{1'b0,
                    read_data, // unused output, only for tracking. To avoid simulatione error
                    1'b0};


endmodule 
