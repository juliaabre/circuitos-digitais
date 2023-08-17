module RegistradorSIPO (
  input logic clk, reset, entrada_serial,
  output logic [3:0] saida_paralela
);

  always_ff @(posedge clk, posedge reset) 
    begin
      if (reset == 1)
        saida_paralela = 0;
      else
        saida_paralela = {saida_paralela[2:0], entrada_serial[0]};
    end

endmodule
