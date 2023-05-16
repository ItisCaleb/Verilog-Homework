module RGY_combination(
    input  [3:0] q,
    output [1:0] r,
    output [1:0] g,
    output [1:0] y 
);

    assign r[0] = ~q[3];
    assign r[1] = q[3];
    assign g[0] = q[3]&~q[2] | q[3]&~q[1];
    assign g[1] = ~q[3]&~q[2] | ~q[3]&~q[1];
    assign y[0] = q[3]&q[2]&q[1];
    assign y[1] = ~q[3]&q[2]&q[1];


endmodule