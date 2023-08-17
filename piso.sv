module RegistradorPISO (
  input logic clk, reset, shift_load,
  input logic [3:0] din,
  output logic saida_serial
);

  logic[3:0] q;

  always_ff @(posedge clk or posedge reset) 
  begin
    if (reset == 1)
      q = 0;
    else if (shift_load == 0)
      q = din; 
    else
      q = {q[2:0], din[0]};    
  end

  assign saida_serial = q[3];

endmodule
