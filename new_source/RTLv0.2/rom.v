`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 14:43:52
// Design Name: 
// Module Name: rom
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


module rom #(
                    
    ADDR_WIDTH = 2,
    DATA_OUT_WIDTH = 16,
    MEM_FILE = "weights.mem") (

    input clk,
    input rst,
    output reg [DATA_OUT_WIDTH-1:0]data_out,
    input r_en
                    
    );
    
    integer i = 0;
    reg [7:0]mem[3:0];
    reg [9:0]count;

    initial begin
        $readmemh(MEM_FILE, mem);
    end

    always@(posedge clk) begin
    count<=0;
        if(rst) begin
            data_out <= 0;
            count<=0;
        end
        else if(r_en==1 && count<10'd4) begin
            data_out <= mem[count];
            count<=count+1;
        end
        else begin 
        data_out<=0;
        end
    end


    
endmodule
