module counter_2bits(
    input clk,
    input reset,
    output [1:0] counter
);

    logic a, b, da, db;
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

    assign da = a^b;
    assign db = ~b;
    
    assign counter [1:0] = {a, b};


endmodule