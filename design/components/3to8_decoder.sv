module _3to8_decoder(
	input logic A,
	input logic B,
	input logic C,
	output logic [7:0] F
);

	and (F[0], ~A, ~B, ~C);
	and (F[1], ~A, ~B,  C);
	and (F[2], ~A,  B, ~C);
	and (F[3], ~A,  B,  C);
	and (F[4],  A, ~B, ~C);
	and (F[5],  A, ~B,  C);
	and (F[6],  A,  B, ~C);
	and (F[7],  A,  B,  C);

endmodule