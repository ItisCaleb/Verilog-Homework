module full_adder(
    input logic A,
    input logic B,
    input logic Ci,
    output logic Co,
    output logic S
);
    logic W1, W2, W3;
    xor (W1, A, B);
    xor (S, W1, Ci);
    and (W2, W1, Ci);
    and (W3, A, B);
    or  (Co, W2, W3);

endmodule