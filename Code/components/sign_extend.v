`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/11/2019 08:11:54 PM
// Design Name: 
// Module Name: rough_mod
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


module sign_extend(
input [2:0] extend_ip,
output reg [4:0] extend_out);
    
    always@ (*)
    begin
    extend_out = {{2{0}},extend_ip[2:0]};
    end
    
endmodule
