`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 17:50:16
// Design Name: 
// Module Name: input_loader
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


module input_loader#(INPUT_FILE = "input.mem")(input clk,reset,push_en, output reg [7:0]out);
reg [9:0]count;
reg [7:0]mem[3:0];

    initial begin
        $readmemh(INPUT_FILE, mem);
    end

always@(posedge clk)begin 
count<=0;
if(reset)begin 
out<=0;
end
else if(push_en==1 && count<10'd4)begin 
out<=mem[count];
count<=count+1;
end
else begin
out<=0;
end
end
endmodule
