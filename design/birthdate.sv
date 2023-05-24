module birthdate(
    input clk, reset,
    output [3:0] date
);
    logic a, b, c, d, da, db, dc, dd;
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
    //921212
    //09FED12
    assign da = b&c | a&~b | ~c&~d;
    assign db = a&c | a&~b;
    assign dc = ~b&d | c&d;
    assign dd = a&~d | a&~c | ~c&~d;
    assign date = {a, b, c, d};
endmodule