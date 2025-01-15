`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 18:14:56
// Design Name: 
// Module Name: mac_unit
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


module mac_unit (
    input clk,
    input [7:0] input_value,   
    input [7:0] weight,        
    input [7:0] bias,          
    input reset,
    output reg [7:0] result   
);
    wire [15:0] product;
    reg [15:0]mac_sum;
     
   assign product = input_value * weight;


    always @(posedge clk or posedge reset) begin
        if (reset) begin
            mac_sum <= {8'd0, bias}; 
            result <= 8'd0;
        end else begin
            mac_sum <= mac_sum + product;   
            result <= mac_sum[7:0]; 
        end
    end
endmodule


