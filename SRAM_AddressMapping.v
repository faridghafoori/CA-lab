module SRAM_AddressMapping(
	input [31:0] ALU_result,
	output [17:0] address
);
	wire [31:0] address_base;

	assign address_base = (ALU_result - 1024);
	
	assign address = address_base[18:1];

endmodule