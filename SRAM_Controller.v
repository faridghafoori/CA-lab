module SRAM_Controller(
	input clk,
	input rst,
	input mem_read,
	input mem_write,
	input [32:0] data,
	input [17:0] address,
	inout [15:0] SRAM_DQ,
	output reg [17:0] SRAM_ADDR,
	output reg SRAM_WE_N,
	output reg [31:0] data_out,
	output reg freeze
);
	reg [15:0] data_temp;
	reg [2:0] count;
	always @(posedge clk, posedge rst) begin
		if(rst)
			count <= 3'b0; 
		else begin
			if(mem_write) begin
				freeze <= 1'b1;
				SRAM_WE_N <= 1'b1;
				case(count) 
					3'b000 : begin 
						SRAM_ADDR <= address;
						data_temp <= data[15:0];
						SRAM_WE_N <= 1'b0;
						count <= count + 1;
					end
					3'b001 : begin
						SRAM_ADDR <= address + 1;
						data_temp <= data[31:16];
						SRAM_WE_N <= 1'b0;
						count <= count + 1;
					end
					3'b101 : begin
						freeze <= 1'b0;
					end
					default : begin
						count <= count + 1;
						data_temp <= 16'bZZZZ_ZZZZ_ZZZZ_ZZZZ; 
					end
				endcase
			
			end
			else if(mem_read) begin
				freeze <= 1'b1;
				SRAM_WE_N <= 1'b1;
				case(count) 
					3'b000 : begin 
						SRAM_ADDR <= address;
						count <= count + 1;
					end
					3'b001 : begin
						SRAM_ADDR <= address + 1;
						data_out[15:0] <= SRAM_DQ;
						count <= count + 1;
					end
					3'b010 : begin
						data_out[31:16] <= SRAM_DQ;
						count <= count + 1;
					end
					3'b101 : begin
						freeze <= 1'b0;
					end
					default : begin
						count <= count + 1;
					end
				endcase
				
			end
			else begin
				SRAM_WE_N <= 1'b1;
				freeze <= 1'b0;
				count <= 3'b0;
			end
			
			if(count == 3'b101) begin
				count <= 3'b0;
			end
		end
	end 

	assign SRAM_DQ = mem_write ? data_temp : 16'bZZZZ_ZZZZ_ZZZZ_ZZZZ;
	
endmodule