module Codificador8x3(
    input logic [7:0] a,
    output logic [2:0] q
);

    assign q[0] = a[1] | a[3] | a[5] | a[7];
    assign q[1] = a[2] | a[3] | a[6] | a[7];
    assign q[2] = a[4] | a[5] | a[6] | a[7]; 
endmodule
