`timescale 1ns/1ps

module subtractor_tb;

reg A;
reg B;
wire Difference;
wire Borrow;

subtractor uut (
    .A(A),
    .B(B),
    .Difference(Difference),
    .Borrow(Borrow)
);

initial begin
    $dumpfile("subtractor.vcd");
    $dumpvars(0, subtractor_tb);

    $monitor("Time=%0t | A=%b B=%b | Difference=%b Borrow=%b",
             $time, A, B, Difference, Borrow);

    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;
end

endmodule