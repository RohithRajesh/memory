module memory #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 10, RAM_DEPTH = 1 << ADDR_WIDTH)

 (
	input clk,    // Clock
	input reset,
	input [ADDR_WIDTH - 1: 0] addr,
	input [DATA_WIDTH-1: 0]write_data,
	input write_enable,
	output [DATA_WIDTH-1:0] read_data
);


reg [DATA_WIDTH-1:0] MEMORY [RAM_DEPTH-1:0];

reg [DATA_WIDTH-1:0] read_data_reg;

always@(posedge clk) begin
	if(write_enable) 
		MEMORY[addr] <= write_data; 
end

always@(posedge clk)begin
	if(~write_enable) 
		read_data_reg <= MEMORY[addr];
end

assign read_data = read_data_reg;

integer i;
always@(reset) begin
	for(i=0;i<ADDR_WIDTH;i++) MEMORY[i] = {DATA_WIDTH{1'b0}};
end

endmodule


