`timescale 1ns/1ps

module encoder_4to2_tb;

reg I0;
reg I1;
reg I2;
reg I3;

wire Y1;
wire Y0;

// Instantiate the 4-to-2 Encoder
encoder_4to2 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    // Generate waveform file
    $dumpfile("encoder_4to2.vcd");
    $dumpvars(0, encoder_4to2_tb);

    $display("Time\tI0\tI1\tI2\tI3\tY1\tY0");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, I0, I1, I2, I3, Y1, Y0);

    // Test Case 1: I0 active
    I0 = 1;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    #10;

    // Test Case 2: I1 active
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 0;
    #10;

    // Test Case 3: I2 active
    I0 = 0;
    I1 = 0;
    I2 = 1;
    I3 = 0;
    #10;

    // Test Case 4: I3 active
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 1;
    #10;

    $finish;
end

endmodule