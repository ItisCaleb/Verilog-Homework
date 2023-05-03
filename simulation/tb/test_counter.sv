module testcounter;
    logic clk, reset;
    logic [3:0] q;
    logic y;
    counter_4bits counter(
        .clk(clk),
        .reset(reset),
        .counter(q),
        .y(y)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1;
        #10 reset = 0;
        #500 $stop;
    end
endmodule