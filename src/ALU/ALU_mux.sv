module ALU_mux(
  input  logic [35:0] ALU_mux_in;
  output logic [31:0] mux_ADD_out;
  output logic [31:0] mux_SUB_out;
  output logic [31:0] mux_MP_out;
  output logic [31:0] mux_SLL_out;
  output logic [31:0] mux_SRL_out;
  output logic [31:0] mux_AND_out;
  output logic [31:0] mux_OR_out;
  output logic [31:0] mux_XOR_out;
  output logic [31:0] mux_INV_out;
);

  always_comb begin
    if (ALU_mux_in[32:35] == 4'b0000) begin
      mux_ADD_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0001) begin
      mux_SUB_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0010) begin
      mux_MP_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0011) begin
      mux_SLL_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0100) begin
      mux_SRL_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0101) begin
      mux_AND_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b00110) begin
      mux_OR_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b0111) begin
      mux_XOR_out = ALU_mux_in[31:0];
    end
    else if (ALU_mux_in[32:35] == 4'b1000) begin
      mux_INV_out = ALU_mux_in[31:0];
    end
  end
endmodule