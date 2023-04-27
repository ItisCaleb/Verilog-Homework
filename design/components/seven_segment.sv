module seven_segment(
    input logic [3:0] in,
    output logic [6:0] out
);

logic c0, c1, c2, c3;
logic a0, a1, a2, a3;
assign c0 = ~in[0];
assign c1 = ~in[1];
assign c2 = ~in[2];
assign c3 = ~in[3];
assign a0 = in[0];
assign a1 = in[1];
assign a2 = in[2];
assign a3 = in[3];
/*a*/
assign out[0] = c3&c2&c1&a0 | c3&a2&c1&c0 | a3&c2&a1&a0 | a3&a2&c1&a0;
/*b*/
assign out[1] = a2&a1&c0    | a3&a1&a0    | a3&a2&c0    | c3&a2&c1&a0;
/*c*/
assign out[2] = a3&a2&c0    | a3&a2&a1    | c3&c2&a1&c0;
/*d*/
assign out[3] = a2&a1&a0    | c3&c2&c1&a0 | c3&a2&c1&c0 | a3&c2&a1&c0;
/*e*/
assign out[4] = c3&a0       | c2&c1&a0    | c3&a2&c1;
/*f*/
assign out[5] = c3&c2&a0    | c3&c2&a1    | c3&a1&a0    | a3&a2&c1&a0;
/*g*/
assign out[6] = c3&c2&c1    | c3&a2&a1&a0 | a3&a2&c1&c0;


endmodule