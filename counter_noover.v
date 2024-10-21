`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:19 10/20/2024 
// Design Name: 
// Module Name:    counter_noover 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter_noover(
	input clk,
	input rst,
	output reg [0:1] out
    );
	always @(posedge clk) begin
	if (rst)
		out <= 2'b00;
	else
		if(out == 2'b11)
			out <= 2'b11;
		else
			out <= out + 1;
	end

endmodule
