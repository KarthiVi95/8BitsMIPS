`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2019 11:50:34 AM
// Design Name: 
// Module Name: adder_pc
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


module adder_pc(
    input [7:0] address_in,
    //input reset,
    output  [7:0] address_out
    );
    
//    always @(address_in)
//    begin
  //  always @(reset)
  //  begin
   // if (reset == 1) begin
   // address_out = 8'b00000000;
   // end
   // else begin
    assign address_out = address_in + 8'b00000001;
   // end
   // end
endmodule
