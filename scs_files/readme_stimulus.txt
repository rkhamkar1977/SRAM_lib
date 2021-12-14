Writes - 
Addr   0 (7'b0000000) with wdata = 16'h0010100010101110 alternate bits = 00000010 and 01101111
Addr  45 (7'b0101101) with wdata = 16'h0101000101011101
Addr 110 (7'b1101110) with wdata = 16'h0111100111110011

Read1 -
Addr 0 -> Expected read data_out = 16'h0001010001010110
Addr 45 -> Expected     NOR      = 16'h1000011000000000

Read 2 - 
Addr 110 (NORed with 45)

45 is 108
 1 is 68
 2 is 70 (672)
 3 is 70 (672)
 7 is 70 (672)
15 is 78 (578)


//Try 2
0000001 -> nothing
0000010 -> nothing
0000100 -> nothing
0001000 -> RWL8
0010000 -> nothing
0100000 -> RWL32
1000000 -> nothing

0000100 -> RWL4
0010000 -> RWL16
1000000 -> RWL64
