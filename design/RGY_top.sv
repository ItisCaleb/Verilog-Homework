module RGY_top(
    input clk,
    input reset,
    output [1:0] r, g, y
);
    logic [3:0] q;
    up_down_counter_4bits c1(
        .clk(clk),
        .reset(reset),
        .x(1'b0),
        .counter(q)
    );
    RGY_combination rgy(
        .q(q),
        .r(r),
        .g(g),
        .y(y)
    );
endmodule