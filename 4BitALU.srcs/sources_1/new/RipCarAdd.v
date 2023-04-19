`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 16:32:46
// Design Name: 
// Module Name: RipCarAdd
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

`timescale 1ns/1ps

module RipCarAdd(input[3:0] A,B, input cin, output [3:0] S, output C);
wire w1,w2,w3;
FullAdd G1(A[0], B[0], cin, S[0], w1);
FullAdd G2(A[1], B[1], w1, S[1], w2);
FullAdd G3(A[2], B[2], w2, S[2], w3);
FullAdd G4(A[3], B[3], w3, S[3], C);
endmodule
