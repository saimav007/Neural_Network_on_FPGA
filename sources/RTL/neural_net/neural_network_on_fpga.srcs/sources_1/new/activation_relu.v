`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 19:25:17
// Design Name: 
// Module Name: activation_relu
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


module activation_relu(input [7:0]data_in,
output reg [7:0]data_out);
always@(*)begin 
if(data_in[7]==1)begin 
data_out=8'd0;
end
else 
data_out=data_in; 
end
endmodule
