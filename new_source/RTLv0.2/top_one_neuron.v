`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 14:25:36
// Design Name: 
// Module Name: top_one_neuron
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_one_neuron(input clk,reset,push_en,mac_en,mem_en,output [17:0]mac_out);
wire [7:0]out;
wire [7:0]data_out;
input_loader m1(.clk(clk),.reset(reset),.push_en(push_en),.out(out));
rom m3(.clk(clk),.rst(reset),.data_out(data_out),.r_en(mem_en));
test_mac m2(.clk(clk),.rst(reset),.en(mac_en),.a(out),.b(data_out),.result(mac_out));
endmodule
