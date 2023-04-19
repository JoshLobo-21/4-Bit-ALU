`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:20:34
// Design Name: 
// Module Name: mux4_test
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


module mux4_test();

reg a,b,c,d,s1,s0;
wire Y;
integer i,j;

Mux4 uut(a,b,c,d,s0,s1,Y);

initial begin
a = 0;
b = 1;
c = 0;
d = 1;

for(i = 0; i<=1; i = i+1) begin
s1 = i;
#10;
for(j = 0; j<=1; j = j+1) begin
s0 = j;
#10;
end
end
end

endmodule
