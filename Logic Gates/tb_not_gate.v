`timescale 1ns/1ps

module tb_not_gate;

reg A;
wire Y;

not_gate uut (
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_not_gate);

  
    $monitor("A=%b Y=%b", A, Y);

  
    A = 0; #10;
    A = 1; #10;

    $finish;
end

endmodule