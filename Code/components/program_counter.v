`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/13/2019 03:04:10 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
    input [7:0] pc_ip,
    output reg [7:0] instr_ip
    
    );
    always @ (*)
    begin
     instr_ip = pc_ip;
    end
    
endmodule
