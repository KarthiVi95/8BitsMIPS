`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/11/2019 12:31:30 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1_data_memory(in0, in1, select, out);

input [4:0] in0;

input [4:0] in1;

input select;

output reg [4:0] out;


always @ (in0, in1, select)

begin

if (select == 0)

out = in0;

else

out = in1;

end

endmodule