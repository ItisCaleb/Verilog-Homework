module timer(
    input clk, reset,
    output [2:0] sec_tens, min_tens,
    output [3:0] sec_units, min_units
);
    logic sec_units_c, min_units_c, sec_tens_c, min_tens_c;
    
    unit_digit sec_unit(
        .clk(clk),
        .reset(reset),
        .c_in(1'b1),
        .q(sec_units),
        .carry(sec_units_c)
    );
    ten_digit sec_ten(
        .clk(clk),
        .reset(reset),
        .c_in(sec_units_c),
        .q(sec_tens),
        .carry(sec_tens_c)
    );
    unit_digit min_unit(
        .clk(clk),
        .reset(reset),
        .c_in(sec_tens_c),
        .q(min_units),
        .carry(min_units_c)
    );
    ten_digit min_ten(
        .clk(clk),
        .reset(reset),
        .c_in(min_units_c),
        .q(min_tens),
        .carry(min_tens_c)
    );
    

endmodule