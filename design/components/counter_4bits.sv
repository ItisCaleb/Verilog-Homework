module counter_4bits(
    input clk,
    input reset,
    output [3:0] counter,
    output y
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

    assign da = a&~b | a&~c | a&~d | ~a&b&c&d;
    assign db = b&~c | b&~d | ~b&c&d;
    assign dc = c^d;
    assign dd = ~d;
    assign y  = a&b&c&d;
    
    assign counter [3:0] = {a, b, c, d};


endmodule