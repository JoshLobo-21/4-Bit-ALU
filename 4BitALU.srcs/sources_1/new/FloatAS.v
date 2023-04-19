`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 12:19:35
// Design Name: 
// Module Name: FloatAS
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


module FloatAS(As,Bs,Aman,Bman,Aexp,Bexp,Ys,Yman,Yexp,s1,s2);
input As, Bs, s1, s2;
input [3:0] Aman, Bman;
input [2:0] Aexp, Bexp;

output Ys, Yman[3:0], Yexp[2:0];

wire Res,E;
AddSub(Aexp,Bexp,1,1,Res,E);
always @*
if(E == 1)







endmodule
