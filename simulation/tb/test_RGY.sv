module testRGY;
    logic clk, reset;
    logic [1:0] r,g,y;
    RGY_top RGY(
        .clk(clk),
        .reset(reset),
        .r(r),
        .g(g),
        .y(y)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1;
        #10 reset = 0;
        #200 $stop;
    end

endmodule