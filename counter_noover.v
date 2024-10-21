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
	input trig,
	input rst,
	output reg [0:1] out
    );
	always @(posedge trig or posedge rst) begin
	if (rst) begin
		out <= 2'b00;
	end
	else if (trig) begin
		if(out < 2'b11) begin
			out <= out + 1'b1;
			end
		end
	end

endmodule
