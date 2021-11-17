module decoder( address_1,
                address_2,
                read_enable,
                write_enable,
                read_wl1,
                read_wl2,
                write_wl
                );

    input       [6:0]   address_1;
    input       [6:0]   address_2;
    input       [1:0]   read_enable;
    input               write_enable;
    output      [127:0] read_wl1;
    output      [127:0] read_wl2;
    output      [127:0] write_wl;

    
    assign read_wl1 = read_enable[0] ? 127'h00000001 << address_1 : 0;
    assign read_wl2 = read_enable[1] ? 127'h00000001 << address_2 : 0;
    assign write_wl = write_enable   ? 127'h00000001 << address_1 : 0;

endmodule
