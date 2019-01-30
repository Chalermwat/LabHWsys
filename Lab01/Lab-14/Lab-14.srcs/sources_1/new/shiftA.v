`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 01:10:05 PM
// Design Name: 
// Module Name: shiftA
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


module shiftA(q,clock,d);
    output [1:0] q;
    input clock,d;
    reg [1:0] q;
    always @(posedge clock)
    begin
        q[0]=d;
        q[1]=q[0];
    end
endmodule

module shiftB(q,clock,d);
    output [1:0] q;
    input clock,d;
    reg [1:0] q;
    always @(posedge clock)
    begin
        q[0]<=d;
        q[1]<=q[0];
    end
endmodule

