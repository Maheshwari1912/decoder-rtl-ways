//////1//////
module decoder (input [2:0] i, output [7:0] y);
  always@(*)begin
    case(i)
      3'b000:y[0]=1;
      3'b001:y[1]=1;
      3'b010:y[2]=1;
      3'b011:y[3]=1;
      3'b100:y[4]=1;
      3'b101:y[5]=1;
      3'b110:y[6]=1;
      3'b111:y[7]=1;
      default: y= 8'b0;

    endcase
  end
endmodule

/////2/////

module decoder(input [2:0]in, output [7:0] y);
  wire [2:0] n_in;
  
  not(n_in[2], in[2]);
  not(n_in[1], in[1]);
  not(n_in[0], in[0]);
  
  and(y[0], n_in[2], n_in[1], n_in[0]);
  and(y[1], n_in[2], n_in[1], n_in[0]);
  and(y[2], n_in[2], n_in[1], n_in[0]);
  and(y[3], n_in[2], n_in[1], n_in[0]);
  and(y[4], n_in[2], n_in[1], n_in[0]);
  and(y[5], n_in[2], n_in[1], n_in[0]);
  and(y[6], n_in[2], n_in[1], n_in[0]);
  and(y[7], n_in[2], n_in[1], n_in[0]);

endmodule

/////3/////
module decoder10to1024(
  input [9:0] in,
  output [1023:0] out);

  assign out = 1024'1b1 << in;
endmodule

////4/////

module decoder10to1024(
  input [9:0] in,
  output reg [1023:0] out);

  always @(*)begin
    out = 1024'b0;
    out[in] = 1'b1;
  end
endmodule





