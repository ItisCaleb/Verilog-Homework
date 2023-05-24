module student_id(
    input clk, reset,
    output [3:0] id
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
    //AB1570C4
    assign da = ~a&~d | ~b&~d;
    assign db = ~a&~b | ~c&d | a&~c;
    assign dc = c&~d  | ~a&b&~c;
    assign dd = ~c&d  | ~b&c;
    assign id = {a, b, c, d};
endmodule