// 4-to-2 Encoder
// Converts one active input out of four
// into a 2-bit binary output.

module encoder_4to2 (
    input  wire I0,
    input  wire I1,
    input  wire I2,
    input  wire I3,
    output wire Y1,
    output wire Y0
);

// Logic equations
assign Y1 = I2 | I3;
assign Y0 = I1 | I3;

endmodule