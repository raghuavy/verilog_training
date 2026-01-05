`timescale 1ns/1ns

module hello_tb;
  reg A;
  wire B;

  hello uut(.A(A), .B(B));

  initial begin
    $dumpfile("hello_tb.vcd");
    $dumpvars(0, hello_tb);

    $display("Starting test...");

    A = 0; #20;
    A = 1; #20;
    A = 0; #20;

    $display("Test complete");
    $finish;
  end
endmodule
