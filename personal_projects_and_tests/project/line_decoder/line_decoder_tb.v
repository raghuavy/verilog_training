//just the setup(no semicolons here)
`timescale 1ns/1ns
`include "line_decoder.v"


module line_decoder_tb;
reg  [1:0] A; //notice how inputs are assigned reg
wire [3:0] D;//notice how outputs are assigned wire

line_decoder2to4 uut (.A(A),.D(D)); //notice how we are using uut here
    initial begin
        $dumpfile("line_decoder_tb.vcd"); //this is to make your wave form
        $dumpvars(0, line_decoder_tb); //dumpvars has arguments 0, (your test bench file)

        //the actual test inputs
        A = 2'd0;
        #20;
        A = 2'd1;
        #20;
        A = 2'd2;
        #20;
        A = 2'd3;
        #20;

        //final finish display message
        $display("test bench ran successfully!!!");
        $finish;
    end

endmodule