`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 16:46:16
// Design Name: 
// Module Name: FullAdd_test
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


module FullAdd_test();
reg a,b,cin;
wire s,cout;

FullAdd uut(a,b,cin,s,cout);
initial
begin
a = 0;
b = 0;
cin = 0;
#10
a = 0;
b = 0;
cin = 1;
#10
a = 0;
b = 1;
cin = 0;
#10
a = 0;
b = 1;
cin = 1;
#10
a = 1;
b = 0;
cin = 0;
#10
a = 1;
b = 0;
cin = 1;
#10
a = 1;
b = 1;
cin = 0;
#10
a = 1;
b = 1;
cin = 1;
end
endmodule
