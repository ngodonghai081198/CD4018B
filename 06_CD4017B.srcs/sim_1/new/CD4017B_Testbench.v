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
    
    reg rst;
    reg clk;
    reg clk_en;
    wire out0;
    wire out1;
    wire out2;
    wire out3;
    wire out4;
    wire out5;
    wire out6;
    wire out7;
    wire out8;
    wire out9;
    wire Cout;
        
    CD4017B UI(rst, clk, clk_en, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, Cout);
    
    always #25 clk = !clk;
    
    initial begin
        rst = 1;
        clk = 0;
        clk_en = 0; 
        #25;
        rst = 0;
        #650;
        clk_en = 1;
        #25;
        clk_en = 0;
    end

//    always #25 clk = !clk;

endmodule










