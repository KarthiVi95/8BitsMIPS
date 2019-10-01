`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2019 04:16:06 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [7:0] pc_op,
    output [7:0] im_out
);
    reg [7:0] mem[7:0];
    initial
    begin    
        mem[0] = 8'b01010001;
        mem[1] = 8'b10010010;
        mem[2] = 8'b01110010;
        mem[3] = 8'b00010010;
        mem[4] = 8'b00110010;
        mem[5] = 8'b00010010;
        mem[6] = 8'b10100001;
       
    end
        assign im_out = (pc_op[7:0] < 6) ? mem[pc_op[7:0]]:mem[pc_op[7:0]%6];  
endmodule
 
