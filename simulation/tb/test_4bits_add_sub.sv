module test_4bits_add_sub;

	logic [3:0] A;
	logic [3:0] B;
    logic M;
    logic C;
	logic [3:0] S;
	logic V;
    _4bits_add_sub add_sub(
        .A(A),
        .B(B),
        .M(M),
        .C(C),
        .S(S),
        .V(V)
    );
	
	initial begin

		A = 4'b0111; B = 4'b0110; M = 0;
		#10 A = 4'b1000; B = 4'b1001; M = 0;
        #10 A = 4'b1100; B = 4'b1000; M = 1;
        #10 A = 4'b0101; B = 4'b1010; M = 1;
        #10 A = 4'b0000; B = 4'b0001; M = 1;
		#10 $stop;
	end
    initial begin 
        $monitor($time,": A=%d, B=%d, M=%b, S=%d, C=%b, V=%b", A, B, M, S, C, V);
    end
endmodule