`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// MAC Unit for 4-bit Inputs
// Multiplies two 4-bit inputs and accumulates the result in a 12-bit register.
//////////////////////////////////////////////////////////////////////////////////

module test_mac #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH = 18
) (
    input wire clk,           
    input wire rst,           
    input wire en,            
    input wire [DATA_WIDTH-1:0] a,       
    input wire [DATA_WIDTH-1:0] b,       
    output reg [ACC_WIDTH-1:0] result  
);

    
    reg [7:0] product;
    
initial begin 
product=0;
result=0;
end
    
   always @(*)begin
   if(rst)begin 
   product<=0;
   end
        
   else begin
   product = a * b;
        if (product > 8'd255) begin
            product = 8'd255;
        end
    end
    end


    
    always @(posedge clk ) begin
        if (rst) begin
            result <= 0;
        end else if (en) begin
            result <= result + product;
        end
    end

endmodule
