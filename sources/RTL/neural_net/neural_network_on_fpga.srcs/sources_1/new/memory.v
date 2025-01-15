`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 19:30:19
// Design Name: 
// Module Name: memory
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


module memory(input clk, input [9:0]adress, output reg [7:0]data);
reg [7:0]memory[0:255];
initial begin 
 $readmemh("weights_biases.mem", memory);
end
always@(posedge clk)begin 
data<=memory[adress];
end
endmodule
