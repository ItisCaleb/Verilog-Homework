module dff_pos(
    input d,
    input clk,
    input reset,
    output logic q
);
    always_ff @(posedge clk)
    begin
        if(reset) q <= 1'b0;
        else      q <= d;
    end

endmodule