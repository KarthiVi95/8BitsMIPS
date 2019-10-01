`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/12/2019 12:08:05 AM
// Design Name: 
// Module Name: mux_alu
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


module mux_alu(in0, in1, select, out );
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

$display(out);
end

endmodule
