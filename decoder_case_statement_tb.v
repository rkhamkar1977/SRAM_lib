`timescale 1ns/1ps
module decoder_2_tb;
    reg       [6:0]   address_1;
    reg       [6:0]   address_2;
    reg       [1:0]   read_enable;
    reg               write_enable;
    wire      [127:0] read_wl1;
    wire      [127:0] read_wl2;
    wire      [127:0] write_wl;

    decoder_2 decoder_0(address_1, address_2, read_enable, write_enable, read_wl1, read_wl2, write_wl);

    initial begin
        #10 address_1 = 7'b0111100; address_2 = 7'b1001111; read_enable = 2'b10; write_enable = 1'b0;
        #10 address_1 = 7'b0111100; address_2 = 7'b1001111; read_enable = 2'b00; write_enable = 1'b0;
        #10 address_1 = 7'b0111100; address_2 = 7'b1001111; read_enable = 2'b00; write_enable = 1'b1;
        #10 address_1 = 7'b0111100; address_2 = 7'b1001111; read_enable = 2'b01; write_enable = 1'b0;
        #10 address_1 = 7'b0111100; address_2 = 7'b1001111; read_enable = 2'b11; write_enable = 1'b0;
        #50 $finish();
    end
endmodule
