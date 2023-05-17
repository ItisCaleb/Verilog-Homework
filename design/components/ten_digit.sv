module ten_digit(
    input clk,
    input reset,
    input c_in,
    output [2:0] q,
    output carry
);


    logic a, b, c, da, db, dc;
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

    assign da = ~c_in & a | c_in & (a&~c | b&c);
    assign db = ~c_in & b | c_in & (b&~c | ~a&~b&c);
    assign dc = ~c_in & c | c_in & (~c);
    assign carry  = c_in & a&~b&c;
    
    assign q [2:0] = {a, b, c};



endmodule