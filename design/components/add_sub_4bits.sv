module add_sub_4bits(
    input [3:0] A,
    input [3:0] B,
    input M,
    output C,
    output [3:0] S,
    output V
);
    logic C1, C2, C3;

    full_adder fa1(
        .A(A[0]),
        .B(B[0]^M),
        .Ci(M),
        .Co(C1),
        .S(S[0])
    );
    full_adder fa2(
        .A(A[1]),
        .B(B[1]^M),
        .Ci(C1),
        .Co(C2),
        .S(S[1])
    );
    full_adder fa3(
        .A(A[2]),
        .B(B[2]^M),
        .Ci(C2),
        .Co(C3),
        .S(S[2])
    );
    full_adder fa4(
        .A(A[3]),
        .B(B[3]^M),
        .Ci(C3),
        .Co(C),
        .S(S[3])
    );
    xor (V,C,C3);

endmodule