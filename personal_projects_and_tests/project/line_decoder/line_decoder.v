//using 2 modules
//a decoder gets a binary value and activates the line for the decimal value conversion for the resp. binary number
//ex : 
//inputs -> (output)
//010    -> (2nd line will be activated)
//     
//101    -> (5th line will be activated)
//the order of the function dosent matter in verilog :)

module line_decoder(A, D);//1 to 2 line decoder
input A;
output[1:0] D;
assign D[0] = ~A;
assign D[1] =  A;
endmodule


module line_decoder2to4(A,D); //notice how wire is not added to module

input[1:0] A;  //2 bit input
output[3:0] D; //4 bit output
wire [3:0] W;  //internal wire

//notice how we are assigning W to D from the previous function
line_decoder U0(.A(A[1]),.D(W[1:0]));
line_decoder U1(.A(A[0]),.D(W[3:2]));

//write down the truth table
assign D[0] = W[0] & W[2];
assign D[1] = W[0] & W[3];
assign D[2] = W[1] & W[2];
assign D[3] = W[1] & W[3];

endmodule