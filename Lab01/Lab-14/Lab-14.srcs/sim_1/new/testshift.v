`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 01:12:02 PM
// Design Name: 
// Module Name: testshift
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


module testshift(

    );
    reg clock,d;
    wire [1:0]q1,q2;
    shiftA A(q1,clock,d);
    shiftB B(q2,clock,d);
    
    always
        #5 clock=~clock;
    always
        #20 d=~d;
    initial
        begin
        #0
        clock=1;
        d=0;
        #200
        $finish;
        end   
endmodule
