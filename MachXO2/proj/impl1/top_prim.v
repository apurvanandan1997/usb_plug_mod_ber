// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Aug 19 20:18:27 2019
//
// Verilog Description of module top
//

module top (LED, DATA_LANE, CLK_LANE, FT601_CLK, FT601_RST_N, FT601_DATA, 
            FT601_BE, FT601_RXF_N, FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, 
            FT601_RD_N, FT601_OE_N);   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(26[8:11])
    output LED;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(28[9:12])
    input [4:0]DATA_LANE;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(30[9:18])
    input CLK_LANE /* synthesis black_box_pad_pin=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(31[9:17])
    input FT601_CLK;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    output FT601_RST_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(34[9:20])
    output [31:0]FT601_DATA;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    output [3:0]FT601_BE;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    input FT601_RXF_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(37[9:20])
    input FT601_TXE_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(38[9:20])
    output FT601_WR_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(39[9:19])
    output FT601_SIWU_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(40[9:21])
    output FT601_RD_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(41[9:19])
    output FT601_OE_N;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(42[9:19])
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(39[12:19])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire GND_net, VCC_net, LED_c, FT601_DATA_c_31, FT601_DATA_c_30, 
        FT601_DATA_c_29, FT601_DATA_c_28, FT601_DATA_c_27, FT601_DATA_c_26, 
        FT601_DATA_c_25, FT601_DATA_c_24, FT601_DATA_c_23, FT601_DATA_c_22, 
        FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_19, FT601_DATA_c_18, 
        FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_15, FT601_DATA_c_14, 
        FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_11, FT601_DATA_c_10, 
        FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_7, FT601_DATA_c_6, 
        FT601_DATA_c_5, FT601_DATA_c_4, FT601_DATA_c_3, FT601_DATA_c_2, 
        FT601_DATA_c_1, FT601_DATA_c_0, FT601_TXE_N_c, FT601_WR_N_c, 
        tx_active_N_832;
    wire [4:0]buf_dataini;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(47[12:23])
    
    wire fifo_emp;
    wire [31:0]send_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(126[12:21])
    
    wire data_valid;
    wire [39:0]dec_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(133[12:20])
    wire [49:0]enc_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(134[12:20])
    wire [39:0]rng_num;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(135[12:19])
    
    wire sync_prng, rx_rdy, sclk_enable_104, n46, bit_slip_N_318, 
        n54, n5196, n78, n76, n50, n74, n73, n72, n70, n68, 
        sclk_enable_231, n66, n42, n64, n62, n41, n58, n57, 
        sclk_enable_230, n6790, n6788, n6789;
    
    VHI i2 (.Z(VCC_net));
    OB FT601_DATA_pad_2 (.I(FT601_DATA_c_2), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_3 (.I(FT601_DATA_c_3), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_4 (.I(FT601_DATA_c_4), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_RD_N_pad (.I(VCC_net), .O(FT601_RD_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(41[9:19])
    OSCH oscinst0 (.STDBY(GND_net), .OSC(clk_int)) /* synthesis NOM_FREQ="133.0", syn_instantiated=1 */ ;
    defparam oscinst0.NOM_FREQ = "133.0";
    OB FT601_SIWU_N_pad (.I(VCC_net), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(40[9:21])
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(39[9:19])
    VLO i1 (.Z(GND_net));
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_BE_pad_0 (.I(VCC_net), .O(FT601_BE[0]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_BE_pad_1 (.I(VCC_net), .O(FT601_BE[1]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_BE_pad_2 (.I(VCC_net), .O(FT601_BE[2]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_BE_pad_3 (.I(VCC_net), .O(FT601_BE[3]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_DATA_pad_16 (.I(FT601_DATA_c_16), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_17 (.I(FT601_DATA_c_17), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_18 (.I(FT601_DATA_c_18), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_19 (.I(FT601_DATA_c_19), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_20 (.I(FT601_DATA_c_20), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_21 (.I(FT601_DATA_c_21), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    LUT4 i1_4_lut_rep_143 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n6788)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam i1_4_lut_rep_143.init = 16'h0004;
    OB FT601_DATA_pad_0 (.I(FT601_DATA_c_0), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    LUT4 i1_4_lut_rep_144 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n6789)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam i1_4_lut_rep_144.init = 16'h0004;
    OB FT601_DATA_pad_22 (.I(FT601_DATA_c_22), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    LUT4 LED_I_0_2_lut_rep_98 (.A(LED_c), .B(data_valid), .Z(sclk_enable_230)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam LED_I_0_2_lut_rep_98.init = 16'h8888;
    OB FT601_DATA_pad_23 (.I(FT601_DATA_c_23), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_24 (.I(FT601_DATA_c_24), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_25 (.I(FT601_DATA_c_25), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_26 (.I(FT601_DATA_c_26), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_27 (.I(FT601_DATA_c_27), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    LUT4 i1_4_lut_rep_145 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n6790)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam i1_4_lut_rep_145.init = 16'h0004;
    OB FT601_DATA_pad_28 (.I(FT601_DATA_c_28), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_29 (.I(FT601_DATA_c_29), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_30 (.I(FT601_DATA_c_30), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_31 (.I(FT601_DATA_c_31), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(34[9:20])
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(28[9:12])
    LUT4 i1_4_lut (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), .Z(sync_prng)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i33_4_lut (.A(dec_data[8]), .B(n66), .C(n50), .D(dec_data[13]), 
         .Z(n73)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i33_4_lut.init = 16'hfffe;
    LUT4 i38_4_lut (.A(n57), .B(n76), .C(n70), .D(n58), .Z(n78)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i38_4_lut.init = 16'hfffe;
    LUT4 i34_4_lut (.A(dec_data[34]), .B(n68), .C(n54), .D(dec_data[9]), 
         .Z(n74)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i34_4_lut.init = 16'hfffe;
    OB FT601_DATA_pad_1 (.I(FT601_DATA_c_1), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    LUT4 i26_4_lut (.A(dec_data[35]), .B(dec_data[21]), .C(dec_data[15]), 
         .D(dec_data[25]), .Z(n66)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(dec_data[27]), .B(dec_data[32]), .Z(n50)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i17_2_lut (.A(dec_data[31]), .B(dec_data[12]), .Z(n57)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i17_2_lut.init = 16'heeee;
    calc_ber ber_proc (.\rng_num[1] (rng_num[1]), .\dec_data[1] (dec_data[1]), 
            .send_data({send_data}), .sclk(sclk), .sclk_enable_104(sclk_enable_104), 
            .\rng_num[0] (rng_num[0]), .\dec_data[0] (dec_data[0]), .\rng_num[3] (rng_num[3]), 
            .\dec_data[3] (dec_data[3]), .\rng_num[2] (rng_num[2]), .\dec_data[2] (dec_data[2]), 
            .GND_net(GND_net), .n5196(n5196), .sclk_enable_230(sclk_enable_230), 
            .n6789(n6789), .n6790(n6790), .sync_prng(sync_prng), .\rng_num[7] (rng_num[7]), 
            .\dec_data[7] (dec_data[7]), .\rng_num[6] (rng_num[6]), .\dec_data[6] (dec_data[6]), 
            .\rng_num[5] (rng_num[5]), .\dec_data[5] (dec_data[5]), .\rng_num[4] (rng_num[4]), 
            .\dec_data[4] (dec_data[4]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(233[16:36])
    LUT4 i36_4_lut (.A(n41), .B(n72), .C(n62), .D(n42), .Z(n76)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i36_4_lut.init = 16'hfffe;
    LUT4 i30_4_lut (.A(dec_data[38]), .B(dec_data[17]), .C(dec_data[24]), 
         .D(dec_data[39]), .Z(n70)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i30_4_lut.init = 16'hfffe;
    IB Inst2_IB (.I(CLK_LANE), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(390[16:18])
    IB Inst1_IB4 (.I(DATA_LANE[4]), .O(buf_dataini[4])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(396[17:19])
    IB Inst1_IB3 (.I(DATA_LANE[3]), .O(buf_dataini[3])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(402[17:19])
    IB Inst1_IB2 (.I(DATA_LANE[2]), .O(buf_dataini[2])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(408[17:19])
    IB Inst1_IB1 (.I(DATA_LANE[1]), .O(buf_dataini[1])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(414[17:19])
    IB Inst1_IB0 (.I(DATA_LANE[0]), .O(buf_dataini[0])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(420[17:19])
    LUT4 i18_2_lut (.A(dec_data[19]), .B(dec_data[29]), .Z(n58)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i18_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(dec_data[2]), .B(dec_data[3]), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i32_4_lut (.A(dec_data[16]), .B(n64), .C(n46), .D(dec_data[11]), 
         .Z(n72)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i32_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(dec_data[20]), .B(dec_data[6]), .C(dec_data[4]), 
         .D(dec_data[0]), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(dec_data[7]), .B(dec_data[1]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i24_4_lut (.A(dec_data[10]), .B(dec_data[18]), .C(dec_data[5]), 
         .D(dec_data[36]), .Z(n64)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(dec_data[22]), .B(dec_data[30]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i28_4_lut (.A(dec_data[33]), .B(dec_data[23]), .C(dec_data[37]), 
         .D(dec_data[26]), .Z(n68)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i14_2_lut (.A(dec_data[14]), .B(dec_data[28]), .Z(n54)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(152[34:87])
    defparam i14_2_lut.init = 16'heeee;
    OB FT601_OE_N_pad (.I(VCC_net), .O(FT601_OE_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(42[9:19])
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(38[9:20])
    LUT4 i1_3_lut_4_lut (.A(LED_c), .B(data_valid), .C(n6788), .D(n5196), 
         .Z(sclk_enable_104)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(148[19:42])
    defparam i1_3_lut_4_lut.init = 16'h0800;
    ft601 ft601_comp (.FT601_CLK_c(FT601_CLK_c), .tx_active_N_832(tx_active_N_832), 
          .FT601_WR_N_c(FT601_WR_N_c), .fifo_emp(fifo_emp), .FT601_TXE_N_c(FT601_TXE_N_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(256[18:35])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i4620_2_lut (.A(bit_slip_N_318), .B(rx_rdy), .Z(sclk_enable_231)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i4620_2_lut.init = 16'h7777;
    dec_8b10b decoder_inst4 (.\enc_data[48] (enc_data[48]), .\enc_data[43] (enc_data[43]), 
            .\enc_data[42] (enc_data[42]), .\enc_data[41] (enc_data[41]), 
            .\enc_data[40] (enc_data[40]), .\enc_data[47] (enc_data[47]), 
            .\enc_data[45] (enc_data[45]), .\enc_data[49] (enc_data[49]), 
            .\enc_data[46] (enc_data[46]), .\dec_data[32] (dec_data[32]), 
            .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[44] (enc_data[44]), 
            .\dec_data[33] (dec_data[33]), .\dec_data[34] (dec_data[34]), 
            .\dec_data[35] (dec_data[35]), .\dec_data[36] (dec_data[36]), 
            .\dec_data[37] (dec_data[37]), .\dec_data[38] (dec_data[38]), 
            .\dec_data[39] (dec_data[39]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(213[21:30])
    deserializer deser_inst (.data_valid(data_valid), .sclk(sclk), .LED_c(LED_c), 
            .sclk_enable_231(sclk_enable_231), .bit_slip_N_318(bit_slip_N_318), 
            .enc_data({enc_data}), .rx_rdy(rx_rdy), .rbyteclk_N_428(rbyteclk_N_428), 
            .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini({buf_dataini}), 
            .clk_int(clk_int));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(165[18:42])
    async_fifo cdc_fifo_inst (.send_data({send_data}), .sclk(sclk), .FT601_CLK_c(FT601_CLK_c), 
            .sclk_enable_230(sclk_enable_230), .tx_active_N_832(tx_active_N_832), 
            .GND_net(GND_net), .FT601_DATA_c_31(FT601_DATA_c_31), .FT601_DATA_c_30(FT601_DATA_c_30), 
            .FT601_DATA_c_29(FT601_DATA_c_29), .FT601_DATA_c_28(FT601_DATA_c_28), 
            .fifo_emp(fifo_emp), .VCC_net(VCC_net), .FT601_DATA_c_19(FT601_DATA_c_19), 
            .FT601_DATA_c_18(FT601_DATA_c_18), .FT601_DATA_c_17(FT601_DATA_c_17), 
            .FT601_DATA_c_16(FT601_DATA_c_16), .FT601_DATA_c_23(FT601_DATA_c_23), 
            .FT601_DATA_c_22(FT601_DATA_c_22), .FT601_DATA_c_21(FT601_DATA_c_21), 
            .FT601_DATA_c_20(FT601_DATA_c_20), .FT601_DATA_c_11(FT601_DATA_c_11), 
            .FT601_DATA_c_10(FT601_DATA_c_10), .FT601_DATA_c_9(FT601_DATA_c_9), 
            .FT601_DATA_c_8(FT601_DATA_c_8), .FT601_DATA_c_15(FT601_DATA_c_15), 
            .FT601_DATA_c_14(FT601_DATA_c_14), .FT601_DATA_c_13(FT601_DATA_c_13), 
            .FT601_DATA_c_12(FT601_DATA_c_12), .FT601_DATA_c_3(FT601_DATA_c_3), 
            .FT601_DATA_c_2(FT601_DATA_c_2), .FT601_DATA_c_1(FT601_DATA_c_1), 
            .FT601_DATA_c_0(FT601_DATA_c_0), .FT601_DATA_c_7(FT601_DATA_c_7), 
            .FT601_DATA_c_6(FT601_DATA_c_6), .FT601_DATA_c_5(FT601_DATA_c_5), 
            .FT601_DATA_c_4(FT601_DATA_c_4), .FT601_DATA_c_27(FT601_DATA_c_27), 
            .FT601_DATA_c_26(FT601_DATA_c_26), .FT601_DATA_c_25(FT601_DATA_c_25), 
            .FT601_DATA_c_24(FT601_DATA_c_24)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    dec_8b10b_U3 decoder_inst0 (.\dec_data[0] (dec_data[0]), .sclk(sclk), 
            .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[0] (enc_data[0]), 
            .\enc_data[1] (enc_data[1]), .\enc_data[4] (enc_data[4]), .\enc_data[8] (enc_data[8]), 
            .\enc_data[2] (enc_data[2]), .\enc_data[3] (enc_data[3]), .\dec_data[1] (dec_data[1]), 
            .\dec_data[2] (dec_data[2]), .\dec_data[3] (dec_data[3]), .\dec_data[4] (dec_data[4]), 
            .\dec_data[5] (dec_data[5]), .\dec_data[6] (dec_data[6]), .\dec_data[7] (dec_data[7]), 
            .\enc_data[6] (enc_data[6]), .\enc_data[5] (enc_data[5]), .\enc_data[7] (enc_data[7]), 
            .\enc_data[9] (enc_data[9]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(177[21:30])
    dec_8b10b_U2 decoder_inst1 (.\dec_data[8] (dec_data[8]), .sclk(sclk), 
            .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[10] (enc_data[10]), 
            .\enc_data[11] (enc_data[11]), .\enc_data[12] (enc_data[12]), 
            .\enc_data[13] (enc_data[13]), .\enc_data[18] (enc_data[18]), 
            .\enc_data[16] (enc_data[16]), .\enc_data[15] (enc_data[15]), 
            .\enc_data[17] (enc_data[17]), .\enc_data[19] (enc_data[19]), 
            .\enc_data[14] (enc_data[14]), .\dec_data[9] (dec_data[9]), 
            .\dec_data[10] (dec_data[10]), .\dec_data[11] (dec_data[11]), 
            .\dec_data[12] (dec_data[12]), .\dec_data[13] (dec_data[13]), 
            .\dec_data[14] (dec_data[14]), .\dec_data[15] (dec_data[15]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(186[21:30])
    dec_8b10b_U1 decoder_inst2 (.\dec_data[16] (dec_data[16]), .sclk(sclk), 
            .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[20] (enc_data[20]), 
            .\enc_data[21] (enc_data[21]), .\enc_data[22] (enc_data[22]), 
            .\enc_data[23] (enc_data[23]), .\enc_data[26] (enc_data[26]), 
            .\enc_data[25] (enc_data[25]), .\enc_data[29] (enc_data[29]), 
            .\enc_data[27] (enc_data[27]), .\enc_data[28] (enc_data[28]), 
            .\enc_data[24] (enc_data[24]), .\dec_data[17] (dec_data[17]), 
            .\dec_data[18] (dec_data[18]), .\dec_data[19] (dec_data[19]), 
            .\dec_data[20] (dec_data[20]), .\dec_data[21] (dec_data[21]), 
            .\dec_data[22] (dec_data[22]), .\dec_data[23] (dec_data[23]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(195[21:30])
    dec_8b10b_U0 decoder_inst3 (.\enc_data[34] (enc_data[34]), .\enc_data[38] (enc_data[38]), 
            .\enc_data[31] (enc_data[31]), .\enc_data[32] (enc_data[32]), 
            .\enc_data[33] (enc_data[33]), .\enc_data[37] (enc_data[37]), 
            .\enc_data[35] (enc_data[35]), .\enc_data[36] (enc_data[36]), 
            .\enc_data[39] (enc_data[39]), .\enc_data[30] (enc_data[30]), 
            .\dec_data[24] (dec_data[24]), .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), 
            .\dec_data[25] (dec_data[25]), .\dec_data[26] (dec_data[26]), 
            .\dec_data[27] (dec_data[27]), .\dec_data[28] (dec_data[28]), 
            .\dec_data[29] (dec_data[29]), .\dec_data[30] (dec_data[30]), 
            .\dec_data[31] (dec_data[31]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(204[21:30])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \prng_recv("1011110010111100101111001011110010111100")  prng_inst (.rng_num({Open_0, 
            Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, 
            Open_8, Open_9, Open_10, Open_11, Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, Open_18, Open_19, 
            Open_20, Open_21, Open_22, Open_23, Open_24, Open_25, 
            Open_26, Open_27, Open_28, Open_29, Open_30, Open_31, 
            Open_32, Open_33, rng_num[5:4], Open_34, Open_35, Open_36, 
            Open_37}), .sclk(sclk), .sclk_enable_230(sclk_enable_230), 
            .n6789(n6789), .\rng_num[0] (rng_num[0]), .\rng_num[1] (rng_num[1]), 
            .\rng_num[6] (rng_num[6]), .\rng_num[7] (rng_num[7]), .\rng_num[3] (rng_num[3]), 
            .\rng_num[2] (rng_num[2]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(222[17:26])
    
endmodule
//
// Verilog Description of module calc_ber
//

module calc_ber (\rng_num[1] , \dec_data[1] , send_data, sclk, sclk_enable_104, 
            \rng_num[0] , \dec_data[0] , \rng_num[3] , \dec_data[3] , 
            \rng_num[2] , \dec_data[2] , GND_net, n5196, sclk_enable_230, 
            n6789, n6790, sync_prng, \rng_num[7] , \dec_data[7] , 
            \rng_num[6] , \dec_data[6] , \rng_num[5] , \dec_data[5] , 
            \rng_num[4] , \dec_data[4] );
    input \rng_num[1] ;
    input \dec_data[1] ;
    output [31:0]send_data;
    input sclk;
    input sclk_enable_104;
    input \rng_num[0] ;
    input \dec_data[0] ;
    input \rng_num[3] ;
    input \dec_data[3] ;
    input \rng_num[2] ;
    input \dec_data[2] ;
    input GND_net;
    output n5196;
    input sclk_enable_230;
    input n6789;
    input n6790;
    input sync_prng;
    input \rng_num[7] ;
    input \dec_data[7] ;
    input \rng_num[6] ;
    input \dec_data[6] ;
    input \rng_num[5] ;
    input \dec_data[5] ;
    input \rng_num[4] ;
    input \dec_data[4] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    
    wire n6608;
    wire [31:0]total_err_bits;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(35[12:26])
    
    wire n6609, n6572, n6570, n6610, n6611, n6571, n5126;
    wire [29:0]count_bytes;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(34[12:23])
    wire [29:0]n111;
    
    wire n5127, n45, n58, n54, n46, n5125, n37, n52, n42, 
        n56, n50;
    wire [31:0]n144;
    wire [31:0]n210;
    
    wire n38, n48, n34, n5132, n5133, n5130, n5131, n5124, n5129, 
        n5136, n5137, n5143, n5144, n5139, n6537, n2;
    wire [5:0]err_per_byte_5__N_722;
    
    wire n1630, n5140, n5135, n6605, n4, n5142, n5141, n5134, 
        n5128, n5138, n5150, n5151, n5149, n5154, n5148, n5147, 
        n5153, n5146, n5152, n5145, n6604, n6560, n6606;
    wire [1:0]n1538;
    
    wire n6607, n2_adj_846;
    
    LUT4 byte_actual_39__I_0_i2_2_lut_rep_139 (.A(\rng_num[1] ), .B(\dec_data[1] ), 
         .Z(n6608)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i2_2_lut_rep_139.init = 16'h6666;
    FD1P3AX ber_i0_i0 (.D(total_err_bits[0]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i0.GSR = "ENABLED";
    LUT4 byte_actual_39__I_0_i1_2_lut_rep_140 (.A(\rng_num[0] ), .B(\dec_data[0] ), 
         .Z(n6609)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i1_2_lut_rep_140.init = 16'h6666;
    LUT4 i310_2_lut_rep_103_3_lut_4_lut (.A(\rng_num[0] ), .B(\dec_data[0] ), 
         .C(\dec_data[1] ), .D(\rng_num[1] ), .Z(n6572)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i310_2_lut_rep_103_3_lut_4_lut.init = 16'h0660;
    LUT4 i307_2_lut_rep_101_3_lut_4_lut (.A(\rng_num[0] ), .B(\dec_data[0] ), 
         .C(\dec_data[1] ), .D(\rng_num[1] ), .Z(n6570)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i307_2_lut_rep_101_3_lut_4_lut.init = 16'h6996;
    LUT4 byte_actual_39__I_0_i4_2_lut_rep_141 (.A(\rng_num[3] ), .B(\dec_data[3] ), 
         .Z(n6610)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i4_2_lut_rep_141.init = 16'h6666;
    LUT4 i248_4_lut_3_lut_rep_102_4_lut (.A(\rng_num[3] ), .B(\dec_data[3] ), 
         .C(n6570), .D(n6611), .Z(n6571)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i248_4_lut_3_lut_rep_102_4_lut.init = 16'hf660;
    LUT4 byte_actual_39__I_0_i3_2_lut_rep_142 (.A(\rng_num[2] ), .B(\dec_data[2] ), 
         .Z(n6611)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i3_2_lut_rep_142.init = 16'h6666;
    CCU2D add_15_7 (.A0(count_bytes[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5126), .COUT(n5127), .S0(n111[5]), .S1(n111[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_7.INIT0 = 16'h5aaa;
    defparam add_15_7.INIT1 = 16'h5aaa;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    LUT4 i29_4_lut (.A(n45), .B(n58), .C(n54), .D(n46), .Z(n5196)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29_4_lut.init = 16'h8000;
    CCU2D add_15_5 (.A0(count_bytes[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5125), .COUT(n5126), .S0(n111[3]), .S1(n111[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_5.INIT0 = 16'h5aaa;
    defparam add_15_5.INIT1 = 16'h5aaa;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    LUT4 i7_2_lut (.A(count_bytes[7]), .B(count_bytes[15]), .Z(n37)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i26_4_lut (.A(count_bytes[8]), .B(n52), .C(n42), .D(count_bytes[9]), 
         .Z(n56)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i26_4_lut.init = 16'h8000;
    LUT4 i20_4_lut (.A(count_bytes[12]), .B(count_bytes[20]), .C(count_bytes[19]), 
         .D(count_bytes[24]), .Z(n50)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20_4_lut.init = 16'h8000;
    LUT4 i2414_2_lut (.A(n144[1]), .B(n5196), .Z(n210[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2414_2_lut.init = 16'h2222;
    LUT4 i8_2_lut (.A(count_bytes[28]), .B(count_bytes[10]), .Z(n38)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8_2_lut.init = 16'h8888;
    LUT4 i2415_2_lut (.A(n144[2]), .B(n5196), .Z(n210[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2415_2_lut.init = 16'h2222;
    LUT4 i2416_2_lut (.A(n144[3]), .B(n5196), .Z(n210[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2416_2_lut.init = 16'h2222;
    LUT4 i22_4_lut (.A(count_bytes[25]), .B(count_bytes[6]), .C(count_bytes[27]), 
         .D(count_bytes[17]), .Z(n52)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i22_4_lut.init = 16'h8000;
    LUT4 i2417_2_lut (.A(n144[4]), .B(n5196), .Z(n210[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2417_2_lut.init = 16'h2222;
    LUT4 i2418_2_lut (.A(n144[5]), .B(n5196), .Z(n210[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2418_2_lut.init = 16'h2222;
    LUT4 i12_2_lut (.A(count_bytes[16]), .B(count_bytes[3]), .Z(n42)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12_2_lut.init = 16'h8888;
    LUT4 i18_4_lut (.A(count_bytes[2]), .B(count_bytes[18]), .C(count_bytes[11]), 
         .D(count_bytes[22]), .Z(n48)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i18_4_lut.init = 16'h8000;
    LUT4 i2419_2_lut (.A(n144[6]), .B(n5196), .Z(n210[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2419_2_lut.init = 16'h2222;
    LUT4 i2420_2_lut (.A(n144[7]), .B(n5196), .Z(n210[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2420_2_lut.init = 16'h2222;
    LUT4 i4_2_lut (.A(count_bytes[23]), .B(count_bytes[26]), .Z(n34)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i2421_2_lut (.A(n144[8]), .B(n5196), .Z(n210[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2421_2_lut.init = 16'h2222;
    LUT4 i2422_2_lut (.A(n144[9]), .B(n5196), .Z(n210[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2422_2_lut.init = 16'h2222;
    LUT4 i2423_2_lut (.A(n144[10]), .B(n5196), .Z(n210[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2423_2_lut.init = 16'h2222;
    LUT4 i2424_2_lut (.A(n144[11]), .B(n5196), .Z(n210[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2424_2_lut.init = 16'h2222;
    CCU2D add_15_19 (.A0(count_bytes[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5132), .COUT(n5133), .S0(n111[17]), .S1(n111[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_19.INIT0 = 16'h5aaa;
    defparam add_15_19.INIT1 = 16'h5aaa;
    defparam add_15_19.INJECT1_0 = "NO";
    defparam add_15_19.INJECT1_1 = "NO";
    CCU2D add_15_15 (.A0(count_bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5130), .COUT(n5131), .S0(n111[13]), .S1(n111[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_15.INIT0 = 16'h5aaa;
    defparam add_15_15.INIT1 = 16'h5aaa;
    defparam add_15_15.INJECT1_0 = "NO";
    defparam add_15_15.INJECT1_1 = "NO";
    LUT4 i2425_2_lut (.A(n144[12]), .B(n5196), .Z(n210[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2425_2_lut.init = 16'h2222;
    FD1P3IX count_bytes__i0 (.D(n111[0]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i0.GSR = "ENABLED";
    LUT4 i2426_2_lut (.A(n144[13]), .B(n5196), .Z(n210[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2426_2_lut.init = 16'h2222;
    LUT4 i2427_2_lut (.A(n144[14]), .B(n5196), .Z(n210[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2427_2_lut.init = 16'h2222;
    FD1P3IX total_err_bits__i0 (.D(n210[0]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(total_err_bits[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i0.GSR = "ENABLED";
    LUT4 i2428_2_lut (.A(n144[15]), .B(n5196), .Z(n210[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2428_2_lut.init = 16'h2222;
    LUT4 i2429_2_lut (.A(n144[16]), .B(n5196), .Z(n210[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2429_2_lut.init = 16'h2222;
    LUT4 i2430_2_lut (.A(n144[17]), .B(n5196), .Z(n210[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2430_2_lut.init = 16'h2222;
    LUT4 i2431_2_lut (.A(n144[18]), .B(n5196), .Z(n210[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2431_2_lut.init = 16'h2222;
    LUT4 i2432_2_lut (.A(n144[19]), .B(n5196), .Z(n210[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2432_2_lut.init = 16'h2222;
    LUT4 i2433_2_lut (.A(n144[20]), .B(n5196), .Z(n210[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2433_2_lut.init = 16'h2222;
    LUT4 i2434_2_lut (.A(n144[21]), .B(n5196), .Z(n210[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2434_2_lut.init = 16'h2222;
    LUT4 i2435_2_lut (.A(n144[22]), .B(n5196), .Z(n210[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2435_2_lut.init = 16'h2222;
    LUT4 i2436_2_lut (.A(n144[23]), .B(n5196), .Z(n210[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2436_2_lut.init = 16'h2222;
    LUT4 i2437_2_lut (.A(n144[24]), .B(n5196), .Z(n210[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2437_2_lut.init = 16'h2222;
    LUT4 i2438_2_lut (.A(n144[25]), .B(n5196), .Z(n210[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2438_2_lut.init = 16'h2222;
    LUT4 i2439_2_lut (.A(n144[26]), .B(n5196), .Z(n210[26])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2439_2_lut.init = 16'h2222;
    LUT4 i2440_2_lut (.A(n144[27]), .B(n5196), .Z(n210[27])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2440_2_lut.init = 16'h2222;
    LUT4 i2441_2_lut (.A(n144[28]), .B(n5196), .Z(n210[28])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2441_2_lut.init = 16'h2222;
    LUT4 i2442_2_lut (.A(n144[29]), .B(n5196), .Z(n210[29])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2442_2_lut.init = 16'h2222;
    LUT4 i2443_2_lut (.A(n144[30]), .B(n5196), .Z(n210[30])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2443_2_lut.init = 16'h2222;
    LUT4 i2444_2_lut (.A(n144[31]), .B(n5196), .Z(n210[31])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2444_2_lut.init = 16'h2222;
    FD1P3AX ber_i0_i1 (.D(total_err_bits[1]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i1.GSR = "ENABLED";
    FD1P3AX ber_i0_i2 (.D(total_err_bits[2]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i2.GSR = "ENABLED";
    FD1P3AX ber_i0_i3 (.D(total_err_bits[3]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i3.GSR = "ENABLED";
    FD1P3AX ber_i0_i4 (.D(total_err_bits[4]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i4.GSR = "ENABLED";
    FD1P3AX ber_i0_i5 (.D(total_err_bits[5]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i5.GSR = "ENABLED";
    FD1P3AX ber_i0_i6 (.D(total_err_bits[6]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i6.GSR = "ENABLED";
    FD1P3AX ber_i0_i7 (.D(total_err_bits[7]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i7.GSR = "ENABLED";
    FD1P3AX ber_i0_i8 (.D(total_err_bits[8]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i8.GSR = "ENABLED";
    FD1P3AX ber_i0_i9 (.D(total_err_bits[9]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i9.GSR = "ENABLED";
    FD1P3AX ber_i0_i10 (.D(total_err_bits[10]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i10.GSR = "ENABLED";
    FD1P3AX ber_i0_i11 (.D(total_err_bits[11]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i11.GSR = "ENABLED";
    FD1P3AX ber_i0_i12 (.D(total_err_bits[12]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i12.GSR = "ENABLED";
    FD1P3AX ber_i0_i13 (.D(total_err_bits[13]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i13.GSR = "ENABLED";
    FD1P3AX ber_i0_i14 (.D(total_err_bits[14]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i14.GSR = "ENABLED";
    FD1P3AX ber_i0_i15 (.D(total_err_bits[15]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i15.GSR = "ENABLED";
    FD1P3AX ber_i0_i16 (.D(total_err_bits[16]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i16.GSR = "ENABLED";
    FD1P3AX ber_i0_i17 (.D(total_err_bits[17]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i17.GSR = "ENABLED";
    FD1P3AX ber_i0_i18 (.D(total_err_bits[18]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i18.GSR = "ENABLED";
    FD1P3AX ber_i0_i19 (.D(total_err_bits[19]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i19.GSR = "ENABLED";
    FD1P3AX ber_i0_i20 (.D(total_err_bits[20]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i20.GSR = "ENABLED";
    FD1P3AX ber_i0_i21 (.D(total_err_bits[21]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i21.GSR = "ENABLED";
    FD1P3AX ber_i0_i22 (.D(total_err_bits[22]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i22.GSR = "ENABLED";
    FD1P3AX ber_i0_i23 (.D(total_err_bits[23]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i23.GSR = "ENABLED";
    FD1P3AX ber_i0_i24 (.D(total_err_bits[24]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i24.GSR = "ENABLED";
    FD1P3AX ber_i0_i25 (.D(total_err_bits[25]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i25.GSR = "ENABLED";
    FD1P3AX ber_i0_i26 (.D(total_err_bits[26]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i26.GSR = "ENABLED";
    FD1P3AX ber_i0_i27 (.D(total_err_bits[27]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i27.GSR = "ENABLED";
    FD1P3AX ber_i0_i28 (.D(total_err_bits[28]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i28.GSR = "ENABLED";
    FD1P3AX ber_i0_i29 (.D(total_err_bits[29]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i29.GSR = "ENABLED";
    FD1P3AX ber_i0_i30 (.D(total_err_bits[30]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i30.GSR = "ENABLED";
    FD1P3AX ber_i0_i31 (.D(total_err_bits[31]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(send_data[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam ber_i0_i31.GSR = "ENABLED";
    CCU2D add_15_3 (.A0(count_bytes[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5124), .COUT(n5125), .S0(n111[1]), .S1(n111[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_3.INIT0 = 16'h5aaa;
    defparam add_15_3.INIT1 = 16'h5aaa;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    FD1P3IX count_bytes__i1 (.D(n111[1]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i1.GSR = "ENABLED";
    FD1P3IX count_bytes__i2 (.D(n111[2]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i2.GSR = "ENABLED";
    FD1P3IX count_bytes__i3 (.D(n111[3]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i3.GSR = "ENABLED";
    FD1P3IX count_bytes__i4 (.D(n111[4]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i4.GSR = "ENABLED";
    FD1P3IX count_bytes__i5 (.D(n111[5]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i5.GSR = "ENABLED";
    FD1P3IX count_bytes__i6 (.D(n111[6]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i6.GSR = "ENABLED";
    FD1P3IX count_bytes__i7 (.D(n111[7]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i7.GSR = "ENABLED";
    FD1P3IX count_bytes__i8 (.D(n111[8]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(count_bytes[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i8.GSR = "ENABLED";
    FD1P3IX count_bytes__i9 (.D(n111[9]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i9.GSR = "ENABLED";
    FD1P3IX count_bytes__i10 (.D(n111[10]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i10.GSR = "ENABLED";
    FD1P3IX count_bytes__i11 (.D(n111[11]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i11.GSR = "ENABLED";
    FD1P3IX count_bytes__i12 (.D(n111[12]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i12.GSR = "ENABLED";
    FD1P3IX count_bytes__i13 (.D(n111[13]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i13.GSR = "ENABLED";
    FD1P3IX count_bytes__i14 (.D(n111[14]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i14.GSR = "ENABLED";
    FD1P3IX count_bytes__i15 (.D(n111[15]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i15.GSR = "ENABLED";
    FD1P3IX count_bytes__i16 (.D(n111[16]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i16.GSR = "ENABLED";
    FD1P3IX count_bytes__i17 (.D(n111[17]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i17.GSR = "ENABLED";
    FD1P3IX count_bytes__i18 (.D(n111[18]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i18.GSR = "ENABLED";
    FD1P3IX count_bytes__i19 (.D(n111[19]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i19.GSR = "ENABLED";
    FD1P3IX count_bytes__i20 (.D(n111[20]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i20.GSR = "ENABLED";
    FD1P3IX count_bytes__i21 (.D(n111[21]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i21.GSR = "ENABLED";
    FD1P3IX count_bytes__i22 (.D(n111[22]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i22.GSR = "ENABLED";
    FD1P3IX count_bytes__i23 (.D(n111[23]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i23.GSR = "ENABLED";
    FD1P3IX count_bytes__i24 (.D(n111[24]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i24.GSR = "ENABLED";
    FD1P3IX count_bytes__i25 (.D(n111[25]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i25.GSR = "ENABLED";
    FD1P3IX count_bytes__i26 (.D(n111[26]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i26.GSR = "ENABLED";
    FD1P3IX count_bytes__i27 (.D(n111[27]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i27.GSR = "ENABLED";
    FD1P3IX count_bytes__i28 (.D(n111[28]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i28.GSR = "ENABLED";
    FD1P3IX count_bytes__i29 (.D(n111[29]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(count_bytes[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam count_bytes__i29.GSR = "ENABLED";
    CCU2D add_15_17 (.A0(count_bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5131), .COUT(n5132), .S0(n111[15]), .S1(n111[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_17.INIT0 = 16'h5aaa;
    defparam add_15_17.INIT1 = 16'h5aaa;
    defparam add_15_17.INJECT1_0 = "NO";
    defparam add_15_17.INJECT1_1 = "NO";
    CCU2D add_15_13 (.A0(count_bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5129), .COUT(n5130), .S0(n111[11]), .S1(n111[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_13.INIT0 = 16'h5aaa;
    defparam add_15_13.INIT1 = 16'h5aaa;
    defparam add_15_13.INJECT1_0 = "NO";
    defparam add_15_13.INJECT1_1 = "NO";
    CCU2D add_15_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5124), .S1(n111[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_1.INIT0 = 16'hF000;
    defparam add_15_1.INIT1 = 16'h5555;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    CCU2D add_15_27 (.A0(count_bytes[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5136), .COUT(n5137), .S0(n111[25]), .S1(n111[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_27.INIT0 = 16'h5aaa;
    defparam add_15_27.INIT1 = 16'h5aaa;
    defparam add_15_27.INJECT1_0 = "NO";
    defparam add_15_27.INJECT1_1 = "NO";
    CCU2D add_17_11 (.A0(total_err_bits[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5143), .COUT(n5144), .S0(n144[9]), .S1(n144[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_11.INIT0 = 16'h5aaa;
    defparam add_17_11.INIT1 = 16'h5aaa;
    defparam add_17_11.INJECT1_0 = "NO";
    defparam add_17_11.INJECT1_1 = "NO";
    CCU2D add_17_3 (.A0(n6537), .B0(n2), .C0(total_err_bits[1]), .D0(GND_net), 
          .A1(err_per_byte_5__N_722[2]), .B1(n1630), .C1(total_err_bits[2]), 
          .D1(GND_net), .CIN(n5139), .COUT(n5140), .S0(n144[1]), .S1(n144[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_3.INIT0 = 16'h9696;
    defparam add_17_3.INIT1 = 16'h9696;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    CCU2D add_15_25 (.A0(count_bytes[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5135), .COUT(n5136), .S0(n111[23]), .S1(n111[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_25.INIT0 = 16'h5aaa;
    defparam add_15_25.INIT1 = 16'h5aaa;
    defparam add_15_25.INJECT1_0 = "NO";
    defparam add_15_25.INJECT1_1 = "NO";
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6605), .B1(n4), .C1(total_err_bits[0]), .D1(GND_net), 
          .COUT(n5139), .S1(n144[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h9696;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    CCU2D add_17_9 (.A0(total_err_bits[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5142), .COUT(n5143), .S0(n144[7]), .S1(n144[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    CCU2D add_17_7 (.A0(total_err_bits[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5141), .COUT(n5142), .S0(n144[5]), .S1(n144[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    CCU2D add_15_23 (.A0(count_bytes[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5134), .COUT(n5135), .S0(n111[21]), .S1(n111[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_23.INIT0 = 16'h5aaa;
    defparam add_15_23.INIT1 = 16'h5aaa;
    defparam add_15_23.INJECT1_0 = "NO";
    defparam add_15_23.INJECT1_1 = "NO";
    FD1P3IX total_err_bits__i1 (.D(n210[1]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i1.GSR = "ENABLED";
    CCU2D add_15_11 (.A0(count_bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5128), .COUT(n5129), .S0(n111[9]), .S1(n111[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_11.INIT0 = 16'h5aaa;
    defparam add_15_11.INIT1 = 16'h5aaa;
    defparam add_15_11.INJECT1_0 = "NO";
    defparam add_15_11.INJECT1_1 = "NO";
    FD1P3IX total_err_bits__i2 (.D(n210[2]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i2.GSR = "ENABLED";
    FD1P3IX total_err_bits__i3 (.D(n210[3]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i3.GSR = "ENABLED";
    FD1P3IX total_err_bits__i4 (.D(n210[4]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i4.GSR = "ENABLED";
    FD1P3IX total_err_bits__i5 (.D(n210[5]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i5.GSR = "ENABLED";
    FD1P3IX total_err_bits__i6 (.D(n210[6]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i6.GSR = "ENABLED";
    FD1P3IX total_err_bits__i7 (.D(n210[7]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i7.GSR = "ENABLED";
    FD1P3IX total_err_bits__i8 (.D(n210[8]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i8.GSR = "ENABLED";
    FD1P3IX total_err_bits__i9 (.D(n210[9]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i9.GSR = "ENABLED";
    FD1P3IX total_err_bits__i10 (.D(n210[10]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i10.GSR = "ENABLED";
    FD1P3IX total_err_bits__i11 (.D(n210[11]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i11.GSR = "ENABLED";
    FD1P3IX total_err_bits__i12 (.D(n210[12]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i12.GSR = "ENABLED";
    FD1P3IX total_err_bits__i13 (.D(n210[13]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i13.GSR = "ENABLED";
    FD1P3IX total_err_bits__i14 (.D(n210[14]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i14.GSR = "ENABLED";
    FD1P3IX total_err_bits__i15 (.D(n210[15]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i15.GSR = "ENABLED";
    FD1P3IX total_err_bits__i16 (.D(n210[16]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i16.GSR = "ENABLED";
    FD1P3IX total_err_bits__i17 (.D(n210[17]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i17.GSR = "ENABLED";
    FD1P3IX total_err_bits__i18 (.D(n210[18]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i18.GSR = "ENABLED";
    FD1P3IX total_err_bits__i19 (.D(n210[19]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i19.GSR = "ENABLED";
    FD1P3IX total_err_bits__i20 (.D(n210[20]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i20.GSR = "ENABLED";
    FD1P3IX total_err_bits__i21 (.D(n210[21]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i21.GSR = "ENABLED";
    FD1P3IX total_err_bits__i22 (.D(n210[22]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i22.GSR = "ENABLED";
    FD1P3IX total_err_bits__i23 (.D(n210[23]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i23.GSR = "ENABLED";
    FD1P3IX total_err_bits__i24 (.D(n210[24]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i24.GSR = "ENABLED";
    FD1P3IX total_err_bits__i25 (.D(n210[25]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i25.GSR = "ENABLED";
    FD1P3IX total_err_bits__i26 (.D(n210[26]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i26.GSR = "ENABLED";
    FD1P3IX total_err_bits__i27 (.D(n210[27]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i27.GSR = "ENABLED";
    FD1P3IX total_err_bits__i28 (.D(n210[28]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i28.GSR = "ENABLED";
    FD1P3IX total_err_bits__i29 (.D(n210[29]), .SP(sclk_enable_230), .CD(n6790), 
            .CK(sclk), .Q(total_err_bits[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i29.GSR = "ENABLED";
    FD1P3IX total_err_bits__i30 (.D(n210[30]), .SP(sclk_enable_230), .CD(sync_prng), 
            .CK(sclk), .Q(total_err_bits[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i30.GSR = "ENABLED";
    FD1P3IX total_err_bits__i31 (.D(n210[31]), .SP(sclk_enable_230), .CD(sync_prng), 
            .CK(sclk), .Q(total_err_bits[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=233, LSE_RLINE=233 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(59[9] 83[16])
    defparam total_err_bits__i31.GSR = "ENABLED";
    CCU2D add_15_21 (.A0(count_bytes[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5133), .COUT(n5134), .S0(n111[19]), .S1(n111[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_21.INIT0 = 16'h5aaa;
    defparam add_15_21.INIT1 = 16'h5aaa;
    defparam add_15_21.INJECT1_0 = "NO";
    defparam add_15_21.INJECT1_1 = "NO";
    CCU2D add_15_31 (.A0(count_bytes[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5138), .S0(n111[29]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_31.INIT0 = 16'h5aaa;
    defparam add_15_31.INIT1 = 16'h0000;
    defparam add_15_31.INJECT1_0 = "NO";
    defparam add_15_31.INJECT1_1 = "NO";
    CCU2D add_17_5 (.A0(err_per_byte_5__N_722[2]), .B0(n1630), .C0(total_err_bits[3]), 
          .D0(GND_net), .A1(total_err_bits[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5140), .COUT(n5141), .S0(n144[3]), .S1(n144[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_5.INIT0 = 16'h7878;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    CCU2D add_17_25 (.A0(total_err_bits[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5150), .COUT(n5151), .S0(n144[23]), .S1(n144[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_25.INIT0 = 16'h5aaa;
    defparam add_17_25.INIT1 = 16'h5aaa;
    defparam add_17_25.INJECT1_0 = "NO";
    defparam add_17_25.INJECT1_1 = "NO";
    CCU2D add_15_29 (.A0(count_bytes[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5137), .COUT(n5138), .S0(n111[27]), .S1(n111[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_29.INIT0 = 16'h5aaa;
    defparam add_15_29.INIT1 = 16'h5aaa;
    defparam add_15_29.INJECT1_0 = "NO";
    defparam add_15_29.INJECT1_1 = "NO";
    CCU2D add_17_23 (.A0(total_err_bits[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5149), .COUT(n5150), .S0(n144[21]), .S1(n144[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_23.INIT0 = 16'h5aaa;
    defparam add_17_23.INIT1 = 16'h5aaa;
    defparam add_17_23.INJECT1_0 = "NO";
    defparam add_17_23.INJECT1_1 = "NO";
    CCU2D add_17_33 (.A0(total_err_bits[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5154), .S0(n144[31]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_33.INIT0 = 16'h5aaa;
    defparam add_17_33.INIT1 = 16'h0000;
    defparam add_17_33.INJECT1_0 = "NO";
    defparam add_17_33.INJECT1_1 = "NO";
    CCU2D add_17_21 (.A0(total_err_bits[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5148), .COUT(n5149), .S0(n144[19]), .S1(n144[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_21.INIT0 = 16'h5aaa;
    defparam add_17_21.INIT1 = 16'h5aaa;
    defparam add_17_21.INJECT1_0 = "NO";
    defparam add_17_21.INJECT1_1 = "NO";
    CCU2D add_17_19 (.A0(total_err_bits[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5147), .COUT(n5148), .S0(n144[17]), .S1(n144[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_19.INIT0 = 16'h5aaa;
    defparam add_17_19.INIT1 = 16'h5aaa;
    defparam add_17_19.INJECT1_0 = "NO";
    defparam add_17_19.INJECT1_1 = "NO";
    CCU2D add_17_31 (.A0(total_err_bits[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5153), .COUT(n5154), .S0(n144[29]), .S1(n144[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_31.INIT0 = 16'h5aaa;
    defparam add_17_31.INIT1 = 16'h5aaa;
    defparam add_17_31.INJECT1_0 = "NO";
    defparam add_17_31.INJECT1_1 = "NO";
    CCU2D add_17_17 (.A0(total_err_bits[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5146), .COUT(n5147), .S0(n144[15]), .S1(n144[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_17.INIT0 = 16'h5aaa;
    defparam add_17_17.INIT1 = 16'h5aaa;
    defparam add_17_17.INJECT1_0 = "NO";
    defparam add_17_17.INJECT1_1 = "NO";
    CCU2D add_17_29 (.A0(total_err_bits[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5152), .COUT(n5153), .S0(n144[27]), .S1(n144[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_29.INIT0 = 16'h5aaa;
    defparam add_17_29.INIT1 = 16'h5aaa;
    defparam add_17_29.INJECT1_0 = "NO";
    defparam add_17_29.INJECT1_1 = "NO";
    CCU2D add_17_15 (.A0(total_err_bits[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5145), .COUT(n5146), .S0(n144[13]), .S1(n144[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_15.INIT0 = 16'h5aaa;
    defparam add_17_15.INIT1 = 16'h5aaa;
    defparam add_17_15.INJECT1_0 = "NO";
    defparam add_17_15.INJECT1_1 = "NO";
    CCU2D add_17_27 (.A0(total_err_bits[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5151), .COUT(n5152), .S0(n144[25]), .S1(n144[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_27.INIT0 = 16'h5aaa;
    defparam add_17_27.INIT1 = 16'h5aaa;
    defparam add_17_27.INJECT1_0 = "NO";
    defparam add_17_27.INJECT1_1 = "NO";
    CCU2D add_17_13 (.A0(total_err_bits[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5144), .COUT(n5145), .S0(n144[11]), .S1(n144[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_17_13.INIT0 = 16'h5aaa;
    defparam add_17_13.INIT1 = 16'h5aaa;
    defparam add_17_13.INJECT1_0 = "NO";
    defparam add_17_13.INJECT1_1 = "NO";
    LUT4 byte_actual_39__I_0_i8_2_lut_rep_135 (.A(\rng_num[7] ), .B(\dec_data[7] ), 
         .Z(n6604)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i8_2_lut_rep_135.init = 16'h6666;
    LUT4 i2361_2_lut (.A(n144[0]), .B(n5196), .Z(n210[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(68[21] 76[28])
    defparam i2361_2_lut.init = 16'h2222;
    CCU2D add_15_9 (.A0(count_bytes[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5127), .COUT(n5128), .S0(n111[7]), .S1(n111[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_15_9.INIT0 = 16'h5aaa;
    defparam add_15_9.INIT1 = 16'h5aaa;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    LUT4 i284_4_lut_3_lut_4_lut (.A(\rng_num[7] ), .B(\dec_data[7] ), .C(n6560), 
         .D(n6605), .Z(n2)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i284_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 byte_actual_39__I_0_i7_2_lut_rep_136 (.A(\rng_num[6] ), .B(\dec_data[6] ), 
         .Z(n6605)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i7_2_lut_rep_136.init = 16'h6666;
    LUT4 byte_actual_39__I_0_i6_2_lut_rep_137 (.A(\rng_num[5] ), .B(\dec_data[5] ), 
         .Z(n6606)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i6_2_lut_rep_137.init = 16'h6666;
    LUT4 i319_4_lut_3_lut_4_lut (.A(\rng_num[5] ), .B(\dec_data[5] ), .C(n1538[0]), 
         .D(n6607), .Z(n2_adj_846)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i319_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i16_4_lut (.A(count_bytes[14]), .B(count_bytes[1]), .C(count_bytes[4]), 
         .D(count_bytes[0]), .Z(n46)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_91_4_lut (.A(\rng_num[5] ), .B(\dec_data[5] ), .C(n1538[0]), 
         .D(n6607), .Z(n6560)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam i2_3_lut_rep_91_4_lut.init = 16'h6996;
    LUT4 byte_actual_39__I_0_i5_2_lut_rep_138 (.A(\rng_num[4] ), .B(\dec_data[4] ), 
         .Z(n6607)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(41[19:30])
    defparam byte_actual_39__I_0_i5_2_lut_rep_138.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(n6609), .B(n6608), .C(n6611), .D(n6610), 
         .Z(n1538[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(50[22:27])
    defparam i2_3_lut_4_lut.init = 16'h6996;
    LUT4 i321_2_lut_rep_68_3_lut_4_lut (.A(n6609), .B(n6608), .C(n2_adj_846), 
         .D(n6571), .Z(n6537)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(50[22:27])
    defparam i321_2_lut_rep_68_3_lut_4_lut.init = 16'h8778;
    LUT4 i328_4_lut_3_lut_4_lut (.A(n6609), .B(n6608), .C(n2_adj_846), 
         .D(n6571), .Z(err_per_byte_5__N_722[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(50[22:27])
    defparam i328_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i288_2_lut_3_lut_4_lut (.A(n6572), .B(n6571), .C(n2), .D(n2_adj_846), 
         .Z(n1630)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(50[22:27])
    defparam i288_2_lut_3_lut_4_lut.init = 16'h9060;
    LUT4 i1_2_lut_4_lut (.A(n6606), .B(n6607), .C(n1538[0]), .D(n6604), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/calc_ber.vhd(50[22:27])
    defparam i1_2_lut_4_lut.init = 16'h6996;
    LUT4 i15_2_lut (.A(count_bytes[5]), .B(count_bytes[21]), .Z(n45)) /* synthesis lut_function=(A (B)) */ ;
    defparam i15_2_lut.init = 16'h8888;
    LUT4 i28_4_lut (.A(n37), .B(n56), .C(n50), .D(n38), .Z(n58)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i28_4_lut.init = 16'h8000;
    LUT4 i24_4_lut (.A(count_bytes[29]), .B(n48), .C(n34), .D(count_bytes[13]), 
         .Z(n54)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_CLK_c, tx_active_N_832, FT601_WR_N_c, fifo_emp, 
            FT601_TXE_N_c);
    input FT601_CLK_c;
    output tx_active_N_832;
    output FT601_WR_N_c;
    input fifo_emp;
    input FT601_TXE_N_c;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    
    wire tx_active, tx_active_N_831;
    
    FD1S3AX tx_active_24 (.D(tx_active_N_831), .CK(FT601_CLK_c), .Q(tx_active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=256, LSE_RLINE=256 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd(59[9] 82[16])
    defparam tx_active_24.GSR = "ENABLED";
    LUT4 fifo_rd_en_I_0_1_lut (.A(tx_active_N_832), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd(86[21:33])
    defparam fifo_rd_en_I_0_1_lut.init = 16'h5555;
    LUT4 tx_active_I_80_3_lut_4_lut (.A(fifo_emp), .B(FT601_TXE_N_c), .C(tx_active), 
         .D(tx_active_N_832), .Z(tx_active_N_831)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tx_active_I_80_3_lut_4_lut.init = 16'hf101;
    LUT4 i1_2_lut_3_lut (.A(fifo_emp), .B(FT601_TXE_N_c), .C(tx_active), 
         .Z(tx_active_N_832)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (\enc_data[48] , \enc_data[43] , \enc_data[42] , \enc_data[41] , 
            \enc_data[40] , \enc_data[47] , \enc_data[45] , \enc_data[49] , 
            \enc_data[46] , \dec_data[32] , sclk, rbyteclk_N_428, \enc_data[44] , 
            \dec_data[33] , \dec_data[34] , \dec_data[35] , \dec_data[36] , 
            \dec_data[37] , \dec_data[38] , \dec_data[39] );
    input \enc_data[48] ;
    input \enc_data[43] ;
    input \enc_data[42] ;
    input \enc_data[41] ;
    input \enc_data[40] ;
    input \enc_data[47] ;
    input \enc_data[45] ;
    input \enc_data[49] ;
    input \enc_data[46] ;
    output \dec_data[32] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[44] ;
    output \dec_data[33] ;
    output \dec_data[34] ;
    output \dec_data[35] ;
    output \dec_data[36] ;
    output \dec_data[37] ;
    output \dec_data[38] ;
    output \dec_data[39] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire n6616, n2782, or127_N_503, n4, n6342, n6550, n5920, do_N_535, 
        n6341, or122_N_483, n2824, or123_N_490, ao, ao_N_538, bo, 
        bo_N_537, co, co_N_536, do, eo, eo_N_534, fo, fo_N_533, 
        go, go_N_532, ho, ho_N_531, n6565, or122_N_485, p13, n6539, 
        n6615, n6580, n6577, n6562, p22_N_446, n5763, n6542, n6029, 
        n6578, n4_adj_845, n6553, n6081, n26, n2845, n5888, or132, 
        n6097;
    
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n6616)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i1_2_lut_3_lut (.A(n2782), .B(\enc_data[42] ), .C(\enc_data[41] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), .C(\enc_data[42] ), 
         .D(\enc_data[43] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 n2845_bdd_4_lut (.A(\enc_data[47] ), .B(\enc_data[45] ), .C(\enc_data[49] ), 
         .D(\enc_data[46] ), .Z(n6342)) /* synthesis lut_function=(!(A (B (C))+!A (C+(D)))) */ ;
    defparam n2845_bdd_4_lut.init = 16'h2a2f;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[40] ), .B(n6550), .C(n5920), 
         .D(\enc_data[43] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 n2845_bdd_1_lut (.A(\enc_data[47] ), .Z(n6341)) /* synthesis lut_function=(!(A)) */ ;
    defparam n2845_bdd_1_lut.init = 16'h5555;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n2824), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5920)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[32] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n6565), .B(or122_N_485), .C(p13), .D(\enc_data[44] ), 
         .Z(n2824)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i1_2_lut_rep_81 (.A(\enc_data[42] ), .B(n2782), .Z(n6550)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_81.init = 16'h8888;
    LUT4 i1_2_lut_rep_70_3_lut (.A(\enc_data[42] ), .B(n2782), .C(\enc_data[40] ), 
         .Z(n6539)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_70_3_lut.init = 16'h8080;
    PFUMX i4755 (.BLUT(n6615), .ALUT(n6616), .C0(\enc_data[40] ), .Z(or122_N_485));
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[33] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[34] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[35] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[36] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[37] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[38] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[39] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=213, LSE_RLINE=213 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_93_4_lut (.A(n6580), .B(n6577), .C(\enc_data[47] ), 
         .D(\enc_data[49] ), .Z(n6562)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_93_4_lut.init = 16'h0110;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n6615)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_112 (.A(p22_N_446), .B(\enc_data[44] ), .C(n4), 
         .D(\enc_data[48] ), .Z(n2782)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_112.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n6539), .B(\enc_data[41] ), .C(or122_N_483), 
         .D(n5763), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_113 (.A(\enc_data[41] ), .B(n2824), .C(n6550), .D(or123_N_490), 
         .Z(n5763)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_113.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5763), .B(\enc_data[42] ), .C(n6542), .D(n6029), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(n6578), .B(\enc_data[44] ), .C(n4_adj_845), 
         .D(n6553), .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h393c;
    LUT4 i1_4_lut_adj_114 (.A(\enc_data[48] ), .B(p13), .C(n6081), .D(n26), 
         .Z(n4_adj_845)) /* synthesis lut_function=(A (B (D))+!A (B+!(C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_114.init = 16'hcd45;
    LUT4 i1_2_lut (.A(\enc_data[43] ), .B(\enc_data[44] ), .Z(n26)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[46] ), .B(\enc_data[45] ), .C(n2845), 
         .D(n5888), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 i1_2_lut_adj_115 (.A(\enc_data[49] ), .B(\enc_data[47] ), .Z(n5888)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_2_lut_adj_115.init = 16'h8888;
    LUT4 i1506_4_lut (.A(\enc_data[45] ), .B(\enc_data[49] ), .C(\enc_data[46] ), 
         .D(\enc_data[47] ), .Z(or132)) /* synthesis lut_function=(A (B (C))+!A !(B (C)+!B (C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[11] 207[39])
    defparam i1506_4_lut.init = 16'h8485;
    LUT4 xg_I_0_4_lut (.A(or132), .B(\enc_data[46] ), .C(n6562), .D(n6097), 
         .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(234[10:19])
    defparam xg_I_0_4_lut.init = 16'h3633;
    LUT4 i4482_4_lut (.A(\enc_data[47] ), .B(\enc_data[49] ), .C(\enc_data[46] ), 
         .D(\enc_data[45] ), .Z(n6097)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4482_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_84 (.A(n2782), .B(\enc_data[42] ), .Z(n6553)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_84.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2782), .B(\enc_data[42] ), .C(n5920), 
         .D(\enc_data[40] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_73_3_lut (.A(n2782), .B(\enc_data[42] ), .C(\enc_data[40] ), 
         .Z(n6542)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_73_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_4_lut (.A(n6565), .B(\enc_data[49] ), .C(\enc_data[47] ), 
         .D(or132), .Z(n2845)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(214[12] 216[48])
    defparam i1_2_lut_4_lut.init = 16'hff14;
    LUT4 enc_data_43__bdd_4_lut (.A(\enc_data[43] ), .B(\enc_data[42] ), 
         .C(\enc_data[40] ), .D(\enc_data[41] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_43__bdd_4_lut.init = 16'h0116;
    LUT4 i1_2_lut_rep_108 (.A(\enc_data[48] ), .B(\enc_data[44] ), .Z(n6577)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_108.init = 16'heeee;
    LUT4 i1_2_lut_rep_109 (.A(\enc_data[41] ), .B(\enc_data[40] ), .Z(n6578)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_109.init = 16'h8888;
    LUT4 i4416_2_lut_3_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), 
         .C(\enc_data[44] ), .D(\enc_data[48] ), .Z(n6029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4416_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4467_3_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), .C(n6580), 
         .D(\enc_data[44] ), .Z(n6081)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4467_3_lut_4_lut.init = 16'hffe0;
    LUT4 i4404_2_lut_rep_111 (.A(\enc_data[42] ), .B(\enc_data[43] ), .Z(n6580)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4404_2_lut_rep_111.init = 16'heeee;
    LUT4 i1_2_lut_rep_96_3_lut_4_lut (.A(\enc_data[42] ), .B(\enc_data[43] ), 
         .C(\enc_data[44] ), .D(\enc_data[48] ), .Z(n6565)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_96_3_lut_4_lut.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), 
         .C(\enc_data[43] ), .D(\enc_data[42] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[48] ), .B(\enc_data[44] ), .C(\enc_data[40] ), 
         .D(\enc_data[41] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[48] ), .B(\enc_data[44] ), .C(\enc_data[43] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    PFUMX i4661 (.BLUT(n6342), .ALUT(n6341), .C0(n2845), .Z(ho_N_531));
    
endmodule
//
// Verilog Description of module deserializer
//

module deserializer (data_valid, sclk, LED_c, sclk_enable_231, bit_slip_N_318, 
            enc_data, rx_rdy, rbyteclk_N_428, buf_clk, GND_net, buf_dataini, 
            clk_int);
    output data_valid;
    output sclk;
    output LED_c;
    input sclk_enable_231;
    output bit_slip_N_318;
    output [49:0]enc_data;
    output rx_rdy;
    output rbyteclk_N_428;
    input buf_clk;
    input GND_net;
    input [4:0]buf_dataini;
    input clk_int;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(39[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    wire [39:0]q40_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(61[12:19])
    
    wire bit_slip_N_312;
    wire [39:0]n1362;
    
    wire n1950;
    wire [49:0]q50_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(62[12:19])
    
    wire n6573, n2100, n2098;
    wire [19:0]n1761;
    
    wire n2149, n6159, n2150;
    wire [39:0]n1782;
    
    wire n2139, n2140, n2137, n2138, n2097;
    wire [7:0]n523;
    wire [2:0]hold_slip;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(74[12:21])
    
    wire n6568;
    wire [2:0]n1;
    
    wire n2073, n2135, n2136, n6564, sclk_enable_190, n2133, n2134, 
        n6128, n2123, n2124, n2121, n2122, n1968, n2037;
    wire [39:0]q_tmp;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(64[12:17])
    
    wire n2153, n2155, n2119, n2120, n2047, sclk_enable_184, n1969, 
        n2049;
    wire [3:0]lnk_trnd_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(73[12:24])
    
    wire sclk_enable_193, n13, n2165, n2117, n2118, n2167, n2107, 
        n2108, n2169, n2102, n2171, n2105, n2106, n16, n6013, 
        n12, n12_adj_843, n8_adj_844, n6049, n5827, n2103, n2104, 
        n2114, n2116, n2130, n2132, n2146, n2148, n2152, n2154, 
        n2156, n2162, n2164, n2166, n2168, n2170, n2172, n2059, 
        sclk_enable_106;
    wire [2:0]n673;
    
    wire n3109, n3113, n3112, n3111, bit_slip, sclk_enable_107, 
        n5805, n2038, sclk_enable_186, n2039, n2041, sclk_enable_188, 
        n2048, n2050, n2051, n2053, n2060, n2062, n2063, n2065, 
        n2072, n2074, n2075, n2077, n2084, n2086, n2087, n2089, 
        n10, n2083, n2101, n2085, n7, n2061, n2071, n2113, n2115, 
        n2129, n2131, n2099, n2145, n2147, n2161, n2163, n2151;
    
    LUT4 mux_162_i25_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(bit_slip_N_312), 
         .Z(n1362[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i25_3_lut.init = 16'hcaca;
    FD1S3IX q_valid_66 (.D(LED_c), .CK(sclk), .CD(n1950), .Q(data_valid));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_valid_66.GSR = "ENABLED";
    FD1P3IX q50_buf__i5 (.D(n2100), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i5.GSR = "ENABLED";
    FD1P3IX q50_buf__i4 (.D(n2098), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i4.GSR = "ENABLED";
    PFUMX i636 (.BLUT(n1761[12]), .ALUT(n2149), .C0(n6159), .Z(n2150));
    FD1P3IX q50_buf__i3 (.D(n1782[1]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i3.GSR = "ENABLED";
    PFUMX i626 (.BLUT(n1761[11]), .ALUT(n2139), .C0(n6159), .Z(n2140));
    PFUMX i624 (.BLUT(n1761[10]), .ALUT(n2137), .C0(n6159), .Z(n2138));
    LUT4 i584_3_lut (.A(n2097), .B(q40_buf[2]), .C(n523[4]), .Z(n2098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i584_3_lut.init = 16'hcaca;
    FD1S3IX hold_slip__i0 (.D(n1[0]), .CK(sclk), .CD(n6568), .Q(hold_slip[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i0.GSR = "ENABLED";
    LUT4 i559_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n523[3]), .Z(n2073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i559_3_lut.init = 16'hcaca;
    PFUMX i622 (.BLUT(n1761[9]), .ALUT(n2135), .C0(n6159), .Z(n2136));
    LUT4 i4623_2_lut_4_lut (.A(n523[3]), .B(n6564), .C(n523[2]), .D(bit_slip_N_312), 
         .Z(sclk_enable_190)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam i4623_2_lut_4_lut.init = 16'h0001;
    PFUMX i620 (.BLUT(n1761[8]), .ALUT(n2133), .C0(n6159), .Z(n2134));
    LUT4 i4627_2_lut (.A(n523[3]), .B(n523[2]), .Z(n6128)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i4627_2_lut.init = 16'heeee;
    PFUMX i610 (.BLUT(n1761[7]), .ALUT(n2123), .C0(n6159), .Z(n2124));
    PFUMX i608 (.BLUT(n1761[6]), .ALUT(n2121), .C0(n6159), .Z(n2122));
    LUT4 i466_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n523[3]), .Z(n1968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i466_3_lut.init = 16'hcaca;
    LUT4 mux_162_i1_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(bit_slip_N_312), 
         .Z(n1362[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i1_3_lut.init = 16'hcaca;
    LUT4 i523_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n523[3]), .Z(n2037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i523_3_lut.init = 16'hcaca;
    LUT4 mux_162_i2_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(bit_slip_N_312), 
         .Z(n1362[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i2_3_lut.init = 16'hcaca;
    LUT4 mux_354_i14_3_lut (.A(q_tmp[31]), .B(q40_buf[25]), .C(n523[2]), 
         .Z(n1761[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i14_3_lut.init = 16'hcaca;
    LUT4 i639_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n523[4]), .Z(n2153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i639_3_lut.init = 16'hcaca;
    LUT4 mux_354_i15_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(n523[2]), 
         .Z(n1761[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i15_3_lut.init = 16'hcaca;
    LUT4 i641_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n523[4]), .Z(n2155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i641_3_lut.init = 16'hcaca;
    PFUMX i606 (.BLUT(n1761[5]), .ALUT(n2119), .C0(n6159), .Z(n2120));
    LUT4 mux_354_i16_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(n523[2]), 
         .Z(n1761[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i16_3_lut.init = 16'hcaca;
    LUT4 i533_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n523[3]), .Z(n2047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i533_3_lut.init = 16'hcaca;
    LUT4 mux_162_i9_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(bit_slip_N_312), 
         .Z(n1362[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i9_3_lut.init = 16'hcaca;
    FD1P3IX q50_buf__i2 (.D(n1782[0]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i2.GSR = "ENABLED";
    FD1P3IX q50_buf__i1 (.D(q_tmp[1]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i1.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i0 (.D(n1969), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i0.GSR = "ENABLED";
    LUT4 i535_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n523[3]), .Z(n2049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i535_3_lut.init = 16'hcaca;
    FD1P3AX lnk_trnd_buf_i0_i0 (.D(n13), .SP(sclk_enable_193), .CK(sclk), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i0.GSR = "ENABLED";
    LUT4 i651_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(n523[4]), .Z(n2165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i651_3_lut.init = 16'hcaca;
    LUT4 mux_354_i17_3_lut (.A(q_tmp[38]), .B(q40_buf[32]), .C(n523[2]), 
         .Z(n1761[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i17_3_lut.init = 16'hcaca;
    PFUMX i604 (.BLUT(n1761[4]), .ALUT(n2117), .C0(n6159), .Z(n2118));
    LUT4 i653_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(n523[4]), .Z(n2167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i653_3_lut.init = 16'hcaca;
    LUT4 mux_354_i18_3_lut (.A(q_tmp[39]), .B(q40_buf[33]), .C(n523[2]), 
         .Z(n1761[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i18_3_lut.init = 16'hcaca;
    PFUMX i594 (.BLUT(n1761[3]), .ALUT(n2107), .C0(n6159), .Z(n2108));
    FD1S3AX counter_FSM_i1 (.D(n6564), .CK(sclk), .Q(bit_slip_N_318));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i1.GSR = "ENABLED";
    LUT4 i655_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n523[4]), .Z(n2169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i655_3_lut.init = 16'hcaca;
    FD1P3IX q50_buf__i6 (.D(n2102), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i6.GSR = "ENABLED";
    LUT4 mux_354_i19_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(n523[2]), 
         .Z(n1761[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i19_3_lut.init = 16'hcaca;
    LUT4 i657_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n523[4]), .Z(n2171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i657_3_lut.init = 16'hcaca;
    LUT4 mux_354_i20_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(n523[2]), 
         .Z(n1761[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i20_3_lut.init = 16'hcaca;
    PFUMX i592 (.BLUT(n1761[2]), .ALUT(n2105), .C0(n6159), .Z(n2106));
    LUT4 i8_4_lut (.A(q50_buf[1]), .B(n16), .C(n6013), .D(q50_buf[7]), 
         .Z(n12)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i8_4_lut.init = 16'h0008;
    LUT4 i6_4_lut (.A(q50_buf[1]), .B(n12_adj_843), .C(n8_adj_844), .D(n6049), 
         .Z(n5827)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i6_4_lut.init = 16'h0040;
    LUT4 mux_162_i26_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(bit_slip_N_312), 
         .Z(n1362[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i26_3_lut.init = 16'hcaca;
    LUT4 mux_162_i10_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(bit_slip_N_312), 
         .Z(n1362[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i10_3_lut.init = 16'hcaca;
    PFUMX i590 (.BLUT(n1761[1]), .ALUT(n2103), .C0(n6159), .Z(n2104));
    FD1P3IX q50_buf__i7 (.D(n2104), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i7.GSR = "ENABLED";
    FD1P3IX q50_buf__i8 (.D(n2106), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i8.GSR = "ENABLED";
    FD1P3IX q50_buf__i9 (.D(n2108), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i9.GSR = "ENABLED";
    FD1P3IX q50_buf__i10 (.D(q_tmp[8]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i10.GSR = "ENABLED";
    FD1P3IX q50_buf__i11 (.D(q_tmp[9]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i11.GSR = "ENABLED";
    FD1P3IX q50_buf__i12 (.D(n1782[8]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i12.GSR = "ENABLED";
    FD1P3IX q50_buf__i13 (.D(n1782[9]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i13.GSR = "ENABLED";
    FD1P3IX q50_buf__i14 (.D(n2114), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i14.GSR = "ENABLED";
    FD1P3IX q50_buf__i15 (.D(n2116), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i15.GSR = "ENABLED";
    FD1P3IX q50_buf__i16 (.D(n2118), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i16.GSR = "ENABLED";
    FD1P3IX q50_buf__i17 (.D(n2120), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i17.GSR = "ENABLED";
    FD1P3IX q50_buf__i18 (.D(n2122), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i18.GSR = "ENABLED";
    FD1P3IX q50_buf__i19 (.D(n2124), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i19.GSR = "ENABLED";
    FD1P3IX q50_buf__i20 (.D(q_tmp[16]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i20.GSR = "ENABLED";
    FD1P3IX q50_buf__i21 (.D(q_tmp[17]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i21.GSR = "ENABLED";
    FD1P3IX q50_buf__i22 (.D(n1782[16]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i22.GSR = "ENABLED";
    FD1P3IX q50_buf__i23 (.D(n1782[17]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i23.GSR = "ENABLED";
    FD1P3IX q50_buf__i24 (.D(n2130), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i24.GSR = "ENABLED";
    FD1P3IX q50_buf__i25 (.D(n2132), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i25.GSR = "ENABLED";
    FD1P3IX q50_buf__i26 (.D(n2134), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i26.GSR = "ENABLED";
    FD1P3IX q50_buf__i27 (.D(n2136), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i27.GSR = "ENABLED";
    FD1P3IX q50_buf__i28 (.D(n2138), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i28.GSR = "ENABLED";
    FD1P3IX q50_buf__i29 (.D(n2140), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i29.GSR = "ENABLED";
    FD1P3IX q50_buf__i30 (.D(q_tmp[24]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i30.GSR = "ENABLED";
    FD1P3IX q50_buf__i31 (.D(q_tmp[25]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i31.GSR = "ENABLED";
    FD1P3IX q50_buf__i32 (.D(n1782[24]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i32.GSR = "ENABLED";
    FD1P3IX q50_buf__i33 (.D(n1782[25]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i33.GSR = "ENABLED";
    FD1P3IX q50_buf__i34 (.D(n2146), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i34.GSR = "ENABLED";
    FD1P3IX q50_buf__i35 (.D(n2148), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i35.GSR = "ENABLED";
    FD1P3IX q50_buf__i36 (.D(n2150), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i36.GSR = "ENABLED";
    FD1P3IX q50_buf__i37 (.D(n2152), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i37.GSR = "ENABLED";
    FD1P3IX q50_buf__i38 (.D(n2154), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i38.GSR = "ENABLED";
    FD1P3IX q50_buf__i39 (.D(n2156), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i39.GSR = "ENABLED";
    FD1P3IX q50_buf__i40 (.D(q_tmp[32]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[40])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i40.GSR = "ENABLED";
    FD1P3IX q50_buf__i41 (.D(q_tmp[33]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[41])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i41.GSR = "ENABLED";
    FD1P3IX q50_buf__i42 (.D(n1782[32]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[42])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i42.GSR = "ENABLED";
    FD1P3IX q50_buf__i43 (.D(n1782[33]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[43])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i43.GSR = "ENABLED";
    FD1P3IX q50_buf__i44 (.D(n2162), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[44])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i44.GSR = "ENABLED";
    FD1P3IX q50_buf__i45 (.D(n2164), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[45])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i45.GSR = "ENABLED";
    FD1P3IX q50_buf__i46 (.D(n2166), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[46])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i46.GSR = "ENABLED";
    FD1P3IX q50_buf__i47 (.D(n2168), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i47.GSR = "ENABLED";
    FD1P3IX q50_buf__i48 (.D(n2170), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[48])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i48.GSR = "ENABLED";
    FD1P3IX q50_buf__i49 (.D(n2172), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[49])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i49.GSR = "ENABLED";
    LUT4 i545_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n523[3]), .Z(n2059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i545_3_lut.init = 16'hcaca;
    FD1P3IX hold_slip__i1 (.D(n673[1]), .SP(sclk_enable_106), .CD(n6568), 
            .CK(sclk), .Q(hold_slip[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i1.GSR = "ENABLED";
    FD1P3IX hold_slip__i2 (.D(n673[2]), .SP(sclk_enable_106), .CD(n6568), 
            .CK(sclk), .Q(hold_slip[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i2.GSR = "ENABLED";
    FD1S3IX q__i1 (.D(q50_buf[1]), .CK(sclk), .CD(n3109), .Q(enc_data[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i1.GSR = "ENABLED";
    LUT4 mux_162_i17_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(bit_slip_N_312), 
         .Z(n1362[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i17_3_lut.init = 16'hcaca;
    FD1S3IX counter_FSM_i5 (.D(sclk_enable_184), .CK(sclk), .CD(n3113), 
            .Q(n523[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i5.GSR = "ENABLED";
    FD1S3IX counter_FSM_i4 (.D(sclk_enable_184), .CK(sclk), .CD(n3112), 
            .Q(n523[3]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i4.GSR = "ENABLED";
    FD1S3IX counter_FSM_i3 (.D(sclk_enable_184), .CK(sclk), .CD(n3111), 
            .Q(n523[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i3.GSR = "ENABLED";
    FD1P3AX bit_slip_69 (.D(n5805), .SP(sclk_enable_107), .CK(sclk), .Q(bit_slip));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam bit_slip_69.GSR = "ENABLED";
    FD1S3IX q__i0 (.D(q50_buf[0]), .CK(sclk), .CD(n3109), .Q(enc_data[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i0.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(q50_buf[8]), .B(q50_buf[2]), .C(q50_buf[3]), .D(q50_buf[4]), 
         .Z(n12_adj_843)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i5_4_lut.init = 16'h8000;
    FD1S3IX q__i2 (.D(q50_buf[2]), .CK(sclk), .CD(n3109), .Q(enc_data[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i2.GSR = "ENABLED";
    FD1S3IX q__i3 (.D(q50_buf[3]), .CK(sclk), .CD(n3109), .Q(enc_data[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i3.GSR = "ENABLED";
    FD1S3IX q__i4 (.D(q50_buf[4]), .CK(sclk), .CD(n3109), .Q(enc_data[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i4.GSR = "ENABLED";
    FD1S3IX q__i5 (.D(q50_buf[5]), .CK(sclk), .CD(n3109), .Q(enc_data[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i5.GSR = "ENABLED";
    FD1S3IX q__i6 (.D(q50_buf[6]), .CK(sclk), .CD(n3109), .Q(enc_data[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i6.GSR = "ENABLED";
    FD1S3IX q__i7 (.D(q50_buf[7]), .CK(sclk), .CD(n3109), .Q(enc_data[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i7.GSR = "ENABLED";
    FD1S3IX q__i8 (.D(q50_buf[8]), .CK(sclk), .CD(n3109), .Q(enc_data[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i8.GSR = "ENABLED";
    FD1S3IX q__i9 (.D(q50_buf[9]), .CK(sclk), .CD(n3109), .Q(enc_data[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i9.GSR = "ENABLED";
    FD1S3IX q__i10 (.D(q50_buf[10]), .CK(sclk), .CD(n3109), .Q(enc_data[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i10.GSR = "ENABLED";
    FD1S3IX q__i11 (.D(q50_buf[11]), .CK(sclk), .CD(n3109), .Q(enc_data[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i11.GSR = "ENABLED";
    FD1S3IX q__i12 (.D(q50_buf[12]), .CK(sclk), .CD(n3109), .Q(enc_data[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i12.GSR = "ENABLED";
    FD1S3IX q__i13 (.D(q50_buf[13]), .CK(sclk), .CD(n3109), .Q(enc_data[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i13.GSR = "ENABLED";
    FD1S3IX q__i14 (.D(q50_buf[14]), .CK(sclk), .CD(n3109), .Q(enc_data[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i14.GSR = "ENABLED";
    FD1S3IX q__i15 (.D(q50_buf[15]), .CK(sclk), .CD(n3109), .Q(enc_data[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i15.GSR = "ENABLED";
    FD1S3IX q__i16 (.D(q50_buf[16]), .CK(sclk), .CD(n3109), .Q(enc_data[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i16.GSR = "ENABLED";
    FD1S3IX q__i17 (.D(q50_buf[17]), .CK(sclk), .CD(n3109), .Q(enc_data[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i17.GSR = "ENABLED";
    FD1S3IX q__i18 (.D(q50_buf[18]), .CK(sclk), .CD(n3109), .Q(enc_data[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i18.GSR = "ENABLED";
    FD1S3IX q__i19 (.D(q50_buf[19]), .CK(sclk), .CD(n3109), .Q(enc_data[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i19.GSR = "ENABLED";
    FD1S3IX q__i20 (.D(q50_buf[20]), .CK(sclk), .CD(n3109), .Q(enc_data[20])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i20.GSR = "ENABLED";
    FD1S3IX q__i21 (.D(q50_buf[21]), .CK(sclk), .CD(n3109), .Q(enc_data[21])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i21.GSR = "ENABLED";
    FD1S3IX q__i22 (.D(q50_buf[22]), .CK(sclk), .CD(n3109), .Q(enc_data[22])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i22.GSR = "ENABLED";
    FD1S3IX q__i23 (.D(q50_buf[23]), .CK(sclk), .CD(n3109), .Q(enc_data[23])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i23.GSR = "ENABLED";
    FD1S3IX q__i24 (.D(q50_buf[24]), .CK(sclk), .CD(n3109), .Q(enc_data[24])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i24.GSR = "ENABLED";
    FD1S3IX q__i25 (.D(q50_buf[25]), .CK(sclk), .CD(n3109), .Q(enc_data[25])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i25.GSR = "ENABLED";
    FD1S3IX q__i26 (.D(q50_buf[26]), .CK(sclk), .CD(n3109), .Q(enc_data[26])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i26.GSR = "ENABLED";
    FD1S3IX q__i27 (.D(q50_buf[27]), .CK(sclk), .CD(n3109), .Q(enc_data[27])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i27.GSR = "ENABLED";
    FD1S3IX q__i28 (.D(q50_buf[28]), .CK(sclk), .CD(n3109), .Q(enc_data[28])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i28.GSR = "ENABLED";
    FD1S3IX q__i29 (.D(q50_buf[29]), .CK(sclk), .CD(n3109), .Q(enc_data[29])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i29.GSR = "ENABLED";
    FD1S3IX q__i30 (.D(q50_buf[30]), .CK(sclk), .CD(n3109), .Q(enc_data[30])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i30.GSR = "ENABLED";
    FD1S3IX q__i31 (.D(q50_buf[31]), .CK(sclk), .CD(n3109), .Q(enc_data[31])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i31.GSR = "ENABLED";
    FD1S3IX q__i32 (.D(q50_buf[32]), .CK(sclk), .CD(n3109), .Q(enc_data[32])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i32.GSR = "ENABLED";
    FD1S3IX q__i33 (.D(q50_buf[33]), .CK(sclk), .CD(n3109), .Q(enc_data[33])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i33.GSR = "ENABLED";
    FD1S3IX q__i34 (.D(q50_buf[34]), .CK(sclk), .CD(n3109), .Q(enc_data[34])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i34.GSR = "ENABLED";
    FD1S3IX q__i35 (.D(q50_buf[35]), .CK(sclk), .CD(n3109), .Q(enc_data[35])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i35.GSR = "ENABLED";
    FD1S3IX q__i36 (.D(q50_buf[36]), .CK(sclk), .CD(n3109), .Q(enc_data[36])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i36.GSR = "ENABLED";
    FD1S3IX q__i37 (.D(q50_buf[37]), .CK(sclk), .CD(n3109), .Q(enc_data[37])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i37.GSR = "ENABLED";
    FD1S3IX q__i38 (.D(q50_buf[38]), .CK(sclk), .CD(n3109), .Q(enc_data[38])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i38.GSR = "ENABLED";
    FD1S3IX q__i39 (.D(q50_buf[39]), .CK(sclk), .CD(n3109), .Q(enc_data[39])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i39.GSR = "ENABLED";
    FD1S3IX q__i40 (.D(q50_buf[40]), .CK(sclk), .CD(n3109), .Q(enc_data[40])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i40.GSR = "ENABLED";
    FD1S3IX q__i41 (.D(q50_buf[41]), .CK(sclk), .CD(n3109), .Q(enc_data[41])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i41.GSR = "ENABLED";
    FD1S3IX q__i42 (.D(q50_buf[42]), .CK(sclk), .CD(n3109), .Q(enc_data[42])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i42.GSR = "ENABLED";
    FD1S3IX q__i43 (.D(q50_buf[43]), .CK(sclk), .CD(n3109), .Q(enc_data[43])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i43.GSR = "ENABLED";
    FD1S3IX q__i44 (.D(q50_buf[44]), .CK(sclk), .CD(n3109), .Q(enc_data[44])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i44.GSR = "ENABLED";
    FD1S3IX q__i45 (.D(q50_buf[45]), .CK(sclk), .CD(n3109), .Q(enc_data[45])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i45.GSR = "ENABLED";
    FD1S3IX q__i46 (.D(q50_buf[46]), .CK(sclk), .CD(n3109), .Q(enc_data[46])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i46.GSR = "ENABLED";
    FD1S3IX q__i47 (.D(q50_buf[47]), .CK(sclk), .CD(n3109), .Q(enc_data[47])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i47.GSR = "ENABLED";
    FD1S3IX q__i48 (.D(q50_buf[48]), .CK(sclk), .CD(n3109), .Q(enc_data[48])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i48.GSR = "ENABLED";
    FD1S3IX q__i49 (.D(q50_buf[49]), .CK(sclk), .CD(n3109), .Q(enc_data[49])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i49.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i1 (.D(n2038), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i2 (.D(n2039), .SP(sclk_enable_186), .CK(sclk), .Q(q_tmp[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i3 (.D(n2041), .SP(sclk_enable_186), .CK(sclk), .Q(q_tmp[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i4 (.D(n1362[4]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i5 (.D(n1362[5]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i6 (.D(q40_buf[6]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i7 (.D(q40_buf[7]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i8 (.D(n2048), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i9 (.D(n2050), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i10 (.D(n2051), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i11 (.D(n2053), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i12 (.D(n1362[12]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i13 (.D(n1362[13]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i14 (.D(q40_buf[14]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i15 (.D(q40_buf[15]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i16 (.D(n2060), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i17 (.D(n2062), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i18 (.D(n2063), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i19 (.D(n2065), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i20 (.D(n1362[20]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i21 (.D(n1362[21]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i22 (.D(q40_buf[22]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i23 (.D(q40_buf[23]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i24 (.D(n2072), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i25 (.D(n2074), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i26 (.D(n2075), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i27 (.D(n2077), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i28 (.D(n1362[28]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i29 (.D(n1362[29]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i30 (.D(q40_buf[30]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i31 (.D(q40_buf[31]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i32 (.D(n2084), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i33 (.D(n2086), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i34 (.D(n2087), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i35 (.D(n2089), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i36 (.D(n1362[36]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i37 (.D(n1362[37]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i38 (.D(q40_buf[38]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i39 (.D(q40_buf[39]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i1 (.D(lnk_trnd_buf[0]), .SP(sclk_enable_193), 
            .CK(sclk), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(q50_buf[7]), .B(q50_buf[5]), .Z(n8_adj_844)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4436_2_lut (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n6049)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4436_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(q50_buf[3]), .B(q50_buf[4]), .C(q50_buf[2]), .D(n10), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i7_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_110 (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i1_2_lut_adj_110.init = 16'h8888;
    LUT4 i4400_2_lut (.A(q50_buf[5]), .B(q50_buf[8]), .Z(n6013)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4400_2_lut.init = 16'heeee;
    FD1P3AX lnk_trnd_buf_i0_i2 (.D(lnk_trnd_buf[1]), .SP(sclk_enable_193), 
            .CK(sclk), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i3 (.D(lnk_trnd_buf[2]), .SP(sclk_enable_193), 
            .CK(sclk), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i3.GSR = "ENABLED";
    LUT4 i569_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n523[3]), .Z(n2083)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i569_3_lut.init = 16'hcaca;
    PFUMX i588 (.BLUT(n1761[0]), .ALUT(n2101), .C0(n6159), .Z(n2102));
    LUT4 i4621_2_lut (.A(n523[4]), .B(n523[3]), .Z(n6159)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i4621_2_lut.init = 16'heeee;
    PFUMX i572 (.BLUT(n1362[33]), .ALUT(n2085), .C0(n6128), .Z(n2086));
    LUT4 mux_162_i33_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(bit_slip_N_312), 
         .Z(n1362[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i33_3_lut.init = 16'hcaca;
    LUT4 i571_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n523[3]), .Z(n2085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i571_3_lut.init = 16'hcaca;
    LUT4 mux_162_i22_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(bit_slip_N_312), 
         .Z(n1362[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i22_3_lut.init = 16'hcaca;
    PFUMX i570 (.BLUT(n1362[32]), .ALUT(n2083), .C0(n6128), .Z(n2084));
    LUT4 mux_162_i34_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(bit_slip_N_312), 
         .Z(n1362[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i34_3_lut.init = 16'hcaca;
    LUT4 i587_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(n523[4]), .Z(n2101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i587_3_lut.init = 16'hcaca;
    FD1S3IX counter_FSM_i2 (.D(bit_slip_N_318), .CK(sclk), .CD(n6564), 
            .Q(bit_slip_N_312));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i2.GSR = "ENABLED";
    LUT4 i635_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(n523[4]), .Z(n2149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i635_3_lut.init = 16'hcaca;
    LUT4 i469_3_lut (.A(q_tmp[2]), .B(q40_buf[0]), .C(n523[4]), .Z(n1782[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i469_3_lut.init = 16'hcaca;
    LUT4 mux_354_i1_3_lut (.A(q_tmp[6]), .B(q40_buf[0]), .C(n523[2]), 
         .Z(n1761[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i1_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(n7), .B(hold_slip[1]), .C(hold_slip[2]), .D(n6568), 
         .Z(sclk_enable_193)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    PFUMX i560 (.BLUT(n1362[25]), .ALUT(n2073), .C0(n6128), .Z(n2074));
    LUT4 i2_2_lut (.A(bit_slip_N_318), .B(hold_slip[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i4617_2_lut_rep_99 (.A(rx_rdy), .B(LED_c), .Z(n6568)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i4617_2_lut_rep_99.init = 16'hdddd;
    LUT4 i589_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(n523[4]), .Z(n2103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i589_3_lut.init = 16'hcaca;
    LUT4 i447_2_lut_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(hold_slip[0]), 
         .D(bit_slip_N_318), .Z(n1[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i447_2_lut_3_lut_4_lut.init = 16'h0f2d;
    LUT4 i3_4_lut (.A(lnk_trnd_buf[0]), .B(lnk_trnd_buf[3]), .C(lnk_trnd_buf[2]), 
         .D(lnk_trnd_buf[1]), .Z(LED_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(95[17:92])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 mux_354_i2_3_lut (.A(q_tmp[7]), .B(q40_buf[1]), .C(n523[2]), 
         .Z(n1761[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i2_3_lut.init = 16'hcaca;
    LUT4 i561_3_lut (.A(n1362[26]), .B(q40_buf[30]), .C(n523[2]), .Z(n2075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i561_3_lut.init = 16'hcaca;
    LUT4 i218_2_lut_rep_94_3_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_318), 
         .Z(sclk_enable_106)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i218_2_lut_rep_94_3_lut.init = 16'hfdfd;
    LUT4 i547_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n523[3]), .Z(n2061)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i547_3_lut.init = 16'hcaca;
    LUT4 mux_162_i18_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(bit_slip_N_312), 
         .Z(n1362[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i18_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_312), .D(bit_slip_N_318), 
         .Z(sclk_enable_107)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    FD1P3IX q50_buf__i0 (.D(q_tmp[0]), .SP(sclk_enable_231), .CD(n6573), 
            .CK(sclk), .Q(q50_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=165, LSE_RLINE=165 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i0.GSR = "ENABLED";
    LUT4 i591_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n523[4]), .Z(n2105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i591_3_lut.init = 16'hcaca;
    LUT4 i557_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n523[3]), .Z(n2071)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i557_3_lut.init = 16'hcaca;
    LUT4 mux_354_i3_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(n523[2]), 
         .Z(n1761[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i3_3_lut.init = 16'hcaca;
    LUT4 mux_162_i27_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(bit_slip_N_312), 
         .Z(n1362[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i27_3_lut.init = 16'hcaca;
    LUT4 i593_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n523[4]), .Z(n2107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i593_3_lut.init = 16'hcaca;
    LUT4 mux_354_i4_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(n523[2]), 
         .Z(n1761[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i4_3_lut.init = 16'hcaca;
    LUT4 i582_3_lut (.A(q_tmp[3]), .B(q40_buf[1]), .C(n523[4]), .Z(n1782[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i582_3_lut.init = 16'hcaca;
    LUT4 i596_3_lut (.A(q_tmp[10]), .B(q40_buf[8]), .C(n523[4]), .Z(n1782[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i596_3_lut.init = 16'hcaca;
    LUT4 i598_3_lut (.A(q_tmp[11]), .B(q40_buf[9]), .C(n523[4]), .Z(n1782[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i598_3_lut.init = 16'hcaca;
    PFUMX i558 (.BLUT(n1362[24]), .ALUT(n2071), .C0(n6128), .Z(n2072));
    LUT4 i600_3_lut (.A(n2113), .B(q40_buf[10]), .C(n523[4]), .Z(n2114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i600_3_lut.init = 16'hcaca;
    LUT4 i603_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(n523[4]), .Z(n2117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i603_3_lut.init = 16'hcaca;
    LUT4 mux_354_i5_3_lut (.A(q_tmp[14]), .B(q40_buf[8]), .C(n523[2]), 
         .Z(n1761[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i5_3_lut.init = 16'hcaca;
    LUT4 i599_3_lut (.A(q_tmp[12]), .B(q40_buf[8]), .C(n523[3]), .Z(n2113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i599_3_lut.init = 16'hcaca;
    LUT4 i602_3_lut (.A(n2115), .B(q40_buf[11]), .C(n523[4]), .Z(n2116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i602_3_lut.init = 16'hcaca;
    LUT4 i601_3_lut (.A(q_tmp[13]), .B(q40_buf[9]), .C(n523[3]), .Z(n2115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i601_3_lut.init = 16'hcaca;
    LUT4 i612_3_lut (.A(q_tmp[18]), .B(q40_buf[16]), .C(n523[4]), .Z(n1782[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i612_3_lut.init = 16'hcaca;
    LUT4 i614_3_lut (.A(q_tmp[19]), .B(q40_buf[17]), .C(n523[4]), .Z(n1782[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i614_3_lut.init = 16'hcaca;
    LUT4 i456_2_lut (.A(n523[2]), .B(rx_rdy), .Z(n1950)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam i456_2_lut.init = 16'hbbbb;
    LUT4 i616_3_lut (.A(n2129), .B(q40_buf[18]), .C(n523[4]), .Z(n2130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i616_3_lut.init = 16'hcaca;
    LUT4 i615_3_lut (.A(q_tmp[20]), .B(q40_buf[16]), .C(n523[3]), .Z(n2129)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i615_3_lut.init = 16'hcaca;
    PFUMX i548 (.BLUT(n1362[17]), .ALUT(n2061), .C0(n6128), .Z(n2062));
    PFUMX i546 (.BLUT(n1362[16]), .ALUT(n2059), .C0(n6128), .Z(n2060));
    LUT4 i618_3_lut (.A(n2131), .B(q40_buf[19]), .C(n523[4]), .Z(n2132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i618_3_lut.init = 16'hcaca;
    LUT4 mux_354_i12_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(n523[2]), 
         .Z(n1761[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i12_3_lut.init = 16'hcaca;
    LUT4 i617_3_lut (.A(q_tmp[21]), .B(q40_buf[17]), .C(n523[3]), .Z(n2131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i617_3_lut.init = 16'hcaca;
    LUT4 i605_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(n523[4]), .Z(n2119)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i605_3_lut.init = 16'hcaca;
    LUT4 i586_3_lut (.A(n2099), .B(q40_buf[3]), .C(n523[4]), .Z(n2100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i586_3_lut.init = 16'hcaca;
    LUT4 mux_354_i6_3_lut (.A(q_tmp[15]), .B(q40_buf[9]), .C(n523[2]), 
         .Z(n1761[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i6_3_lut.init = 16'hcaca;
    LUT4 i628_3_lut (.A(q_tmp[26]), .B(q40_buf[24]), .C(n523[4]), .Z(n1782[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i628_3_lut.init = 16'hcaca;
    LUT4 i630_3_lut (.A(q_tmp[27]), .B(q40_buf[25]), .C(n523[4]), .Z(n1782[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i630_3_lut.init = 16'hcaca;
    LUT4 i632_3_lut (.A(n2145), .B(q40_buf[26]), .C(n523[4]), .Z(n2146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i632_3_lut.init = 16'hcaca;
    LUT4 i631_3_lut (.A(q_tmp[28]), .B(q40_buf[24]), .C(n523[3]), .Z(n2145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i631_3_lut.init = 16'hcaca;
    LUT4 i634_3_lut (.A(n2147), .B(q40_buf[27]), .C(n523[4]), .Z(n2148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i634_3_lut.init = 16'hcaca;
    LUT4 mux_162_i29_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(bit_slip_N_312), 
         .Z(n1362[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i29_3_lut.init = 16'hcaca;
    LUT4 mux_162_i30_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(bit_slip_N_312), 
         .Z(n1362[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i30_3_lut.init = 16'hcaca;
    LUT4 i563_3_lut (.A(n1362[27]), .B(q40_buf[31]), .C(n523[2]), .Z(n2077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i563_3_lut.init = 16'hcaca;
    LUT4 i607_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n523[4]), .Z(n2121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i607_3_lut.init = 16'hcaca;
    LUT4 i573_3_lut (.A(n1362[34]), .B(q40_buf[38]), .C(n523[2]), .Z(n2087)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i573_3_lut.init = 16'hcaca;
    LUT4 i633_3_lut (.A(q_tmp[29]), .B(q40_buf[25]), .C(n523[3]), .Z(n2147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i633_3_lut.init = 16'hcaca;
    LUT4 i644_3_lut (.A(q_tmp[34]), .B(q40_buf[32]), .C(n523[4]), .Z(n1782[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i644_3_lut.init = 16'hcaca;
    LUT4 mux_162_i35_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(bit_slip_N_312), 
         .Z(n1362[34])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i35_3_lut.init = 16'hcaca;
    LUT4 i646_3_lut (.A(q_tmp[35]), .B(q40_buf[33]), .C(n523[4]), .Z(n1782[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i646_3_lut.init = 16'hcaca;
    LUT4 i585_3_lut (.A(q_tmp[5]), .B(q40_buf[1]), .C(n523[3]), .Z(n2099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i585_3_lut.init = 16'hcaca;
    LUT4 i648_3_lut (.A(n2161), .B(q40_buf[34]), .C(n523[4]), .Z(n2162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i648_3_lut.init = 16'hcaca;
    LUT4 i575_3_lut (.A(n1362[35]), .B(q40_buf[39]), .C(n523[2]), .Z(n2089)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i575_3_lut.init = 16'hcaca;
    LUT4 mux_354_i7_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(n523[2]), 
         .Z(n1761[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i7_3_lut.init = 16'hcaca;
    LUT4 i647_3_lut (.A(q_tmp[36]), .B(q40_buf[32]), .C(n523[3]), .Z(n2161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i647_3_lut.init = 16'hcaca;
    LUT4 i650_3_lut (.A(n2163), .B(q40_buf[35]), .C(n523[4]), .Z(n2164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i650_3_lut.init = 16'hcaca;
    LUT4 mux_162_i36_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(bit_slip_N_312), 
         .Z(n1362[35])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i36_3_lut.init = 16'hcaca;
    LUT4 i649_3_lut (.A(q_tmp[37]), .B(q40_buf[33]), .C(n523[3]), .Z(n2163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i649_3_lut.init = 16'hcaca;
    LUT4 i265_2_lut (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n673[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i265_2_lut.init = 16'h6666;
    LUT4 i272_3_lut (.A(hold_slip[2]), .B(hold_slip[1]), .C(hold_slip[0]), 
         .Z(n673[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i272_3_lut.init = 16'h6a6a;
    LUT4 i4626_2_lut (.A(LED_c), .B(rx_rdy), .Z(n3109)) /* synthesis lut_function=(!(A (B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(108[17] 178[24])
    defparam i4626_2_lut.init = 16'h7777;
    LUT4 i609_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n523[4]), .Z(n2123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i609_3_lut.init = 16'hcaca;
    LUT4 i1559_1_lut (.A(n523[3]), .Z(n3113)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1559_1_lut.init = 16'h5555;
    LUT4 i1558_1_lut (.A(n523[2]), .Z(n3112)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1558_1_lut.init = 16'h5555;
    LUT4 i1557_1_lut (.A(bit_slip_N_312), .Z(n3111)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1557_1_lut.init = 16'h5555;
    LUT4 mux_354_i8_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(n523[2]), 
         .Z(n1761[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i8_3_lut.init = 16'hcaca;
    LUT4 mux_162_i28_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(bit_slip_N_312), 
         .Z(n1362[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i28_3_lut.init = 16'hcaca;
    LUT4 i619_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(n523[4]), .Z(n2133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i619_3_lut.init = 16'hcaca;
    LUT4 mux_354_i9_3_lut (.A(q_tmp[22]), .B(q40_buf[16]), .C(n523[2]), 
         .Z(n1761[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i9_3_lut.init = 16'hcaca;
    LUT4 mux_354_i13_3_lut (.A(q_tmp[30]), .B(q40_buf[24]), .C(n523[2]), 
         .Z(n1761[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i13_3_lut.init = 16'hcaca;
    LUT4 i621_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(n523[4]), .Z(n2135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i621_3_lut.init = 16'hcaca;
    LUT4 mux_354_i10_3_lut (.A(q_tmp[23]), .B(q40_buf[17]), .C(n523[2]), 
         .Z(n1761[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i10_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_111 (.A(n13), .B(sclk_enable_193), .Z(n5805)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_111.init = 16'h4444;
    LUT4 i525_3_lut (.A(n1362[2]), .B(q40_buf[6]), .C(n523[2]), .Z(n2039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i525_3_lut.init = 16'hcaca;
    LUT4 mux_162_i3_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(bit_slip_N_312), 
         .Z(n1362[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i3_3_lut.init = 16'hcaca;
    LUT4 i527_3_lut (.A(n1362[3]), .B(q40_buf[7]), .C(n523[2]), .Z(n2041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i527_3_lut.init = 16'hcaca;
    LUT4 mux_162_i4_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(bit_slip_N_312), 
         .Z(n1362[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i4_3_lut.init = 16'hcaca;
    LUT4 i625_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n523[4]), .Z(n2139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i625_3_lut.init = 16'hcaca;
    PFUMX i536 (.BLUT(n1362[9]), .ALUT(n2049), .C0(n6128), .Z(n2050));
    LUT4 mux_162_i5_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(bit_slip_N_312), 
         .Z(n1362[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i5_3_lut.init = 16'hcaca;
    LUT4 mux_162_i6_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(bit_slip_N_312), 
         .Z(n1362[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i6_3_lut.init = 16'hcaca;
    LUT4 i537_3_lut (.A(n1362[10]), .B(q40_buf[14]), .C(n523[2]), .Z(n2051)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i537_3_lut.init = 16'hcaca;
    LUT4 mux_162_i11_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(bit_slip_N_312), 
         .Z(n1362[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i11_3_lut.init = 16'hcaca;
    LUT4 mux_162_i37_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(bit_slip_N_312), 
         .Z(n1362[36])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i37_3_lut.init = 16'hcaca;
    LUT4 i539_3_lut (.A(n1362[11]), .B(q40_buf[15]), .C(n523[2]), .Z(n2053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i539_3_lut.init = 16'hcaca;
    LUT4 mux_162_i12_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(bit_slip_N_312), 
         .Z(n1362[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i12_3_lut.init = 16'hcaca;
    PFUMX i21 (.BLUT(n5827), .ALUT(n12), .C0(q50_buf[6]), .Z(n13));
    PFUMX i658 (.BLUT(n1761[19]), .ALUT(n2171), .C0(n6159), .Z(n2172));
    LUT4 mux_162_i13_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(bit_slip_N_312), 
         .Z(n1362[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i13_3_lut.init = 16'hcaca;
    PFUMX i656 (.BLUT(n1761[18]), .ALUT(n2169), .C0(n6159), .Z(n2170));
    LUT4 i623_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n523[4]), .Z(n2137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i623_3_lut.init = 16'hcaca;
    PFUMX i654 (.BLUT(n1761[17]), .ALUT(n2167), .C0(n6159), .Z(n2168));
    LUT4 mux_354_i11_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(n523[2]), 
         .Z(n1761[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_354_i11_3_lut.init = 16'hcaca;
    LUT4 mux_162_i14_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(bit_slip_N_312), 
         .Z(n1362[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i14_3_lut.init = 16'hcaca;
    PFUMX i652 (.BLUT(n1761[16]), .ALUT(n2165), .C0(n6159), .Z(n2166));
    PFUMX i534 (.BLUT(n1362[8]), .ALUT(n2047), .C0(n6128), .Z(n2048));
    LUT4 i549_3_lut (.A(n1362[18]), .B(q40_buf[22]), .C(n523[2]), .Z(n2063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i549_3_lut.init = 16'hcaca;
    LUT4 mux_162_i19_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(bit_slip_N_312), 
         .Z(n1362[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i19_3_lut.init = 16'hcaca;
    LUT4 i551_3_lut (.A(n1362[19]), .B(q40_buf[23]), .C(n523[2]), .Z(n2065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i551_3_lut.init = 16'hcaca;
    PFUMX i642 (.BLUT(n1761[15]), .ALUT(n2155), .C0(n6159), .Z(n2156));
    PFUMX i640 (.BLUT(n1761[14]), .ALUT(n2153), .C0(n6159), .Z(n2154));
    LUT4 mux_162_i38_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(bit_slip_N_312), 
         .Z(n1362[37])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i38_3_lut.init = 16'hcaca;
    LUT4 mux_162_i20_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(bit_slip_N_312), 
         .Z(n1362[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i20_3_lut.init = 16'hcaca;
    LUT4 i583_3_lut (.A(q_tmp[4]), .B(q40_buf[0]), .C(n523[3]), .Z(n2097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i583_3_lut.init = 16'hcaca;
    PFUMX i638 (.BLUT(n1761[13]), .ALUT(n2151), .C0(n6159), .Z(n2152));
    PFUMX i524 (.BLUT(n1362[1]), .ALUT(n2037), .C0(n6128), .Z(n2038));
    PFUMX i467 (.BLUT(n1362[0]), .ALUT(n1968), .C0(n6128), .Z(n1969));
    LUT4 mux_162_i21_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(bit_slip_N_312), 
         .Z(n1362[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_162_i21_3_lut.init = 16'hcaca;
    LUT4 i637_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(n523[4]), .Z(n2151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i637_3_lut.init = 16'hcaca;
    ddrx4 ddrx4_inst (.rbyteclk_N_428(rbyteclk_N_428), .sclk(sclk), .bit_slip(bit_slip), 
          .q40_buf({q40_buf}), .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini({buf_dataini}), 
          .LED_c(LED_c), .clk_int(clk_int), .rx_rdy(rx_rdy), .n6573(n6573), 
          .n528(n523[3]), .n527(n523[4]), .sclk_enable_186(sclk_enable_186), 
          .n529(n523[2]), .sclk_enable_188(sclk_enable_188), .n6564(n6564), 
          .sclk_enable_184(sclk_enable_184)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    
endmodule
//
// Verilog Description of module ddrx4
//

module ddrx4 (rbyteclk_N_428, sclk, bit_slip, q40_buf, buf_clk, GND_net, 
            buf_dataini, LED_c, clk_int, rx_rdy, n6573, n528, n527, 
            sclk_enable_186, n529, sclk_enable_188, n6564, sclk_enable_184) /* synthesis NGD_DRC_MASK=1 */ ;
    output rbyteclk_N_428;
    output sclk;
    input bit_slip;
    output [39:0]q40_buf;
    input buf_clk;
    input GND_net;
    input [4:0]buf_dataini;
    input LED_c;
    input clk_int;
    output rx_rdy;
    output n6573;
    input n528;
    input n527;
    output sclk_enable_186;
    input n529;
    output sclk_enable_188;
    output n6564;
    output sclk_enable_184;
    
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire eclko /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(38[12:17])
    wire eclki /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(33[12:17])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(39[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    
    wire rx_reset;
    wire [4:0]dataini_t;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(46[12:21])
    
    wire xstop, dqsdel, locked, freeze_t, uddcntln_t, uddcntln_i, 
        reset_inv, freeze_i;
    
    INV i4843 (.A(sclk), .Z(rbyteclk_N_428));
    IDDRX4B Inst8_IDDRX4B3 (.D(dataini_t[3]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[24]), .Q1(q40_buf[25]), 
            .Q2(q40_buf[26]), .Q3(q40_buf[27]), .Q4(q40_buf[28]), .Q5(q40_buf[29]), 
            .Q6(q40_buf[30]), .Q7(q40_buf[31])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst8_IDDRX4B3.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B2 (.D(dataini_t[2]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[16]), .Q1(q40_buf[17]), 
            .Q2(q40_buf[18]), .Q3(q40_buf[19]), .Q4(q40_buf[20]), .Q5(q40_buf[21]), 
            .Q6(q40_buf[22]), .Q7(q40_buf[23])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst8_IDDRX4B2.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B1 (.D(dataini_t[1]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[8]), .Q1(q40_buf[9]), 
            .Q2(q40_buf[10]), .Q3(q40_buf[11]), .Q4(q40_buf[12]), .Q5(q40_buf[13]), 
            .Q6(q40_buf[14]), .Q7(q40_buf[15])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst8_IDDRX4B1.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B0 (.D(dataini_t[0]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[0]), .Q1(q40_buf[1]), 
            .Q2(q40_buf[2]), .Q3(q40_buf[3]), .Q4(q40_buf[4]), .Q5(q40_buf[5]), 
            .Q6(q40_buf[6]), .Q7(q40_buf[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst8_IDDRX4B0.GSR = "ENABLED";
    CLKDIVC Inst7_CLKDIVC (.RST(rx_reset), .CLKI(eclko), .ALIGNWD(bit_slip), 
            .CDIVX(sclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst7_CLKDIVC.GSR = "DISABLED";
    defparam Inst7_CLKDIVC.DIV = "4.0";
    ECLKSYNCA Inst6_ECLKSYNCA (.ECLKI(eclki), .STOP(xstop), .ECLKO(eclko)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    DLLDELC Inst4_DLLDELC (.CLKI(buf_clk), .DQSDEL(dqsdel), .CLKO(eclki)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst4_DLLDELC.DEL_ADJ = "PLUS";
    defparam Inst4_DLLDELC.DEL_VAL = 0;
    DQSDLLC Inst3_DQSDLLC (.CLK(eclko), .RST(GND_net), .UDDCNTLN(uddcntln_t), 
            .FREEZE(freeze_t), .LOCK(locked), .DQSDEL(dqsdel)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst3_DQSDLLC.GSR = "ENABLED";
    defparam Inst3_DQSDLLC.DEL_ADJ = "PLUS";
    defparam Inst3_DQSDLLC.DEL_VAL = 0;
    defparam Inst3_DQSDLLC.LOCK_SENSITIVITY = "LOW";
    defparam Inst3_DQSDLLC.FIN = "300.0";
    defparam Inst3_DQSDLLC.FORCE_MAX_DELAY = "NO";
    DELAYE udel_dataini4 (.A(buf_dataini[4]), .Z(dataini_t[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam udel_dataini4.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini4.DEL_VALUE = "DELAY0";
    DELAYE udel_dataini3 (.A(buf_dataini[3]), .Z(dataini_t[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam udel_dataini3.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini3.DEL_VALUE = "DELAY0";
    DELAYE udel_dataini2 (.A(buf_dataini[2]), .Z(dataini_t[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam udel_dataini2.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini2.DEL_VALUE = "DELAY0";
    DELAYE udel_dataini1 (.A(buf_dataini[1]), .Z(dataini_t[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam udel_dataini1.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini1.DEL_VALUE = "DELAY0";
    DELAYE udel_dataini0 (.A(buf_dataini[0]), .Z(dataini_t[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam udel_dataini0.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini0.DEL_VALUE = "DELAY0";
    AND2 AND2_t1 (.A(LED_c), .B(uddcntln_i), .Z(uddcntln_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(188[15:19])
    INV INV_0 (.A(GND_net), .Z(reset_inv)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    OR2 OR2_t0 (.A(LED_c), .B(freeze_i), .Z(freeze_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(195[14:17])
    IDDRX4B Inst8_IDDRX4B4 (.D(dataini_t[4]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[32]), .Q1(q40_buf[33]), 
            .Q2(q40_buf[34]), .Q3(q40_buf[35]), .Q4(q40_buf[36]), .Q5(q40_buf[37]), 
            .Q6(q40_buf[38]), .Q7(q40_buf[39])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    defparam Inst8_IDDRX4B4.GSR = "ENABLED";
    rx_sync Inst5_rx_sync (.clk_int(clk_int), .xstop(xstop), .rx_rdy(rx_rdy), 
            .rx_reset(rx_reset), .locked(locked), .freeze_i(freeze_i), 
            .uddcntln_i(uddcntln_i), .reset_inv(reset_inv), .n6573(n6573), 
            .n528(n528), .n527(n527), .sclk_enable_186(sclk_enable_186), 
            .n529(n529), .sclk_enable_188(sclk_enable_188), .n6564(n6564), 
            .sclk_enable_184(sclk_enable_184));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(305[21:28])
    
endmodule
//
// Verilog Description of module rx_sync
//

module rx_sync (clk_int, xstop, rx_rdy, rx_reset, locked, freeze_i, 
            uddcntln_i, reset_inv, n6573, n528, n527, sclk_enable_186, 
            n529, sclk_enable_188, n6564, sclk_enable_184);
    input clk_int;
    output xstop;
    output rx_rdy;
    output rx_reset;
    input locked;
    output freeze_i;
    output uddcntln_i;
    input reset_inv;
    output n6573;
    input n528;
    input n527;
    output sclk_enable_186;
    input n529;
    output sclk_enable_188;
    output n6564;
    output sclk_enable_184;
    
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    wire [5:0]STATE;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(68[12:17])
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(69[12:20])
    
    wire RSTN_I, N_172_I, N_171_I, N_170_I, N_169_I, RX_STOPE_0, 
        RX_STARTE_0_FAST, RX_START_FAST, RX_STARTE_0, LOCK_P1, LOCK_P2, 
        FREEZEE_0;
    wire [2:0]CTRL_CNT;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(73[12:20])
    
    wire CTRL_CNT_N0, N_161_I, CTRL_CNT_N1;
    wire [2:2]CTRL_CNT_FAST;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(77[12:25])
    wire [2:2]CTRL_CNTE_0_FAST;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(78[12:28])
    wire [2:2]CTRL_CNTE_0;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(76[12:23])
    
    wire CTRL_CNT_N1_0_S_0_X0, CTRL_CNT_N1_0_S_0_X1, UDDCNTLNE_0, n11, 
        n6575, n5823, N_118_LI, N_166, N_137, n5188, n5946, n4;
    
    FD1S3BX STATE0_REG_Z106 (.D(STATE_NS[0]), .CK(clk_int), .PD(RSTN_I), 
            .Q(STATE[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(126[23:30])
    defparam STATE0_REG_Z106.GSR = "ENABLED";
    FD1S3DX STATE1_REG_Z108 (.D(STATE_NS[1]), .CK(clk_int), .CD(RSTN_I), 
            .Q(STATE[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(134[23:30])
    defparam STATE1_REG_Z108.GSR = "ENABLED";
    FD1S3DX STAT2_REG_Z110 (.D(N_172_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(142[22:29])
    defparam STAT2_REG_Z110.GSR = "ENABLED";
    FD1S3DX STAT3_REG_Z112 (.D(N_171_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(150[22:29])
    defparam STAT3_REG_Z112.GSR = "ENABLED";
    FD1S3DX STAT4_REG_Z114 (.D(N_170_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(158[22:29])
    defparam STAT4_REG_Z114.GSR = "ENABLED";
    FD1S3DX STAT5_REG_Z116 (.D(N_169_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(166[22:29])
    defparam STAT5_REG_Z116.GSR = "ENABLED";
    FD1S3DX RX_STOP_REG_Z118 (.D(RX_STOPE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(xstop)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(174[24:31])
    defparam RX_STOP_REG_Z118.GSR = "ENABLED";
    FD1S3DX RX_START_FAST_REG_Z120 (.D(RX_STARTE_0_FAST), .CK(clk_int), 
            .CD(RSTN_I), .Q(RX_START_FAST)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(182[30:37])
    defparam RX_START_FAST_REG_Z120.GSR = "ENABLED";
    FD1S3DX RX_START_REG_Z122 (.D(RX_STARTE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_rdy)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(190[25:32])
    defparam RX_START_REG_Z122.GSR = "ENABLED";
    FD1S3DX RX_RESET_REG_Z124 (.D(STATE[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_reset)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(198[25:32])
    defparam RX_RESET_REG_Z124.GSR = "ENABLED";
    FD1S3DX LOCK_P2_REG_Z128 (.D(LOCK_P1), .CK(clk_int), .CD(RSTN_I), 
            .Q(LOCK_P2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(214[24:31])
    defparam LOCK_P2_REG_Z128.GSR = "ENABLED";
    FD1S3DX LOCK_P1_REG_Z130 (.D(locked), .CK(clk_int), .CD(RSTN_I), .Q(LOCK_P1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(222[24:31])
    defparam LOCK_P1_REG_Z130.GSR = "ENABLED";
    FD1S3DX FREEZE_REG_Z132 (.D(FREEZEE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(freeze_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(230[23:30])
    defparam FREEZE_REG_Z132.GSR = "ENABLED";
    FD1P3DX CTRL_CNT0_REG_Z134 (.D(CTRL_CNT_N0), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(238[26:33])
    defparam CTRL_CNT0_REG_Z134.GSR = "ENABLED";
    FD1P3DX CTRL_CNT1_REG_Z136 (.D(CTRL_CNT_N1), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(247[26:33])
    defparam CTRL_CNT1_REG_Z136.GSR = "ENABLED";
    FD1S3DX CTRL_CNT_FAST2_REG_Z138 (.D(CTRL_CNTE_0_FAST[2]), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT_FAST[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(256[31:38])
    defparam CTRL_CNT_FAST2_REG_Z138.GSR = "ENABLED";
    FD1S3DX CTRL_CNT2_REG_Z140 (.D(CTRL_CNTE_0[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(CTRL_CNT[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(264[26:33])
    defparam CTRL_CNT2_REG_Z140.GSR = "ENABLED";
    PFUMX CTRL_CNT_N1_0_S_0 (.BLUT(CTRL_CNT_N1_0_S_0_X0), .ALUT(CTRL_CNT_N1_0_S_0_X1), 
          .C0(CTRL_CNT[1]), .Z(CTRL_CNT_N1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(305[21:28])
    FD1S3BX UDDCNTLN_REG_Z104 (.D(UDDCNTLNE_0), .CK(clk_int), .PD(RSTN_I), 
            .Q(uddcntln_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(118[25:32])
    defparam UDDCNTLN_REG_Z104.GSR = "ENABLED";
    INV RSTN_RNIB582 (.A(reset_inv), .Z(RSTN_I)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=305, LSE_RLINE=305 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(305[21:28])
    LUT4 i4630_4_lut (.A(STATE[0]), .B(locked), .C(n11), .D(LOCK_P2), 
         .Z(STATE_NS[0])) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B (C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(293[20] 294[60])
    defparam i4630_4_lut.init = 16'h2327;
    LUT4 i1_4_lut (.A(RX_START_FAST), .B(n6575), .C(STATE[5]), .D(CTRL_CNT_FAST[2]), 
         .Z(n11)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(293[20] 294[60])
    defparam i1_4_lut.init = 16'h555d;
    LUT4 i1_4_lut_adj_105 (.A(STATE[0]), .B(locked), .C(n5823), .D(rx_rdy), 
         .Z(STATE_NS[1])) /* synthesis lut_function=(A (B)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hc8d8;
    LUT4 i12_4_lut (.A(STATE[2]), .B(STATE[1]), .C(N_118_LI), .D(N_166), 
         .Z(N_172_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(287[17:85])
    defparam i12_4_lut.init = 16'hc0ca;
    LUT4 i471_3_lut (.A(rx_rdy), .B(LOCK_P2), .C(locked), .Z(N_166)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(283[17:79])
    defparam i471_3_lut.init = 16'h2a2a;
    LUT4 i12_4_lut_adj_106 (.A(STATE[3]), .B(STATE[2]), .C(N_118_LI), 
         .D(N_166), .Z(N_171_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(286[17:85])
    defparam i12_4_lut_adj_106.init = 16'hc0ca;
    LUT4 i12_4_lut_adj_107 (.A(STATE[4]), .B(STATE[3]), .C(N_118_LI), 
         .D(N_166), .Z(N_170_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(285[17:85])
    defparam i12_4_lut_adj_107.init = 16'hc0ca;
    LUT4 N_137_I_0_4_lut (.A(N_137), .B(STATE[4]), .C(CTRL_CNT[2]), .D(n6575), 
         .Z(N_169_I)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(284[17:36])
    defparam N_137_I_0_4_lut.init = 16'haeaa;
    LUT4 RX_STOPE_0_I_0_3_lut (.A(xstop), .B(STATE[2]), .C(STATE[4]), 
         .Z(RX_STOPE_0)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(314[21:63])
    defparam RX_STOPE_0_I_0_3_lut.init = 16'hcece;
    LUT4 i1_3_lut (.A(STATE[5]), .B(RX_START_FAST), .C(n5188), .Z(RX_STARTE_0_FAST)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_3_lut_adj_108 (.A(STATE[5]), .B(rx_rdy), .C(n5188), .Z(RX_STARTE_0)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_108.init = 16'ha8a8;
    LUT4 FREEZEE_0_I_0_4_lut (.A(freeze_i), .B(STATE[1]), .C(n5946), .D(n4), 
         .Z(FREEZEE_0)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(316[21] 317[54])
    defparam FREEZEE_0_I_0_4_lut.init = 16'heeec;
    LUT4 i1_2_lut (.A(CTRL_CNT[0]), .B(STATE[4]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_109 (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .Z(n5946)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut_adj_109.init = 16'hbbbb;
    LUT4 i2_3_lut (.A(STATE[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .Z(N_161_I)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(282[17:74])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 rx_start_I_0_1_lut_rep_104 (.A(rx_rdy), .Z(n6573)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam rx_start_I_0_1_lut_rep_104.init = 16'h5555;
    LUT4 i4614_2_lut_3_lut_3_lut (.A(rx_rdy), .B(n528), .C(n527), .Z(sclk_enable_186)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i4614_2_lut_3_lut_3_lut.init = 16'h0202;
    LUT4 CTRL_CNT_0__I_0_2_lut (.A(CTRL_CNT[0]), .B(STATE[0]), .Z(CTRL_CNT_N1_0_S_0_X0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(330[29:57])
    defparam CTRL_CNT_0__I_0_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(N_118_LI), .D(STATE[1]), 
         .Z(n5823)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i1_4_lut_4_lut.init = 16'h0d00;
    LUT4 UDDCNTLNE_0_I_0_2_lut (.A(STATE[2]), .B(uddcntln_i), .Z(UDDCNTLNE_0)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(313[21:48])
    defparam UDDCNTLNE_0_I_0_2_lut.init = 16'h4444;
    LUT4 i4611_3_lut_rep_92_4_lut_4_lut (.A(rx_rdy), .B(n528), .C(n529), 
         .D(n527), .Z(sclk_enable_188)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i4611_3_lut_rep_92_4_lut_4_lut.init = 16'h0002;
    LUT4 i103_2_lut_rep_95_2_lut (.A(rx_rdy), .B(n527), .Z(n6564)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i103_2_lut_rep_95_2_lut.init = 16'hdddd;
    LUT4 i1491_1_lut_2_lut_2_lut (.A(rx_rdy), .B(n527), .Z(sclk_enable_184)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i1491_1_lut_2_lut_2_lut.init = 16'h2222;
    LUT4 i470_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(locked), .D(STATE[5]), 
         .Z(N_137)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i470_4_lut_4_lut.init = 16'hd500;
    LUT4 i478_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0_FAST[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(319[29:56])
    defparam i478_3_lut_4_lut.init = 16'h00f8;
    LUT4 i479_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(319[29:56])
    defparam i479_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(n5946), .D(STATE[5]), 
         .Z(CTRL_CNT_N0)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i1432_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(STATE[5]), 
         .D(CTRL_CNT[2]), .Z(CTRL_CNT_N1_0_S_0_X1)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1432_3_lut_4_lut.init = 16'h1110;
    LUT4 STATE_NS_I_MB_1_0__I_17_2_lut_rep_106 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .Z(n6575)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_MB_1_0__I_17_2_lut_rep_106.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(LOCK_P2), 
         .D(CTRL_CNT[2]), .Z(n5188)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 STATE_NS_I_0_191_2_lut_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .C(CTRL_CNT_FAST[2]), .Z(N_118_LI)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_0_191_2_lut_3_lut.init = 16'h0404;
    
endmodule
//
// Verilog Description of module async_fifo
//

module async_fifo (send_data, sclk, FT601_CLK_c, sclk_enable_230, tx_active_N_832, 
            GND_net, FT601_DATA_c_31, FT601_DATA_c_30, FT601_DATA_c_29, 
            FT601_DATA_c_28, fifo_emp, VCC_net, FT601_DATA_c_19, FT601_DATA_c_18, 
            FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_23, FT601_DATA_c_22, 
            FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_11, FT601_DATA_c_10, 
            FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_15, FT601_DATA_c_14, 
            FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_3, FT601_DATA_c_2, 
            FT601_DATA_c_1, FT601_DATA_c_0, FT601_DATA_c_7, FT601_DATA_c_6, 
            FT601_DATA_c_5, FT601_DATA_c_4, FT601_DATA_c_27, FT601_DATA_c_26, 
            FT601_DATA_c_25, FT601_DATA_c_24) /* synthesis NGD_DRC_MASK=1 */ ;
    input [31:0]send_data;
    input sclk;
    input FT601_CLK_c;
    input sclk_enable_230;
    input tx_active_N_832;
    input GND_net;
    output FT601_DATA_c_31;
    output FT601_DATA_c_30;
    output FT601_DATA_c_29;
    output FT601_DATA_c_28;
    output fifo_emp;
    input VCC_net;
    output FT601_DATA_c_19;
    output FT601_DATA_c_18;
    output FT601_DATA_c_17;
    output FT601_DATA_c_16;
    output FT601_DATA_c_23;
    output FT601_DATA_c_22;
    output FT601_DATA_c_21;
    output FT601_DATA_c_20;
    output FT601_DATA_c_11;
    output FT601_DATA_c_10;
    output FT601_DATA_c_9;
    output FT601_DATA_c_8;
    output FT601_DATA_c_15;
    output FT601_DATA_c_14;
    output FT601_DATA_c_13;
    output FT601_DATA_c_12;
    output FT601_DATA_c_3;
    output FT601_DATA_c_2;
    output FT601_DATA_c_1;
    output FT601_DATA_c_0;
    output FT601_DATA_c_7;
    output FT601_DATA_c_6;
    output FT601_DATA_c_5;
    output FT601_DATA_c_4;
    output FT601_DATA_c_27;
    output FT601_DATA_c_26;
    output FT601_DATA_c_25;
    output FT601_DATA_c_24;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    
    wire full;
    
    FIFO8KB async_fifo_1_6 (.DI0(send_data[4]), .DI1(send_data[5]), .DI2(send_data[6]), 
            .DI3(send_data[7]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_28), .DO1(FT601_DATA_c_29), 
            .DO2(FT601_DATA_c_30), .DO3(FT601_DATA_c_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_1_6.DATA_WIDTH_W = 4;
    defparam async_fifo_1_6.DATA_WIDTH_R = 4;
    defparam async_fifo_1_6.REGMODE = "NOREG";
    defparam async_fifo_1_6.RESETMODE = "ASYNC";
    defparam async_fifo_1_6.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_1_6.CSDECODE_W = "0b11";
    defparam async_fifo_1_6.CSDECODE_R = "0b11";
    defparam async_fifo_1_6.AEPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.AFPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_1_6.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_1_6.GSR = "DISABLED";
    FIFO8KB async_fifo_2_5 (.DI0(send_data[8]), .DI1(send_data[9]), .DI2(send_data[10]), 
            .DI3(send_data[11]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_16), .DO1(FT601_DATA_c_17), 
            .DO2(FT601_DATA_c_18), .DO3(FT601_DATA_c_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_2_5.DATA_WIDTH_W = 4;
    defparam async_fifo_2_5.DATA_WIDTH_R = 4;
    defparam async_fifo_2_5.REGMODE = "NOREG";
    defparam async_fifo_2_5.RESETMODE = "ASYNC";
    defparam async_fifo_2_5.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_2_5.CSDECODE_W = "0b11";
    defparam async_fifo_2_5.CSDECODE_R = "0b11";
    defparam async_fifo_2_5.AEPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.AFPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_2_5.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_2_5.GSR = "DISABLED";
    FIFO8KB async_fifo_3_4 (.DI0(send_data[12]), .DI1(send_data[13]), .DI2(send_data[14]), 
            .DI3(send_data[15]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_20), .DO1(FT601_DATA_c_21), 
            .DO2(FT601_DATA_c_22), .DO3(FT601_DATA_c_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_3_4.DATA_WIDTH_W = 4;
    defparam async_fifo_3_4.DATA_WIDTH_R = 4;
    defparam async_fifo_3_4.REGMODE = "NOREG";
    defparam async_fifo_3_4.RESETMODE = "ASYNC";
    defparam async_fifo_3_4.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_3_4.CSDECODE_W = "0b11";
    defparam async_fifo_3_4.CSDECODE_R = "0b11";
    defparam async_fifo_3_4.AEPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.AFPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_3_4.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_3_4.GSR = "DISABLED";
    FIFO8KB async_fifo_4_3 (.DI0(send_data[16]), .DI1(send_data[17]), .DI2(send_data[18]), 
            .DI3(send_data[19]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_8), .DO1(FT601_DATA_c_9), 
            .DO2(FT601_DATA_c_10), .DO3(FT601_DATA_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_4_3.DATA_WIDTH_W = 4;
    defparam async_fifo_4_3.DATA_WIDTH_R = 4;
    defparam async_fifo_4_3.REGMODE = "NOREG";
    defparam async_fifo_4_3.RESETMODE = "ASYNC";
    defparam async_fifo_4_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_4_3.CSDECODE_W = "0b11";
    defparam async_fifo_4_3.CSDECODE_R = "0b11";
    defparam async_fifo_4_3.AEPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.AFPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_4_3.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_4_3.GSR = "DISABLED";
    FIFO8KB async_fifo_5_2 (.DI0(send_data[20]), .DI1(send_data[21]), .DI2(send_data[22]), 
            .DI3(send_data[23]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_12), .DO1(FT601_DATA_c_13), 
            .DO2(FT601_DATA_c_14), .DO3(FT601_DATA_c_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_5_2.DATA_WIDTH_W = 4;
    defparam async_fifo_5_2.DATA_WIDTH_R = 4;
    defparam async_fifo_5_2.REGMODE = "NOREG";
    defparam async_fifo_5_2.RESETMODE = "ASYNC";
    defparam async_fifo_5_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_5_2.CSDECODE_W = "0b11";
    defparam async_fifo_5_2.CSDECODE_R = "0b11";
    defparam async_fifo_5_2.AEPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.AFPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_5_2.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_5_2.GSR = "DISABLED";
    FIFO8KB async_fifo_6_1 (.DI0(send_data[24]), .DI1(send_data[25]), .DI2(send_data[26]), 
            .DI3(send_data[27]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_0), .DO1(FT601_DATA_c_1), 
            .DO2(FT601_DATA_c_2), .DO3(FT601_DATA_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_6_1.DATA_WIDTH_W = 4;
    defparam async_fifo_6_1.DATA_WIDTH_R = 4;
    defparam async_fifo_6_1.REGMODE = "NOREG";
    defparam async_fifo_6_1.RESETMODE = "ASYNC";
    defparam async_fifo_6_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_6_1.CSDECODE_W = "0b11";
    defparam async_fifo_6_1.CSDECODE_R = "0b11";
    defparam async_fifo_6_1.AEPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.AFPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_6_1.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_6_1.GSR = "DISABLED";
    FIFO8KB async_fifo_7_0 (.DI0(send_data[28]), .DI1(send_data[29]), .DI2(send_data[30]), 
            .DI3(send_data[31]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_4), .DO1(FT601_DATA_c_5), 
            .DO2(FT601_DATA_c_6), .DO3(FT601_DATA_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_7_0.DATA_WIDTH_W = 4;
    defparam async_fifo_7_0.DATA_WIDTH_R = 4;
    defparam async_fifo_7_0.REGMODE = "NOREG";
    defparam async_fifo_7_0.RESETMODE = "ASYNC";
    defparam async_fifo_7_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_7_0.CSDECODE_W = "0b11";
    defparam async_fifo_7_0.CSDECODE_R = "0b11";
    defparam async_fifo_7_0.AEPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.AEPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.AFPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.AFPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.FULLPOINTER = "0b11111111111100";
    defparam async_fifo_7_0.FULLPOINTER1 = "0b00000000000000";
    defparam async_fifo_7_0.GSR = "DISABLED";
    FIFO8KB async_fifo_0_7 (.DI0(send_data[0]), .DI1(send_data[1]), .DI2(send_data[2]), 
            .DI3(send_data[3]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(tx_active_N_832), 
            .ORE(tx_active_N_832), .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), 
            .RPRST(GND_net), .DO0(FT601_DATA_c_24), .DO1(FT601_DATA_c_25), 
            .DO2(FT601_DATA_c_26), .DO3(FT601_DATA_c_27), .EF(fifo_emp), 
            .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=243, LSE_RLINE=243 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(243[21:31])
    defparam async_fifo_0_7.DATA_WIDTH_W = 4;
    defparam async_fifo_0_7.DATA_WIDTH_R = 4;
    defparam async_fifo_0_7.REGMODE = "NOREG";
    defparam async_fifo_0_7.RESETMODE = "ASYNC";
    defparam async_fifo_0_7.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_0_7.CSDECODE_W = "0b11";
    defparam async_fifo_0_7.CSDECODE_R = "0b11";
    defparam async_fifo_0_7.AEPOINTER = "0b00100000000000";
    defparam async_fifo_0_7.AEPOINTER1 = "0b00100000000100";
    defparam async_fifo_0_7.AFPOINTER = "0b01100000000000";
    defparam async_fifo_0_7.AFPOINTER1 = "0b01011111111100";
    defparam async_fifo_0_7.FULLPOINTER = "0b10000000000000";
    defparam async_fifo_0_7.FULLPOINTER1 = "0b01111111111100";
    defparam async_fifo_0_7.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module dec_8b10b_U3
//

module dec_8b10b_U3 (\dec_data[0] , sclk, rbyteclk_N_428, \enc_data[0] , 
            \enc_data[1] , \enc_data[4] , \enc_data[8] , \enc_data[2] , 
            \enc_data[3] , \dec_data[1] , \dec_data[2] , \dec_data[3] , 
            \dec_data[4] , \dec_data[5] , \dec_data[6] , \dec_data[7] , 
            \enc_data[6] , \enc_data[5] , \enc_data[7] , \enc_data[9] );
    output \dec_data[0] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[0] ;
    input \enc_data[1] ;
    input \enc_data[4] ;
    input \enc_data[8] ;
    input \enc_data[2] ;
    input \enc_data[3] ;
    output \dec_data[1] ;
    output \dec_data[2] ;
    output \dec_data[3] ;
    output \dec_data[4] ;
    output \dec_data[5] ;
    output \dec_data[6] ;
    output \dec_data[7] ;
    input \enc_data[6] ;
    input \enc_data[5] ;
    input \enc_data[7] ;
    input \enc_data[9] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, co, co_N_536, do, do_N_535, 
        eo, eo_N_534, fo, fo_N_533, go, go_N_532, n6045, ho, 
        ho_N_531, n6584, n6566, n4, n6613, or122_N_483, n2858, 
        or123_N_490, or127_N_503, n5937, or122_N_485, p13, n6551, 
        n2690, p22_N_446, n6540, n5786, n6552, n6541, n4_adj_842, 
        n6581, n23, n6583, n2835, n6576, n6360, n2930, n6574, 
        n6358, n6359, n6536, n6612;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 i4432_2_lut_3_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), 
         .C(\enc_data[4] ), .D(\enc_data[8] ), .Z(n6045)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4432_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i4420_2_lut_rep_115 (.A(\enc_data[2] ), .B(\enc_data[3] ), .Z(n6584)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4420_2_lut_rep_115.init = 16'heeee;
    LUT4 i1_2_lut_rep_97_3_lut_4_lut (.A(\enc_data[2] ), .B(\enc_data[3] ), 
         .C(\enc_data[4] ), .D(\enc_data[8] ), .Z(n6566)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_97_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), .C(\enc_data[2] ), 
         .D(\enc_data[3] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[8] ), .B(\enc_data[3] ), 
         .C(\enc_data[2] ), .D(\enc_data[1] ), .Z(n6613)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n2858), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5937)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n6566), .B(or122_N_485), .C(p13), .D(\enc_data[4] ), 
         .Z(n2858)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[0] ), .B(n6551), .C(n5937), 
         .D(\enc_data[3] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_82 (.A(\enc_data[2] ), .B(n2690), .Z(n6551)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_82.init = 16'h8888;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[4] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[5] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[6] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[7] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=177, LSE_RLINE=177 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_100 (.A(p22_N_446), .B(\enc_data[4] ), .C(n4), .D(\enc_data[8] ), 
         .Z(n2690)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_100.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n6540), .B(\enc_data[1] ), .C(or122_N_483), 
         .D(n5786), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i1_2_lut_rep_71_3_lut (.A(\enc_data[2] ), .B(n2690), .C(\enc_data[0] ), 
         .Z(n6540)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_71_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_101 (.A(\enc_data[1] ), .B(n2858), .C(n6551), .D(or123_N_490), 
         .Z(n5786)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_101.init = 16'hffec;
    LUT4 i1_2_lut_rep_83 (.A(n2690), .B(\enc_data[2] ), .Z(n6552)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_83.init = 16'h2222;
    LUT4 xc_I_0_4_lut (.A(n5786), .B(\enc_data[2] ), .C(n6541), .D(n6045), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[4] ), .C(n4_adj_842), .D(\enc_data[3] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_102 (.A(\enc_data[8] ), .B(n6581), .C(n23), .D(n6552), 
         .Z(n4_adj_842)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_102.init = 16'h7350;
    LUT4 i1_4_lut_adj_103 (.A(p13), .B(\enc_data[4] ), .C(n6583), .D(n6584), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_103.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[6] ), .B(\enc_data[5] ), .C(n2835), 
         .D(n6576), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 i2_4_lut_adj_104 (.A(\enc_data[6] ), .B(n6360), .C(\enc_data[5] ), 
         .D(n2930), .Z(n2835)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_104.init = 16'hcdcc;
    LUT4 i2_2_lut (.A(\enc_data[7] ), .B(\enc_data[9] ), .Z(n2930)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[11] 207[39])
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 xg_I_0_4_lut_4_lut (.A(n2835), .B(\enc_data[6] ), .C(n6574), 
         .D(\enc_data[5] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 enc_data_9__bdd_4_lut (.A(\enc_data[6] ), .B(\enc_data[5] ), .C(n6566), 
         .D(\enc_data[7] ), .Z(n6358)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(C+(D))) */ ;
    defparam enc_data_9__bdd_4_lut.init = 16'h888f;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), 
         .C(\enc_data[3] ), .D(\enc_data[2] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2690), .B(\enc_data[2] ), .C(n5937), 
         .D(\enc_data[0] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_72_3_lut (.A(n2690), .B(\enc_data[2] ), .C(\enc_data[0] ), 
         .Z(n6541)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_72_3_lut.init = 16'h0202;
    LUT4 i2292_2_lut_rep_114 (.A(\enc_data[0] ), .B(\enc_data[1] ), .Z(n6583)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2292_2_lut_rep_114.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(n2690), .B(\enc_data[2] ), .C(\enc_data[1] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    PFUMX i4670 (.BLUT(n6359), .ALUT(n6358), .C0(\enc_data[9] ), .Z(n6360));
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[8] ), .B(\enc_data[4] ), .C(\enc_data[1] ), 
         .D(\enc_data[0] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[8] ), .B(\enc_data[4] ), .C(\enc_data[3] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i2300_2_lut_rep_105 (.A(\enc_data[7] ), .B(\enc_data[9] ), .Z(n6574)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2300_2_lut_rep_105.init = 16'heeee;
    LUT4 i1_3_lut_rep_67_4_lut (.A(\enc_data[7] ), .B(\enc_data[9] ), .C(\enc_data[6] ), 
         .D(n2835), .Z(n6536)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_67_4_lut.init = 16'hff01;
    PFUMX i4753 (.BLUT(n6612), .ALUT(n6613), .C0(\enc_data[0] ), .Z(or122_N_485));
    LUT4 enc_data_3__bdd_4_lut (.A(\enc_data[3] ), .B(\enc_data[2] ), .C(\enc_data[0] ), 
         .D(\enc_data[1] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_3__bdd_4_lut.init = 16'h0116;
    LUT4 i1_2_lut_rep_107 (.A(\enc_data[7] ), .B(\enc_data[9] ), .Z(n6576)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_2_lut_rep_107.init = 16'h8888;
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[7] ), .B(\enc_data[9] ), .C(n6536), 
         .D(\enc_data[5] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam xh_I_0_4_lut_4_lut.init = 16'h525a;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[8] ), .B(\enc_data[3] ), 
         .C(\enc_data[2] ), .D(\enc_data[1] ), .Z(n6612)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 enc_data_9__bdd_2_lut_3_lut_4_lut (.A(\enc_data[8] ), .B(\enc_data[4] ), 
         .C(\enc_data[7] ), .D(n6584), .Z(n6359)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam enc_data_9__bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4418_2_lut_rep_112 (.A(\enc_data[0] ), .B(\enc_data[1] ), .Z(n6581)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4418_2_lut_rep_112.init = 16'h8888;
    
endmodule
//
// Verilog Description of module dec_8b10b_U2
//

module dec_8b10b_U2 (\dec_data[8] , sclk, rbyteclk_N_428, \enc_data[10] , 
            \enc_data[11] , \enc_data[12] , \enc_data[13] , \enc_data[18] , 
            \enc_data[16] , \enc_data[15] , \enc_data[17] , \enc_data[19] , 
            \enc_data[14] , \dec_data[9] , \dec_data[10] , \dec_data[11] , 
            \dec_data[12] , \dec_data[13] , \dec_data[14] , \dec_data[15] );
    output \dec_data[8] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[10] ;
    input \enc_data[11] ;
    input \enc_data[12] ;
    input \enc_data[13] ;
    input \enc_data[18] ;
    input \enc_data[16] ;
    input \enc_data[15] ;
    input \enc_data[17] ;
    input \enc_data[19] ;
    input \enc_data[14] ;
    output \dec_data[9] ;
    output \dec_data[10] ;
    output \dec_data[11] ;
    output \dec_data[12] ;
    output \dec_data[13] ;
    output \dec_data[14] ;
    output \dec_data[15] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, co, co_N_536, do, do_N_535, 
        eo, eo_N_534, fo, fo_N_533, go, go_N_532, ho, ho_N_531, 
        n4, n6634, n6633, n2842, n6598, n6558, n5934, n6548, 
        n6599, n6600, n5957, n6601, or122_N_483, n2848, or123_N_490, 
        or127_N_503, n6569, p13, or122_N_485, n6603, p22_N_446, 
        n2710, n6549, n5769, n6538, n4_adj_839, n23, n6559, n4_adj_840, 
        n6254, n4_adj_841, ior134;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[8] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(\enc_data[12] ), 
         .D(\enc_data[13] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n6634)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n6633)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 xg_I_0_4_lut_4_lut (.A(n2842), .B(\enc_data[16] ), .C(n6598), 
         .D(\enc_data[15] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[10] ), .B(n6558), .C(n5934), 
         .D(\enc_data[13] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_129 (.A(\enc_data[17] ), .B(\enc_data[19] ), .Z(n6598)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_129.init = 16'heeee;
    LUT4 i1_3_lut_rep_79_4_lut (.A(\enc_data[17] ), .B(\enc_data[19] ), 
         .C(\enc_data[16] ), .D(n2842), .Z(n6548)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_79_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_130 (.A(\enc_data[18] ), .B(\enc_data[14] ), .Z(n6599)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_130.init = 16'heeee;
    LUT4 i2302_2_lut_rep_131 (.A(\enc_data[10] ), .B(\enc_data[11] ), .Z(n6600)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2302_2_lut_rep_131.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(\enc_data[14] ), 
         .D(\enc_data[18] ), .Z(n5957)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4383_2_lut_rep_132 (.A(\enc_data[12] ), .B(\enc_data[13] ), .Z(n6601)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4383_2_lut_rep_132.init = 16'heeee;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n2848), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5934)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_100_3_lut_4_lut (.A(\enc_data[12] ), .B(\enc_data[13] ), 
         .C(\enc_data[14] ), .D(\enc_data[18] ), .Z(n6569)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_100_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_93 (.A(p13), .B(or122_N_485), .C(\enc_data[14] ), 
         .D(n6569), .Z(n2848)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_93.init = 16'hceff;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[18] ), .B(\enc_data[14] ), .C(\enc_data[13] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i4381_2_lut_rep_134 (.A(\enc_data[10] ), .B(\enc_data[11] ), .Z(n6603)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4381_2_lut_rep_134.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(\enc_data[10] ), .B(\enc_data[11] ), 
         .C(\enc_data[14] ), .D(\enc_data[18] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'h8000;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[9] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[10] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[11] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[12] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[13] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[14] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[15] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=186, LSE_RLINE=186 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 enc_data_13__bdd_4_lut (.A(\enc_data[13] ), .B(\enc_data[12] ), 
         .C(\enc_data[10] ), .D(\enc_data[11] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_13__bdd_4_lut.init = 16'h0116;
    LUT4 i1_4_lut (.A(p22_N_446), .B(\enc_data[14] ), .C(n4), .D(\enc_data[18] ), 
         .Z(n2710)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n6549), .B(\enc_data[11] ), .C(or122_N_483), 
         .D(n5769), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_95 (.A(\enc_data[11] ), .B(n2848), .C(n6558), .D(or123_N_490), 
         .Z(n5769)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_95.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5769), .B(\enc_data[12] ), .C(n6538), .D(n5957), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[14] ), .C(n4_adj_839), .D(\enc_data[13] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_96 (.A(\enc_data[18] ), .B(n6603), .C(n23), .D(n6559), 
         .Z(n4_adj_839)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_96.init = 16'h7350;
    LUT4 i1_4_lut_adj_97 (.A(p13), .B(\enc_data[14] ), .C(n6600), .D(n6601), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_97.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[17] ), .B(\enc_data[15] ), .C(n2842), 
         .D(n4_adj_840), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[16] ), .B(\enc_data[19] ), .C(\enc_data[15] ), 
         .Z(n4_adj_840)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i2_4_lut_adj_98 (.A(\enc_data[16] ), .B(n6254), .C(n4_adj_841), 
         .D(ior134), .Z(n2842)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_98.init = 16'hffd8;
    LUT4 i1_2_lut_rep_89 (.A(\enc_data[12] ), .B(n2710), .Z(n6558)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_89.init = 16'h8888;
    LUT4 i1_2_lut_rep_80_3_lut (.A(\enc_data[12] ), .B(n2710), .C(\enc_data[10] ), 
         .Z(n6549)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_80_3_lut.init = 16'h8080;
    LUT4 i1_rep_12_2_lut (.A(\enc_data[19] ), .B(\enc_data[15] ), .Z(n6254)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_rep_12_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_99 (.A(\enc_data[15] ), .B(\enc_data[17] ), .C(\enc_data[19] ), 
         .Z(n4_adj_841)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_adj_99.init = 16'h5151;
    LUT4 xh_I_0_4_lut (.A(\enc_data[19] ), .B(\enc_data[17] ), .C(n6548), 
         .D(\enc_data[15] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(235[10:19])
    defparam xh_I_0_4_lut.init = 16'h343c;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[12] ), .B(\enc_data[13] ), 
         .C(\enc_data[11] ), .D(\enc_data[10] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(115[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_rep_90 (.A(n2710), .B(\enc_data[12] ), .Z(n6559)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_90.init = 16'h2222;
    LUT4 i1_2_lut_rep_69_3_lut (.A(n2710), .B(\enc_data[12] ), .C(\enc_data[10] ), 
         .Z(n6538)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_69_3_lut.init = 16'h0202;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2710), .B(\enc_data[12] ), .C(n5934), 
         .D(\enc_data[10] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_3_lut_4_lut (.A(n6601), .B(n6599), .C(\enc_data[19] ), .D(\enc_data[17] ), 
         .Z(ior134)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0110;
    LUT4 i1_2_lut_3_lut (.A(n2710), .B(\enc_data[12] ), .C(\enc_data[11] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    PFUMX i4767 (.BLUT(n6633), .ALUT(n6634), .C0(\enc_data[10] ), .Z(or122_N_485));
    
endmodule
//
// Verilog Description of module dec_8b10b_U1
//

module dec_8b10b_U1 (\dec_data[16] , sclk, rbyteclk_N_428, \enc_data[20] , 
            \enc_data[21] , \enc_data[22] , \enc_data[23] , \enc_data[26] , 
            \enc_data[25] , \enc_data[29] , \enc_data[27] , \enc_data[28] , 
            \enc_data[24] , \dec_data[17] , \dec_data[18] , \dec_data[19] , 
            \dec_data[20] , \dec_data[21] , \dec_data[22] , \dec_data[23] );
    output \dec_data[16] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[20] ;
    input \enc_data[21] ;
    input \enc_data[22] ;
    input \enc_data[23] ;
    input \enc_data[26] ;
    input \enc_data[25] ;
    input \enc_data[29] ;
    input \enc_data[27] ;
    input \enc_data[28] ;
    input \enc_data[24] ;
    output \dec_data[17] ;
    output \dec_data[18] ;
    output \dec_data[19] ;
    output \dec_data[20] ;
    output \dec_data[21] ;
    output \dec_data[22] ;
    output \dec_data[23] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, p13, n4, co, co_N_536, 
        do, do_N_535, eo, eo_N_534, fo, fo_N_533, go, go_N_532, 
        n2832, n6591, ho, ho_N_531, n5954, n6625, n6624, n6556, 
        n5926, n6628, n6627, n6631, n6630, n6545, n6592, n6593, 
        n5953, p22_N_446, or122_N_483, or123_N_490, n2734, n6546, 
        n6557, n6547, or127_N_503, n2828, or122_N_485, n5780, n4_adj_838, 
        n6629;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[16] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 p13_I_0_244_3_lut_4_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), 
         .C(\enc_data[22] ), .D(\enc_data[23] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(101[10:38])
    defparam p13_I_0_244_3_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), .C(\enc_data[22] ), 
         .D(\enc_data[23] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 xg_I_0_4_lut_4_lut (.A(n2832), .B(\enc_data[26] ), .C(n6591), 
         .D(\enc_data[25] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i2_4_lut_then_4_lut (.A(\enc_data[29] ), .B(n5954), .C(\enc_data[25] ), 
         .D(\enc_data[27] ), .Z(n6625)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam i2_4_lut_then_4_lut.init = 16'hb1a2;
    LUT4 i2_4_lut_else_4_lut (.A(\enc_data[29] ), .B(n5954), .C(\enc_data[25] ), 
         .D(\enc_data[27] ), .Z(n6624)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C+(D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1b2f;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[20] ), .B(n6556), .C(n5926), 
         .D(\enc_data[23] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_4_lut_then_4_lut (.A(\enc_data[21] ), .B(\enc_data[20] ), .C(\enc_data[23] ), 
         .D(\enc_data[22] ), .Z(n6628)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_then_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_else_4_lut (.A(\enc_data[21] ), .B(\enc_data[20] ), .C(\enc_data[23] ), 
         .D(\enc_data[22] ), .Z(n6627)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_else_4_lut.init = 16'h111f;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[28] ), .B(\enc_data[23] ), 
         .C(\enc_data[22] ), .D(\enc_data[21] ), .Z(n6631)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[28] ), .B(\enc_data[23] ), 
         .C(\enc_data[22] ), .D(\enc_data[21] ), .Z(n6630)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_122 (.A(\enc_data[27] ), .B(\enc_data[29] ), .Z(n6591)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_122.init = 16'heeee;
    LUT4 i1_3_lut_rep_76_4_lut (.A(\enc_data[27] ), .B(\enc_data[29] ), 
         .C(\enc_data[26] ), .D(n2832), .Z(n6545)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_76_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_123 (.A(\enc_data[29] ), .B(\enc_data[27] ), .Z(n6592)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_2_lut_rep_123.init = 16'h8888;
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[29] ), .B(\enc_data[27] ), .C(n6545), 
         .D(\enc_data[25] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam xh_I_0_4_lut_4_lut.init = 16'h343c;
    LUT4 i4391_2_lut_rep_124 (.A(\enc_data[20] ), .B(\enc_data[21] ), .Z(n6593)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4391_2_lut_rep_124.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[22] ), .B(\enc_data[23] ), .C(\enc_data[24] ), 
         .D(\enc_data[28] ), .Z(n5954)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(\enc_data[20] ), .B(\enc_data[21] ), 
         .C(\enc_data[24] ), .D(\enc_data[28] ), .Z(n5953)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[22] ), .B(\enc_data[23] ), 
         .C(\enc_data[21] ), .D(\enc_data[20] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(115[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(\enc_data[28] ), .B(\enc_data[24] ), 
         .C(\enc_data[21] ), .D(\enc_data[20] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[28] ), .B(\enc_data[24] ), .C(\enc_data[23] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_87 (.A(\enc_data[22] ), .B(n2734), .Z(n6556)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_87.init = 16'h8888;
    LUT4 i1_2_lut_rep_77_3_lut (.A(\enc_data[22] ), .B(n2734), .C(\enc_data[20] ), 
         .Z(n6546)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_77_3_lut.init = 16'h8080;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[17] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[18] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[19] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[20] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[21] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[22] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[23] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=195, LSE_RLINE=195 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_88 (.A(n2734), .B(\enc_data[22] ), .Z(n6557)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_88.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2734), .B(\enc_data[22] ), .C(n5926), 
         .D(\enc_data[20] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_78_3_lut (.A(n2734), .B(\enc_data[22] ), .C(\enc_data[20] ), 
         .Z(n6547)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_78_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut (.A(n2734), .B(\enc_data[22] ), .C(\enc_data[21] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n2828), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5926)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n5954), .B(or122_N_485), .C(p13), .D(\enc_data[24] ), 
         .Z(n2828)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i1_4_lut_adj_90 (.A(p22_N_446), .B(\enc_data[24] ), .C(n4), .D(\enc_data[28] ), 
         .Z(n2734)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_90.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n6546), .B(\enc_data[21] ), .C(or122_N_483), 
         .D(n5780), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_91 (.A(\enc_data[21] ), .B(n2828), .C(n6556), .D(or123_N_490), 
         .Z(n5780)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_91.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5780), .B(\enc_data[22] ), .C(n6547), .D(n5953), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(\enc_data[23] ), .B(\enc_data[24] ), .C(n4_adj_838), 
         .D(p13), .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h373c;
    LUT4 i1_4_lut_adj_92 (.A(\enc_data[28] ), .B(n6593), .C(n6629), .D(n6557), 
         .Z(n4_adj_838)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_92.init = 16'h7350;
    LUT4 xf_I_0_4_lut (.A(\enc_data[26] ), .B(\enc_data[25] ), .C(n2832), 
         .D(n6592), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    PFUMX i4765 (.BLUT(n6630), .ALUT(n6631), .C0(\enc_data[20] ), .Z(or122_N_485));
    PFUMX i4763 (.BLUT(n6627), .ALUT(n6628), .C0(\enc_data[24] ), .Z(n6629));
    PFUMX i4761 (.BLUT(n6624), .ALUT(n6625), .C0(\enc_data[26] ), .Z(n2832));
    
endmodule
//
// Verilog Description of module dec_8b10b_U0
//

module dec_8b10b_U0 (\enc_data[34] , \enc_data[38] , \enc_data[31] , \enc_data[32] , 
            \enc_data[33] , \enc_data[37] , \enc_data[35] , \enc_data[36] , 
            \enc_data[39] , \enc_data[30] , \dec_data[24] , sclk, rbyteclk_N_428, 
            \dec_data[25] , \dec_data[26] , \dec_data[27] , \dec_data[28] , 
            \dec_data[29] , \dec_data[30] , \dec_data[31] );
    input \enc_data[34] ;
    input \enc_data[38] ;
    input \enc_data[31] ;
    input \enc_data[32] ;
    input \enc_data[33] ;
    input \enc_data[37] ;
    input \enc_data[35] ;
    input \enc_data[36] ;
    input \enc_data[39] ;
    input \enc_data[30] ;
    output \dec_data[24] ;
    input sclk;
    input rbyteclk_N_428;
    output \dec_data[25] ;
    output \dec_data[26] ;
    output \dec_data[27] ;
    output \dec_data[28] ;
    output \dec_data[29] ;
    output \dec_data[30] ;
    output \dec_data[31] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire p22_N_446, n4, n2758, n6543, or122_N_483, n5766, bo_N_537, 
        n2838, n6554, or123_N_490, n6544, n6037, co_N_536, p13, 
        n4_adj_836, eo_N_534, n6587, n23, n6555, n6588, n6589, 
        n2862, n4_adj_837, fo_N_533, n5917, do_N_535, n5942, n6618, 
        n6447, n6622, ior134_N_529, go_N_532, n6621, ao, n6586, 
        n6077, n6446, ao_N_538, bo, co, do, eo, fo, go, ho, 
        ho_N_531, or127_N_503, or122_N_485, n6619;
    
    LUT4 i1_4_lut (.A(p22_N_446), .B(\enc_data[34] ), .C(n4), .D(\enc_data[38] ), 
         .Z(n2758)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n6543), .B(\enc_data[31] ), .C(or122_N_483), 
         .D(n5766), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut (.A(\enc_data[31] ), .B(n2838), .C(n6554), .D(or123_N_490), 
         .Z(n5766)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5766), .B(\enc_data[32] ), .C(n6544), .D(n6037), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[34] ), .C(n4_adj_836), .D(\enc_data[33] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_83 (.A(\enc_data[38] ), .B(n6587), .C(n23), .D(n6555), 
         .Z(n4_adj_836)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_83.init = 16'h7350;
    LUT4 i1_4_lut_adj_84 (.A(p13), .B(\enc_data[34] ), .C(n6588), .D(n6589), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_84.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[37] ), .B(\enc_data[35] ), .C(n2862), 
         .D(n4_adj_837), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[36] ), .B(\enc_data[39] ), .C(\enc_data[35] ), 
         .Z(n4_adj_837)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i4412_2_lut_rep_120 (.A(\enc_data[32] ), .B(\enc_data[33] ), .Z(n6589)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4412_2_lut_rep_120.init = 16'heeee;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[30] ), .B(n6554), .C(n5917), 
         .D(\enc_data[33] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[32] ), .B(\enc_data[33] ), .C(\enc_data[34] ), 
         .D(\enc_data[38] ), .Z(n5942)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), .C(\enc_data[32] ), 
         .D(\enc_data[33] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i1_2_lut_rep_85 (.A(\enc_data[32] ), .B(n2758), .Z(n6554)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_85.init = 16'h8888;
    LUT4 i2_4_lut_else_4_lut (.A(\enc_data[39] ), .B(n5942), .C(\enc_data[37] ), 
         .D(\enc_data[35] ), .Z(n6618)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam i2_4_lut_else_4_lut.init = 16'h12bf;
    LUT4 enc_data_36__bdd_3_lut_4789 (.A(\enc_data[36] ), .B(\enc_data[37] ), 
         .C(\enc_data[39] ), .Z(n6447)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam enc_data_36__bdd_3_lut_4789.init = 16'h3131;
    LUT4 i1_2_lut_rep_74_3_lut (.A(\enc_data[32] ), .B(n2758), .C(\enc_data[30] ), 
         .Z(n6543)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_74_3_lut.init = 16'h8080;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n6622)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 xg_I_0_4_lut (.A(n2862), .B(\enc_data[36] ), .C(ior134_N_529), 
         .D(\enc_data[35] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(234[10:19])
    defparam xg_I_0_4_lut.init = 16'h6763;
    LUT4 i2343_2_lut (.A(\enc_data[37] ), .B(\enc_data[39] ), .Z(ior134_N_529)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2343_2_lut.init = 16'heeee;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n6621)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[24] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), 
         .C(\enc_data[33] ), .D(\enc_data[32] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i4463_4_lut (.A(n6589), .B(n6586), .C(\enc_data[34] ), .D(\enc_data[38] ), 
         .Z(n6077)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4463_4_lut.init = 16'hfffe;
    LUT4 enc_data_36__bdd_4_lut_4786 (.A(\enc_data[36] ), .B(\enc_data[37] ), 
         .C(\enc_data[39] ), .D(\enc_data[35] ), .Z(n6446)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam enc_data_36__bdd_4_lut_4786.init = 16'h2d9d;
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(\enc_data[38] ), .B(\enc_data[34] ), 
         .C(\enc_data[31] ), .D(\enc_data[30] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h8000;
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(\enc_data[38] ), .B(\enc_data[34] ), .C(\enc_data[33] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_86 (.A(n2758), .B(\enc_data[32] ), .Z(n6555)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_86.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2758), .B(\enc_data[32] ), .C(n5917), 
         .D(\enc_data[30] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_75_3_lut (.A(n2758), .B(\enc_data[32] ), .C(\enc_data[30] ), 
         .Z(n6544)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_75_3_lut.init = 16'h0202;
    PFUMX i4703 (.BLUT(n6447), .ALUT(n6446), .C0(n6077), .Z(ho_N_531));
    LUT4 i1_2_lut_3_lut (.A(n2758), .B(\enc_data[32] ), .C(\enc_data[31] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 enc_data_33__bdd_4_lut (.A(\enc_data[33] ), .B(\enc_data[32] ), 
         .C(\enc_data[30] ), .D(\enc_data[31] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_33__bdd_4_lut.init = 16'h0116;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[25] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[26] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[27] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[28] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[29] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[30] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[31] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=204, LSE_RLINE=204 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_86 (.A(or122_N_483), .B(n2838), .C(or123_N_490), 
         .D(or127_N_503), .Z(n5917)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_86.init = 16'hfffe;
    LUT4 i1_4_lut_adj_87 (.A(n5942), .B(or122_N_485), .C(p13), .D(\enc_data[34] ), 
         .Z(n2838)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_87.init = 16'hddfd;
    LUT4 i2_4_lut_then_4_lut (.A(\enc_data[39] ), .B(n5942), .C(\enc_data[37] ), 
         .D(\enc_data[35] ), .Z(n6619)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !(B+!(C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam i2_4_lut_then_4_lut.init = 16'hba12;
    LUT4 enc_data_7__I_0_2_lut_rep_117 (.A(\enc_data[37] ), .B(\enc_data[39] ), 
         .Z(n6586)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(214[18:27])
    defparam enc_data_7__I_0_2_lut_rep_117.init = 16'h8888;
    LUT4 i4410_2_lut_rep_118 (.A(\enc_data[30] ), .B(\enc_data[31] ), .Z(n6587)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4410_2_lut_rep_118.init = 16'h8888;
    LUT4 i4414_2_lut_rep_119 (.A(\enc_data[30] ), .B(\enc_data[31] ), .Z(n6588)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4414_2_lut_rep_119.init = 16'heeee;
    LUT4 i4424_2_lut_3_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), 
         .C(\enc_data[34] ), .D(\enc_data[38] ), .Z(n6037)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4424_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i4759 (.BLUT(n6621), .ALUT(n6622), .C0(\enc_data[30] ), .Z(or122_N_485));
    PFUMX i4757 (.BLUT(n6618), .ALUT(n6619), .C0(\enc_data[36] ), .Z(n2862));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \prng_recv("1011110010111100101111001011110010111100") 
//

module \prng_recv("1011110010111100101111001011110010111100")  (rng_num, sclk, 
            sclk_enable_230, n6789, \rng_num[0] , \rng_num[1] , \rng_num[6] , 
            \rng_num[7] , \rng_num[3] , \rng_num[2] );
    output [39:0]rng_num;
    input sclk;
    input sclk_enable_230;
    input n6789;
    output \rng_num[0] ;
    output \rng_num[1] ;
    output \rng_num[6] ;
    output \rng_num[7] ;
    output \rng_num[3] ;
    output \rng_num[2] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(128[12:16])
    wire [39:0]rng_num_c;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(135[12:19])
    
    wire fb, n6;
    
    FD1P3JX sr_i5 (.D(rng_num[4]), .SP(sclk_enable_230), .PD(n6789), .CK(sclk), 
            .Q(rng_num[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i5.GSR = "ENABLED";
    FD1P3JX sr_i15 (.D(rng_num_c[14]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[15])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i15.GSR = "ENABLED";
    FD1P3JX sr_i13 (.D(rng_num_c[12]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[13])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i13.GSR = "ENABLED";
    FD1P3IX sr_i0 (.D(fb), .SP(sclk_enable_230), .CD(n6789), .CK(sclk), 
            .Q(\rng_num[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i0.GSR = "ENABLED";
    FD1P3IX sr_i1 (.D(\rng_num[0] ), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(\rng_num[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i1.GSR = "ENABLED";
    FD1P3IX sr_i6 (.D(rng_num[5]), .SP(sclk_enable_230), .CD(n6789), .CK(sclk), 
            .Q(\rng_num[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i6.GSR = "ENABLED";
    FD1P3IX sr_i8 (.D(\rng_num[7] ), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i8.GSR = "ENABLED";
    FD1P3IX sr_i9 (.D(rng_num_c[8]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i9.GSR = "ENABLED";
    FD1P3IX sr_i14 (.D(rng_num_c[13]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i14.GSR = "ENABLED";
    FD1P3IX sr_i16 (.D(rng_num_c[15]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i16.GSR = "ENABLED";
    FD1P3IX sr_i17 (.D(rng_num_c[16]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i17.GSR = "ENABLED";
    FD1P3IX sr_i22 (.D(rng_num_c[21]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i22.GSR = "ENABLED";
    FD1P3IX sr_i24 (.D(rng_num_c[23]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i24.GSR = "ENABLED";
    FD1P3IX sr_i25 (.D(rng_num_c[24]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i25.GSR = "ENABLED";
    FD1P3IX sr_i30 (.D(rng_num_c[29]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i30.GSR = "ENABLED";
    FD1P3IX sr_i32 (.D(rng_num_c[31]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i32.GSR = "ENABLED";
    FD1P3IX sr_i33 (.D(rng_num_c[32]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i33.GSR = "ENABLED";
    FD1P3IX sr_i38 (.D(rng_num_c[37]), .SP(sclk_enable_230), .CD(n6789), 
            .CK(sclk), .Q(rng_num_c[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i38.GSR = "ENABLED";
    FD1P3JX sr_i12 (.D(rng_num_c[11]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[12])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i12.GSR = "ENABLED";
    FD1P3JX sr_i39 (.D(rng_num_c[38]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[39])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i39.GSR = "ENABLED";
    FD1P3JX sr_i37 (.D(rng_num_c[36]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[37])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i37.GSR = "ENABLED";
    FD1P3JX sr_i36 (.D(rng_num_c[35]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[36])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i36.GSR = "ENABLED";
    FD1P3JX sr_i35 (.D(rng_num_c[34]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[35])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i35.GSR = "ENABLED";
    FD1P3JX sr_i34 (.D(rng_num_c[33]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[34])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i34.GSR = "ENABLED";
    FD1P3JX sr_i31 (.D(rng_num_c[30]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[31])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i31.GSR = "ENABLED";
    FD1P3JX sr_i29 (.D(rng_num_c[28]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[29])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i29.GSR = "ENABLED";
    FD1P3JX sr_i28 (.D(rng_num_c[27]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[28])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i28.GSR = "ENABLED";
    FD1P3JX sr_i27 (.D(rng_num_c[26]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[27])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i27.GSR = "ENABLED";
    FD1P3JX sr_i26 (.D(rng_num_c[25]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[26])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i26.GSR = "ENABLED";
    FD1P3JX sr_i23 (.D(rng_num_c[22]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[23])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i23.GSR = "ENABLED";
    FD1P3JX sr_i21 (.D(rng_num_c[20]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[21])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i21.GSR = "ENABLED";
    FD1P3JX sr_i20 (.D(rng_num_c[19]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[20])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i20.GSR = "ENABLED";
    FD1P3JX sr_i19 (.D(rng_num_c[18]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[19])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i19.GSR = "ENABLED";
    FD1P3JX sr_i18 (.D(rng_num_c[17]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[18])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i18.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(rng_num_c[21]), .B(\rng_num[0] ), .C(rng_num_c[39]), 
         .D(n6), .Z(fb)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(68[11:59])
    defparam i4_4_lut.init = 16'h6996;
    LUT4 i1_2_lut (.A(\rng_num[1] ), .B(rng_num_c[31]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(68[11:59])
    defparam i1_2_lut.init = 16'h6666;
    FD1P3JX sr_i11 (.D(rng_num_c[10]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[11])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i11.GSR = "ENABLED";
    FD1P3JX sr_i4 (.D(\rng_num[3] ), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i4.GSR = "ENABLED";
    FD1P3JX sr_i3 (.D(\rng_num[2] ), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(\rng_num[3] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i3.GSR = "ENABLED";
    FD1P3JX sr_i2 (.D(\rng_num[1] ), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(\rng_num[2] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i2.GSR = "ENABLED";
    FD1P3JX sr_i10 (.D(rng_num_c[9]), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(rng_num_c[10])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i10.GSR = "ENABLED";
    FD1P3JX sr_i7 (.D(\rng_num[6] ), .SP(sclk_enable_230), .PD(n6789), 
            .CK(sclk), .Q(\rng_num[7] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=222, LSE_RLINE=222 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i7.GSR = "ENABLED";
    
endmodule
