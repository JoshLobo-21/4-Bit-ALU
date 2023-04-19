`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 03:24:40
// Design Name: 
// Module Name: AND
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


module OR(input [3:0] A,B, output [3:0] Y);

or g1(Y[0], A[0], B[0]);
or g2(Y[1], A[1], B[1]);
or g3(Y[2], A[2], B[2]);
or g4(Y[3], A[3], B[3]);

endmodule

module OR_test();
reg [3:0] A,B;
wire [3:0] Y;
integer i;

OR uut(A,B,Y);
initial begin
for(i = 0; i<16; i = i+1)
begin
A = $urandom;
B = $urandom;
#10;
end
end
endmodule
