module test_id;
    logic clk, reset;
    logic [3:0] date;
    birthdate sid(
        .clk(clk),
        .reset(reset),
        .date(date)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1;
        #10 reset = 0; 
        #1000 $stop;
    end
endmodule