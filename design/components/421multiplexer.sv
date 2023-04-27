module _421multiplexer(
	input logic sel0,
	input logic sel1,
	input logic [3:0] In,
	output logic out
);

	logic W1, W2, W3, W4;
	and a1(W1, sel1, sel0, In[0]);
	and a2(W2, sel1, ~sel0, In[1]);
	and a3(W3, ~sel1, sel0, In[2]);
	and a4(W4, ~sel1, ~sel0, In[3]);
	or or1(out, W1, W2, W3, W4);

endmodule