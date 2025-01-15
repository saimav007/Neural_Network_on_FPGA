`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 18:30:19
// Design Name: 
// Module Name: test_mac_unit
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


module test_mac_unit();
reg clk;
reg [7:0]input_value;
reg [7:0]weight;
reg [7:0]bias;
reg reset;
wire [7:0]result;

mac_unit m1(.clk(clk), .input_value(input_value), .weight(weight), .bias(bias),.reset(reset),.result(result));

initial begin
clk=0;
forever  #5 clk=~clk;
end

initial begin
reset=1;
input_value=8'd0;
weight=8'd0;
bias=8'd0;

#10 reset=0;
input_value=8'd5;
weight=8'd6;
bias=8'd1;
# 30;
input_value=8'd3;
weight=8'd4;
bias=8'd1;
# 30;
$stop();
end

endmodule
