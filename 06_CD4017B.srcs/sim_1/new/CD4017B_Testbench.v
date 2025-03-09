`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 12:45:14 AM
// Design Name: 
// Module Name: CD4017B_Testbench
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


module CD4017B_Testbench(

    );
    
    reg D;
    reg Reset;
    reg clk;
    reg clk_en;
    wire clk_test;
    wire reset_test;
    wire D0;
    wire D1;
    wire D2;
    wire D3;
    wire D4;
    wire D5;
    wire D6;
    wire D7;
    wire D8;
    wire D9;
    wire Cout;
    
    CD4017B UI(D, Reset, clk, clk_en, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, Cout);
    initial begin
        D = 0;
        Reset = 1;
        clk = 1;
        clk_en = 1; 
        #50;
        D = 1;
        #50;
        Reset = 0;
        clk_en = 0;
    end
    
    always #50 clk = !clk;

endmodule










