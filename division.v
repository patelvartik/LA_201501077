`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Vartik Patel
// Roll No: 201501077
// 
// Create Date:    11:55:32 10/06/2016 
// Design Name: 
// Module Name:    division 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module division(A,B,Res);

	
    input [31:0] A;
    input [31:0] B;
    output [31:0] Res;
    
    reg [31:0] Res = 0;
    reg [31:0] a1,b1;
    reg [31:0] p1;   
    integer i;

    always@ (A or B)
    begin
        
        a1 = A;
        b1 = B;
        p1= 0;
        for(i=0;i < WIDTH;i=i+1)    begin //start the for loop
            p1 = {p1[WIDTH-2:0],a1[WIDTH-1]};
            a1[WIDTH-1:1] = a1[WIDTH-2:0];
            p1 = p1-b1;
            if(p1[WIDTH-1] == 1)    begin
                a1[0] = 0;
                p1 = p1 + b1;   end
            else
                a1[0] = 1;
        end
        Res = a1;   
    end 

endmodule