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
    input wire Reset,
    input wire clk,
    input wire clk_en,
    output reg D0,
    output reg D1,
    output reg D2,
    output reg D3,
    output reg D4,
    output reg D5,
    output reg D6,
    output reg D7,
    output reg D8,
    output reg D9,
    output reg Cout
    );
    
//    wire rst1, rst_total, clk1, clk2, clk_en1, clk_total;
    reg Q0, Qbar0, Q1, Qbar1, Q2, Qbar2, Q3, Qbar3, Q4, Qbar4;
//    assign rst1 = !Reset;
//    assign rst_total = !rst1;
//    assign clk1 = !clk;
//    assign clk2 = !clk1;
//    assign clk_en1 = !clk_en;
//    assign clk_total = clk2 & clk_en1;

    always @(posedge clk) begin
        if (Reset) begin
            D0 = 0;
            D5 = 1;
        end
        else begin
            D0 = D;
            D5 = !D;
        end
    end
    
endmodule







