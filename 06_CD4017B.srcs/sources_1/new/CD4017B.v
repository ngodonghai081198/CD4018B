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
    input wire rst,
    input wire clk,
    input wire clk_en,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3,
    output reg out4,
    output reg out5,
    output reg out6,
    output reg out7,
    output reg out8,
    output reg out9,
    output reg Cout
    );
    
    wire D1, D2, D3, D4, D5;
    wire temp1, temp2, temp3, temp4;
    reg Q1, Q1bar, Q2, Q2bar, Q3, Q3bar, Q4, Q4bar, Q5, Q5bar;
    assign temp1 = !clk_en;
    assign temp2 = !rst;
    assign temp3 = !temp2;
    assign D1 = Q5bar;    
    assign temp4 = !(Q1 | Q2bar | Q3);
    assign temp5 = !(temp4 | Q2bar);
    assign D2 = Q1;
    assign D3 = temp5;
    assign D4 = Q3;
    assign D5 = Q4;

    always @(posedge clk) begin
        if (temp1) begin
            if (temp3) begin
                Q1 = 0;
                Q1bar = 1;
                Q2 = 0;
                Q2bar = 1;
                Q3 = 0;
                Q3bar = 1;
                Q4 = 0;
                Q4bar = 1;
                Q5 = 0;
                Q5bar = 1;
            end
            else begin
                Q1      <= D1;
                Q1bar   <= !D1;
                Q2      <= D2;
                Q2bar   <= !D2;
                Q3      <= D3;
                Q3bar   <= !D3;
                Q4      <= D4;
                Q4bar   <= !D4;
                Q5      <= D5;
                Q5bar   <= !D5;
                Cout    <= !Q5;
                out0    <= !Q1 & !Q5;
                out1    <= !Q1bar & !Q2;
                out2    <= !Q2bar & !Q3;
                out3    <= !Q3bar & !Q4;
                out4    <= !Q4bar & !Q5;
                out5    <= !Q5bar & !Q1bar;
                out6    <= !Q1 & !Q2bar;
                out7    <= !Q2 & !Q3bar;
                out8    <= !Q3 & !Q4bar;
                out9    <= !Q4 & !Q5bar;
                
            end
        end
    end
    
endmodule











