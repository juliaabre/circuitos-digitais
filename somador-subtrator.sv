module SomadorSubtrator(
    input logic [3:0] a, B,
    input logic sub,
    output logic [3:0] s,
    output logic ov);
    
    logic b[3:0];
    logic c[3:0];

    assign b[0] = B[0] ^ sub;
    assign b[1] = B[1] ^ sub;
    assign b[2] = B[2] ^ sub;
    assign b[3] = B[3] ^ sub;

    assign s[0] = a[0] ^ b[0] ^ sub;
    assign c[0] = (a[0] & b[0]) | (a[0] & sub) | (b[0] & sub);

    assign s[1] = a[1] ^ b[1] ^ c[0];
    assign c[1] = (a[1] & b[1]) | (a[1] & c[0]) | (b[1] & c[0]);

    assign s[2] = a[2] ^ b[2] ^ c[1];
    assign c[2] = (a[2] & b[2]) | (a[2] & c[1]) | (b[2] & c[1]);

    assign s[3] = a[3] ^ b[3] ^ c[2];
    assign c[3] = (a[3] & b[3]) | (a[3] & c[2]) | (b[3] & c[2]);
    
    assign ov = c[3] ^ c[2];

endmodule
