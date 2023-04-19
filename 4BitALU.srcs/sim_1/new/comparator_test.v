`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 13:32:47
// Design Name: 
// Module Name: comparator_test
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


module comparator_test();
reg [3:0] A,B;
wire Y;
integer i;

Comparator uut(A,B,Y);
initial begin
for(i = 0; i<16; i=i+1)
begin
A = $urandom;
B = $urandom;
#10;
end
end
endmodule
