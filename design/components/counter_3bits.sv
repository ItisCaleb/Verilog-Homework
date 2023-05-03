module counter_3bits(
    input clk,
    input reset,
    output [2:0] counter,
    output y
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

    assign da = a&~b | a&~c | ~a&b&c;
    assign db = b^c;
    assign dc = ~c;
    assign y  = a&b&c;
    
    assign counter [2:0] = {a, b, c};


endmodule