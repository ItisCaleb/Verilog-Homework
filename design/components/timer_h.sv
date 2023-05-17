module timer_h(
    input clk, reset,
    output [2:0] min_tens, hour_tens,
    output [3:0] min_units, hour_units
);
    logic min_units_c, hour_units_c, min_tens_c, hour_tens_c;
    logic _reset;

    unit_digit min_unit(
        .clk(clk),
        .reset(_reset),
        .c_in(1'b1),
        .q(min_units),
        .carry(min_units_c)
    );
    ten_digit min_ten(
        .clk(clk),
        .reset(_reset),
        .c_in(min_units_c),
        .q(min_tens),
        .carry(min_tens_c)
    );
    unit_digit hour_unit(
        .clk(clk),
        .reset(_reset),
        .c_in(min_tens_c),
        .q(hour_units),
        .carry(hour_units_c)
    );
    ten_digit hour_ten(
        .clk(clk),
        .reset(_reset),
        .c_in(hour_units_c),
        .q(hour_tens),
        .carry(hour_tens_c)
    );
    assign _reset =  hour_tens[1] && hour_units[2] | reset;

endmodule