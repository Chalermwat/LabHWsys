`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2019 10:49:21 PM
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(
    output q,
    input clock,nreset,d
    );
    reg q;
    always @(posedge clock)
    begin
        if(nreset==1)
            q=d;
    end
    
    always @(nreset)
    begin
        if(nreset==0)
            q=0;
    end
endmodule
