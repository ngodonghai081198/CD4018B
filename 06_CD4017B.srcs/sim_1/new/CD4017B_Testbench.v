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
    reg rst;
    reg clk;
    reg clk_en;
    wire D0;
    wire D5;
        
    CD4017B UI(D, rst, clk, clk_en, D0, D5);
    
    always #25 clk = !clk;
    always #50 D = !D;
    
    initial begin
        D = 0;
        rst = 1;
        clk = 0;
        clk_en = 0; 
        #25;
        rst = 0;
    end

//    always #25 clk = !clk;

endmodule










