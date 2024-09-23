`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:42 09/23/2024 
// Design Name: 
// Module Name:    ChipScope_TB 
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
module ChipScope_TB(
	input wire [7:0]rxn,
	input wire [7:0]rxp,
	output wire [0:7]txn,
	output wire [0:7]txp,
	input wire clk160p,
	input wire clk160n,
		   
	input wire clk40p,
	input wire clk40n
    );
	
	wire [0:7]led_fp;
	
	wire reset;
	wire inject;
	wire slow_clk40;
Top top_tb(
	.rxn(rxn),
	.rxp(rxp),
	.txn(txn),
	.txp(txp),
	.led_fp(led_fp),		   
	.reset(reset),
	.inject(inject),
	.clk160p(clk160p),
	.clk160n(clk160n),
	.clk40p(clk40p),
	.clk40n(clk40n),
	.slow_clk40(slow_clk40)
    );
	
	wire [35:0] data_vio_control;
	
    data_vio shared_vio_i
    (
	.control                        (data_vio_control),
	.clk							(slow_clk40),
	.sync_in							(led_fp),
	.sync_out							({reset,inject}),
    );
	
    icon i_icon
    (
      .control0                         (data_vio_control)
    );

endmodule

module icon
  (
      control0
  );
  inout [35:0] control0;
endmodule

module data_vio
  (
    control,
    clk,
    async_in,
    async_out,
    sync_in,
    sync_out
  );
  inout  [35:0] control;
  input         clk;
  input  [31:0] async_in;
  output [31:0] async_out;
  input  [31:0] sync_in;
  output [31:0] sync_out;
endmodule


