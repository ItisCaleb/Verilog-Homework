module unit_digit(
    input clk,
    input reset,
    input c_in,
    output [3:0] q,
    output carry
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

    assign da = ~c_in & a | c_in & (a&~d | b&c&d);
    assign db = ~c_in & b | c_in & (b&~c | b&~d | ~b&c&d);
    assign dc = ~c_in & c | c_in & (c&~d | ~a&~c&d);
    assign dd = ~c_in & d | c_in & ~d;
    assign carry  = c_in & a&~b&~c&d;
    
    assign q [3:0] = {a, b, c, d};



endmodule