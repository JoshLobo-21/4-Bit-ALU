`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 03:03:45
// Design Name: 
// Module Name: Multiplier_test
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


module Multiplier_test();
reg [3:0]A, B;
wire [7:0] P;
integer i;
Multiplier uut(A,B,P);
initial begin
for(i = 0; i<16; i = i+1)
begin
A = $urandom;
B = $urandom;
#10;
end
end
endmodule
