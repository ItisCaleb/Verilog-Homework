module test_counter;
    logic clk, reset, x;
    logic [3:0] q;
    up_down_counter_4bits counter(
        .clk(clk),
        .reset(reset),
        .counter(q),
        .x(x)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1; x=0;
        #10 reset = 0; 
        #200 x = 1;
        #200 $stop;
    end
endmodule