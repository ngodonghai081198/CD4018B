`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 12:26:04 AM
// Design Name: 
// Module Name: CD4017B
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


module CD4017B(
    input wire D,
    input wire rst,
    input wire clk,
    input wire clk_en,
    output reg D0,
    output reg D5
    );
    
    wire temp1, temp2, temp3;
    assign temp1 = !clk_en;
    assign temp2 = !rst;
    assign temp3 = !temp2;
    

    always @(posedge clk) begin
        if (temp1) begin
            if (temp3) begin
                D0 = 0;
                D5 = 1;
            end
            else begin
                D0 = D;
                D5 = !D;
            end
        end
    end
    
endmodule







