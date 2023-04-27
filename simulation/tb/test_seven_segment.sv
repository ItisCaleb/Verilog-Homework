module test_seven_segment;

	logic [3:0] in;
	logic [6:0] out;
    seven_segment s7(
        .in(in),
        .out(out)
    );
	initial begin
        in = 0;
        #10 in=1;
        #10 in=2;
        #10 in=3;
        #10 in=4;
        #10 in=5;
        #10 in=6;
        #10 in=7;
        #10 in=8;
        #10 in=9;
        #10 in=10;
        #10 in=11;
        #10 in=12;
        #10 in=13;
        #10 in=14;
        #10 in=15;
		#10 $stop;
	end
    initial begin 
        $monitor($time,": in=%d, out=%d", in,out);
    end
endmodule