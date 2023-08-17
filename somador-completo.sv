module SomadorCompleto(
    input logic a, b, Cin,
    output logic s, cout);

    assign s = a ^ b ^ Cin;
    assign cout = (a & Cin) | (b & Cin) | (a & b);

endmodule
