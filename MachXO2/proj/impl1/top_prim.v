// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Aug 19 12:35:38 2019
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
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
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
        fifo_wr_en, tx_active_N_629;
    wire [4:0]buf_dataini;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(47[12:23])
    
    wire fifo_emp;
    wire [31:0]send_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(125[12:21])
    
    wire data_valid;
    wire [39:0]dec_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(133[12:20])
    wire [49:0]enc_data;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(134[12:20])
    wire [39:0]rng_num;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(135[12:19])
    
    wire sync_prng, rx_rdy, n4432, n4431, n4430, n4429, sclk_enable_97, 
        bit_slip_N_318, n4428, n4427, n4426, n4425, n4424, n5374, 
        n5109, n5364, n4423, n4422, n4437, n4436, n4435, n3829, 
        n4434, n4433, n4484, n3820, n5308, n5300, n18, n17, 
        n24, n22, n20, n16, n5398;
    
    VHI i2 (.Z(VCC_net));
    OSCH oscinst0 (.STDBY(GND_net), .OSC(clk_int)) /* synthesis NOM_FREQ="133.0", syn_instantiated=1 */ ;
    defparam oscinst0.NOM_FREQ = "133.0";
    OB FT601_DATA_pad_18 (.I(FT601_DATA_c_18), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_19 (.I(FT601_DATA_c_19), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_20 (.I(FT601_DATA_c_20), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_21 (.I(FT601_DATA_c_21), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_22 (.I(FT601_DATA_c_22), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_23 (.I(FT601_DATA_c_23), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_24 (.I(FT601_DATA_c_24), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_25 (.I(FT601_DATA_c_25), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_26 (.I(FT601_DATA_c_26), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_31 (.I(FT601_DATA_c_31), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(34[9:20])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_3 (.I(FT601_DATA_c_3), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_4 (.I(FT601_DATA_c_4), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(38[9:20])
    CCU2D sub_15_add_2_19 (.A0(rng_num[17]), .B0(dec_data[17]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[18]), .B1(dec_data[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4430), .COUT(n4431), .S0(send_data[17]), 
          .S1(send_data[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_19.INIT0 = 16'h5999;
    defparam sub_15_add_2_19.INIT1 = 16'h5999;
    defparam sub_15_add_2_19.INJECT1_0 = "NO";
    defparam sub_15_add_2_19.INJECT1_1 = "NO";
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_OE_N_pad (.I(VCC_net), .O(FT601_OE_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(42[9:19])
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_RD_N_pad (.I(VCC_net), .O(FT601_RD_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(41[9:19])
    CCU2D sub_15_add_2_17 (.A0(rng_num[15]), .B0(dec_data[15]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[16]), .B1(dec_data[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4429), .COUT(n4430), .S0(send_data[15]), 
          .S1(send_data[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_17.INIT0 = 16'h5999;
    defparam sub_15_add_2_17.INIT1 = 16'h5999;
    defparam sub_15_add_2_17.INJECT1_0 = "NO";
    defparam sub_15_add_2_17.INJECT1_1 = "NO";
    OB FT601_SIWU_N_pad (.I(VCC_net), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(40[9:21])
    VLO i1 (.Z(GND_net));
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(39[9:19])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_BE_pad_0 (.I(VCC_net), .O(FT601_BE[0]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    CCU2D sub_15_add_2_15 (.A0(rng_num[13]), .B0(dec_data[13]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[14]), .B1(dec_data[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4428), .COUT(n4429), .S0(send_data[13]), 
          .S1(send_data[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_15.INIT0 = 16'h5999;
    defparam sub_15_add_2_15.INIT1 = 16'h5999;
    defparam sub_15_add_2_15.INJECT1_0 = "NO";
    defparam sub_15_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_13 (.A0(rng_num[11]), .B0(dec_data[11]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[12]), .B1(dec_data[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4427), .COUT(n4428), .S0(send_data[11]), 
          .S1(send_data[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_13.INIT0 = 16'h5999;
    defparam sub_15_add_2_13.INIT1 = 16'h5999;
    defparam sub_15_add_2_13.INJECT1_0 = "NO";
    defparam sub_15_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_11 (.A0(rng_num[9]), .B0(dec_data[9]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[10]), .B1(dec_data[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4426), .COUT(n4427), .S0(send_data[9]), 
          .S1(send_data[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_11.INIT0 = 16'h5999;
    defparam sub_15_add_2_11.INIT1 = 16'h5999;
    defparam sub_15_add_2_11.INJECT1_0 = "NO";
    defparam sub_15_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_9 (.A0(rng_num[7]), .B0(dec_data[7]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[8]), .B1(dec_data[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4425), .COUT(n4426), .S0(send_data[7]), 
          .S1(send_data[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_9.INIT0 = 16'h5999;
    defparam sub_15_add_2_9.INIT1 = 16'h5999;
    defparam sub_15_add_2_9.INJECT1_0 = "NO";
    defparam sub_15_add_2_9.INJECT1_1 = "NO";
    OB FT601_BE_pad_1 (.I(VCC_net), .O(FT601_BE[1]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_DATA_pad_16 (.I(FT601_DATA_c_16), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_BE_pad_2 (.I(VCC_net), .O(FT601_BE[2]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_BE_pad_3 (.I(VCC_net), .O(FT601_BE[3]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(36[9:17])
    CCU2D sub_15_add_2_7 (.A0(rng_num[5]), .B0(dec_data[5]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[6]), .B1(dec_data[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4424), .COUT(n4425), .S0(send_data[5]), 
          .S1(send_data[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_7.INIT0 = 16'h5999;
    defparam sub_15_add_2_7.INIT1 = 16'h5999;
    defparam sub_15_add_2_7.INJECT1_0 = "NO";
    defparam sub_15_add_2_7.INJECT1_1 = "NO";
    OB FT601_DATA_pad_0 (.I(FT601_DATA_c_0), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_17 (.I(FT601_DATA_c_17), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_1 (.I(FT601_DATA_c_1), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_2 (.I(FT601_DATA_c_2), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_27 (.I(FT601_DATA_c_27), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    deserializer deser_inst (.sclk(sclk), .data_valid(data_valid), .LED_c(LED_c), 
            .rx_rdy(rx_rdy), .bit_slip_N_318(bit_slip_N_318), .sclk_enable_97(sclk_enable_97), 
            .enc_data({enc_data}), .rbyteclk_N_428(rbyteclk_N_428), .buf_clk(buf_clk), 
            .GND_net(GND_net), .buf_dataini({buf_dataini}), .clk_int(clk_int));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(164[18:42])
    OB FT601_DATA_pad_28 (.I(FT601_DATA_c_28), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_29 (.I(FT601_DATA_c_29), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    OB FT601_DATA_pad_30 (.I(FT601_DATA_c_30), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(35[9:19])
    IB Inst2_IB (.I(CLK_LANE), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(390[16:18])
    IB Inst1_IB4 (.I(DATA_LANE[4]), .O(buf_dataini[4])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(396[17:19])
    IB Inst1_IB3 (.I(DATA_LANE[3]), .O(buf_dataini[3])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(402[17:19])
    IB Inst1_IB2 (.I(DATA_LANE[2]), .O(buf_dataini[2])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(408[17:19])
    IB Inst1_IB1 (.I(DATA_LANE[1]), .O(buf_dataini[1])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(414[17:19])
    IB Inst1_IB0 (.I(DATA_LANE[0]), .O(buf_dataini[0])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=78, LSE_RLINE=78 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(420[17:19])
    CCU2D sub_15_add_2_5 (.A0(rng_num[3]), .B0(dec_data[3]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[4]), .B1(dec_data[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4423), .COUT(n4424), .S0(send_data[3]), 
          .S1(send_data[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_5.INIT0 = 16'h5999;
    defparam sub_15_add_2_5.INIT1 = 16'h5999;
    defparam sub_15_add_2_5.INJECT1_0 = "NO";
    defparam sub_15_add_2_5.INJECT1_1 = "NO";
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(28[9:12])
    CCU2D sub_15_add_2_3 (.A0(rng_num[1]), .B0(dec_data[1]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[2]), .B1(dec_data[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4422), .COUT(n4423), .S0(send_data[1]), 
          .S1(send_data[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_3.INIT0 = 16'h5999;
    defparam sub_15_add_2_3.INIT1 = 16'h5999;
    defparam sub_15_add_2_3.INJECT1_0 = "NO";
    defparam sub_15_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rng_num[0]), .B1(dec_data[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n4422), .S1(send_data[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_1.INIT0 = 16'h0000;
    defparam sub_15_add_2_1.INIT1 = 16'h5999;
    defparam sub_15_add_2_1.INJECT1_0 = "NO";
    defparam sub_15_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(data_valid), .B(LED_c), .C(n5398), .D(n5109), 
         .Z(sync_prng)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(146[19:42])
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i3849_4_lut (.A(n5308), .B(n5374), .C(n4484), .D(n3820), .Z(n5398)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3849_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(dec_data[9]), .B(n24), .C(n20), .D(dec_data[0]), 
         .Z(n5109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i3761_4_lut (.A(dec_data[10]), .B(dec_data[26]), .C(dec_data[5]), 
         .D(dec_data[23]), .Z(n5308)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3761_4_lut.init = 16'h8000;
    LUT4 i3826_4_lut (.A(dec_data[4]), .B(n5300), .C(n3829), .D(dec_data[28]), 
         .Z(n5374)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3826_4_lut.init = 16'h8000;
    LUT4 i3_4_lut (.A(dec_data[15]), .B(dec_data[12]), .C(dec_data[11]), 
         .D(dec_data[7]), .Z(n4484)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2334_2_lut (.A(dec_data[29]), .B(dec_data[19]), .Z(n3820)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2334_2_lut.init = 16'h8888;
    CCU2D sub_15_add_2_33 (.A0(rng_num[31]), .B0(dec_data[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4437), .S0(send_data[31]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_33.INIT0 = 16'h5999;
    defparam sub_15_add_2_33.INIT1 = 16'h0000;
    defparam sub_15_add_2_33.INJECT1_0 = "NO";
    defparam sub_15_add_2_33.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(dec_data[17]), .B(n22), .C(n16), .D(dec_data[6]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 LED_I_0_2_lut (.A(LED_c), .B(data_valid), .Z(fifo_wr_en)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(146[19:42])
    defparam LED_I_0_2_lut.init = 16'h8888;
    LUT4 i7_4_lut (.A(n17), .B(dec_data[30]), .C(n18), .D(dec_data[24]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(dec_data[1]), .B(dec_data[8]), .C(dec_data[14]), 
         .D(dec_data[16]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(dec_data[22]), .B(dec_data[25]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i7_4_lut_adj_115 (.A(dec_data[21]), .B(dec_data[33]), .C(dec_data[35]), 
         .D(dec_data[32]), .Z(n17)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i7_4_lut_adj_115.init = 16'hffdf;
    LUT4 i8_3_lut (.A(dec_data[20]), .B(n5364), .C(dec_data[38]), .Z(n18)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(151[34:87])
    defparam i8_3_lut.init = 16'hf7f7;
    LUT4 i3753_4_lut (.A(dec_data[37]), .B(dec_data[34]), .C(dec_data[36]), 
         .D(dec_data[39]), .Z(n5300)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3753_4_lut.init = 16'h8000;
    LUT4 i2343_2_lut (.A(dec_data[31]), .B(dec_data[27]), .Z(n3829)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2343_2_lut.init = 16'h8888;
    LUT4 i3816_4_lut (.A(dec_data[2]), .B(dec_data[18]), .C(dec_data[13]), 
         .D(dec_data[3]), .Z(n5364)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3816_4_lut.init = 16'h8000;
    CCU2D sub_15_add_2_31 (.A0(rng_num[29]), .B0(dec_data[29]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[30]), .B1(dec_data[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4436), .COUT(n4437), .S0(send_data[29]), 
          .S1(send_data[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_31.INIT0 = 16'h5999;
    defparam sub_15_add_2_31.INIT1 = 16'h5999;
    defparam sub_15_add_2_31.INJECT1_0 = "NO";
    defparam sub_15_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_29 (.A0(rng_num[27]), .B0(dec_data[27]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[28]), .B1(dec_data[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4435), .COUT(n4436), .S0(send_data[27]), 
          .S1(send_data[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_29.INIT0 = 16'h5999;
    defparam sub_15_add_2_29.INIT1 = 16'h5999;
    defparam sub_15_add_2_29.INJECT1_0 = "NO";
    defparam sub_15_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_27 (.A0(rng_num[25]), .B0(dec_data[25]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[26]), .B1(dec_data[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4434), .COUT(n4435), .S0(send_data[25]), 
          .S1(send_data[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_27.INIT0 = 16'h5999;
    defparam sub_15_add_2_27.INIT1 = 16'h5999;
    defparam sub_15_add_2_27.INJECT1_0 = "NO";
    defparam sub_15_add_2_27.INJECT1_1 = "NO";
    LUT4 i3980_2_lut (.A(bit_slip_N_318), .B(rx_rdy), .Z(sclk_enable_97)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3980_2_lut.init = 16'h7777;
    ft601 ft601_comp (.FT601_TXE_N_c(FT601_TXE_N_c), .fifo_emp(fifo_emp), 
          .tx_active_N_629(tx_active_N_629), .FT601_WR_N_c(FT601_WR_N_c), 
          .FT601_CLK_c(FT601_CLK_c));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(248[18:35])
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D sub_15_add_2_25 (.A0(rng_num[23]), .B0(dec_data[23]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[24]), .B1(dec_data[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4433), .COUT(n4434), .S0(send_data[23]), 
          .S1(send_data[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_25.INIT0 = 16'h5999;
    defparam sub_15_add_2_25.INIT1 = 16'h5999;
    defparam sub_15_add_2_25.INJECT1_0 = "NO";
    defparam sub_15_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_23 (.A0(rng_num[21]), .B0(dec_data[21]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[22]), .B1(dec_data[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4432), .COUT(n4433), .S0(send_data[21]), 
          .S1(send_data[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_23.INIT0 = 16'h5999;
    defparam sub_15_add_2_23.INIT1 = 16'h5999;
    defparam sub_15_add_2_23.INJECT1_0 = "NO";
    defparam sub_15_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_21 (.A0(rng_num[19]), .B0(dec_data[19]), .C0(GND_net), 
          .D0(GND_net), .A1(rng_num[20]), .B1(dec_data[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n4431), .COUT(n4432), .S0(send_data[19]), 
          .S1(send_data[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_15_add_2_21.INIT0 = 16'h5999;
    defparam sub_15_add_2_21.INIT1 = 16'h5999;
    defparam sub_15_add_2_21.INJECT1_0 = "NO";
    defparam sub_15_add_2_21.INJECT1_1 = "NO";
    dec_8b10b decoder_inst4 (.\enc_data[46] (enc_data[46]), .\enc_data[45] (enc_data[45]), 
            .\enc_data[40] (enc_data[40]), .\enc_data[41] (enc_data[41]), 
            .\enc_data[42] (enc_data[42]), .\enc_data[43] (enc_data[43]), 
            .\dec_data[32] (dec_data[32]), .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), 
            .\enc_data[48] (enc_data[48]), .\enc_data[44] (enc_data[44]), 
            .\enc_data[47] (enc_data[47]), .\enc_data[49] (enc_data[49]), 
            .\dec_data[33] (dec_data[33]), .\dec_data[34] (dec_data[34]), 
            .\dec_data[35] (dec_data[35]), .\dec_data[36] (dec_data[36]), 
            .\dec_data[37] (dec_data[37]), .\dec_data[38] (dec_data[38]), 
            .\dec_data[39] (dec_data[39]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(212[21:30])
    TSALL TSALL_INST (.TSALL(GND_net));
    dec_8b10b_U2 decoder_inst1 (.\enc_data[16] (enc_data[16]), .\dec_data[8] (dec_data[8]), 
            .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[10] (enc_data[10]), 
            .\enc_data[11] (enc_data[11]), .\enc_data[12] (enc_data[12]), 
            .\enc_data[13] (enc_data[13]), .\enc_data[17] (enc_data[17]), 
            .\enc_data[15] (enc_data[15]), .\enc_data[19] (enc_data[19]), 
            .\enc_data[18] (enc_data[18]), .\dec_data[9] (dec_data[9]), 
            .\dec_data[10] (dec_data[10]), .\dec_data[11] (dec_data[11]), 
            .\dec_data[12] (dec_data[12]), .\dec_data[13] (dec_data[13]), 
            .\dec_data[14] (dec_data[14]), .\dec_data[15] (dec_data[15]), 
            .\enc_data[14] (enc_data[14]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(185[21:30])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    dec_8b10b_U1 decoder_inst2 (.\dec_data[16] (dec_data[16]), .sclk(sclk), 
            .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[23] (enc_data[23]), 
            .\enc_data[22] (enc_data[22]), .\enc_data[20] (enc_data[20]), 
            .\enc_data[21] (enc_data[21]), .\enc_data[28] (enc_data[28]), 
            .\enc_data[24] (enc_data[24]), .\enc_data[27] (enc_data[27]), 
            .\enc_data[25] (enc_data[25]), .\enc_data[26] (enc_data[26]), 
            .\enc_data[29] (enc_data[29]), .\dec_data[17] (dec_data[17]), 
            .\dec_data[18] (dec_data[18]), .\dec_data[19] (dec_data[19]), 
            .\dec_data[20] (dec_data[20]), .\dec_data[21] (dec_data[21]), 
            .\dec_data[22] (dec_data[22]), .\dec_data[23] (dec_data[23]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(194[21:30])
    dec_8b10b_U3 decoder_inst0 (.\dec_data[0] (dec_data[0]), .sclk(sclk), 
            .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[2] (enc_data[2]), 
            .\enc_data[0] (enc_data[0]), .\enc_data[1] (enc_data[1]), .\enc_data[3] (enc_data[3]), 
            .\enc_data[8] (enc_data[8]), .\dec_data[1] (dec_data[1]), .\dec_data[2] (dec_data[2]), 
            .\dec_data[3] (dec_data[3]), .\dec_data[4] (dec_data[4]), .\dec_data[5] (dec_data[5]), 
            .\dec_data[6] (dec_data[6]), .\dec_data[7] (dec_data[7]), .\enc_data[4] (enc_data[4]), 
            .\enc_data[9] (enc_data[9]), .\enc_data[5] (enc_data[5]), .\enc_data[6] (enc_data[6]), 
            .\enc_data[7] (enc_data[7]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(176[21:30])
    dec_8b10b_U0 decoder_inst3 (.\enc_data[33] (enc_data[33]), .\enc_data[32] (enc_data[32]), 
            .\enc_data[30] (enc_data[30]), .\enc_data[31] (enc_data[31]), 
            .\dec_data[24] (dec_data[24]), .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), 
            .\enc_data[37] (enc_data[37]), .\enc_data[39] (enc_data[39]), 
            .\enc_data[36] (enc_data[36]), .\enc_data[35] (enc_data[35]), 
            .\enc_data[38] (enc_data[38]), .\enc_data[34] (enc_data[34]), 
            .\dec_data[25] (dec_data[25]), .\dec_data[26] (dec_data[26]), 
            .\dec_data[27] (dec_data[27]), .\dec_data[28] (dec_data[28]), 
            .\dec_data[29] (dec_data[29]), .\dec_data[30] (dec_data[30]), 
            .\dec_data[31] (dec_data[31]));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(203[21:30])
    \prng_recv("1011110010111100101111001011110010111011")  prng_inst (.\rng_num[31] (rng_num[31]), 
            .GND_net(GND_net), .\rng_num[29] (rng_num[29]), .\rng_num[30] (rng_num[30]), 
            .\rng_num[27] (rng_num[27]), .\rng_num[28] (rng_num[28]), .\rng_num[25] (rng_num[25]), 
            .\rng_num[26] (rng_num[26]), .\rng_num[23] (rng_num[23]), .\rng_num[24] (rng_num[24]), 
            .\rng_num[21] (rng_num[21]), .\rng_num[22] (rng_num[22]), .\rng_num[0] (rng_num[0]), 
            .sclk(sclk), .sync_prng(sync_prng), .\rng_num[1] (rng_num[1]), 
            .\rng_num[2] (rng_num[2]), .\rng_num[3] (rng_num[3]), .\rng_num[4] (rng_num[4]), 
            .\rng_num[5] (rng_num[5]), .\rng_num[6] (rng_num[6]), .\rng_num[7] (rng_num[7]), 
            .\rng_num[8] (rng_num[8]), .\rng_num[9] (rng_num[9]), .\rng_num[10] (rng_num[10]), 
            .\rng_num[11] (rng_num[11]), .\rng_num[12] (rng_num[12]), .\rng_num[13] (rng_num[13]), 
            .\rng_num[14] (rng_num[14]), .\rng_num[15] (rng_num[15]), .\rng_num[16] (rng_num[16]), 
            .\rng_num[17] (rng_num[17]), .\rng_num[18] (rng_num[18]), .\rng_num[19] (rng_num[19]), 
            .\rng_num[20] (rng_num[20]), .LED_c(LED_c), .data_valid(data_valid));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(221[17:26])
    async_fifo cdc_fifo_inst (.send_data({send_data}), .sclk(sclk), .FT601_CLK_c(FT601_CLK_c), 
            .fifo_wr_en(fifo_wr_en), .tx_active_N_629(tx_active_N_629), 
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
            .FT601_DATA_c_24(FT601_DATA_c_24)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
    
endmodule
//
// Verilog Description of module deserializer
//

module deserializer (sclk, data_valid, LED_c, rx_rdy, bit_slip_N_318, 
            sclk_enable_97, enc_data, rbyteclk_N_428, buf_clk, GND_net, 
            buf_dataini, clk_int);
    output sclk;
    output data_valid;
    output LED_c;
    output rx_rdy;
    output bit_slip_N_318;
    input sclk_enable_97;
    output [49:0]enc_data;
    output rbyteclk_N_428;
    input buf_clk;
    input GND_net;
    input [4:0]buf_dataini;
    input clk_int;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(39[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    wire [39:0]q_tmp;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(64[12:17])
    wire [39:0]q40_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(61[12:19])
    wire [7:0]n478;
    wire [39:0]n1627;
    
    wire sclk_enable_84, n1805, n1792, n2860, n1933, n1934, n1935, 
        n1936;
    wire [19:0]n1544;
    
    wire n1991, n5456, n1992, n1949, n1950, n1951, n1952, bit_slip_N_312;
    wire [39:0]n1298;
    
    wire n1965, n1966, n1967, n1968, n1989, n1990, sclk_enable_96, 
        n1981, n1982, n1983, n1984, n1987, n1988, n1997, n1998, 
        n1999, n2000, n1875, n5811, sclk_enable_90, n1877;
    wire [3:0]lnk_trnd_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(73[12:24])
    
    wire sclk_enable_93, n13, n1985, n1986, n1975, n1976, n1804, 
        n1973, n1974, n1921, n1971, n1972, n1969, n1970, n5115, 
        n12;
    wire [49:0]q50_buf;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(62[12:19])
    
    wire n1959, n1960;
    wire [2:0]hold_slip;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(74[12:21])
    
    wire n5807;
    wire [2:0]n1;
    
    wire n2007, n2008, n5823, n1887, n1873, n1937, n2005, n2006, 
        n1957, n1958, n2003, n2004, n1938, n1940, n1942, n1944, 
        n1954, n1956, n2002, n1874, n2001, sclk_enable_86, sclk_enable_88, 
        n1884, n1886, n1889, n1896, n1898, n1899, n1901, n1908, 
        n1910, n1911, n1913, n1920, n1922, n1923, n1925, n2857, 
        n1955, sclk_enable_95;
    wire [2:0]n673;
    
    wire n1953, n1943, n1883, n1941, n1939, n7, n12_adj_647, n2859, 
        n8_adj_648, n5348, n10, n16, n5282, bit_slip, n5097, n2861, 
        n5429, n1885, n1919, n1909, n1895, n1907, n1897;
    
    LUT4 i371_3_lut (.A(q_tmp[2]), .B(q40_buf[0]), .C(n478[4]), .Z(n1627[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i371_3_lut.init = 16'hcaca;
    FD1P3AX q_tmp_i0_i0 (.D(n1805), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i0.GSR = "ENABLED";
    FD1S3IX q_valid_66 (.D(LED_c), .CK(sclk), .CD(n1792), .Q(data_valid));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_valid_66.GSR = "ENABLED";
    FD1S3IX counter_FSM_i4 (.D(sclk_enable_84), .CK(sclk), .CD(n2860), 
            .Q(n478[3]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i4.GSR = "ENABLED";
    LUT4 i484_3_lut (.A(q_tmp[3]), .B(q40_buf[1]), .C(n478[4]), .Z(n1627[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i484_3_lut.init = 16'hcaca;
    LUT4 i486_3_lut (.A(n1933), .B(q40_buf[2]), .C(n478[4]), .Z(n1934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i486_3_lut.init = 16'hcaca;
    LUT4 i485_3_lut (.A(q_tmp[4]), .B(q40_buf[0]), .C(n478[3]), .Z(n1933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i485_3_lut.init = 16'hcaca;
    LUT4 i488_3_lut (.A(n1935), .B(q40_buf[3]), .C(n478[4]), .Z(n1936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i488_3_lut.init = 16'hcaca;
    LUT4 i487_3_lut (.A(q_tmp[5]), .B(q40_buf[1]), .C(n478[3]), .Z(n1935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i487_3_lut.init = 16'hcaca;
    LUT4 i498_3_lut (.A(q_tmp[10]), .B(q40_buf[8]), .C(n478[4]), .Z(n1627[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i498_3_lut.init = 16'hcaca;
    LUT4 i500_3_lut (.A(q_tmp[11]), .B(q40_buf[9]), .C(n478[4]), .Z(n1627[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i500_3_lut.init = 16'hcaca;
    PFUMX i544 (.BLUT(n1544[15]), .ALUT(n1991), .C0(n5456), .Z(n1992));
    LUT4 i502_3_lut (.A(n1949), .B(q40_buf[10]), .C(n478[4]), .Z(n1950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i502_3_lut.init = 16'hcaca;
    LUT4 i501_3_lut (.A(q_tmp[12]), .B(q40_buf[8]), .C(n478[3]), .Z(n1949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i501_3_lut.init = 16'hcaca;
    LUT4 i504_3_lut (.A(n1951), .B(q40_buf[11]), .C(n478[4]), .Z(n1952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i504_3_lut.init = 16'hcaca;
    LUT4 mux_149_i33_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(bit_slip_N_312), 
         .Z(n1298[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i33_3_lut.init = 16'hcaca;
    LUT4 i503_3_lut (.A(q_tmp[13]), .B(q40_buf[9]), .C(n478[3]), .Z(n1951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i503_3_lut.init = 16'hcaca;
    LUT4 i514_3_lut (.A(q_tmp[18]), .B(q40_buf[16]), .C(n478[4]), .Z(n1627[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i514_3_lut.init = 16'hcaca;
    LUT4 i516_3_lut (.A(q_tmp[19]), .B(q40_buf[17]), .C(n478[4]), .Z(n1627[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i516_3_lut.init = 16'hcaca;
    LUT4 i518_3_lut (.A(n1965), .B(q40_buf[18]), .C(n478[4]), .Z(n1966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i518_3_lut.init = 16'hcaca;
    LUT4 i517_3_lut (.A(q_tmp[20]), .B(q40_buf[16]), .C(n478[3]), .Z(n1965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i517_3_lut.init = 16'hcaca;
    LUT4 i520_3_lut (.A(n1967), .B(q40_buf[19]), .C(n478[4]), .Z(n1968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i520_3_lut.init = 16'hcaca;
    LUT4 i519_3_lut (.A(q_tmp[21]), .B(q40_buf[17]), .C(n478[3]), .Z(n1967)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i519_3_lut.init = 16'hcaca;
    LUT4 i530_3_lut (.A(q_tmp[26]), .B(q40_buf[24]), .C(n478[4]), .Z(n1627[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i530_3_lut.init = 16'hcaca;
    PFUMX i542 (.BLUT(n1544[14]), .ALUT(n1989), .C0(n5456), .Z(n1990));
    LUT4 i532_3_lut (.A(q_tmp[27]), .B(q40_buf[25]), .C(n478[4]), .Z(n1627[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i532_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_312), .D(bit_slip_N_318), 
         .Z(sclk_enable_96)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    LUT4 i534_3_lut (.A(n1981), .B(q40_buf[26]), .C(n478[4]), .Z(n1982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i534_3_lut.init = 16'hcaca;
    LUT4 i533_3_lut (.A(q_tmp[28]), .B(q40_buf[24]), .C(n478[3]), .Z(n1981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i533_3_lut.init = 16'hcaca;
    LUT4 i536_3_lut (.A(n1983), .B(q40_buf[27]), .C(n478[4]), .Z(n1984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i536_3_lut.init = 16'hcaca;
    LUT4 i535_3_lut (.A(q_tmp[29]), .B(q40_buf[25]), .C(n478[3]), .Z(n1983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i535_3_lut.init = 16'hcaca;
    PFUMX i540 (.BLUT(n1544[13]), .ALUT(n1987), .C0(n5456), .Z(n1988));
    LUT4 i546_3_lut (.A(q_tmp[34]), .B(q40_buf[32]), .C(n478[4]), .Z(n1627[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i546_3_lut.init = 16'hcaca;
    LUT4 i548_3_lut (.A(q_tmp[35]), .B(q40_buf[33]), .C(n478[4]), .Z(n1627[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i548_3_lut.init = 16'hcaca;
    LUT4 i550_3_lut (.A(n1997), .B(q40_buf[34]), .C(n478[4]), .Z(n1998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i550_3_lut.init = 16'hcaca;
    LUT4 i549_3_lut (.A(q_tmp[36]), .B(q40_buf[32]), .C(n478[3]), .Z(n1997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i549_3_lut.init = 16'hcaca;
    LUT4 i552_3_lut (.A(n1999), .B(q40_buf[35]), .C(n478[4]), .Z(n2000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i552_3_lut.init = 16'hcaca;
    LUT4 i551_3_lut (.A(q_tmp[37]), .B(q40_buf[33]), .C(n478[3]), .Z(n1999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i551_3_lut.init = 16'hcaca;
    LUT4 i427_3_lut (.A(n1298[2]), .B(q40_buf[6]), .C(n478[2]), .Z(n1875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i427_3_lut.init = 16'hcaca;
    LUT4 i3986_2_lut_4_lut (.A(n478[3]), .B(n5811), .C(n478[2]), .D(bit_slip_N_312), 
         .Z(sclk_enable_90)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam i3986_2_lut_4_lut.init = 16'h0001;
    LUT4 mux_149_i3_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(bit_slip_N_312), 
         .Z(n1298[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i3_3_lut.init = 16'hcaca;
    LUT4 i429_3_lut (.A(n1298[3]), .B(q40_buf[7]), .C(n478[2]), .Z(n1877)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i429_3_lut.init = 16'hcaca;
    FD1P3AX lnk_trnd_buf_i0_i0 (.D(n13), .SP(sclk_enable_93), .CK(sclk), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i0.GSR = "ENABLED";
    PFUMX i538 (.BLUT(n1544[12]), .ALUT(n1985), .C0(n5456), .Z(n1986));
    LUT4 mux_149_i4_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(bit_slip_N_312), 
         .Z(n1298[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i4_3_lut.init = 16'hcaca;
    PFUMX i528 (.BLUT(n1544[11]), .ALUT(n1975), .C0(n5456), .Z(n1976));
    LUT4 i368_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n478[3]), .Z(n1804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i368_3_lut.init = 16'hcaca;
    PFUMX i526 (.BLUT(n1544[10]), .ALUT(n1973), .C0(n5456), .Z(n1974));
    LUT4 mux_149_i1_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(bit_slip_N_312), 
         .Z(n1298[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i1_3_lut.init = 16'hcaca;
    LUT4 i473_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n478[3]), .Z(n1921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i473_3_lut.init = 16'hcaca;
    LUT4 mux_149_i5_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(bit_slip_N_312), 
         .Z(n1298[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i5_3_lut.init = 16'hcaca;
    LUT4 mux_149_i6_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(bit_slip_N_312), 
         .Z(n1298[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i6_3_lut.init = 16'hcaca;
    LUT4 mux_149_i34_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(bit_slip_N_312), 
         .Z(n1298[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i34_3_lut.init = 16'hcaca;
    PFUMX i524 (.BLUT(n1544[9]), .ALUT(n1971), .C0(n5456), .Z(n1972));
    PFUMX i522 (.BLUT(n1544[8]), .ALUT(n1969), .C0(n5456), .Z(n1970));
    PFUMX i21 (.BLUT(n5115), .ALUT(n12), .C0(q50_buf[6]), .Z(n13));
    PFUMX i512 (.BLUT(n1544[7]), .ALUT(n1959), .C0(n5456), .Z(n1960));
    FD1S3IX hold_slip__i0 (.D(n1[0]), .CK(sclk), .CD(n5807), .Q(hold_slip[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i0.GSR = "ENABLED";
    PFUMX i560 (.BLUT(n1544[19]), .ALUT(n2007), .C0(n5456), .Z(n2008));
    FD1S3AX counter_FSM_i1 (.D(n5811), .CK(sclk), .Q(bit_slip_N_318));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i1.GSR = "ENABLED";
    FD1P3IX q50_buf__i1 (.D(q_tmp[1]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i1.GSR = "ENABLED";
    LUT4 i439_3_lut (.A(n1298[10]), .B(q40_buf[14]), .C(n478[2]), .Z(n1887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i439_3_lut.init = 16'hcaca;
    LUT4 mux_149_i11_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(bit_slip_N_312), 
         .Z(n1298[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i11_3_lut.init = 16'hcaca;
    LUT4 i425_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n478[3]), .Z(n1873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i425_3_lut.init = 16'hcaca;
    LUT4 mux_149_i2_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(bit_slip_N_312), 
         .Z(n1298[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i2_3_lut.init = 16'hcaca;
    LUT4 i489_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(n478[4]), .Z(n1937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i489_3_lut.init = 16'hcaca;
    PFUMX i558 (.BLUT(n1544[18]), .ALUT(n2005), .C0(n5456), .Z(n2006));
    PFUMX i510 (.BLUT(n1544[6]), .ALUT(n1957), .C0(n5456), .Z(n1958));
    PFUMX i556 (.BLUT(n1544[17]), .ALUT(n2003), .C0(n5456), .Z(n2004));
    FD1P3IX q50_buf__i2 (.D(n1627[0]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i2.GSR = "ENABLED";
    FD1P3IX q50_buf__i3 (.D(n1627[1]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i3.GSR = "ENABLED";
    FD1P3IX q50_buf__i4 (.D(n1934), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i4.GSR = "ENABLED";
    FD1P3IX q50_buf__i5 (.D(n1936), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i5.GSR = "ENABLED";
    FD1P3IX q50_buf__i6 (.D(n1938), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i6.GSR = "ENABLED";
    FD1P3IX q50_buf__i7 (.D(n1940), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i7.GSR = "ENABLED";
    FD1P3IX q50_buf__i8 (.D(n1942), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i8.GSR = "ENABLED";
    FD1P3IX q50_buf__i9 (.D(n1944), .SP(sclk_enable_97), .CD(n5823), .CK(sclk), 
            .Q(q50_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i9.GSR = "ENABLED";
    FD1P3IX q50_buf__i10 (.D(q_tmp[8]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i10.GSR = "ENABLED";
    FD1P3IX q50_buf__i11 (.D(q_tmp[9]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i11.GSR = "ENABLED";
    FD1P3IX q50_buf__i12 (.D(n1627[8]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i12.GSR = "ENABLED";
    FD1P3IX q50_buf__i13 (.D(n1627[9]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i13.GSR = "ENABLED";
    FD1P3IX q50_buf__i14 (.D(n1950), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i14.GSR = "ENABLED";
    FD1P3IX q50_buf__i15 (.D(n1952), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i15.GSR = "ENABLED";
    FD1P3IX q50_buf__i16 (.D(n1954), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i16.GSR = "ENABLED";
    FD1P3IX q50_buf__i17 (.D(n1956), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i17.GSR = "ENABLED";
    FD1P3IX q50_buf__i18 (.D(n1958), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i18.GSR = "ENABLED";
    FD1P3IX q50_buf__i19 (.D(n1960), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i19.GSR = "ENABLED";
    FD1P3IX q50_buf__i20 (.D(q_tmp[16]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i20.GSR = "ENABLED";
    FD1P3IX q50_buf__i21 (.D(q_tmp[17]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i21.GSR = "ENABLED";
    FD1P3IX q50_buf__i22 (.D(n1627[16]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i22.GSR = "ENABLED";
    FD1P3IX q50_buf__i23 (.D(n1627[17]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i23.GSR = "ENABLED";
    FD1P3IX q50_buf__i24 (.D(n1966), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i24.GSR = "ENABLED";
    FD1P3IX q50_buf__i25 (.D(n1968), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i25.GSR = "ENABLED";
    FD1P3IX q50_buf__i26 (.D(n1970), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i26.GSR = "ENABLED";
    FD1P3IX q50_buf__i27 (.D(n1972), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i27.GSR = "ENABLED";
    FD1P3IX q50_buf__i28 (.D(n1974), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i28.GSR = "ENABLED";
    FD1P3IX q50_buf__i29 (.D(n1976), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i29.GSR = "ENABLED";
    FD1P3IX q50_buf__i30 (.D(q_tmp[24]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i30.GSR = "ENABLED";
    FD1P3IX q50_buf__i31 (.D(q_tmp[25]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i31.GSR = "ENABLED";
    FD1P3IX q50_buf__i32 (.D(n1627[24]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i32.GSR = "ENABLED";
    FD1P3IX q50_buf__i33 (.D(n1627[25]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i33.GSR = "ENABLED";
    FD1P3IX q50_buf__i34 (.D(n1982), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i34.GSR = "ENABLED";
    FD1P3IX q50_buf__i35 (.D(n1984), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i35.GSR = "ENABLED";
    FD1P3IX q50_buf__i36 (.D(n1986), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i36.GSR = "ENABLED";
    FD1P3IX q50_buf__i37 (.D(n1988), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i37.GSR = "ENABLED";
    FD1P3IX q50_buf__i38 (.D(n1990), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i38.GSR = "ENABLED";
    FD1P3IX q50_buf__i39 (.D(n1992), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i39.GSR = "ENABLED";
    FD1P3IX q50_buf__i40 (.D(q_tmp[32]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[40])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i40.GSR = "ENABLED";
    FD1P3IX q50_buf__i41 (.D(q_tmp[33]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[41])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i41.GSR = "ENABLED";
    FD1P3IX q50_buf__i42 (.D(n1627[32]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[42])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i42.GSR = "ENABLED";
    FD1P3IX q50_buf__i43 (.D(n1627[33]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[43])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i43.GSR = "ENABLED";
    FD1P3IX q50_buf__i44 (.D(n1998), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[44])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i44.GSR = "ENABLED";
    FD1P3IX q50_buf__i45 (.D(n2000), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[45])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i45.GSR = "ENABLED";
    FD1P3IX q50_buf__i46 (.D(n2002), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[46])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i46.GSR = "ENABLED";
    FD1P3IX q50_buf__i47 (.D(n2004), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i47.GSR = "ENABLED";
    FD1P3IX q50_buf__i48 (.D(n2006), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[48])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i48.GSR = "ENABLED";
    FD1P3IX q50_buf__i49 (.D(n2008), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[49])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i49.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i1 (.D(n1874), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i1.GSR = "ENABLED";
    PFUMX i554 (.BLUT(n1544[16]), .ALUT(n2001), .C0(n5456), .Z(n2002));
    FD1P3AX q_tmp_i0_i2 (.D(n1875), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i3 (.D(n1877), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i4 (.D(n1298[4]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i5 (.D(n1298[5]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i6 (.D(q40_buf[6]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i7 (.D(q40_buf[7]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i8 (.D(n1884), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i9 (.D(n1886), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i10 (.D(n1887), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i11 (.D(n1889), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i12 (.D(n1298[12]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i13 (.D(n1298[13]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i14 (.D(q40_buf[14]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i15 (.D(q40_buf[15]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i16 (.D(n1896), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i17 (.D(n1898), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i18 (.D(n1899), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i19 (.D(n1901), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i20 (.D(n1298[20]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i21 (.D(n1298[21]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i22 (.D(q40_buf[22]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i23 (.D(q40_buf[23]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i24 (.D(n1908), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i25 (.D(n1910), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i26 (.D(n1911), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i27 (.D(n1913), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i28 (.D(n1298[28]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i29 (.D(n1298[29]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i30 (.D(q40_buf[30]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i31 (.D(q40_buf[31]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i32 (.D(n1920), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i33 (.D(n1922), .SP(sclk_enable_84), .CK(sclk), .Q(q_tmp[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i34 (.D(n1923), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i35 (.D(n1925), .SP(sclk_enable_86), .CK(sclk), .Q(q_tmp[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i36 (.D(n1298[36]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i37 (.D(n1298[37]), .SP(sclk_enable_88), .CK(sclk), 
            .Q(q_tmp[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i38 (.D(q40_buf[38]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i39 (.D(q40_buf[39]), .SP(sclk_enable_90), .CK(sclk), 
            .Q(q_tmp[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q_tmp_i0_i39.GSR = "ENABLED";
    FD1S3IX q__i1 (.D(q50_buf[1]), .CK(sclk), .CD(n2857), .Q(enc_data[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i1.GSR = "ENABLED";
    FD1S3IX q__i2 (.D(q50_buf[2]), .CK(sclk), .CD(n2857), .Q(enc_data[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i2.GSR = "ENABLED";
    FD1S3IX q__i3 (.D(q50_buf[3]), .CK(sclk), .CD(n2857), .Q(enc_data[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i3.GSR = "ENABLED";
    FD1S3IX q__i4 (.D(q50_buf[4]), .CK(sclk), .CD(n2857), .Q(enc_data[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i4.GSR = "ENABLED";
    FD1S3IX q__i5 (.D(q50_buf[5]), .CK(sclk), .CD(n2857), .Q(enc_data[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i5.GSR = "ENABLED";
    FD1S3IX q__i6 (.D(q50_buf[6]), .CK(sclk), .CD(n2857), .Q(enc_data[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i6.GSR = "ENABLED";
    FD1S3IX q__i7 (.D(q50_buf[7]), .CK(sclk), .CD(n2857), .Q(enc_data[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i7.GSR = "ENABLED";
    FD1S3IX q__i8 (.D(q50_buf[8]), .CK(sclk), .CD(n2857), .Q(enc_data[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i8.GSR = "ENABLED";
    FD1S3IX q__i9 (.D(q50_buf[9]), .CK(sclk), .CD(n2857), .Q(enc_data[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i9.GSR = "ENABLED";
    FD1S3IX q__i10 (.D(q50_buf[10]), .CK(sclk), .CD(n2857), .Q(enc_data[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i10.GSR = "ENABLED";
    FD1S3IX q__i11 (.D(q50_buf[11]), .CK(sclk), .CD(n2857), .Q(enc_data[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i11.GSR = "ENABLED";
    FD1S3IX q__i12 (.D(q50_buf[12]), .CK(sclk), .CD(n2857), .Q(enc_data[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i12.GSR = "ENABLED";
    FD1S3IX q__i13 (.D(q50_buf[13]), .CK(sclk), .CD(n2857), .Q(enc_data[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i13.GSR = "ENABLED";
    FD1S3IX q__i14 (.D(q50_buf[14]), .CK(sclk), .CD(n2857), .Q(enc_data[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i14.GSR = "ENABLED";
    FD1S3IX q__i15 (.D(q50_buf[15]), .CK(sclk), .CD(n2857), .Q(enc_data[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i15.GSR = "ENABLED";
    FD1S3IX q__i16 (.D(q50_buf[16]), .CK(sclk), .CD(n2857), .Q(enc_data[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i16.GSR = "ENABLED";
    FD1S3IX q__i17 (.D(q50_buf[17]), .CK(sclk), .CD(n2857), .Q(enc_data[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i17.GSR = "ENABLED";
    FD1S3IX q__i18 (.D(q50_buf[18]), .CK(sclk), .CD(n2857), .Q(enc_data[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i18.GSR = "ENABLED";
    FD1S3IX q__i19 (.D(q50_buf[19]), .CK(sclk), .CD(n2857), .Q(enc_data[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i19.GSR = "ENABLED";
    FD1S3IX q__i20 (.D(q50_buf[20]), .CK(sclk), .CD(n2857), .Q(enc_data[20])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i20.GSR = "ENABLED";
    FD1S3IX q__i21 (.D(q50_buf[21]), .CK(sclk), .CD(n2857), .Q(enc_data[21])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i21.GSR = "ENABLED";
    FD1S3IX q__i22 (.D(q50_buf[22]), .CK(sclk), .CD(n2857), .Q(enc_data[22])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i22.GSR = "ENABLED";
    FD1S3IX q__i23 (.D(q50_buf[23]), .CK(sclk), .CD(n2857), .Q(enc_data[23])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i23.GSR = "ENABLED";
    FD1S3IX q__i24 (.D(q50_buf[24]), .CK(sclk), .CD(n2857), .Q(enc_data[24])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i24.GSR = "ENABLED";
    FD1S3IX q__i25 (.D(q50_buf[25]), .CK(sclk), .CD(n2857), .Q(enc_data[25])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i25.GSR = "ENABLED";
    FD1S3IX q__i26 (.D(q50_buf[26]), .CK(sclk), .CD(n2857), .Q(enc_data[26])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i26.GSR = "ENABLED";
    FD1S3IX q__i27 (.D(q50_buf[27]), .CK(sclk), .CD(n2857), .Q(enc_data[27])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i27.GSR = "ENABLED";
    FD1S3IX q__i28 (.D(q50_buf[28]), .CK(sclk), .CD(n2857), .Q(enc_data[28])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i28.GSR = "ENABLED";
    FD1S3IX q__i29 (.D(q50_buf[29]), .CK(sclk), .CD(n2857), .Q(enc_data[29])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i29.GSR = "ENABLED";
    FD1S3IX q__i30 (.D(q50_buf[30]), .CK(sclk), .CD(n2857), .Q(enc_data[30])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i30.GSR = "ENABLED";
    FD1S3IX q__i31 (.D(q50_buf[31]), .CK(sclk), .CD(n2857), .Q(enc_data[31])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i31.GSR = "ENABLED";
    FD1S3IX q__i32 (.D(q50_buf[32]), .CK(sclk), .CD(n2857), .Q(enc_data[32])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i32.GSR = "ENABLED";
    FD1S3IX q__i33 (.D(q50_buf[33]), .CK(sclk), .CD(n2857), .Q(enc_data[33])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i33.GSR = "ENABLED";
    FD1S3IX q__i34 (.D(q50_buf[34]), .CK(sclk), .CD(n2857), .Q(enc_data[34])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i34.GSR = "ENABLED";
    FD1S3IX q__i35 (.D(q50_buf[35]), .CK(sclk), .CD(n2857), .Q(enc_data[35])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i35.GSR = "ENABLED";
    FD1S3IX q__i36 (.D(q50_buf[36]), .CK(sclk), .CD(n2857), .Q(enc_data[36])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i36.GSR = "ENABLED";
    FD1S3IX q__i37 (.D(q50_buf[37]), .CK(sclk), .CD(n2857), .Q(enc_data[37])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i37.GSR = "ENABLED";
    FD1S3IX q__i38 (.D(q50_buf[38]), .CK(sclk), .CD(n2857), .Q(enc_data[38])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i38.GSR = "ENABLED";
    FD1S3IX q__i39 (.D(q50_buf[39]), .CK(sclk), .CD(n2857), .Q(enc_data[39])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i39.GSR = "ENABLED";
    FD1S3IX q__i40 (.D(q50_buf[40]), .CK(sclk), .CD(n2857), .Q(enc_data[40])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i40.GSR = "ENABLED";
    FD1S3IX q__i41 (.D(q50_buf[41]), .CK(sclk), .CD(n2857), .Q(enc_data[41])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i41.GSR = "ENABLED";
    FD1S3IX q__i42 (.D(q50_buf[42]), .CK(sclk), .CD(n2857), .Q(enc_data[42])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i42.GSR = "ENABLED";
    FD1S3IX q__i43 (.D(q50_buf[43]), .CK(sclk), .CD(n2857), .Q(enc_data[43])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i43.GSR = "ENABLED";
    FD1S3IX q__i44 (.D(q50_buf[44]), .CK(sclk), .CD(n2857), .Q(enc_data[44])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i44.GSR = "ENABLED";
    FD1S3IX q__i45 (.D(q50_buf[45]), .CK(sclk), .CD(n2857), .Q(enc_data[45])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i45.GSR = "ENABLED";
    FD1S3IX q__i46 (.D(q50_buf[46]), .CK(sclk), .CD(n2857), .Q(enc_data[46])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i46.GSR = "ENABLED";
    FD1S3IX q__i47 (.D(q50_buf[47]), .CK(sclk), .CD(n2857), .Q(enc_data[47])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i47.GSR = "ENABLED";
    FD1S3IX q__i48 (.D(q50_buf[48]), .CK(sclk), .CD(n2857), .Q(enc_data[48])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i48.GSR = "ENABLED";
    FD1S3IX q__i49 (.D(q50_buf[49]), .CK(sclk), .CD(n2857), .Q(enc_data[49])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i49.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i1 (.D(lnk_trnd_buf[0]), .SP(sclk_enable_93), 
            .CK(sclk), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i1.GSR = "ENABLED";
    PFUMX i508 (.BLUT(n1544[5]), .ALUT(n1955), .C0(n5456), .Z(n1956));
    FD1P3AX lnk_trnd_buf_i0_i2 (.D(lnk_trnd_buf[1]), .SP(sclk_enable_93), 
            .CK(sclk), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i3 (.D(lnk_trnd_buf[2]), .SP(sclk_enable_93), 
            .CK(sclk), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam lnk_trnd_buf_i0_i3.GSR = "ENABLED";
    FD1P3IX hold_slip__i1 (.D(n673[1]), .SP(sclk_enable_95), .CD(n5807), 
            .CK(sclk), .Q(hold_slip[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i1.GSR = "ENABLED";
    LUT4 i441_3_lut (.A(n1298[11]), .B(q40_buf[15]), .C(n478[2]), .Z(n1889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i441_3_lut.init = 16'hcaca;
    LUT4 mux_149_i12_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(bit_slip_N_312), 
         .Z(n1298[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i12_3_lut.init = 16'hcaca;
    LUT4 mux_260_i1_3_lut (.A(q_tmp[6]), .B(q40_buf[0]), .C(n478[2]), 
         .Z(n1544[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i1_3_lut.init = 16'hcaca;
    LUT4 mux_149_i13_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(bit_slip_N_312), 
         .Z(n1298[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i13_3_lut.init = 16'hcaca;
    LUT4 i202_2_lut_rep_59_3_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_318), 
         .Z(sclk_enable_95)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i202_2_lut_rep_59_3_lut.init = 16'hfdfd;
    LUT4 mux_149_i14_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(bit_slip_N_312), 
         .Z(n1298[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i14_3_lut.init = 16'hcaca;
    LUT4 i451_3_lut (.A(n1298[18]), .B(q40_buf[22]), .C(n478[2]), .Z(n1899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i451_3_lut.init = 16'hcaca;
    PFUMX i506 (.BLUT(n1544[4]), .ALUT(n1953), .C0(n5456), .Z(n1954));
    PFUMX i496 (.BLUT(n1544[3]), .ALUT(n1943), .C0(n5456), .Z(n1944));
    LUT4 i435_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n478[3]), .Z(n1883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i435_3_lut.init = 16'hcaca;
    PFUMX i494 (.BLUT(n1544[2]), .ALUT(n1941), .C0(n5456), .Z(n1942));
    FD1P3IX hold_slip__i2 (.D(n673[2]), .SP(sclk_enable_95), .CD(n5807), 
            .CK(sclk), .Q(hold_slip[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam hold_slip__i2.GSR = "ENABLED";
    FD1S3IX counter_FSM_i2 (.D(bit_slip_N_318), .CK(sclk), .CD(n5811), 
            .Q(bit_slip_N_312));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i2.GSR = "ENABLED";
    LUT4 i543_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n478[4]), .Z(n1991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i543_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(lnk_trnd_buf[0]), .B(lnk_trnd_buf[3]), .C(lnk_trnd_buf[2]), 
         .D(lnk_trnd_buf[1]), .Z(LED_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(95[17:92])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 mux_149_i9_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(bit_slip_N_312), 
         .Z(n1298[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i9_3_lut.init = 16'hcaca;
    LUT4 mux_149_i19_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(bit_slip_N_312), 
         .Z(n1298[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i19_3_lut.init = 16'hcaca;
    PFUMX i492 (.BLUT(n1544[1]), .ALUT(n1939), .C0(n5456), .Z(n1940));
    LUT4 i3991_2_lut (.A(n478[4]), .B(n478[3]), .Z(n5456)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i3991_2_lut.init = 16'heeee;
    PFUMX i490 (.BLUT(n1544[0]), .ALUT(n1937), .C0(n5456), .Z(n1938));
    LUT4 i4_4_lut (.A(n7), .B(hold_slip[1]), .C(hold_slip[2]), .D(n5807), 
         .Z(sclk_enable_93)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i491_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(n478[4]), .Z(n1939)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i491_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut (.A(bit_slip_N_318), .B(hold_slip[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i5_4_lut (.A(q50_buf[8]), .B(q50_buf[2]), .C(q50_buf[3]), .D(q50_buf[4]), 
         .Z(n12_adj_647)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i453_3_lut (.A(n1298[19]), .B(q40_buf[23]), .C(n478[2]), .Z(n1901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i453_3_lut.init = 16'hcaca;
    LUT4 mux_260_i2_3_lut (.A(q_tmp[7]), .B(q40_buf[1]), .C(n478[2]), 
         .Z(n1544[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i2_3_lut.init = 16'hcaca;
    LUT4 mux_149_i20_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(bit_slip_N_312), 
         .Z(n1298[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i20_3_lut.init = 16'hcaca;
    LUT4 mux_149_i21_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(bit_slip_N_312), 
         .Z(n1298[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i21_3_lut.init = 16'hcaca;
    LUT4 mux_149_i22_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(bit_slip_N_312), 
         .Z(n1298[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i22_3_lut.init = 16'hcaca;
    LUT4 i463_3_lut (.A(n1298[26]), .B(q40_buf[30]), .C(n478[2]), .Z(n1911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i463_3_lut.init = 16'hcaca;
    LUT4 mux_149_i27_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(bit_slip_N_312), 
         .Z(n1298[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i27_3_lut.init = 16'hcaca;
    LUT4 i465_3_lut (.A(n1298[27]), .B(q40_buf[31]), .C(n478[2]), .Z(n1913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i465_3_lut.init = 16'hcaca;
    LUT4 mux_149_i28_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(bit_slip_N_312), 
         .Z(n1298[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i28_3_lut.init = 16'hcaca;
    LUT4 mux_149_i29_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(bit_slip_N_312), 
         .Z(n1298[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i29_3_lut.init = 16'hcaca;
    FD1S3IX counter_FSM_i3 (.D(sclk_enable_84), .CK(sclk), .CD(n2859), 
            .Q(n478[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i3.GSR = "ENABLED";
    LUT4 i493_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n478[4]), .Z(n1941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i493_3_lut.init = 16'hcaca;
    LUT4 mux_149_i30_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(bit_slip_N_312), 
         .Z(n1298[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i30_3_lut.init = 16'hcaca;
    LUT4 i99_2_lut_rep_69 (.A(n478[4]), .B(rx_rdy), .Z(n5811)) /* synthesis lut_function=(A+!(B)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i99_2_lut_rep_69.init = 16'hbbbb;
    LUT4 i1_2_lut (.A(q50_buf[7]), .B(q50_buf[5]), .Z(n8_adj_648)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i3800_2_lut (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n5348)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3800_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(q50_buf[3]), .B(q50_buf[4]), .C(q50_buf[2]), .D(n10), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i7_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_113 (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i1_2_lut_adj_113.init = 16'h8888;
    LUT4 i3735_2_lut (.A(q50_buf[5]), .B(q50_buf[8]), .Z(n5282)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3735_2_lut.init = 16'heeee;
    FD1P3AX bit_slip_69 (.D(n5097), .SP(sclk_enable_96), .CK(sclk), .Q(bit_slip));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(214[9] 249[16])
    defparam bit_slip_69.GSR = "ENABLED";
    FD1S3IX q__i0 (.D(q50_buf[0]), .CK(sclk), .CD(n2857), .Q(enc_data[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q__i0.GSR = "ENABLED";
    FD1P3IX q50_buf__i0 (.D(q_tmp[0]), .SP(sclk_enable_97), .CD(n5823), 
            .CK(sclk), .Q(q50_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam q50_buf__i0.GSR = "ENABLED";
    FD1S3IX counter_FSM_i5 (.D(sclk_enable_84), .CK(sclk), .CD(n2861), 
            .Q(n478[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i5.GSR = "ENABLED";
    LUT4 mux_260_i3_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(n478[2]), 
         .Z(n1544[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i3_3_lut.init = 16'hcaca;
    PFUMX i474 (.BLUT(n1298[33]), .ALUT(n1921), .C0(n5429), .Z(n1922));
    LUT4 i475_3_lut (.A(n1298[34]), .B(q40_buf[38]), .C(n478[2]), .Z(n1923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i475_3_lut.init = 16'hcaca;
    LUT4 i495_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n478[4]), .Z(n1943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i495_3_lut.init = 16'hcaca;
    LUT4 mux_260_i4_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(n478[2]), 
         .Z(n1544[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i4_3_lut.init = 16'hcaca;
    LUT4 i437_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n478[3]), .Z(n1885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i437_3_lut.init = 16'hcaca;
    LUT4 i3994_2_lut_3_lut (.A(n478[4]), .B(rx_rdy), .C(n478[3]), .Z(sclk_enable_86)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i3994_2_lut_3_lut.init = 16'h0404;
    LUT4 mux_149_i10_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(bit_slip_N_312), 
         .Z(n1298[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i10_3_lut.init = 16'hcaca;
    PFUMX i472 (.BLUT(n1298[32]), .ALUT(n1919), .C0(n5429), .Z(n1920));
    LUT4 mux_149_i35_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(bit_slip_N_312), 
         .Z(n1298[34])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i35_3_lut.init = 16'hcaca;
    LUT4 i477_3_lut (.A(n1298[35]), .B(q40_buf[39]), .C(n478[2]), .Z(n1925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i477_3_lut.init = 16'hcaca;
    LUT4 mux_149_i36_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(bit_slip_N_312), 
         .Z(n1298[35])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i36_3_lut.init = 16'hcaca;
    PFUMX i462 (.BLUT(n1298[25]), .ALUT(n1909), .C0(n5429), .Z(n1910));
    LUT4 mux_149_i37_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(bit_slip_N_312), 
         .Z(n1298[36])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i37_3_lut.init = 16'hcaca;
    LUT4 i447_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n478[3]), .Z(n1895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i447_3_lut.init = 16'hcaca;
    LUT4 i3990_3_lut_rep_63_4_lut (.A(n478[4]), .B(rx_rdy), .C(n478[2]), 
         .D(n478[3]), .Z(sclk_enable_88)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i3990_3_lut_rep_63_4_lut.init = 16'h0004;
    LUT4 i1332_1_lut_2_lut (.A(n478[4]), .B(rx_rdy), .Z(sclk_enable_84)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1332_1_lut_2_lut.init = 16'h4444;
    PFUMX i460 (.BLUT(n1298[24]), .ALUT(n1907), .C0(n5429), .Z(n1908));
    LUT4 i352_2_lut_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(hold_slip[0]), 
         .D(bit_slip_N_318), .Z(n1[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i352_2_lut_3_lut_4_lut.init = 16'h0f2d;
    LUT4 mux_149_i38_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(bit_slip_N_312), 
         .Z(n1298[37])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i38_3_lut.init = 16'hcaca;
    PFUMX i450 (.BLUT(n1298[17]), .ALUT(n1897), .C0(n5429), .Z(n1898));
    PFUMX i448 (.BLUT(n1298[16]), .ALUT(n1895), .C0(n5429), .Z(n1896));
    LUT4 i3983_2_lut (.A(LED_c), .B(rx_rdy), .Z(n2857)) /* synthesis lut_function=(!(A (B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(108[17] 178[24])
    defparam i3983_2_lut.init = 16'h7777;
    LUT4 i505_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(n478[4]), .Z(n1953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i505_3_lut.init = 16'hcaca;
    LUT4 i231_2_lut (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n673[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i231_2_lut.init = 16'h6666;
    PFUMX i438 (.BLUT(n1298[9]), .ALUT(n1885), .C0(n5429), .Z(n1886));
    LUT4 mux_260_i5_3_lut (.A(q_tmp[14]), .B(q40_buf[8]), .C(n478[2]), 
         .Z(n1544[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i5_3_lut.init = 16'hcaca;
    PFUMX i436 (.BLUT(n1298[8]), .ALUT(n1883), .C0(n5429), .Z(n1884));
    LUT4 i238_3_lut (.A(hold_slip[2]), .B(hold_slip[1]), .C(hold_slip[0]), 
         .Z(n673[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i238_3_lut.init = 16'h6a6a;
    LUT4 i1376_1_lut (.A(bit_slip_N_312), .Z(n2859)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1376_1_lut.init = 16'h5555;
    LUT4 mux_149_i17_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(bit_slip_N_312), 
         .Z(n1298[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i17_3_lut.init = 16'hcaca;
    LUT4 i507_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(n478[4]), .Z(n1955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i507_3_lut.init = 16'hcaca;
    LUT4 i3977_2_lut_rep_65 (.A(rx_rdy), .B(LED_c), .Z(n5807)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(220[20:51])
    defparam i3977_2_lut_rep_65.init = 16'hdddd;
    LUT4 mux_260_i6_3_lut (.A(q_tmp[15]), .B(q40_buf[9]), .C(n478[2]), 
         .Z(n1544[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i6_3_lut.init = 16'hcaca;
    LUT4 i449_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n478[3]), .Z(n1897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i449_3_lut.init = 16'hcaca;
    LUT4 mux_149_i18_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(bit_slip_N_312), 
         .Z(n1298[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i18_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_114 (.A(n13), .B(sclk_enable_93), .Z(n5097)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_114.init = 16'h4444;
    LUT4 i459_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n478[3]), .Z(n1907)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i459_3_lut.init = 16'hcaca;
    LUT4 mux_149_i25_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(bit_slip_N_312), 
         .Z(n1298[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i25_3_lut.init = 16'hcaca;
    LUT4 i461_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n478[3]), .Z(n1909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i461_3_lut.init = 16'hcaca;
    LUT4 i1378_1_lut (.A(n478[3]), .Z(n2861)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1378_1_lut.init = 16'h5555;
    LUT4 mux_149_i26_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(bit_slip_N_312), 
         .Z(n1298[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_149_i26_3_lut.init = 16'hcaca;
    LUT4 i471_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n478[3]), .Z(n1919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i471_3_lut.init = 16'hcaca;
    LUT4 i3995_2_lut (.A(n478[3]), .B(n478[2]), .Z(n5429)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i3995_2_lut.init = 16'heeee;
    LUT4 i509_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n478[4]), .Z(n1957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i509_3_lut.init = 16'hcaca;
    LUT4 mux_260_i17_3_lut (.A(q_tmp[38]), .B(q40_buf[32]), .C(n478[2]), 
         .Z(n1544[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i17_3_lut.init = 16'hcaca;
    LUT4 i555_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(n478[4]), .Z(n2003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i555_3_lut.init = 16'hcaca;
    LUT4 mux_260_i18_3_lut (.A(q_tmp[39]), .B(q40_buf[33]), .C(n478[2]), 
         .Z(n1544[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i18_3_lut.init = 16'hcaca;
    LUT4 mux_260_i7_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(n478[2]), 
         .Z(n1544[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i7_3_lut.init = 16'hcaca;
    LUT4 i557_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n478[4]), .Z(n2005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i557_3_lut.init = 16'hcaca;
    LUT4 mux_260_i19_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(n478[2]), 
         .Z(n1544[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i19_3_lut.init = 16'hcaca;
    LUT4 i559_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n478[4]), .Z(n2007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i559_3_lut.init = 16'hcaca;
    LUT4 mux_260_i20_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(n478[2]), 
         .Z(n1544[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i20_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(q50_buf[1]), .B(n16), .C(n5282), .D(q50_buf[7]), 
         .Z(n12)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i8_4_lut.init = 16'h0008;
    LUT4 i511_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n478[4]), .Z(n1959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i511_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(q50_buf[1]), .B(n12_adj_647), .C(n8_adj_648), .D(n5348), 
         .Z(n5115)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(224[32:107])
    defparam i6_4_lut.init = 16'h0040;
    LUT4 mux_260_i8_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(n478[2]), 
         .Z(n1544[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i8_3_lut.init = 16'hcaca;
    LUT4 i521_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(n478[4]), .Z(n1969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i521_3_lut.init = 16'hcaca;
    LUT4 mux_260_i9_3_lut (.A(q_tmp[22]), .B(q40_buf[16]), .C(n478[2]), 
         .Z(n1544[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i9_3_lut.init = 16'hcaca;
    LUT4 i361_2_lut (.A(n478[2]), .B(rx_rdy), .Z(n1792)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(101[9] 181[16])
    defparam i361_2_lut.init = 16'hbbbb;
    LUT4 mux_260_i16_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(n478[2]), 
         .Z(n1544[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i16_3_lut.init = 16'hcaca;
    PFUMX i426 (.BLUT(n1298[1]), .ALUT(n1873), .C0(n5429), .Z(n1874));
    LUT4 i523_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(n478[4]), .Z(n1971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i523_3_lut.init = 16'hcaca;
    PFUMX i369 (.BLUT(n1298[0]), .ALUT(n1804), .C0(n5429), .Z(n1805));
    LUT4 mux_260_i10_3_lut (.A(q_tmp[23]), .B(q40_buf[17]), .C(n478[2]), 
         .Z(n1544[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i10_3_lut.init = 16'hcaca;
    LUT4 i525_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n478[4]), .Z(n1973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i525_3_lut.init = 16'hcaca;
    LUT4 mux_260_i11_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(n478[2]), 
         .Z(n1544[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i11_3_lut.init = 16'hcaca;
    LUT4 i527_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n478[4]), .Z(n1975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i527_3_lut.init = 16'hcaca;
    LUT4 mux_260_i12_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(n478[2]), 
         .Z(n1544[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i12_3_lut.init = 16'hcaca;
    LUT4 i537_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(n478[4]), .Z(n1985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i537_3_lut.init = 16'hcaca;
    LUT4 mux_260_i13_3_lut (.A(q_tmp[30]), .B(q40_buf[24]), .C(n478[2]), 
         .Z(n1544[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i13_3_lut.init = 16'hcaca;
    LUT4 i539_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(n478[4]), .Z(n1987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i539_3_lut.init = 16'hcaca;
    LUT4 i1377_1_lut (.A(n478[2]), .Z(n2860)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1377_1_lut.init = 16'h5555;
    LUT4 mux_260_i14_3_lut (.A(q_tmp[31]), .B(q40_buf[25]), .C(n478[2]), 
         .Z(n1544[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i14_3_lut.init = 16'hcaca;
    LUT4 i541_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n478[4]), .Z(n1989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i541_3_lut.init = 16'hcaca;
    LUT4 mux_260_i15_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(n478[2]), 
         .Z(n1544[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam mux_260_i15_3_lut.init = 16'hcaca;
    LUT4 i553_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(n478[4]), .Z(n2001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(109[21] 156[30])
    defparam i553_3_lut.init = 16'hcaca;
    ddrx4 ddrx4_inst (.rbyteclk_N_428(rbyteclk_N_428), .sclk(sclk), .bit_slip(bit_slip), 
          .q40_buf({q40_buf}), .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini({buf_dataini}), 
          .LED_c(LED_c), .clk_int(clk_int), .rx_rdy(rx_rdy), .n5823(n5823)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/deserializer.vhd(78[18:23])
    
endmodule
//
// Verilog Description of module ddrx4
//

module ddrx4 (rbyteclk_N_428, sclk, bit_slip, q40_buf, buf_clk, GND_net, 
            buf_dataini, LED_c, clk_int, rx_rdy, n5823) /* synthesis NGD_DRC_MASK=1 */ ;
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
    output n5823;
    
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire eclko /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(38[12:17])
    wire eclki /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(33[12:17])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(39[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    
    wire rx_reset;
    wire [4:0]dataini_t;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(46[12:21])
    
    wire xstop, dqsdel, locked, freeze_t, uddcntln_t, uddcntln_i, 
        reset_inv, freeze_i;
    
    INV i4187 (.A(sclk), .Z(rbyteclk_N_428));
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
            .uddcntln_i(uddcntln_i), .reset_inv(reset_inv), .n5823(n5823));   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ddrx4.vhd(305[21:28])
    
endmodule
//
// Verilog Description of module rx_sync
//

module rx_sync (clk_int, xstop, rx_rdy, rx_reset, locked, freeze_i, 
            uddcntln_i, reset_inv, n5823);
    input clk_int;
    output xstop;
    output rx_rdy;
    output rx_reset;
    input locked;
    output freeze_i;
    output uddcntln_i;
    input reset_inv;
    output n5823;
    
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(131[12:19])
    wire [2:0]CTRL_CNT;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(73[12:20])
    wire [2:2]CTRL_CNT_FAST;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(77[12:25])
    
    wire n5806, n5822;
    wire [5:0]STATE;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(68[12:17])
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(69[12:20])
    
    wire RSTN_I, N_172_I, N_171_I, N_170_I, N_169_I, RX_STOPE_0, 
        RX_STARTE_0_FAST, RX_START_FAST, RX_STARTE_0, LOCK_P1, LOCK_P2, 
        FREEZEE_0, CTRL_CNT_N0, N_161_I, CTRL_CNT_N1;
    wire [2:2]CTRL_CNTE_0_FAST;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(78[12:28])
    wire [2:2]CTRL_CNTE_0;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(76[12:23])
    
    wire CTRL_CNT_N1_0_S_0_X0, CTRL_CNT_N1_0_S_0_X1, UDDCNTLNE_0, n4, 
        n3837, n3839, n11, n5112, N_137, n3915, n5211, n4_adj_646;
    
    LUT4 STATE_NS_I_0_191_2_lut_rep_64_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .C(CTRL_CNT_FAST[2]), .Z(n5806)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_0_191_2_lut_rep_64_3_lut.init = 16'h0404;
    LUT4 STATE_NS_I_MB_1_0__I_17_2_lut_rep_80 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .Z(n5822)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_MB_1_0__I_17_2_lut_rep_80.init = 16'h4444;
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
    LUT4 i1_2_lut_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(LOCK_P2), 
         .Z(n4)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(307[21:52])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i2353_3_lut_4_lut (.A(n5822), .B(CTRL_CNT_FAST[2]), .C(n3837), 
         .D(rx_rdy), .Z(n3839)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(280[17:73])
    defparam i2353_3_lut_4_lut.init = 16'h2f22;
    LUT4 i3998_4_lut (.A(STATE[0]), .B(locked), .C(n11), .D(LOCK_P2), 
         .Z(STATE_NS[0])) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B (C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(293[20] 294[60])
    defparam i3998_4_lut.init = 16'h2327;
    LUT4 i1_4_lut (.A(RX_START_FAST), .B(n5822), .C(STATE[5]), .D(CTRL_CNT_FAST[2]), 
         .Z(n11)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(293[20] 294[60])
    defparam i1_4_lut.init = 16'h555d;
    LUT4 i1_4_lut_adj_108 (.A(locked), .B(STATE[1]), .C(STATE[0]), .D(n5112), 
         .Z(STATE_NS[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_108.init = 16'heca0;
    LUT4 i1_4_lut_adj_109 (.A(n5806), .B(rx_rdy), .C(n3837), .D(STATE[0]), 
         .Z(n5112)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_109.init = 16'h5051;
    LUT4 i2351_2_lut (.A(LOCK_P2), .B(locked), .Z(n3837)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2351_2_lut.init = 16'h8888;
    LUT4 N_172_I_I_0_4_lut (.A(n5806), .B(n3839), .C(STATE[1]), .D(STATE[2]), 
         .Z(N_172_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(287[17:85])
    defparam N_172_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 N_171_I_I_0_4_lut (.A(n5806), .B(n3839), .C(STATE[2]), .D(STATE[3]), 
         .Z(N_171_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(286[17:85])
    defparam N_171_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 N_170_I_I_0_4_lut (.A(n5806), .B(n3839), .C(STATE[3]), .D(STATE[4]), 
         .Z(N_170_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(285[17:85])
    defparam N_170_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 N_137_I_0_4_lut (.A(N_137), .B(STATE[4]), .C(CTRL_CNT[2]), .D(n5822), 
         .Z(N_169_I)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(284[17:36])
    defparam N_137_I_0_4_lut.init = 16'haeaa;
    LUT4 RX_STOPE_0_I_0_3_lut (.A(xstop), .B(STATE[2]), .C(STATE[4]), 
         .Z(RX_STOPE_0)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(314[21:63])
    defparam RX_STOPE_0_I_0_3_lut.init = 16'hcece;
    LUT4 i1_4_lut_adj_110 (.A(STATE[5]), .B(RX_START_FAST), .C(n5822), 
         .D(n3915), .Z(RX_STARTE_0_FAST)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_110.init = 16'ha888;
    LUT4 i2426_2_lut (.A(CTRL_CNT[2]), .B(LOCK_P2), .Z(n3915)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2426_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_111 (.A(STATE[5]), .B(rx_rdy), .C(CTRL_CNT[2]), 
         .D(n4), .Z(RX_STARTE_0)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_111.init = 16'ha888;
    LUT4 FREEZEE_0_I_0_4_lut (.A(freeze_i), .B(STATE[1]), .C(n5211), .D(n4_adj_646), 
         .Z(FREEZEE_0)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(316[21] 317[54])
    defparam FREEZEE_0_I_0_4_lut.init = 16'heeec;
    LUT4 i1_2_lut (.A(CTRL_CNT[0]), .B(STATE[4]), .Z(n4_adj_646)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_112 (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .Z(n5211)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut_adj_112.init = 16'hbbbb;
    LUT4 i2_3_lut (.A(STATE[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .Z(N_161_I)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(282[17:74])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 CTRL_CNT_0__I_0_2_lut (.A(CTRL_CNT[0]), .B(STATE[0]), .Z(CTRL_CNT_N1_0_S_0_X0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(330[29:57])
    defparam CTRL_CNT_0__I_0_2_lut.init = 16'h2222;
    LUT4 UDDCNTLNE_0_I_0_2_lut (.A(STATE[2]), .B(uddcntln_i), .Z(UDDCNTLNE_0)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(313[21:48])
    defparam UDDCNTLNE_0_I_0_2_lut.init = 16'h4444;
    LUT4 rx_start_I_0_1_lut_rep_81 (.A(rx_rdy), .Z(n5823)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam rx_start_I_0_1_lut_rep_81.init = 16'h5555;
    LUT4 i372_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(locked), .D(STATE[5]), 
         .Z(N_137)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(337[53:67])
    defparam i372_4_lut_4_lut.init = 16'hd500;
    LUT4 i380_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0_FAST[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(319[29:56])
    defparam i380_3_lut_4_lut.init = 16'h00f8;
    LUT4 i381_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/rx_sync.vhd(319[29:56])
    defparam i381_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(n5211), .D(STATE[5]), 
         .Z(CTRL_CNT_N0)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i1323_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(STATE[5]), 
         .D(CTRL_CNT[2]), .Z(CTRL_CNT_N1_0_S_0_X1)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1323_3_lut_4_lut.init = 16'h1110;
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_TXE_N_c, fifo_emp, tx_active_N_629, FT601_WR_N_c, 
            FT601_CLK_c);
    input FT601_TXE_N_c;
    input fifo_emp;
    output tx_active_N_629;
    output FT601_WR_N_c;
    input FT601_CLK_c;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    
    wire tx_active, tx_active_N_628;
    
    LUT4 tx_active_I_77_3_lut_4_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(tx_active), 
         .D(tx_active_N_629), .Z(tx_active_N_628)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam tx_active_I_77_3_lut_4_lut.init = 16'hf101;
    LUT4 fifo_rd_en_I_0_1_lut (.A(tx_active_N_629), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd(86[21:33])
    defparam fifo_rd_en_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut (.A(FT601_TXE_N_c), .B(fifo_emp), .C(tx_active), 
         .Z(tx_active_N_629)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    FD1S3AX tx_active_24 (.D(tx_active_N_628), .CK(FT601_CLK_c), .Q(tx_active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=248, LSE_RLINE=248 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/ft601.vhd(59[9] 82[16])
    defparam tx_active_24.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (\enc_data[46] , \enc_data[45] , \enc_data[40] , \enc_data[41] , 
            \enc_data[42] , \enc_data[43] , \dec_data[32] , sclk, rbyteclk_N_428, 
            \enc_data[48] , \enc_data[44] , \enc_data[47] , \enc_data[49] , 
            \dec_data[33] , \dec_data[34] , \dec_data[35] , \dec_data[36] , 
            \dec_data[37] , \dec_data[38] , \dec_data[39] );
    input \enc_data[46] ;
    input \enc_data[45] ;
    input \enc_data[40] ;
    input \enc_data[41] ;
    input \enc_data[42] ;
    input \enc_data[43] ;
    output \dec_data[32] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[48] ;
    input \enc_data[44] ;
    input \enc_data[47] ;
    input \enc_data[49] ;
    output \dec_data[33] ;
    output \dec_data[34] ;
    output \dec_data[35] ;
    output \dec_data[36] ;
    output \dec_data[37] ;
    output \dec_data[38] ;
    output \dec_data[39] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire n2670, n5824, go_N_532, p13, n4, ao, ao_N_538, or123_N_490, 
        bo, bo_N_537, n5796, n5250, do_N_535, co, co_N_536, do, 
        eo, eo_N_534, fo, fo_N_533, go, ho, ho_N_531, or122_N_483, 
        n2673, or127_N_503, n5808, or122_N_485, p22_N_446, n2606, 
        n5784, n5054, n5785, n5328, n4_adj_643, n5826, n5254, 
        n5797, n5829, n5827, n4_adj_644, n5571, n4_adj_645, ior134, 
        n5783, n5825, n5847, n5846;
    
    LUT4 xg_I_0_4_lut_4_lut (.A(n2670), .B(\enc_data[46] ), .C(n5824), 
         .D(\enc_data[45] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 p13_I_0_244_3_lut_4_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), 
         .C(\enc_data[42] ), .D(\enc_data[43] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(101[10:38])
    defparam p13_I_0_244_3_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), .C(\enc_data[42] ), 
         .D(\enc_data[43] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[32] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(\enc_data[48] ), .B(\enc_data[44] ), .C(\enc_data[43] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[40] ), .B(n5796), .C(n5250), 
         .D(\enc_data[43] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_82 (.A(\enc_data[47] ), .B(\enc_data[49] ), .Z(n5824)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_82.init = 16'heeee;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n2673), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5250)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n5808), .B(or122_N_485), .C(p13), .D(\enc_data[44] ), 
         .Z(n2673)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i1_4_lut_adj_102 (.A(p22_N_446), .B(\enc_data[44] ), .C(n4), 
         .D(\enc_data[48] ), .Z(n2606)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_102.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n5784), .B(\enc_data[41] ), .C(or122_N_483), 
         .D(n5054), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_103 (.A(\enc_data[41] ), .B(n2673), .C(n5796), .D(or123_N_490), 
         .Z(n5054)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_103.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5054), .B(\enc_data[42] ), .C(n5785), .D(n5328), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(\enc_data[43] ), .B(\enc_data[44] ), .C(n4_adj_643), 
         .D(p13), .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h373c;
    LUT4 i1_4_lut_adj_104 (.A(\enc_data[48] ), .B(n5826), .C(n5254), .D(n5797), 
         .Z(n4_adj_643)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_104.init = 16'h7350;
    LUT4 i1_4_lut_adj_105 (.A(\enc_data[44] ), .B(p13), .C(n5829), .D(n5827), 
         .Z(n5254)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_105.init = 16'hcddd;
    LUT4 xf_I_0_4_lut (.A(\enc_data[47] ), .B(\enc_data[45] ), .C(n2670), 
         .D(n4_adj_644), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[46] ), .B(\enc_data[49] ), .C(\enc_data[45] ), 
         .Z(n4_adj_644)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[33] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[34] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[35] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[36] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[37] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[38] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[39] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=212, LSE_RLINE=212 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_106 (.A(\enc_data[46] ), .B(n5571), .C(n4_adj_645), 
         .D(ior134), .Z(n2670)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_106.init = 16'hffd8;
    LUT4 i1_rep_27_2_lut (.A(\enc_data[49] ), .B(\enc_data[45] ), .Z(n5571)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam i1_rep_27_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_41_4_lut (.A(\enc_data[47] ), .B(\enc_data[49] ), 
         .C(\enc_data[46] ), .D(n2670), .Z(n5783)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_41_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_54 (.A(\enc_data[42] ), .B(n2606), .Z(n5796)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_54.init = 16'h8888;
    LUT4 i1_2_lut_rep_42_3_lut (.A(\enc_data[42] ), .B(n2606), .C(\enc_data[40] ), 
         .Z(n5784)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_42_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_83 (.A(\enc_data[48] ), .B(\enc_data[44] ), .Z(n5825)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_83.init = 16'heeee;
    LUT4 i1_2_lut_rep_55 (.A(n2606), .B(\enc_data[42] ), .Z(n5797)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_55.init = 16'h2222;
    LUT4 i1_2_lut_rep_43_3_lut (.A(n2606), .B(\enc_data[42] ), .C(\enc_data[40] ), 
         .Z(n5785)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_43_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_adj_107 (.A(\enc_data[45] ), .B(\enc_data[47] ), .C(\enc_data[49] ), 
         .Z(n4_adj_645)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_adj_107.init = 16'h5151;
    LUT4 xh_I_0_4_lut (.A(\enc_data[49] ), .B(\enc_data[47] ), .C(n5783), 
         .D(\enc_data[45] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(235[10:19])
    defparam xh_I_0_4_lut.init = 16'h343c;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2606), .B(\enc_data[42] ), .C(n5250), 
         .D(\enc_data[40] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_84 (.A(\enc_data[41] ), .B(\enc_data[40] ), .Z(n5826)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_84.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(n2606), .B(\enc_data[42] ), .C(\enc_data[41] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut (.A(n5827), .B(n5825), .C(\enc_data[47] ), .D(\enc_data[49] ), 
         .Z(ior134)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0110;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n5847)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n5846)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i2314_2_lut_rep_85 (.A(\enc_data[42] ), .B(\enc_data[43] ), .Z(n5827)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2314_2_lut_rep_85.init = 16'heeee;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(\enc_data[42] ), .B(\enc_data[43] ), 
         .C(\enc_data[44] ), .D(\enc_data[48] ), .Z(n5808)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2310_2_lut_rep_87 (.A(\enc_data[40] ), .B(\enc_data[41] ), .Z(n5829)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2310_2_lut_rep_87.init = 16'heeee;
    LUT4 i3781_2_lut_3_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), 
         .C(\enc_data[44] ), .D(\enc_data[48] ), .Z(n5328)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3781_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[42] ), .B(\enc_data[43] ), 
         .C(\enc_data[41] ), .D(\enc_data[40] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(115[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[48] ), .B(\enc_data[44] ), .C(\enc_data[40] ), 
         .D(\enc_data[41] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i4118 (.BLUT(n5846), .ALUT(n5847), .C0(\enc_data[40] ), .Z(or122_N_485));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module dec_8b10b_U2
//

module dec_8b10b_U2 (\enc_data[16] , \dec_data[8] , sclk, rbyteclk_N_428, 
            \enc_data[10] , \enc_data[11] , \enc_data[12] , \enc_data[13] , 
            \enc_data[17] , \enc_data[15] , \enc_data[19] , \enc_data[18] , 
            \dec_data[9] , \dec_data[10] , \dec_data[11] , \dec_data[12] , 
            \dec_data[13] , \dec_data[14] , \dec_data[15] , \enc_data[14] );
    input \enc_data[16] ;
    output \dec_data[8] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[10] ;
    input \enc_data[11] ;
    input \enc_data[12] ;
    input \enc_data[13] ;
    input \enc_data[17] ;
    input \enc_data[15] ;
    input \enc_data[19] ;
    input \enc_data[18] ;
    output \dec_data[9] ;
    output \dec_data[10] ;
    output \dec_data[11] ;
    output \dec_data[12] ;
    output \dec_data[13] ;
    output \dec_data[14] ;
    output \dec_data[15] ;
    input \enc_data[14] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire n5840, n5841, n2661, ao, ao_N_538, bo, bo_N_537, co, 
        co_N_536, do, do_N_535, eo, eo_N_534, fo, fo_N_533, go, 
        go_N_532, ho, ho_N_531, n4, n5803, n5844, n5843, n5622, 
        n5621, n5368, n5792, n5223, n2535, n2654, or122_N_483, 
        or123_N_490, or127_N_503, or122_N_485, p13, ior134_N_529, 
        n5779, n5793, n5780, n5812, n5813, p22_N_446, n5057, n5195, 
        n4_adj_641, n5380, n26, n5815, n4_adj_642;
    
    PFUMX i4114 (.BLUT(n5840), .ALUT(n5841), .C0(\enc_data[16] ), .Z(n2661));
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[8] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(\enc_data[12] ), 
         .D(\enc_data[13] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i2_4_lut_then_4_lut (.A(\enc_data[17] ), .B(n5803), .C(\enc_data[15] ), 
         .D(\enc_data[19] ), .Z(n5841)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hf122;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n5844)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n5843)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[9] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[10] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[11] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[12] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[13] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[14] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[15] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=185, LSE_RLINE=185 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i2_4_lut_else_4_lut (.A(\enc_data[17] ), .B(n5803), .C(\enc_data[15] ), 
         .D(\enc_data[19] ), .Z(n5840)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1f27;
    PFUMX i4032 (.BLUT(n5622), .ALUT(n5621), .C0(n5368), .Z(ho_N_531));
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[10] ), .B(n5792), .C(n5223), 
         .D(\enc_data[13] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_50 (.A(\enc_data[12] ), .B(n2535), .Z(n5792)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_50.init = 16'h8888;
    LUT4 i2_4_lut (.A(n2654), .B(or122_N_483), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5223)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n5803), .B(or122_N_485), .C(p13), .D(\enc_data[14] ), 
         .Z(n2654)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    PFUMX i4116 (.BLUT(n5843), .ALUT(n5844), .C0(\enc_data[10] ), .Z(or122_N_485));
    LUT4 xg_I_0_4_lut_4_lut (.A(\enc_data[16] ), .B(\enc_data[15] ), .C(ior134_N_529), 
         .D(n2661), .Z(go_N_532)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam xg_I_0_4_lut_4_lut.init = 16'h55ad;
    LUT4 i1_2_lut_rep_37_3_lut (.A(\enc_data[12] ), .B(n2535), .C(\enc_data[10] ), 
         .Z(n5779)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_37_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_51 (.A(n2535), .B(\enc_data[12] ), .Z(n5793)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_51.init = 16'h2222;
    LUT4 i1_2_lut_rep_38_3_lut (.A(n2535), .B(\enc_data[12] ), .C(\enc_data[10] ), 
         .Z(n5780)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_38_3_lut.init = 16'h0202;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2535), .B(\enc_data[12] ), .C(n5223), 
         .D(\enc_data[10] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_3_lut (.A(n2535), .B(\enc_data[12] ), .C(\enc_data[11] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_70 (.A(\enc_data[18] ), .B(\enc_data[14] ), .Z(n5812)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_70.init = 16'heeee;
    LUT4 enc_data_16__bdd_3_lut_4131 (.A(\enc_data[16] ), .B(\enc_data[17] ), 
         .C(\enc_data[19] ), .Z(n5622)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam enc_data_16__bdd_3_lut_4131.init = 16'h3131;
    LUT4 i1_2_lut_rep_71 (.A(\enc_data[11] ), .B(\enc_data[10] ), .Z(n5813)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_71.init = 16'h8888;
    LUT4 i1_4_lut_adj_98 (.A(p22_N_446), .B(\enc_data[14] ), .C(n4), .D(\enc_data[18] ), 
         .Z(n2535)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_98.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n5779), .B(\enc_data[11] ), .C(or122_N_483), 
         .D(n5057), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_99 (.A(\enc_data[11] ), .B(n2654), .C(n5792), .D(or123_N_490), 
         .Z(n5057)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_99.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5057), .B(\enc_data[12] ), .C(n5780), .D(n5195), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(n5813), .B(\enc_data[14] ), .C(n4_adj_641), 
         .D(n5793), .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h393c;
    LUT4 i1_4_lut_adj_100 (.A(\enc_data[18] ), .B(p13), .C(n5380), .D(n26), 
         .Z(n4_adj_641)) /* synthesis lut_function=(A (B (D))+!A (B+!(C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_100.init = 16'hcd45;
    LUT4 i1_2_lut (.A(\enc_data[13] ), .B(\enc_data[14] ), .Z(n26)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(\enc_data[14] ), 
         .D(\enc_data[18] ), .Z(n5195)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 enc_data_16__bdd_4_lut_4128 (.A(\enc_data[16] ), .B(\enc_data[17] ), 
         .C(\enc_data[19] ), .D(\enc_data[15] ), .Z(n5621)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam enc_data_16__bdd_4_lut_4128.init = 16'h2d9d;
    LUT4 i3832_3_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(n5815), 
         .D(\enc_data[14] ), .Z(n5380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3832_3_lut_4_lut.init = 16'hffe0;
    LUT4 i2282_2_lut_rep_73 (.A(\enc_data[12] ), .B(\enc_data[13] ), .Z(n5815)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2282_2_lut_rep_73.init = 16'heeee;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut (.A(\enc_data[12] ), .B(\enc_data[13] ), 
         .C(\enc_data[14] ), .D(\enc_data[18] ), .Z(n5803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_61_3_lut_4_lut.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), 
         .C(\enc_data[13] ), .D(\enc_data[12] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_101 (.A(\enc_data[18] ), .B(\enc_data[14] ), 
         .C(\enc_data[10] ), .D(\enc_data[11] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_101.init = 16'h8000;
    LUT4 xf_I_0_4_lut (.A(\enc_data[17] ), .B(\enc_data[15] ), .C(n2661), 
         .D(n4_adj_642), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[18] ), .B(\enc_data[14] ), .C(\enc_data[13] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(\enc_data[16] ), .B(\enc_data[19] ), .C(\enc_data[15] ), 
         .Z(n4_adj_642)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i2286_2_lut (.A(\enc_data[17] ), .B(\enc_data[19] ), .Z(ior134_N_529)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2286_2_lut.init = 16'heeee;
    LUT4 i3820_4_lut (.A(\enc_data[17] ), .B(n5812), .C(n5815), .D(\enc_data[19] ), 
         .Z(n5368)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3820_4_lut.init = 16'hfefc;
    LUT4 enc_data_13__bdd_4_lut (.A(\enc_data[13] ), .B(\enc_data[12] ), 
         .C(\enc_data[10] ), .D(\enc_data[11] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_13__bdd_4_lut.init = 16'h0116;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module dec_8b10b_U1
//

module dec_8b10b_U1 (\dec_data[16] , sclk, rbyteclk_N_428, \enc_data[23] , 
            \enc_data[22] , \enc_data[20] , \enc_data[21] , \enc_data[28] , 
            \enc_data[24] , \enc_data[27] , \enc_data[25] , \enc_data[26] , 
            \enc_data[29] , \dec_data[17] , \dec_data[18] , \dec_data[19] , 
            \dec_data[20] , \dec_data[21] , \dec_data[22] , \dec_data[23] );
    output \dec_data[16] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[23] ;
    input \enc_data[22] ;
    input \enc_data[20] ;
    input \enc_data[21] ;
    input \enc_data[28] ;
    input \enc_data[24] ;
    input \enc_data[27] ;
    input \enc_data[25] ;
    input \enc_data[26] ;
    input \enc_data[29] ;
    output \dec_data[17] ;
    output \dec_data[18] ;
    output \dec_data[19] ;
    output \dec_data[20] ;
    output \dec_data[21] ;
    output \dec_data[22] ;
    output \dec_data[23] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, co, co_N_536, do, do_N_535, 
        eo, eo_N_534, fo, fo_N_533, go, go_N_532, p13, ho, ho_N_531, 
        n5606, or122_N_485, n3774, n4, p22_N_446, n2559, n5075, 
        or122_N_483, n5790, n2738, n5800, or123_N_490, n4_adj_637, 
        n5838, n4_adj_638, n5809, n23, n5791, n5839, n2664, n4_adj_639, 
        n5561, n4_adj_640, ior134, n5789, n5837, n5802, n5235, 
        or127_N_503;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[16] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 enc_data_23__bdd_4_lut_4020 (.A(\enc_data[23] ), .B(\enc_data[22] ), 
         .C(\enc_data[20] ), .D(\enc_data[21] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_23__bdd_4_lut_4020.init = 16'h0116;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 gnd_bdd_2_lut_4063 (.A(n5606), .B(\enc_data[28] ), .Z(or122_N_485)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_4063.init = 16'h8888;
    LUT4 enc_data_23__bdd_4_lut_4103 (.A(\enc_data[23] ), .B(\enc_data[22] ), 
         .C(\enc_data[20] ), .D(\enc_data[21] ), .Z(n5606)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam enc_data_23__bdd_4_lut_4103.init = 16'h6880;
    LUT4 i2288_2_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), .Z(n3774)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2288_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), .C(\enc_data[22] ), 
         .D(\enc_data[23] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i1_4_lut (.A(p22_N_446), .B(\enc_data[24] ), .C(n4), .D(\enc_data[28] ), 
         .Z(n2559)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n5075), .B(\enc_data[21] ), .C(or122_N_483), 
         .D(n5790), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut (.A(\enc_data[21] ), .B(n2738), .C(n5800), .D(or123_N_490), 
         .Z(n5075)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n3774), .B(\enc_data[22] ), .C(n4_adj_637), 
         .D(n5838), .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[24] ), .C(n4_adj_638), .D(\enc_data[23] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_91 (.A(\enc_data[28] ), .B(n5809), .C(n23), .D(n5791), 
         .Z(n4_adj_638)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_91.init = 16'h7350;
    LUT4 i1_4_lut_adj_92 (.A(p13), .B(\enc_data[24] ), .C(n3774), .D(n5839), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_92.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[27] ), .B(\enc_data[25] ), .C(n2664), 
         .D(n4_adj_639), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[26] ), .B(\enc_data[29] ), .C(\enc_data[25] ), 
         .Z(n4_adj_639)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i2_4_lut_adj_93 (.A(\enc_data[26] ), .B(n5561), .C(n4_adj_640), 
         .D(ior134), .Z(n2664)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_93.init = 16'hffd8;
    LUT4 i1_rep_17_2_lut (.A(\enc_data[29] ), .B(\enc_data[25] ), .Z(n5561)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam i1_rep_17_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_94 (.A(\enc_data[25] ), .B(\enc_data[27] ), .C(\enc_data[29] ), 
         .Z(n4_adj_640)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_adj_94.init = 16'h5151;
    LUT4 xh_I_0_4_lut (.A(\enc_data[29] ), .B(\enc_data[27] ), .C(n5789), 
         .D(\enc_data[25] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(235[10:19])
    defparam xh_I_0_4_lut.init = 16'h343c;
    LUT4 i1_3_lut_4_lut (.A(n5839), .B(n5838), .C(\enc_data[27] ), .D(\enc_data[29] ), 
         .Z(ior134)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0110;
    LUT4 xg_I_0_4_lut_4_lut (.A(n2664), .B(\enc_data[26] ), .C(n5837), 
         .D(\enc_data[25] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 i1_4_lut_adj_95 (.A(n5802), .B(or122_N_485), .C(p13), .D(\enc_data[24] ), 
         .Z(n2738)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_95.init = 16'hddfd;
    LUT4 i1_2_lut_rep_95 (.A(\enc_data[27] ), .B(\enc_data[29] ), .Z(n5837)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_95.init = 16'heeee;
    LUT4 i1_3_lut_rep_47_4_lut (.A(\enc_data[27] ), .B(\enc_data[29] ), 
         .C(\enc_data[26] ), .D(n2664), .Z(n5789)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_47_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[28] ), .B(\enc_data[24] ), .C(\enc_data[20] ), 
         .D(\enc_data[21] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[20] ), .B(n5800), .C(n5235), 
         .D(\enc_data[23] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_49 (.A(n2559), .B(\enc_data[22] ), .Z(n5791)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_49.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2559), .B(\enc_data[22] ), .C(n5235), 
         .D(\enc_data[20] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[28] ), .B(\enc_data[24] ), .C(\enc_data[23] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), 
         .C(\enc_data[23] ), .D(\enc_data[22] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[17] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[18] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[19] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[20] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[21] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[22] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[23] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=194, LSE_RLINE=194 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_96 (.A(\enc_data[28] ), .B(\enc_data[24] ), .Z(n5838)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_96.init = 16'heeee;
    LUT4 i2292_2_lut_rep_97 (.A(\enc_data[22] ), .B(\enc_data[23] ), .Z(n5839)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2292_2_lut_rep_97.init = 16'heeee;
    LUT4 i1_2_lut_rep_60_3_lut_4_lut (.A(\enc_data[22] ), .B(\enc_data[23] ), 
         .C(\enc_data[24] ), .D(\enc_data[28] ), .Z(n5802)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_60_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_96 (.A(n2559), .B(\enc_data[22] ), .C(n5075), 
         .D(\enc_data[20] ), .Z(n4_adj_637)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut_adj_96.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut (.A(n2559), .B(\enc_data[22] ), .C(\enc_data[21] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_67 (.A(\enc_data[21] ), .B(\enc_data[20] ), .Z(n5809)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_67.init = 16'h8888;
    LUT4 i1_2_lut_rep_58 (.A(\enc_data[22] ), .B(n2559), .Z(n5800)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_58.init = 16'h8888;
    LUT4 i1_2_lut_rep_48_3_lut (.A(\enc_data[22] ), .B(n2559), .C(\enc_data[20] ), 
         .Z(n5790)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_48_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_97 (.A(n2738), .B(or122_N_483), .C(or123_N_490), 
         .D(or127_N_503), .Z(n5235)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_97.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module dec_8b10b_U3
//

module dec_8b10b_U3 (\dec_data[0] , sclk, rbyteclk_N_428, \enc_data[2] , 
            \enc_data[0] , \enc_data[1] , \enc_data[3] , \enc_data[8] , 
            \dec_data[1] , \dec_data[2] , \dec_data[3] , \dec_data[4] , 
            \dec_data[5] , \dec_data[6] , \dec_data[7] , \enc_data[4] , 
            \enc_data[9] , \enc_data[5] , \enc_data[6] , \enc_data[7] );
    output \dec_data[0] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[2] ;
    input \enc_data[0] ;
    input \enc_data[1] ;
    input \enc_data[3] ;
    input \enc_data[8] ;
    output \dec_data[1] ;
    output \dec_data[2] ;
    output \dec_data[3] ;
    output \dec_data[4] ;
    output \dec_data[5] ;
    output \dec_data[6] ;
    output \dec_data[7] ;
    input \enc_data[4] ;
    input \enc_data[9] ;
    input \enc_data[5] ;
    input \enc_data[6] ;
    input \enc_data[7] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, co, co_N_536, do, do_N_535, 
        eo, eo_N_534, fo, fo_N_533, go, go_N_532, ho, ho_N_531, 
        n2515, n5795, n5778, n4, n5592, n5232, or127_N_503, or122_N_485, 
        p13, p22_N_446, n5782, or122_N_483, n5063, n2684, n5794, 
        or123_N_490, n5201, n4_adj_634, n5819, n23, n5820, n5821, 
        n2658, n4_adj_635, n5551, n4_adj_636, ior134, n5781, n5817, 
        n5818, n5804;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_53 (.A(n2515), .B(\enc_data[2] ), .Z(n5795)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_53.init = 16'h2222;
    LUT4 i1_2_lut_rep_36_3_lut (.A(n2515), .B(\enc_data[2] ), .C(\enc_data[0] ), 
         .Z(n5778)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_rep_36_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), .C(\enc_data[2] ), 
         .D(\enc_data[3] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 enc_data_3__bdd_4_lut_4053 (.A(\enc_data[3] ), .B(\enc_data[2] ), 
         .C(\enc_data[0] ), .D(\enc_data[1] ), .Z(n5592)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam enc_data_3__bdd_4_lut_4053.init = 16'h6880;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2515), .B(\enc_data[2] ), .C(n5232), 
         .D(\enc_data[0] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_3_lut (.A(n2515), .B(\enc_data[2] ), .C(\enc_data[1] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 gnd_bdd_2_lut_4021 (.A(n5592), .B(\enc_data[8] ), .Z(or122_N_485)) /* synthesis lut_function=(A (B)) */ ;
    defparam gnd_bdd_2_lut_4021.init = 16'h8888;
    LUT4 enc_data_3__bdd_4_lut (.A(\enc_data[3] ), .B(\enc_data[2] ), .C(\enc_data[0] ), 
         .D(\enc_data[1] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_3__bdd_4_lut.init = 16'h0116;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[1] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[3] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[4] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[5] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[6] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[7] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=176, LSE_RLINE=176 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(p22_N_446), .B(\enc_data[4] ), .C(n4), .D(\enc_data[8] ), 
         .Z(n2515)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n5782), .B(\enc_data[1] ), .C(or122_N_483), 
         .D(n5063), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut (.A(\enc_data[1] ), .B(n2684), .C(n5794), .D(or123_N_490), 
         .Z(n5063)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5063), .B(\enc_data[2] ), .C(n5778), .D(n5201), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[4] ), .C(n4_adj_634), .D(\enc_data[3] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_84 (.A(\enc_data[8] ), .B(n5819), .C(n23), .D(n5795), 
         .Z(n4_adj_634)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_84.init = 16'h7350;
    LUT4 i1_4_lut_adj_85 (.A(p13), .B(\enc_data[4] ), .C(n5820), .D(n5821), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_85.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[9] ), .B(\enc_data[5] ), .C(n2658), 
         .D(n4_adj_635), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[6] ), .B(\enc_data[7] ), .C(\enc_data[5] ), 
         .Z(n4_adj_635)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i2_4_lut_adj_86 (.A(\enc_data[6] ), .B(n5551), .C(n4_adj_636), 
         .D(ior134), .Z(n2658)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_adj_86.init = 16'hffd8;
    LUT4 i1_rep_7_2_lut (.A(\enc_data[9] ), .B(\enc_data[5] ), .Z(n5551)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam i1_rep_7_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_87 (.A(\enc_data[5] ), .B(\enc_data[7] ), .C(\enc_data[9] ), 
         .Z(n4_adj_636)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_adj_87.init = 16'h5151;
    LUT4 xh_I_0_4_lut (.A(\enc_data[9] ), .B(\enc_data[7] ), .C(n5781), 
         .D(\enc_data[5] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(235[10:19])
    defparam xh_I_0_4_lut.init = 16'h343c;
    LUT4 i1_2_lut_rep_52 (.A(\enc_data[2] ), .B(n2515), .Z(n5794)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_52.init = 16'h8888;
    LUT4 i1_2_lut_rep_40_3_lut (.A(\enc_data[2] ), .B(n2515), .C(\enc_data[0] ), 
         .Z(n5782)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_40_3_lut.init = 16'h8080;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[0] ), .B(n5794), .C(n5232), 
         .D(\enc_data[3] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_75 (.A(\enc_data[7] ), .B(\enc_data[9] ), .Z(n5817)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_75.init = 16'heeee;
    LUT4 i2_4_lut_adj_88 (.A(n2684), .B(or122_N_483), .C(or123_N_490), 
         .D(or127_N_503), .Z(n5232)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_88.init = 16'hfffe;
    LUT4 i1_3_lut_rep_39_4_lut (.A(\enc_data[7] ), .B(\enc_data[9] ), .C(\enc_data[6] ), 
         .D(n2658), .Z(n5781)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_39_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_76 (.A(\enc_data[8] ), .B(\enc_data[4] ), .Z(n5818)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_76.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(n5821), .B(n5818), .C(\enc_data[7] ), .D(\enc_data[9] ), 
         .Z(ior134)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0110;
    LUT4 i1_2_lut_rep_77 (.A(\enc_data[1] ), .B(\enc_data[0] ), .Z(n5819)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_77.init = 16'h8888;
    LUT4 i2266_2_lut_rep_78 (.A(\enc_data[0] ), .B(\enc_data[1] ), .Z(n5820)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2266_2_lut_rep_78.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), .C(\enc_data[4] ), 
         .D(\enc_data[8] ), .Z(n5201)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2270_2_lut_rep_79 (.A(\enc_data[2] ), .B(\enc_data[3] ), .Z(n5821)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2270_2_lut_rep_79.init = 16'heeee;
    LUT4 i1_2_lut_rep_62_3_lut_4_lut (.A(\enc_data[2] ), .B(\enc_data[3] ), 
         .C(\enc_data[4] ), .D(\enc_data[8] ), .Z(n5804)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_62_3_lut_4_lut.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), 
         .C(\enc_data[3] ), .D(\enc_data[2] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(\enc_data[8] ), .B(\enc_data[4] ), 
         .C(\enc_data[0] ), .D(\enc_data[1] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[8] ), .B(\enc_data[4] ), .C(\enc_data[3] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 xg_I_0_4_lut_4_lut (.A(n2658), .B(\enc_data[6] ), .C(n5817), 
         .D(\enc_data[5] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 i1_4_lut_adj_90 (.A(n5804), .B(or122_N_485), .C(p13), .D(\enc_data[4] ), 
         .Z(n2684)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_90.init = 16'hddfd;
    
endmodule
//
// Verilog Description of module dec_8b10b_U0
//

module dec_8b10b_U0 (\enc_data[33] , \enc_data[32] , \enc_data[30] , \enc_data[31] , 
            \dec_data[24] , sclk, rbyteclk_N_428, \enc_data[37] , \enc_data[39] , 
            \enc_data[36] , \enc_data[35] , \enc_data[38] , \enc_data[34] , 
            \dec_data[25] , \dec_data[26] , \dec_data[27] , \dec_data[28] , 
            \dec_data[29] , \dec_data[30] , \dec_data[31] );
    input \enc_data[33] ;
    input \enc_data[32] ;
    input \enc_data[30] ;
    input \enc_data[31] ;
    output \dec_data[24] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[37] ;
    input \enc_data[39] ;
    input \enc_data[36] ;
    input \enc_data[35] ;
    input \enc_data[38] ;
    input \enc_data[34] ;
    output \dec_data[25] ;
    output \dec_data[26] ;
    output \dec_data[27] ;
    output \dec_data[28] ;
    output \dec_data[29] ;
    output \dec_data[30] ;
    output \dec_data[31] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire p13, ao, ao_N_538, bo, bo_N_537, n2667, n5786, n5832, 
        co, co_N_536, do, do_N_535, eo, eo_N_534, fo, fo_N_533, 
        go, go_N_532, ho_N_531, n4, ho, n5216, n5850, n5849, 
        n5833, n5853, n5852, n5856, n5855, n5831, n5358, n2677, 
        or122_N_483, or123_N_490, or127_N_503, n5229, n5798, or122_N_485, 
        p22_N_446, n2620, n5787, n5060, n5788, n4_adj_633, n5854, 
        n5799;
    
    LUT4 enc_data_33__bdd_4_lut (.A(\enc_data[33] ), .B(\enc_data[32] ), 
         .C(\enc_data[30] ), .D(\enc_data[31] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_33__bdd_4_lut.init = 16'h0116;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[24] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_44_4_lut (.A(\enc_data[37] ), .B(\enc_data[39] ), 
         .C(\enc_data[36] ), .D(n2667), .Z(n5786)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_44_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_90 (.A(\enc_data[37] ), .B(\enc_data[39] ), .Z(n5832)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_2_lut_rep_90.init = 16'h8888;
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[37] ), .B(\enc_data[39] ), .C(n5786), 
         .D(\enc_data[35] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam xh_I_0_4_lut_4_lut.init = 16'h525a;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), .C(\enc_data[32] ), 
         .D(\enc_data[33] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i2_4_lut_then_4_lut (.A(n5216), .B(\enc_data[39] ), .C(\enc_data[35] ), 
         .D(\enc_data[37] ), .Z(n5850)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B (D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hd1c4;
    LUT4 i2_4_lut_else_4_lut (.A(n5216), .B(\enc_data[39] ), .C(\enc_data[35] ), 
         .D(\enc_data[37] ), .Z(n5849)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1d4f;
    LUT4 i1_2_lut_rep_91 (.A(\enc_data[31] ), .B(\enc_data[30] ), .Z(n5833)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_91.init = 16'h8888;
    LUT4 i1_4_lut_then_4_lut (.A(\enc_data[31] ), .B(\enc_data[30] ), .C(\enc_data[33] ), 
         .D(\enc_data[32] ), .Z(n5853)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_then_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_else_4_lut (.A(\enc_data[31] ), .B(\enc_data[30] ), .C(\enc_data[33] ), 
         .D(\enc_data[32] ), .Z(n5852)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_else_4_lut.init = 16'h111f;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n5856)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n5855)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 xg_I_0_4_lut_4_lut (.A(n2667), .B(\enc_data[36] ), .C(n5831), 
         .D(\enc_data[35] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 i3810_2_lut_3_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), 
         .C(\enc_data[34] ), .D(\enc_data[38] ), .Z(n5358)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3810_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\enc_data[32] ), .B(\enc_data[33] ), .C(\enc_data[34] ), 
         .D(\enc_data[38] ), .Z(n5216)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(n2677), .B(or122_N_483), .C(or123_N_490), .D(or127_N_503), 
         .Z(n5229)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[30] ), .B(n5798), .C(n5229), 
         .D(\enc_data[33] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i2_4_lut_adj_80 (.A(p13), .B(or122_N_485), .C(\enc_data[34] ), 
         .D(n5216), .Z(n2677)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_80.init = 16'hceff;
    LUT4 i1_4_lut (.A(\enc_data[34] ), .B(p22_N_446), .C(\enc_data[38] ), 
         .D(n4), .Z(n2620)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(B (C)+!B (C+!(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_4_lut.init = 16'ha584;
    LUT4 xb_I_0_4_lut (.A(n5787), .B(\enc_data[31] ), .C(or122_N_483), 
         .D(n5060), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_81 (.A(\enc_data[31] ), .B(n2677), .C(n5798), .D(or123_N_490), 
         .Z(n5060)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_81.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5060), .B(\enc_data[32] ), .C(n5788), .D(n5358), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3633;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[34] ), .C(n4_adj_633), .D(\enc_data[33] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_82 (.A(\enc_data[38] ), .B(n5833), .C(n5854), .D(n5799), 
         .Z(n4_adj_633)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_82.init = 16'h7350;
    LUT4 xf_I_0_4_lut (.A(\enc_data[36] ), .B(\enc_data[35] ), .C(n2667), 
         .D(n5832), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), 
         .C(\enc_data[33] ), .D(\enc_data[32] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(\enc_data[38] ), .B(\enc_data[34] ), 
         .C(\enc_data[30] ), .D(\enc_data[31] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[38] ), .B(\enc_data[34] ), .C(\enc_data[33] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[25] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[26] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[27] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[28] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[29] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[30] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[31] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=30, LSE_LLINE=203, LSE_RLINE=203 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_56 (.A(\enc_data[32] ), .B(n2620), .Z(n5798)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_56.init = 16'h8888;
    LUT4 i1_2_lut_rep_45_3_lut (.A(\enc_data[32] ), .B(n2620), .C(\enc_data[30] ), 
         .Z(n5787)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_45_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_57 (.A(n2620), .B(\enc_data[32] ), .Z(n5799)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(158[12:45])
    defparam i1_2_lut_rep_57.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n2620), .B(\enc_data[32] ), .C(n5229), 
         .D(\enc_data[30] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(158[12:45])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_rep_46_3_lut (.A(n2620), .B(\enc_data[32] ), .C(\enc_data[30] ), 
         .Z(n5788)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(158[12:45])
    defparam i1_2_lut_rep_46_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut (.A(n2620), .B(\enc_data[32] ), .C(\enc_data[31] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/dec_8b10b.vhd(158[12:45])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    PFUMX i4124 (.BLUT(n5855), .ALUT(n5856), .C0(\enc_data[30] ), .Z(or122_N_485));
    LUT4 i1_2_lut_rep_89 (.A(\enc_data[37] ), .B(\enc_data[39] ), .Z(n5831)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_89.init = 16'heeee;
    PFUMX i4122 (.BLUT(n5852), .ALUT(n5853), .C0(\enc_data[34] ), .Z(n5854));
    PFUMX i4120 (.BLUT(n5849), .ALUT(n5850), .C0(\enc_data[36] ), .Z(n2667));
    
endmodule
//
// Verilog Description of module \prng_recv("1011110010111100101111001011110010111011") 
//

module \prng_recv("1011110010111100101111001011110010111011")  (\rng_num[31] , 
            GND_net, \rng_num[29] , \rng_num[30] , \rng_num[27] , \rng_num[28] , 
            \rng_num[25] , \rng_num[26] , \rng_num[23] , \rng_num[24] , 
            \rng_num[21] , \rng_num[22] , \rng_num[0] , sclk, sync_prng, 
            \rng_num[1] , \rng_num[2] , \rng_num[3] , \rng_num[4] , 
            \rng_num[5] , \rng_num[6] , \rng_num[7] , \rng_num[8] , 
            \rng_num[9] , \rng_num[10] , \rng_num[11] , \rng_num[12] , 
            \rng_num[13] , \rng_num[14] , \rng_num[15] , \rng_num[16] , 
            \rng_num[17] , \rng_num[18] , \rng_num[19] , \rng_num[20] , 
            LED_c, data_valid);
    output \rng_num[31] ;
    input GND_net;
    output \rng_num[29] ;
    output \rng_num[30] ;
    output \rng_num[27] ;
    output \rng_num[28] ;
    output \rng_num[25] ;
    output \rng_num[26] ;
    output \rng_num[23] ;
    output \rng_num[24] ;
    output \rng_num[21] ;
    output \rng_num[22] ;
    output \rng_num[0] ;
    input sclk;
    input sync_prng;
    output \rng_num[1] ;
    output \rng_num[2] ;
    output \rng_num[3] ;
    output \rng_num[4] ;
    output \rng_num[5] ;
    output \rng_num[6] ;
    output \rng_num[7] ;
    output \rng_num[8] ;
    output \rng_num[9] ;
    output \rng_num[10] ;
    output \rng_num[11] ;
    output \rng_num[12] ;
    output \rng_num[13] ;
    output \rng_num[14] ;
    output \rng_num[15] ;
    output \rng_num[16] ;
    output \rng_num[17] ;
    output \rng_num[18] ;
    output \rng_num[19] ;
    output \rng_num[20] ;
    input LED_c;
    input data_valid;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    
    wire n4417;
    wire [39:0]rng;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(30[6:9])
    wire [39:0]rng_39__N_579;
    
    wire n4416, n4415, n4414, n4413, n4412, n4408, n4409, n4404, 
        n4405, n4403, n4407, n4411, n4402, n4406, n4410;
    
    CCU2D add_6_33 (.A0(\rng_num[31] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rng[32]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4417), 
          .S0(rng_39__N_579[31]), .S1(rng_39__N_579[32]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_33.INIT0 = 16'h5aaa;
    defparam add_6_33.INIT1 = 16'h5aaa;
    defparam add_6_33.INJECT1_0 = "NO";
    defparam add_6_33.INJECT1_1 = "NO";
    CCU2D add_6_31 (.A0(\rng_num[29] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[30] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4416), .COUT(n4417), .S0(rng_39__N_579[29]), .S1(rng_39__N_579[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_31.INIT0 = 16'h5aaa;
    defparam add_6_31.INIT1 = 16'h5aaa;
    defparam add_6_31.INJECT1_0 = "NO";
    defparam add_6_31.INJECT1_1 = "NO";
    CCU2D add_6_29 (.A0(\rng_num[27] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[28] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4415), .COUT(n4416), .S0(rng_39__N_579[27]), .S1(rng_39__N_579[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_29.INIT0 = 16'h5aaa;
    defparam add_6_29.INIT1 = 16'h5aaa;
    defparam add_6_29.INJECT1_0 = "NO";
    defparam add_6_29.INJECT1_1 = "NO";
    CCU2D add_6_27 (.A0(\rng_num[25] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[26] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4414), .COUT(n4415), .S0(rng_39__N_579[25]), .S1(rng_39__N_579[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_27.INIT0 = 16'h5aaa;
    defparam add_6_27.INIT1 = 16'h5aaa;
    defparam add_6_27.INJECT1_0 = "NO";
    defparam add_6_27.INJECT1_1 = "NO";
    CCU2D add_6_25 (.A0(\rng_num[23] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[24] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4413), .COUT(n4414), .S0(rng_39__N_579[23]), .S1(rng_39__N_579[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_25.INIT0 = 16'h5aaa;
    defparam add_6_25.INIT1 = 16'h5aaa;
    defparam add_6_25.INJECT1_0 = "NO";
    defparam add_6_25.INJECT1_1 = "NO";
    CCU2D add_6_23 (.A0(\rng_num[21] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[22] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4412), .COUT(n4413), .S0(rng_39__N_579[21]), .S1(rng_39__N_579[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_23.INIT0 = 16'h5aaa;
    defparam add_6_23.INIT1 = 16'h5aaa;
    defparam add_6_23.INJECT1_0 = "NO";
    defparam add_6_23.INJECT1_1 = "NO";
    FD1S3JX sr_i0 (.D(rng_39__N_579[0]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[0] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i0.GSR = "ENABLED";
    FD1S3JX sr_i1 (.D(rng_39__N_579[1]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[1] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i1.GSR = "ENABLED";
    FD1S3IX sr_i2 (.D(rng_39__N_579[2]), .CK(sclk), .CD(sync_prng), .Q(\rng_num[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i2.GSR = "ENABLED";
    FD1S3JX sr_i3 (.D(rng_39__N_579[3]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[3] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i3.GSR = "ENABLED";
    FD1S3JX sr_i4 (.D(rng_39__N_579[4]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[4] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i4.GSR = "ENABLED";
    FD1S3JX sr_i5 (.D(rng_39__N_579[5]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[5] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i5.GSR = "ENABLED";
    FD1S3IX sr_i6 (.D(rng_39__N_579[6]), .CK(sclk), .CD(sync_prng), .Q(\rng_num[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i6.GSR = "ENABLED";
    FD1S3JX sr_i7 (.D(rng_39__N_579[7]), .CK(sclk), .PD(sync_prng), .Q(\rng_num[7] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i7.GSR = "ENABLED";
    FD1S3IX sr_i8 (.D(rng_39__N_579[8]), .CK(sclk), .CD(sync_prng), .Q(\rng_num[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i8.GSR = "ENABLED";
    FD1S3IX sr_i9 (.D(rng_39__N_579[9]), .CK(sclk), .CD(sync_prng), .Q(\rng_num[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i9.GSR = "ENABLED";
    FD1S3JX sr_i10 (.D(rng_39__N_579[10]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[10] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i10.GSR = "ENABLED";
    FD1S3JX sr_i11 (.D(rng_39__N_579[11]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[11] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i11.GSR = "ENABLED";
    FD1S3JX sr_i12 (.D(rng_39__N_579[12]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[12] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i12.GSR = "ENABLED";
    FD1S3JX sr_i13 (.D(rng_39__N_579[13]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[13] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i13.GSR = "ENABLED";
    FD1S3IX sr_i14 (.D(rng_39__N_579[14]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[14] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i14.GSR = "ENABLED";
    FD1S3JX sr_i15 (.D(rng_39__N_579[15]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[15] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i15.GSR = "ENABLED";
    FD1S3IX sr_i16 (.D(rng_39__N_579[16]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[16] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i16.GSR = "ENABLED";
    FD1S3IX sr_i17 (.D(rng_39__N_579[17]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[17] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i17.GSR = "ENABLED";
    FD1S3JX sr_i18 (.D(rng_39__N_579[18]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[18] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i18.GSR = "ENABLED";
    FD1S3JX sr_i19 (.D(rng_39__N_579[19]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[19] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i19.GSR = "ENABLED";
    FD1S3JX sr_i20 (.D(rng_39__N_579[20]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[20] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i20.GSR = "ENABLED";
    FD1S3JX sr_i21 (.D(rng_39__N_579[21]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[21] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i21.GSR = "ENABLED";
    FD1S3IX sr_i22 (.D(rng_39__N_579[22]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[22] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i22.GSR = "ENABLED";
    FD1S3JX sr_i23 (.D(rng_39__N_579[23]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[23] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i23.GSR = "ENABLED";
    FD1S3IX sr_i24 (.D(rng_39__N_579[24]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[24] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i24.GSR = "ENABLED";
    FD1S3IX sr_i25 (.D(rng_39__N_579[25]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[25] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i25.GSR = "ENABLED";
    FD1S3JX sr_i26 (.D(rng_39__N_579[26]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[26] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i26.GSR = "ENABLED";
    FD1S3JX sr_i27 (.D(rng_39__N_579[27]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[27] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i27.GSR = "ENABLED";
    FD1S3JX sr_i28 (.D(rng_39__N_579[28]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[28] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i28.GSR = "ENABLED";
    FD1S3JX sr_i29 (.D(rng_39__N_579[29]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[29] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i29.GSR = "ENABLED";
    FD1S3IX sr_i30 (.D(rng_39__N_579[30]), .CK(sclk), .CD(sync_prng), 
            .Q(\rng_num[30] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i30.GSR = "ENABLED";
    FD1S3JX sr_i31 (.D(rng_39__N_579[31]), .CK(sclk), .PD(sync_prng), 
            .Q(\rng_num[31] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i31.GSR = "ENABLED";
    FD1S3IX sr_i32 (.D(rng_39__N_579[32]), .CK(sclk), .CD(sync_prng), 
            .Q(rng[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=26, LSE_LLINE=221, LSE_RLINE=221 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/prng_recv.vhd(49[9] 64[16])
    defparam sr_i32.GSR = "ENABLED";
    CCU2D add_6_15 (.A0(\rng_num[13] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[14] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4408), .COUT(n4409), .S0(rng_39__N_579[13]), .S1(rng_39__N_579[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h5aaa;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D add_6_7 (.A0(\rng_num[5] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[6] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4404), .COUT(n4405), .S0(rng_39__N_579[5]), .S1(rng_39__N_579[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D add_6_5 (.A0(\rng_num[3] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[4] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4403), .COUT(n4404), .S0(rng_39__N_579[3]), .S1(rng_39__N_579[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(\rng_num[11] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[12] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4407), .COUT(n4408), .S0(rng_39__N_579[11]), .S1(rng_39__N_579[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D add_6_21 (.A0(\rng_num[19] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[20] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4411), .COUT(n4412), .S0(rng_39__N_579[19]), .S1(rng_39__N_579[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_21.INIT0 = 16'h5aaa;
    defparam add_6_21.INIT1 = 16'h5aaa;
    defparam add_6_21.INJECT1_0 = "NO";
    defparam add_6_21.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(\rng_num[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[2] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4402), .COUT(n4403), .S0(rng_39__N_579[1]), .S1(rng_39__N_579[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(\rng_num[9] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[10] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4406), .COUT(n4407), .S0(rng_39__N_579[9]), .S1(rng_39__N_579[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    CCU2D add_6_19 (.A0(\rng_num[17] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[18] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4410), .COUT(n4411), .S0(rng_39__N_579[17]), .S1(rng_39__N_579[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_19.INIT0 = 16'h5aaa;
    defparam add_6_19.INIT1 = 16'h5aaa;
    defparam add_6_19.INJECT1_0 = "NO";
    defparam add_6_19.INJECT1_1 = "NO";
    CCU2D add_6_17 (.A0(\rng_num[15] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[16] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4409), .COUT(n4410), .S0(rng_39__N_579[15]), .S1(rng_39__N_579[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_17.INIT0 = 16'h5aaa;
    defparam add_6_17.INIT1 = 16'h5aaa;
    defparam add_6_17.INJECT1_0 = "NO";
    defparam add_6_17.INJECT1_1 = "NO";
    CCU2D add_6_9 (.A0(\rng_num[7] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng_num[8] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4405), .COUT(n4406), .S0(rng_39__N_579[7]), .S1(rng_39__N_579[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(LED_c), .B1(data_valid), .C1(\rng_num[0] ), .D1(GND_net), 
          .COUT(n4402), .S1(rng_39__N_579[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h7878;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module async_fifo
//

module async_fifo (send_data, sclk, FT601_CLK_c, fifo_wr_en, tx_active_N_629, 
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
    input fifo_wr_en;
    input tx_active_N_629;
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
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(127[12:16])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(33[9:18])
    
    wire full;
    
    FIFO8KB async_fifo_1_6 (.DI0(send_data[4]), .DI1(send_data[5]), .DI2(send_data[6]), 
            .DI3(send_data[7]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_28), .DO1(FT601_DATA_c_29), .DO2(FT601_DATA_c_30), 
            .DO3(FT601_DATA_c_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_16), .DO1(FT601_DATA_c_17), .DO2(FT601_DATA_c_18), 
            .DO3(FT601_DATA_c_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_20), .DO1(FT601_DATA_c_21), .DO2(FT601_DATA_c_22), 
            .DO3(FT601_DATA_c_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_8), .DO1(FT601_DATA_c_9), .DO2(FT601_DATA_c_10), 
            .DO3(FT601_DATA_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_12), .DO1(FT601_DATA_c_13), .DO2(FT601_DATA_c_14), 
            .DO3(FT601_DATA_c_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_0), .DO1(FT601_DATA_c_1), .DO2(FT601_DATA_c_2), 
            .DO3(FT601_DATA_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_4), .DO1(FT601_DATA_c_5), .DO2(FT601_DATA_c_6), 
            .DO3(FT601_DATA_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
            .CSR0(VCC_net), .WE(fifo_wr_en), .RE(tx_active_N_629), .ORE(tx_active_N_629), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_24), .DO1(FT601_DATA_c_25), .DO2(FT601_DATA_c_26), 
            .DO3(FT601_DATA_c_27), .EF(fifo_emp), .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=232, LSE_RLINE=232 */ ;   // /home/apurvan/GSoC/BER_measurement_5_Lane/MachXO2/src/top.vhd(232[21:31])
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
