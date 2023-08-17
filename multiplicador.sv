module Multiplicador(
    input logic [2:0] a, b,
    output logic [4:0] m,
    output logic ov);

    logic c[3:0];
    
    logic sum = (a[2] & b[0]) ^ (a[1] & b[1]) ^ (a[0] & b[2]);
    logic cout = (a[2] & b[0]) | (a[1] & b[1]) | (a[0] & b[2]);


    assign m[0] = a[0] & b[0];
    assign m[1] = (a[1] & b[0]) ^ (a[0] & b[1]);
    assign c[0] = (a[1] & b[0]) & (a[0] & b[1]);

    assign m[2] = sum ^ c[0];
    assign c[1] = sum & c[0];
    assign c[2] = cout | c[1];

    assign m[3] = (a[2] & b[1]) ^ (a[1] & b[2]) ^ c[2];
    assign c[3] = (a[2] & b[1]) | (a[1] & b[2]) | c[2];

    assign m[4] = c[3] ^ (a[2] & b[1]);
    assign ov = c[3] & (a[2] & b[1]);
endmodule
