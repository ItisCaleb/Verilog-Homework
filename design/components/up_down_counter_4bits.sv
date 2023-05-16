module up_down_counter_4bits(
    input clk,
    input reset,
    input x,
    output [3:0] counter
);

    logic a, b, c, d, da, db, dc ,dd;
    dff_pos dff_posA(
        .d(da),
        .clk(clk),
        .reset(reset),
        .q(a)
    );
    dff_pos dff_posB(
        .d(db),
        .clk(clk),
        .reset(reset),
        .q(b)
    );
    dff_pos dff_posC(
        .d(dc),
        .clk(clk),
        .reset(reset),
        .q(c)
    );
    dff_pos dff_posD(
        .d(dd),
        .clk(clk),
        .reset(reset),
        .q(d)
    );

    assign da = ~x & (a&(~b|~c|~d) | ~a&b&c&d) | x & (a&(b|c|d) | ~a&~b&~c&~d);
    assign db = ~x & (b&(~c|~d) | ~b&c&d)      | x & (b&(c|d) | ~b&~c&~d);
    assign dc = ~x & (c^d)                     | x & ~(c^d);
    assign dd = ~d;
    assign counter [3:0] = {a, b, c, d};


endmodule