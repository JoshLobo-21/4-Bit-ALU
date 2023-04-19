`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 17:08:43
// Design Name: 
// Module Name: 24decode
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


module decode24_low(input s0,s1,output y0,y1,y2,y3);

wire w1,w0;

not s0_bar(w0,s0);
not s1_bar(w1,s1);

or g1(y0,s0,s1);
or g2(y1,s0,w1);
or g3(y2,w0,s1);
or g4(y3,w0,w1);

endmodule
