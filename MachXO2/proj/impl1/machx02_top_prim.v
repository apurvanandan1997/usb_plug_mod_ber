// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Aug 26 07:59:32 2019
//
// Verilog Description of module machx02_top
//

module machx02_top (LED, CLK_LANE, DATA_LANE, FT601_CLK, FT601_RXF_N, 
            FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, FT601_RD_N, FT601_OE_N, 
            FT601_RST_N, FT601_DATA, FT601_BE);   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(23[8:19])
    output LED;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(25[9:12])
    input CLK_LANE /* synthesis black_box_pad_pin=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(27[9:17])
    input [4:0]DATA_LANE;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(28[9:18])
    input FT601_CLK;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(30[9:18])
    input FT601_RXF_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(31[9:20])
    input FT601_TXE_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(32[9:20])
    output FT601_WR_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(33[9:19])
    output FT601_SIWU_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(34[9:21])
    output FT601_RD_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(35[9:19])
    output FT601_OE_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(36[9:19])
    output FT601_RST_N;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(37[9:20])
    output [31:0]FT601_DATA;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    output [3:0]FT601_BE;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(39[9:17])
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(30[9:18])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(40[12:19])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(68[12:19])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire GND_net, LED_c, FT601_TXE_N_c, FT601_WR_N_c;
    wire [4:0]buf_dataini;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(48[12:23])
    
    wire FT601_DATA_c_31, FT601_DATA_c_30, FT601_DATA_c_29, FT601_DATA_c_28, 
        FT601_DATA_c_27, FT601_DATA_c_26, FT601_DATA_c_25, FT601_DATA_c_24, 
        FT601_DATA_c_23, FT601_DATA_c_22, FT601_DATA_c_21, FT601_DATA_c_20, 
        FT601_DATA_c_19, FT601_DATA_c_18, FT601_DATA_c_17, FT601_DATA_c_16, 
        FT601_DATA_c_15, FT601_DATA_c_14, FT601_DATA_c_13, FT601_DATA_c_12, 
        FT601_DATA_c_11, FT601_DATA_c_10, FT601_DATA_c_9, FT601_DATA_c_8, 
        FT601_DATA_c_7, FT601_DATA_c_6, FT601_DATA_c_5, FT601_DATA_c_4, 
        FT601_DATA_c_3, FT601_DATA_c_2, FT601_DATA_c_1, FT601_DATA_c_0, 
        fifo_emp;
    wire [39:0]dec_data;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(71[12:20])
    wire [49:0]enc_data;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(72[12:20])
    wire [39:0]rnd_num;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(73[12:19])
    wire [31:0]ber;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(74[12:15])
    
    wire sync_prng, data_valid, VCC_net, rx_rdy, sclk_enable_231, 
        sclk_enable_104, n50, bit_slip_N_318, sclk_enable_230, n46, 
        n8376, n8133, n42, n41, n8375, n8374, n78, n76, n74, 
        n73, n72, n70, n68, n66, n64, n62, n58, n57, n54, 
        n8101;
    
    VHI i12 (.Z(VCC_net));
    OSCH oscinst0 (.STDBY(GND_net), .OSC(clk_int)) /* synthesis syn_instantiated=1 */ ;
    defparam oscinst0.NOM_FREQ = "133.0";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut_rep_160 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n8374)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam i1_4_lut_rep_160.init = 16'h0004;
    LUT4 i28_4_lut (.A(dec_data[15]), .B(dec_data[30]), .C(dec_data[21]), 
         .D(dec_data[1]), .Z(n68)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), .Z(sync_prng)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_rep_161 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n8375)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam i1_4_lut_rep_161.init = 16'h0004;
    LUT4 i1_4_lut_rep_162 (.A(n73), .B(sclk_enable_230), .C(n78), .D(n74), 
         .Z(n8376)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam i1_4_lut_rep_162.init = 16'h0004;
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(25[9:12])
    calc_ber ber_proc (.ber({ber}), .sclk(sclk), .sclk_enable_104(sclk_enable_104), 
            .GND_net(GND_net), .sclk_enable_230(sclk_enable_230), .n8375(n8375), 
            .n8376(n8376), .sync_prng(sync_prng), .n8101(n8101), .rnd_num({rnd_num}), 
            .dec_data({dec_data}));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(136[16:36])
    IB Inst2_IB (.I(CLK_LANE), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(392[16:18])
    IB Inst1_IB4 (.I(DATA_LANE[4]), .O(buf_dataini[4])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(398[17:19])
    IB Inst1_IB3 (.I(DATA_LANE[3]), .O(buf_dataini[3])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(404[17:19])
    IB Inst1_IB2 (.I(DATA_LANE[2]), .O(buf_dataini[2])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(410[17:19])
    IB Inst1_IB1 (.I(DATA_LANE[1]), .O(buf_dataini[1])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(416[17:19])
    IB Inst1_IB0 (.I(DATA_LANE[0]), .O(buf_dataini[0])) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(422[17:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i33_4_lut (.A(dec_data[22]), .B(n66), .C(n50), .D(dec_data[2]), 
         .Z(n73)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i33_4_lut.init = 16'hfffe;
    LUT4 i38_4_lut (.A(n57), .B(n76), .C(n70), .D(n58), .Z(n78)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i38_4_lut.init = 16'hfffe;
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(33[9:19])
    OB FT601_SIWU_N_pad (.I(VCC_net), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(34[9:21])
    OB FT601_RD_N_pad (.I(VCC_net), .O(FT601_RD_N));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(35[9:19])
    OB FT601_OE_N_pad (.I(VCC_net), .O(FT601_OE_N));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(36[9:19])
    OB FT601_RST_N_pad (.I(GND_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(37[9:20])
    OB FT601_DATA_pad_31 (.I(FT601_DATA_c_31), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_30 (.I(FT601_DATA_c_30), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_29 (.I(FT601_DATA_c_29), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_28 (.I(FT601_DATA_c_28), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_27 (.I(FT601_DATA_c_27), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_26 (.I(FT601_DATA_c_26), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_25 (.I(FT601_DATA_c_25), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_24 (.I(FT601_DATA_c_24), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_23 (.I(FT601_DATA_c_23), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_22 (.I(FT601_DATA_c_22), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_21 (.I(FT601_DATA_c_21), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_20 (.I(FT601_DATA_c_20), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_19 (.I(FT601_DATA_c_19), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_18 (.I(FT601_DATA_c_18), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_17 (.I(FT601_DATA_c_17), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_16 (.I(FT601_DATA_c_16), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_4 (.I(FT601_DATA_c_4), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_3 (.I(FT601_DATA_c_3), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_2 (.I(FT601_DATA_c_2), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_1 (.I(FT601_DATA_c_1), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_DATA_pad_0 (.I(FT601_DATA_c_0), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(38[9:19])
    OB FT601_BE_pad_3 (.I(VCC_net), .O(FT601_BE[3]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(39[9:17])
    OB FT601_BE_pad_2 (.I(VCC_net), .O(FT601_BE[2]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(39[9:17])
    OB FT601_BE_pad_1 (.I(VCC_net), .O(FT601_BE[1]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(39[9:17])
    OB FT601_BE_pad_0 (.I(VCC_net), .O(FT601_BE[0]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(39[9:17])
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(30[9:18])
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(32[9:20])
    LUT4 i34_4_lut (.A(dec_data[33]), .B(n68), .C(n54), .D(dec_data[37]), 
         .Z(n74)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i34_4_lut.init = 16'hfffe;
    LUT4 i5919_2_lut (.A(bit_slip_N_318), .B(rx_rdy), .Z(sclk_enable_231)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i5919_2_lut.init = 16'h7777;
    LUT4 i26_4_lut (.A(dec_data[19]), .B(dec_data[38]), .C(dec_data[29]), 
         .D(dec_data[28]), .Z(n66)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(dec_data[10]), .B(dec_data[20]), .Z(n50)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i17_2_lut (.A(dec_data[5]), .B(dec_data[39]), .Z(n57)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i17_2_lut.init = 16'heeee;
    LUT4 LED_I_0_2_lut_rep_93 (.A(LED_c), .B(data_valid), .Z(sclk_enable_230)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam LED_I_0_2_lut_rep_93.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(LED_c), .B(data_valid), .C(n8374), .D(n8101), 
         .Z(sclk_enable_104)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(90[19:42])
    defparam i1_3_lut_4_lut.init = 16'h0008;
    LUT4 i14_2_lut (.A(dec_data[16]), .B(dec_data[11]), .Z(n54)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i14_2_lut.init = 16'heeee;
    LUT4 i36_4_lut (.A(n41), .B(n72), .C(n62), .D(n42), .Z(n76)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i36_4_lut.init = 16'hfffe;
    ft601 ft601_comp (.FT601_CLK_c(FT601_CLK_c), .fifo_emp(fifo_emp), .FT601_TXE_N_c(FT601_TXE_N_c), 
          .n8133(n8133), .FT601_WR_N_c(FT601_WR_N_c));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(159[18:35])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i30_4_lut (.A(dec_data[7]), .B(dec_data[25]), .C(dec_data[12]), 
         .D(dec_data[3]), .Z(n70)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i30_4_lut.init = 16'hfffe;
    LUT4 i18_2_lut (.A(dec_data[24]), .B(dec_data[6]), .Z(n58)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i18_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(dec_data[35]), .B(dec_data[18]), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i32_4_lut (.A(dec_data[9]), .B(n64), .C(n46), .D(dec_data[14]), 
         .Z(n72)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i32_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(dec_data[31]), .B(dec_data[0]), .C(dec_data[32]), 
         .D(dec_data[34]), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut (.A(dec_data[8]), .B(dec_data[23]), .C(dec_data[17]), 
         .D(dec_data[27]), .Z(n64)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(dec_data[36]), .B(dec_data[4]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i6_2_lut.init = 16'heeee;
    dec_8b10b \decoder_gen_4..decoder_inst  (.\enc_data[49] (enc_data[49]), 
            .\enc_data[45] (enc_data[45]), .\enc_data[47] (enc_data[47]), 
            .\enc_data[48] (enc_data[48]), .\enc_data[43] (enc_data[43]), 
            .\enc_data[42] (enc_data[42]), .\enc_data[41] (enc_data[41]), 
            .\enc_data[40] (enc_data[40]), .\dec_data[32] (dec_data[32]), 
            .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[44] (enc_data[44]), 
            .\enc_data[46] (enc_data[46]), .\dec_data[33] (dec_data[33]), 
            .\dec_data[34] (dec_data[34]), .\dec_data[35] (dec_data[35]), 
            .\dec_data[36] (dec_data[36]), .\dec_data[37] (dec_data[37]), 
            .\dec_data[38] (dec_data[38]), .\dec_data[39] (dec_data[39]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(114[24:45])
    LUT4 i2_2_lut (.A(dec_data[13]), .B(dec_data[26]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(89[35:51])
    defparam i2_2_lut.init = 16'heeee;
    deserializer deser_inst (.sclk(sclk), .sclk_enable_231(sclk_enable_231), 
            .data_valid(data_valid), .LED_c(LED_c), .bit_slip_N_318(bit_slip_N_318), 
            .enc_data({enc_data}), .rx_rdy(rx_rdy), .rbyteclk_N_428(rbyteclk_N_428), 
            .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini({buf_dataini}), 
            .clk_int(clk_int));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(101[18:42])
    \prng_recv("0111100101111001011110010111100101111001")  prng_inst (.rnd_num({rnd_num}), 
            .sclk(sclk), .sclk_enable_230(sclk_enable_230), .n8375(n8375));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(124[17:38])
    dec_8b10b_U2 \decoder_gen_1..decoder_inst  (.\dec_data[8] (dec_data[8]), 
            .sclk(sclk), .\enc_data[12] (enc_data[12]), .\enc_data[10] (enc_data[10]), 
            .\enc_data[11] (enc_data[11]), .rbyteclk_N_428(rbyteclk_N_428), 
            .\enc_data[14] (enc_data[14]), .\enc_data[13] (enc_data[13]), 
            .\enc_data[18] (enc_data[18]), .\enc_data[19] (enc_data[19]), 
            .\enc_data[15] (enc_data[15]), .\enc_data[17] (enc_data[17]), 
            .\enc_data[16] (enc_data[16]), .\dec_data[9] (dec_data[9]), 
            .\dec_data[10] (dec_data[10]), .\dec_data[11] (dec_data[11]), 
            .\dec_data[12] (dec_data[12]), .\dec_data[13] (dec_data[13]), 
            .\dec_data[14] (dec_data[14]), .\dec_data[15] (dec_data[15]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(114[24:45])
    VLO i1 (.Z(GND_net));
    dec_8b10b_U3 \decoder_gen_0..decoder_inst  (.\dec_data[0] (dec_data[0]), 
            .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), .\enc_data[6] (enc_data[6]), 
            .\enc_data[2] (enc_data[2]), .\enc_data[0] (enc_data[0]), .\enc_data[1] (enc_data[1]), 
            .\enc_data[5] (enc_data[5]), .\dec_data[1] (dec_data[1]), .\dec_data[2] (dec_data[2]), 
            .\dec_data[3] (dec_data[3]), .\dec_data[4] (dec_data[4]), .\dec_data[5] (dec_data[5]), 
            .\dec_data[6] (dec_data[6]), .\dec_data[7] (dec_data[7]), .\enc_data[4] (enc_data[4]), 
            .\enc_data[8] (enc_data[8]), .\enc_data[9] (enc_data[9]), .\enc_data[7] (enc_data[7]), 
            .\enc_data[3] (enc_data[3]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(114[24:45])
    dec_8b10b_U0 \decoder_gen_3..decoder_inst  (.\enc_data[38] (enc_data[38]), 
            .\enc_data[34] (enc_data[34]), .\enc_data[33] (enc_data[33]), 
            .\enc_data[37] (enc_data[37]), .\enc_data[35] (enc_data[35]), 
            .\enc_data[39] (enc_data[39]), .\enc_data[32] (enc_data[32]), 
            .\enc_data[31] (enc_data[31]), .\enc_data[36] (enc_data[36]), 
            .\dec_data[24] (dec_data[24]), .sclk(sclk), .rbyteclk_N_428(rbyteclk_N_428), 
            .\enc_data[30] (enc_data[30]), .\dec_data[25] (dec_data[25]), 
            .\dec_data[26] (dec_data[26]), .\dec_data[27] (dec_data[27]), 
            .\dec_data[28] (dec_data[28]), .\dec_data[29] (dec_data[29]), 
            .\dec_data[30] (dec_data[30]), .\dec_data[31] (dec_data[31]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(114[24:45])
    async_fifo cdc_fifo_inst (.ber({ber}), .sclk(sclk), .FT601_CLK_c(FT601_CLK_c), 
            .sclk_enable_230(sclk_enable_230), .n8133(n8133), .GND_net(GND_net), 
            .FT601_DATA_c_27(FT601_DATA_c_27), .FT601_DATA_c_26(FT601_DATA_c_26), 
            .FT601_DATA_c_25(FT601_DATA_c_25), .FT601_DATA_c_24(FT601_DATA_c_24), 
            .fifo_emp(fifo_emp), .VCC_net(VCC_net), .FT601_DATA_c_31(FT601_DATA_c_31), 
            .FT601_DATA_c_30(FT601_DATA_c_30), .FT601_DATA_c_29(FT601_DATA_c_29), 
            .FT601_DATA_c_28(FT601_DATA_c_28), .FT601_DATA_c_19(FT601_DATA_c_19), 
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
            .FT601_DATA_c_4(FT601_DATA_c_4)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
    dec_8b10b_U1 \decoder_gen_2..decoder_inst  (.\enc_data[26] (enc_data[26]), 
            .\enc_data[25] (enc_data[25]), .\enc_data[22] (enc_data[22]), 
            .\enc_data[23] (enc_data[23]), .\enc_data[28] (enc_data[28]), 
            .\enc_data[24] (enc_data[24]), .\enc_data[27] (enc_data[27]), 
            .\enc_data[29] (enc_data[29]), .\enc_data[21] (enc_data[21]), 
            .\dec_data[16] (dec_data[16]), .sclk(sclk), .\enc_data[20] (enc_data[20]), 
            .rbyteclk_N_428(rbyteclk_N_428), .\dec_data[17] (dec_data[17]), 
            .\dec_data[18] (dec_data[18]), .\dec_data[19] (dec_data[19]), 
            .\dec_data[20] (dec_data[20]), .\dec_data[21] (dec_data[21]), 
            .\dec_data[22] (dec_data[22]), .\dec_data[23] (dec_data[23]));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(114[24:45])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module calc_ber
//

module calc_ber (ber, sclk, sclk_enable_104, GND_net, sclk_enable_230, 
            n8375, n8376, sync_prng, n8101, rnd_num, dec_data);
    output [31:0]ber;
    input sclk;
    input sclk_enable_104;
    input GND_net;
    input sclk_enable_230;
    input n8375;
    input n8376;
    input sync_prng;
    output n8101;
    input [39:0]rnd_num;
    input [39:0]dec_data;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire [31:0]total_error;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(41[12:23])
    
    wire n6520;
    wire [29:0]count_bytes;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(40[12:23])
    wire [29:0]n367;
    
    wire n6521, n8128, n8127, n2, n2_adj_850, n8089, n8083;
    wire [3:0]n1835;
    
    wire n8084, n3038, n6483, n8085, n4, n8097, n1816, n1994, 
        n1851, n8123, n8082, n8079, n8086, n2_adj_851, n3014, 
        n4_adj_852, n2161, n8093, n8080, n8081, n8087, n6501, 
        n6518, n6519, n8090, n1867, n1863;
    wire [29:0]n466;
    
    wire n8088;
    wire [2:0]n1879;
    
    wire n6474, n2_adj_853, n8091, n6492, n8077, n8078, n6, n8;
    wire [31:0]n433;
    
    wire n1811, n8138, n1825, n2_adj_854, n8121, n1828, n1831, 
        n8098, n8095, n6517, n6516, n6515, n6540;
    wire [31:0]n400;
    
    wire n6514, n6539, n6538, n6513, n6512, n8132;
    wire [39:0]error_bits;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(38[12:22])
    
    wire n8175, n2_adj_855;
    wire [1:0]n1860;
    
    wire n8142, n8143, n8129, n8107, n6537, n6536, n6535, n6534, 
        n6533, n6532, n8141, n8140;
    wire [2:0]n1844;
    wire [1:0]n1852;
    
    wire n7685, n7683, n8_adj_856, n7655, n7665, n7609, n7677, 
        n7661, n7607, n7657, n7599, n8158, n8096, n3015, n6465, 
        n6531, n8152, n8154;
    wire [0:0]n1809;
    
    wire n8119, n8144, n6530, n6529, n6511, n8146, n8204, n6528, 
        n6527, n6526, n6525, n8151, n8149, n6510, n6524, n6523, 
        n6522, n8120, n8122, n1834, n1843, n8156, n8155;
    wire [0:0]n1823;
    
    wire n8092, n8160, n8159;
    wire [0:0]n1841;
    
    wire n8163, n8162, n8130, n8165, n8164;
    wire [0:0]n1829;
    
    wire n8124, n8169, n8168, n8131, n8110, n8174, n8173;
    wire [1:0]n1856;
    
    FD1P3AX ber_i0_i0 (.D(total_error[0]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i0.GSR = "ENABLED";
    CCU2D add_47_23 (.A0(count_bytes[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6520), .COUT(n6521), .S0(n367[21]), .S1(n367[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_23.INIT0 = 16'h5aaa;
    defparam add_47_23.INIT1 = 16'h5aaa;
    defparam add_47_23.INJECT1_0 = "NO";
    defparam add_47_23.INJECT1_1 = "NO";
    LUT4 i441_2_lut_rep_43_3_lut_4_lut (.A(n8128), .B(n8127), .C(n2), 
         .D(n2_adj_850), .Z(n8089)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i441_2_lut_rep_43_3_lut_4_lut.init = 16'h6996;
    LUT4 i4639_2_lut_4_lut (.A(n8083), .B(n1835[2]), .C(n8084), .D(n3038), 
         .Z(n6483)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4639_2_lut_4_lut.init = 16'h6996;
    LUT4 i402_2_lut_4_lut (.A(n8085), .B(n4), .C(n8097), .D(n1816), 
         .Z(n1994)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i402_2_lut_4_lut.init = 16'he800;
    LUT4 i397_4_lut_3_lut_rep_36_4_lut (.A(n1851), .B(n8123), .C(n4), 
         .D(n8085), .Z(n8082)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i397_4_lut_3_lut_rep_36_4_lut.init = 16'hf880;
    LUT4 i399_2_lut_rep_33_4_lut (.A(n8085), .B(n4), .C(n8097), .D(n1816), 
         .Z(n8079)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i399_2_lut_rep_33_4_lut.init = 16'h17e8;
    LUT4 i4637_4_lut_3_lut (.A(n8086), .B(n2_adj_851), .C(n3014), .Z(n4_adj_852)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4637_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_3_lut_4_lut (.A(n1851), .B(n8123), .C(n8085), .D(n4), .Z(n3038)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 i593_4_lut_3_lut_rep_34_4_lut (.A(n2161), .B(n8093), .C(n8083), 
         .D(n1835[2]), .Z(n8080)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i593_4_lut_3_lut_rep_34_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_rep_35_4_lut (.A(n2161), .B(n8093), .C(n1835[2]), .D(n8083), 
         .Z(n8081)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_35_4_lut.init = 16'h6996;
    LUT4 i4655_2_lut_4_lut (.A(n1835[3]), .B(n8080), .C(n8087), .D(n1994), 
         .Z(n6501)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4655_2_lut_4_lut.init = 16'h17e8;
    CCU2D add_47_19 (.A0(count_bytes[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6518), .COUT(n6519), .S0(n367[17]), .S1(n367[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_19.INIT0 = 16'h5aaa;
    defparam add_47_19.INIT1 = 16'h5aaa;
    defparam add_47_19.INJECT1_0 = "NO";
    defparam add_47_19.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_39 (.A(n8090), .B(n1867), .C(n1863), .Z(n8085)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_39.init = 16'h9696;
    LUT4 i376_4_lut_3_lut (.A(n1867), .B(n8090), .C(n1863), .Z(n1816)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i376_4_lut_3_lut.init = 16'he8e8;
    FD1P3IX count_bytes__i0 (.D(n466[0]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i0.GSR = "ENABLED";
    LUT4 i4631_2_lut_4_lut (.A(n8088), .B(n8089), .C(n1879[1]), .D(n3014), 
         .Z(n6474)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4631_2_lut_4_lut.init = 16'h6996;
    LUT4 i390_4_lut_3_lut_4_lut (.A(n1851), .B(n8123), .C(n2_adj_853), 
         .D(n8091), .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i390_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i4647_2_lut_4_lut (.A(n8080), .B(n1835[3]), .C(n8087), .D(n8079), 
         .Z(n6492)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4647_2_lut_4_lut.init = 16'h6996;
    LUT4 i600_4_lut_3_lut_rep_31_4_lut (.A(n2161), .B(n8093), .C(n8080), 
         .D(n1835[3]), .Z(n8077)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i600_4_lut_3_lut_rep_31_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_rep_32_4_lut (.A(n2161), .B(n8093), .C(n1835[3]), .D(n8080), 
         .Z(n8078)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_32_4_lut.init = 16'h8778;
    LUT4 i4653_4_lut_3_lut_4_lut (.A(n1816), .B(n8082), .C(n6), .D(n8078), 
         .Z(n8)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4653_4_lut_3_lut_4_lut.init = 16'hf660;
    FD1P3IX total_error__i0 (.D(n433[0]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(total_error[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i0.GSR = "ENABLED";
    LUT4 i621_4_lut_3_lut_rep_47_4_lut (.A(n1811), .B(n8138), .C(n1825), 
         .D(n2_adj_854), .Z(n8093)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i621_4_lut_3_lut_rep_47_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_118 (.A(n1811), .B(n8138), .C(n1825), .D(n2_adj_854), 
         .Z(n1879[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_4_lut_adj_118.init = 16'h6996;
    LUT4 i2_3_lut_rep_52 (.A(n8121), .B(n1828), .C(n1831), .Z(n8098)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_52.init = 16'h9696;
    LUT4 i4645_4_lut_3_lut (.A(n8081), .B(n4_adj_852), .C(n3038), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4645_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_3_lut_rep_40_4_lut (.A(n8095), .B(n2), .C(n1879[1]), .D(n8088), 
         .Z(n8086)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_40_4_lut.init = 16'h6996;
    FD1P3AX ber_i0_i1 (.D(total_error[1]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i1.GSR = "ENABLED";
    FD1P3AX ber_i0_i2 (.D(total_error[2]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i2.GSR = "ENABLED";
    FD1P3AX ber_i0_i3 (.D(total_error[3]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i3.GSR = "ENABLED";
    FD1P3AX ber_i0_i4 (.D(total_error[4]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i4.GSR = "ENABLED";
    FD1P3AX ber_i0_i5 (.D(total_error[5]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i5.GSR = "ENABLED";
    FD1P3AX ber_i0_i6 (.D(total_error[6]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i6.GSR = "ENABLED";
    FD1P3AX ber_i0_i7 (.D(total_error[7]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i7.GSR = "ENABLED";
    FD1P3AX ber_i0_i8 (.D(total_error[8]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i8.GSR = "ENABLED";
    FD1P3AX ber_i0_i9 (.D(total_error[9]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i9.GSR = "ENABLED";
    FD1P3AX ber_i0_i10 (.D(total_error[10]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i10.GSR = "ENABLED";
    FD1P3AX ber_i0_i11 (.D(total_error[11]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i11.GSR = "ENABLED";
    FD1P3AX ber_i0_i12 (.D(total_error[12]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i12.GSR = "ENABLED";
    FD1P3AX ber_i0_i13 (.D(total_error[13]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i13.GSR = "ENABLED";
    FD1P3AX ber_i0_i14 (.D(total_error[14]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i14.GSR = "ENABLED";
    FD1P3AX ber_i0_i15 (.D(total_error[15]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i15.GSR = "ENABLED";
    FD1P3AX ber_i0_i16 (.D(total_error[16]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i16.GSR = "ENABLED";
    FD1P3AX ber_i0_i17 (.D(total_error[17]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i17.GSR = "ENABLED";
    FD1P3AX ber_i0_i18 (.D(total_error[18]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i18.GSR = "ENABLED";
    FD1P3AX ber_i0_i19 (.D(total_error[19]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i19.GSR = "ENABLED";
    FD1P3AX ber_i0_i20 (.D(total_error[20]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i20.GSR = "ENABLED";
    FD1P3AX ber_i0_i21 (.D(total_error[21]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i21.GSR = "ENABLED";
    FD1P3AX ber_i0_i22 (.D(total_error[22]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i22.GSR = "ENABLED";
    FD1P3AX ber_i0_i23 (.D(total_error[23]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i23.GSR = "ENABLED";
    FD1P3AX ber_i0_i24 (.D(total_error[24]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i24.GSR = "ENABLED";
    FD1P3AX ber_i0_i25 (.D(total_error[25]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i25.GSR = "ENABLED";
    FD1P3AX ber_i0_i26 (.D(total_error[26]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i26.GSR = "ENABLED";
    FD1P3AX ber_i0_i27 (.D(total_error[27]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i27.GSR = "ENABLED";
    FD1P3AX ber_i0_i28 (.D(total_error[28]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i28.GSR = "ENABLED";
    FD1P3AX ber_i0_i29 (.D(total_error[29]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i29.GSR = "ENABLED";
    FD1P3AX ber_i0_i30 (.D(total_error[30]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i30.GSR = "ENABLED";
    FD1P3AX ber_i0_i31 (.D(total_error[31]), .SP(sclk_enable_104), .CK(sclk), 
            .Q(ber[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam ber_i0_i31.GSR = "ENABLED";
    FD1P3IX count_bytes__i1 (.D(n466[1]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i1.GSR = "ENABLED";
    LUT4 i586_4_lut_3_lut_rep_37_4_lut (.A(n8095), .B(n2), .C(n1879[1]), 
         .D(n8088), .Z(n8083)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i586_4_lut_3_lut_rep_37_4_lut.init = 16'hf660;
    CCU2D add_47_17 (.A0(count_bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6517), .COUT(n6518), .S0(n367[15]), .S1(n367[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_17.INIT0 = 16'h5aaa;
    defparam add_47_17.INIT1 = 16'h5aaa;
    defparam add_47_17.INJECT1_0 = "NO";
    defparam add_47_17.INJECT1_1 = "NO";
    CCU2D add_47_15 (.A0(count_bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6516), .COUT(n6517), .S0(n367[13]), .S1(n367[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_15.INIT0 = 16'h5aaa;
    defparam add_47_15.INIT1 = 16'h5aaa;
    defparam add_47_15.INJECT1_0 = "NO";
    defparam add_47_15.INJECT1_1 = "NO";
    CCU2D add_47_13 (.A0(count_bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6515), .COUT(n6516), .S0(n367[11]), .S1(n367[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_13.INIT0 = 16'h5aaa;
    defparam add_47_13.INIT1 = 16'h5aaa;
    defparam add_47_13.INJECT1_0 = "NO";
    defparam add_47_13.INJECT1_1 = "NO";
    FD1P3IX count_bytes__i2 (.D(n466[2]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i2.GSR = "ENABLED";
    FD1P3IX count_bytes__i3 (.D(n466[3]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i3.GSR = "ENABLED";
    FD1P3IX count_bytes__i4 (.D(n466[4]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i4.GSR = "ENABLED";
    FD1P3IX count_bytes__i5 (.D(n466[5]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i5.GSR = "ENABLED";
    FD1P3IX count_bytes__i6 (.D(n466[6]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i6.GSR = "ENABLED";
    FD1P3IX count_bytes__i7 (.D(n466[7]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i7.GSR = "ENABLED";
    FD1P3IX count_bytes__i8 (.D(n466[8]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(count_bytes[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i8.GSR = "ENABLED";
    FD1P3IX count_bytes__i9 (.D(n466[9]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i9.GSR = "ENABLED";
    FD1P3IX count_bytes__i10 (.D(n466[10]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i10.GSR = "ENABLED";
    FD1P3IX count_bytes__i11 (.D(n466[11]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i11.GSR = "ENABLED";
    FD1P3IX count_bytes__i12 (.D(n466[12]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i12.GSR = "ENABLED";
    FD1P3IX count_bytes__i13 (.D(n466[13]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i13.GSR = "ENABLED";
    FD1P3IX count_bytes__i14 (.D(n466[14]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i14.GSR = "ENABLED";
    FD1P3IX count_bytes__i15 (.D(n466[15]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i15.GSR = "ENABLED";
    FD1P3IX count_bytes__i16 (.D(n466[16]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i16.GSR = "ENABLED";
    FD1P3IX count_bytes__i17 (.D(n466[17]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i17.GSR = "ENABLED";
    FD1P3IX count_bytes__i18 (.D(n466[18]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i18.GSR = "ENABLED";
    FD1P3IX count_bytes__i19 (.D(n466[19]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i19.GSR = "ENABLED";
    FD1P3IX count_bytes__i20 (.D(n466[20]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i20.GSR = "ENABLED";
    FD1P3IX count_bytes__i21 (.D(n466[21]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i21.GSR = "ENABLED";
    FD1P3IX count_bytes__i22 (.D(n466[22]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i22.GSR = "ENABLED";
    FD1P3IX count_bytes__i23 (.D(n466[23]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i23.GSR = "ENABLED";
    FD1P3IX count_bytes__i24 (.D(n466[24]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i24.GSR = "ENABLED";
    FD1P3IX count_bytes__i25 (.D(n466[25]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i25.GSR = "ENABLED";
    FD1P3IX count_bytes__i26 (.D(n466[26]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i26.GSR = "ENABLED";
    FD1P3IX count_bytes__i27 (.D(n466[27]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i27.GSR = "ENABLED";
    FD1P3IX count_bytes__i28 (.D(n466[28]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i28.GSR = "ENABLED";
    FD1P3IX count_bytes__i29 (.D(n466[29]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(count_bytes[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam count_bytes__i29.GSR = "ENABLED";
    CCU2D add_49_33 (.A0(total_error[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6540), .S0(n400[31]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_33.INIT0 = 16'h5aaa;
    defparam add_49_33.INIT1 = 16'h0000;
    defparam add_49_33.INJECT1_0 = "NO";
    defparam add_49_33.INJECT1_1 = "NO";
    CCU2D add_47_11 (.A0(count_bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6514), .COUT(n6515), .S0(n367[9]), .S1(n367[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_11.INIT0 = 16'h5aaa;
    defparam add_47_11.INIT1 = 16'h5aaa;
    defparam add_47_11.INJECT1_0 = "NO";
    defparam add_47_11.INJECT1_1 = "NO";
    CCU2D add_49_31 (.A0(total_error[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6539), .COUT(n6540), .S0(n400[29]), .S1(n400[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_31.INIT0 = 16'h5aaa;
    defparam add_49_31.INIT1 = 16'h5aaa;
    defparam add_49_31.INJECT1_0 = "NO";
    defparam add_49_31.INJECT1_1 = "NO";
    CCU2D add_49_29 (.A0(total_error[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6538), .COUT(n6539), .S0(n400[27]), .S1(n400[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_29.INIT0 = 16'h5aaa;
    defparam add_49_29.INIT1 = 16'h5aaa;
    defparam add_49_29.INJECT1_0 = "NO";
    defparam add_49_29.INJECT1_1 = "NO";
    CCU2D add_47_9 (.A0(count_bytes[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6513), .COUT(n6514), .S0(n367[7]), .S1(n367[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_9.INIT0 = 16'h5aaa;
    defparam add_47_9.INIT1 = 16'h5aaa;
    defparam add_47_9.INJECT1_0 = "NO";
    defparam add_47_9.INJECT1_1 = "NO";
    CCU2D add_47_7 (.A0(count_bytes[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6512), .COUT(n6513), .S0(n367[5]), .S1(n367[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_7.INIT0 = 16'h5aaa;
    defparam add_47_7.INIT1 = 16'h5aaa;
    defparam add_47_7.INJECT1_0 = "NO";
    defparam add_47_7.INJECT1_1 = "NO";
    LUT4 i521_2_lut_rep_51_4_lut (.A(n8132), .B(error_bits[37]), .C(n8175), 
         .D(n1851), .Z(n8097)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i521_2_lut_rep_51_4_lut.init = 16'he800;
    LUT4 i369_4_lut_3_lut_rep_44 (.A(n8098), .B(n2_adj_855), .C(n1860[1]), 
         .Z(n8090)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i369_4_lut_3_lut_rep_44.init = 16'he8e8;
    LUT4 i504_2_lut_rep_61_4_lut (.A(n8142), .B(n8143), .C(n8129), .D(n8128), 
         .Z(n8107)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i504_2_lut_rep_61_4_lut.init = 16'h17e8;
    LUT4 i2_3_lut_4_lut_adj_119 (.A(n1851), .B(n8123), .C(n8091), .D(n2_adj_853), 
         .Z(n3014)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_4_lut_adj_119.init = 16'h6996;
    LUT4 i2_3_lut_rep_45 (.A(n2_adj_855), .B(n8098), .C(n1860[1]), .Z(n8091)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_rep_45.init = 16'h9696;
    CCU2D add_49_27 (.A0(total_error[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6537), .COUT(n6538), .S0(n400[25]), .S1(n400[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_27.INIT0 = 16'h5aaa;
    defparam add_49_27.INIT1 = 16'h5aaa;
    defparam add_49_27.INJECT1_0 = "NO";
    defparam add_49_27.INJECT1_1 = "NO";
    CCU2D add_49_25 (.A0(total_error[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6536), .COUT(n6537), .S0(n400[23]), .S1(n400[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_25.INIT0 = 16'h5aaa;
    defparam add_49_25.INIT1 = 16'h5aaa;
    defparam add_49_25.INJECT1_0 = "NO";
    defparam add_49_25.INJECT1_1 = "NO";
    CCU2D add_49_23 (.A0(total_error[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6535), .COUT(n6536), .S0(n400[21]), .S1(n400[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_23.INIT0 = 16'h5aaa;
    defparam add_49_23.INIT1 = 16'h5aaa;
    defparam add_49_23.INJECT1_0 = "NO";
    defparam add_49_23.INJECT1_1 = "NO";
    CCU2D add_49_21 (.A0(total_error[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6534), .COUT(n6535), .S0(n400[19]), .S1(n400[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_21.INIT0 = 16'h5aaa;
    defparam add_49_21.INIT1 = 16'h5aaa;
    defparam add_49_21.INJECT1_0 = "NO";
    defparam add_49_21.INJECT1_1 = "NO";
    CCU2D add_49_19 (.A0(total_error[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6533), .COUT(n6534), .S0(n400[17]), .S1(n400[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_19.INIT0 = 16'h5aaa;
    defparam add_49_19.INIT1 = 16'h5aaa;
    defparam add_49_19.INJECT1_0 = "NO";
    defparam add_49_19.INJECT1_1 = "NO";
    CCU2D add_49_17 (.A0(total_error[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6532), .COUT(n6533), .S0(n400[15]), .S1(n400[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_17.INIT0 = 16'h5aaa;
    defparam add_49_17.INIT1 = 16'h5aaa;
    defparam add_49_17.INJECT1_0 = "NO";
    defparam add_49_17.INJECT1_1 = "NO";
    LUT4 i476_2_lut_rep_49_3_lut_4_lut (.A(n8141), .B(n8140), .C(n2_adj_850), 
         .D(n8127), .Z(n8095)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i476_2_lut_rep_49_3_lut_4_lut.init = 16'h8778;
    LUT4 i483_4_lut_3_lut_4_lut (.A(n8141), .B(n8140), .C(n2_adj_850), 
         .D(n8127), .Z(n1844[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i483_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_120 (.A(n8141), .B(n8140), .C(n8142), .D(n8143), 
         .Z(n1852[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut_4_lut_adj_120.init = 16'h6996;
    LUT4 i502_4_lut_3_lut_rep_81_4_lut (.A(n8141), .B(n8140), .C(n8143), 
         .D(n8142), .Z(n8127)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i502_4_lut_3_lut_rep_81_4_lut.init = 16'hf660;
    LUT4 i3_4_lut (.A(n7685), .B(count_bytes[27]), .C(n7683), .D(count_bytes[29]), 
         .Z(n8_adj_856)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i3_4_lut.init = 16'hffdf;
    LUT4 i5794_4_lut (.A(n7655), .B(count_bytes[3]), .C(n7665), .D(count_bytes[13]), 
         .Z(n7685)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5794_4_lut.init = 16'h8000;
    LUT4 i5792_4_lut (.A(n7609), .B(n7677), .C(n7661), .D(n7607), .Z(n7683)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5792_4_lut.init = 16'h8000;
    LUT4 i5766_4_lut (.A(count_bytes[17]), .B(count_bytes[23]), .C(count_bytes[19]), 
         .D(count_bytes[5]), .Z(n7655)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5766_4_lut.init = 16'h8000;
    LUT4 i5776_4_lut (.A(count_bytes[12]), .B(count_bytes[21]), .C(count_bytes[1]), 
         .D(count_bytes[6]), .Z(n7665)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5776_4_lut.init = 16'h8000;
    LUT4 i5722_2_lut (.A(count_bytes[10]), .B(count_bytes[4]), .Z(n7609)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5722_2_lut.init = 16'h8888;
    LUT4 i5786_4_lut (.A(count_bytes[20]), .B(n7657), .C(n7599), .D(count_bytes[24]), 
         .Z(n7677)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5786_4_lut.init = 16'h8000;
    LUT4 i5772_4_lut (.A(count_bytes[22]), .B(count_bytes[14]), .C(count_bytes[0]), 
         .D(count_bytes[25]), .Z(n7661)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5772_4_lut.init = 16'h8000;
    FD1P3IX total_error__i1 (.D(n433[1]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i1.GSR = "ENABLED";
    FD1P3IX total_error__i2 (.D(n433[2]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i2.GSR = "ENABLED";
    FD1P3IX total_error__i3 (.D(n433[3]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i3.GSR = "ENABLED";
    FD1P3IX total_error__i4 (.D(n433[4]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i4.GSR = "ENABLED";
    FD1P3IX total_error__i5 (.D(n433[5]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i5.GSR = "ENABLED";
    FD1P3IX total_error__i6 (.D(n433[6]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i6.GSR = "ENABLED";
    FD1P3IX total_error__i7 (.D(n433[7]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i7.GSR = "ENABLED";
    FD1P3IX total_error__i8 (.D(n433[8]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i8.GSR = "ENABLED";
    FD1P3IX total_error__i9 (.D(n433[9]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i9.GSR = "ENABLED";
    FD1P3IX total_error__i10 (.D(n433[10]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i10.GSR = "ENABLED";
    FD1P3IX total_error__i11 (.D(n433[11]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i11.GSR = "ENABLED";
    FD1P3IX total_error__i12 (.D(n433[12]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i12.GSR = "ENABLED";
    FD1P3IX total_error__i13 (.D(n433[13]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i13.GSR = "ENABLED";
    FD1P3IX total_error__i14 (.D(n433[14]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i14.GSR = "ENABLED";
    FD1P3IX total_error__i15 (.D(n433[15]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i15.GSR = "ENABLED";
    FD1P3IX total_error__i16 (.D(n433[16]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i16.GSR = "ENABLED";
    FD1P3IX total_error__i17 (.D(n433[17]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i17.GSR = "ENABLED";
    FD1P3IX total_error__i18 (.D(n433[18]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i18.GSR = "ENABLED";
    FD1P3IX total_error__i19 (.D(n433[19]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i19.GSR = "ENABLED";
    FD1P3IX total_error__i20 (.D(n433[20]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i20.GSR = "ENABLED";
    FD1P3IX total_error__i21 (.D(n433[21]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i21.GSR = "ENABLED";
    FD1P3IX total_error__i22 (.D(n433[22]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i22.GSR = "ENABLED";
    FD1P3IX total_error__i23 (.D(n433[23]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i23.GSR = "ENABLED";
    FD1P3IX total_error__i24 (.D(n433[24]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i24.GSR = "ENABLED";
    FD1P3IX total_error__i25 (.D(n433[25]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i25.GSR = "ENABLED";
    FD1P3IX total_error__i26 (.D(n433[26]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i26.GSR = "ENABLED";
    FD1P3IX total_error__i27 (.D(n433[27]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i27.GSR = "ENABLED";
    FD1P3IX total_error__i28 (.D(n433[28]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i28.GSR = "ENABLED";
    FD1P3IX total_error__i29 (.D(n433[29]), .SP(sclk_enable_230), .CD(n8376), 
            .CK(sclk), .Q(total_error[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i29.GSR = "ENABLED";
    FD1P3IX total_error__i30 (.D(n433[30]), .SP(sclk_enable_230), .CD(sync_prng), 
            .CK(sclk), .Q(total_error[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i30.GSR = "ENABLED";
    FD1P3IX total_error__i31 (.D(n433[31]), .SP(sclk_enable_230), .CD(sync_prng), 
            .CK(sclk), .Q(total_error[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=136, LSE_RLINE=136 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(64[9] 88[16])
    defparam total_error__i31.GSR = "ENABLED";
    LUT4 i5720_2_lut (.A(count_bytes[11]), .B(count_bytes[18]), .Z(n7607)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5720_2_lut.init = 16'h8888;
    LUT4 i5768_4_lut (.A(count_bytes[9]), .B(count_bytes[7]), .C(count_bytes[16]), 
         .D(count_bytes[15]), .Z(n7657)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5768_4_lut.init = 16'h8000;
    LUT4 i5712_2_lut (.A(count_bytes[2]), .B(count_bytes[8]), .Z(n7599)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5712_2_lut.init = 16'h8888;
    LUT4 i4623_2_lut_4_lut (.A(n8158), .B(n8096), .C(n1879[0]), .D(n3015), 
         .Z(n6465)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i4623_2_lut_4_lut.init = 16'h6996;
    CCU2D add_49_15 (.A0(total_error[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6531), .COUT(n6532), .S0(n400[13]), .S1(n400[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_15.INIT0 = 16'h5aaa;
    defparam add_49_15.INIT1 = 16'h5aaa;
    defparam add_49_15.INJECT1_0 = "NO";
    defparam add_49_15.INJECT1_1 = "NO";
    LUT4 i448_2_lut_3_lut_4_lut (.A(n8107), .B(n2_adj_850), .C(n1844[2]), 
         .D(n2), .Z(n1835[2])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i448_2_lut_3_lut_4_lut.init = 16'h96f0;
    LUT4 i567_2_lut_rep_73_4_lut (.A(n8152), .B(n8154), .C(n1809[0]), 
         .D(n1811), .Z(n8119)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i567_2_lut_rep_73_4_lut.init = 16'h17e8;
    LUT4 i569_2_lut_4_lut (.A(n8152), .B(n8154), .C(n1809[0]), .D(n1811), 
         .Z(n2161)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i569_2_lut_4_lut.init = 16'he800;
    LUT4 i4_3_lut_rep_55 (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .Z(n8101)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4_3_lut_rep_55.init = 16'hfefe;
    LUT4 i3333_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[0]), .Z(n466[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3333_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i2_2_lut_rep_94 (.A(rnd_num[1]), .B(dec_data[1]), 
         .Z(n8140)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i2_2_lut_rep_94.init = 16'h6666;
    LUT4 i3330_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[0]), .Z(n433[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3330_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3404_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[1]), .Z(n466[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3404_2_lut_4_lut.init = 16'hfe00;
    LUT4 i623_2_lut_rep_38_4_lut (.A(n8119), .B(n2_adj_854), .C(n1825), 
         .D(n2161), .Z(n8084)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i623_2_lut_rep_38_4_lut.init = 16'h17e8;
    LUT4 word_actual_39__I_0_i1_2_lut_rep_95 (.A(rnd_num[0]), .B(dec_data[0]), 
         .Z(n8141)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i1_2_lut_rep_95.init = 16'h6666;
    LUT4 i539_2_lut_rep_83_3_lut_4_lut (.A(rnd_num[0]), .B(dec_data[0]), 
         .C(dec_data[1]), .D(rnd_num[1]), .Z(n8129)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i539_2_lut_rep_83_3_lut_4_lut.init = 16'h6996;
    LUT4 i542_2_lut_rep_82_3_lut_4_lut (.A(rnd_num[0]), .B(dec_data[0]), 
         .C(dec_data[1]), .D(rnd_num[1]), .Z(n8128)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i542_2_lut_rep_82_3_lut_4_lut.init = 16'h0660;
    LUT4 word_actual_39__I_0_i3_2_lut_rep_96 (.A(rnd_num[2]), .B(dec_data[2]), 
         .Z(n8142)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i3_2_lut_rep_96.init = 16'h6666;
    LUT4 word_actual_39__I_0_i4_2_lut_rep_97 (.A(rnd_num[3]), .B(dec_data[3]), 
         .Z(n8143)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i4_2_lut_rep_97.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_121 (.A(rnd_num[4]), .B(dec_data[4]), .C(n1852[0]), 
         .D(n8144), .Z(n1844[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_121.init = 16'h6996;
    LUT4 i3405_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[2]), .Z(n466[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3405_2_lut_4_lut.init = 16'hfe00;
    LUT4 i474_4_lut_3_lut_4_lut (.A(rnd_num[4]), .B(dec_data[4]), .C(n1852[0]), 
         .D(n8144), .Z(n2_adj_850)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i474_4_lut_3_lut_4_lut.init = 16'hf660;
    CCU2D add_49_13 (.A0(total_error[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6530), .COUT(n6531), .S0(n400[11]), .S1(n400[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_13.INIT0 = 16'h5aaa;
    defparam add_49_13.INIT1 = 16'h5aaa;
    defparam add_49_13.INJECT1_0 = "NO";
    defparam add_49_13.INJECT1_1 = "NO";
    LUT4 word_actual_39__I_0_i38_2_lut (.A(rnd_num[37]), .B(dec_data[37]), 
         .Z(error_bits[37])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i38_2_lut.init = 16'h6666;
    CCU2D add_49_11 (.A0(total_error[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_error[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6529), .COUT(n6530), .S0(n400[9]), .S1(n400[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_11.INIT0 = 16'h5aaa;
    defparam add_49_11.INIT1 = 16'h5aaa;
    defparam add_49_11.INJECT1_0 = "NO";
    defparam add_49_11.INJECT1_1 = "NO";
    LUT4 i3406_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[3]), .Z(n466[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3406_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_47_5 (.A0(count_bytes[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6511), .COUT(n6512), .S0(n367[3]), .S1(n367[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_5.INIT0 = 16'h5aaa;
    defparam add_47_5.INIT1 = 16'h5aaa;
    defparam add_47_5.INJECT1_0 = "NO";
    defparam add_47_5.INJECT1_1 = "NO";
    LUT4 word_actual_39__I_0_i6_2_lut_rep_98 (.A(rnd_num[5]), .B(dec_data[5]), 
         .Z(n8144)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i6_2_lut_rep_98.init = 16'h6666;
    LUT4 i3407_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[4]), .Z(n466[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3407_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3408_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[5]), .Z(n466[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3408_2_lut_4_lut.init = 16'hfe00;
    LUT4 i439_4_lut_3_lut_4_lut (.A(rnd_num[7]), .B(dec_data[7]), .C(n1844[0]), 
         .D(n8146), .Z(n2)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i439_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i3409_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[6]), .Z(n466[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3409_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2_3_lut_rep_50_4_lut (.A(rnd_num[7]), .B(dec_data[7]), .C(n1844[0]), 
         .D(n8146), .Z(n8096)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_50_4_lut.init = 16'h6996;
    LUT4 i3410_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[7]), .Z(n466[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3410_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3411_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[8]), .Z(n466[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3411_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i40_2_lut_rep_158 (.A(rnd_num[39]), .B(dec_data[39]), 
         .Z(n8204)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i40_2_lut_rep_158.init = 16'h6666;
    LUT4 i3412_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[9]), .Z(n466[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3412_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3413_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[10]), .Z(n466[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3413_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i7_2_lut_rep_100 (.A(rnd_num[6]), .B(dec_data[6]), 
         .Z(n8146)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i7_2_lut_rep_100.init = 16'h6666;
    LUT4 i3414_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[11]), .Z(n466[11])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3414_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_49_9 (.A0(total_error[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(total_error[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6528), .COUT(n6529), .S0(n400[7]), .S1(n400[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_9.INIT0 = 16'h5aaa;
    defparam add_49_9.INIT1 = 16'h5aaa;
    defparam add_49_9.INJECT1_0 = "NO";
    defparam add_49_9.INJECT1_1 = "NO";
    LUT4 i626_2_lut_rep_41_4_lut (.A(n8119), .B(n2_adj_854), .C(n1825), 
         .D(n2161), .Z(n8087)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i626_2_lut_rep_41_4_lut.init = 16'he800;
    CCU2D add_49_7 (.A0(total_error[5]), .B0(n8), .C0(n8077), .D0(n1994), 
          .A1(total_error[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6527), .COUT(n6528), .S0(n400[5]), .S1(n400[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_7.INIT0 = 16'h566a;
    defparam add_49_7.INIT1 = 16'h5aaa;
    defparam add_49_7.INJECT1_0 = "NO";
    defparam add_49_7.INJECT1_1 = "NO";
    CCU2D add_47_21 (.A0(count_bytes[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6519), .COUT(n6520), .S0(n367[19]), .S1(n367[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_21.INIT0 = 16'h5aaa;
    defparam add_47_21.INIT1 = 16'h5aaa;
    defparam add_47_21.INJECT1_0 = "NO";
    defparam add_47_21.INJECT1_1 = "NO";
    LUT4 i3415_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[12]), .Z(n466[12])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3415_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_49_5 (.A0(n6492), .B0(n6), .C0(total_error[3]), .D0(GND_net), 
          .A1(n6501), .B1(n8), .C1(total_error[4]), .D1(GND_net), .CIN(n6526), 
          .COUT(n6527), .S0(n400[3]), .S1(n400[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_5.INIT0 = 16'h9696;
    defparam add_49_5.INIT1 = 16'h9696;
    defparam add_49_5.INJECT1_0 = "NO";
    defparam add_49_5.INJECT1_1 = "NO";
    CCU2D add_49_3 (.A0(n6474), .B0(n2_adj_851), .C0(total_error[1]), 
          .D0(GND_net), .A1(n6483), .B1(n4_adj_852), .C1(total_error[2]), 
          .D1(GND_net), .CIN(n6525), .COUT(n6526), .S0(n400[1]), .S1(n400[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_3.INIT0 = 16'h9696;
    defparam add_49_3.INIT1 = 16'h9696;
    defparam add_49_3.INJECT1_0 = "NO";
    defparam add_49_3.INJECT1_1 = "NO";
    LUT4 i3416_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[13]), .Z(n466[13])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3416_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_49_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6465), .B1(n8204), .C1(total_error[0]), .D1(GND_net), 
          .COUT(n6525), .S1(n400[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_49_1.INIT0 = 16'hF000;
    defparam add_49_1.INIT1 = 16'h9696;
    defparam add_49_1.INJECT1_0 = "NO";
    defparam add_49_1.INJECT1_1 = "NO";
    LUT4 i635_4_lut_3_lut_4_lut (.A(rnd_num[12]), .B(dec_data[12]), .C(n8151), 
         .D(n8149), .Z(n1811)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i635_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i3417_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[14]), .Z(n466[14])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3417_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_47_3 (.A0(count_bytes[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6510), .COUT(n6511), .S0(n367[1]), .S1(n367[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_3.INIT0 = 16'h5aaa;
    defparam add_47_3.INIT1 = 16'h5aaa;
    defparam add_47_3.INJECT1_0 = "NO";
    defparam add_47_3.INJECT1_1 = "NO";
    LUT4 i3418_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[15]), .Z(n466[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3418_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3419_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[16]), .Z(n466[16])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3419_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3420_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[17]), .Z(n466[17])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3420_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_47_31 (.A0(count_bytes[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6524), .S0(n367[29]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_31.INIT0 = 16'h5aaa;
    defparam add_47_31.INIT1 = 16'h0000;
    defparam add_47_31.INJECT1_0 = "NO";
    defparam add_47_31.INJECT1_1 = "NO";
    LUT4 i3421_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[18]), .Z(n466[18])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3421_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_47_29 (.A0(count_bytes[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6523), .COUT(n6524), .S0(n367[27]), .S1(n367[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_29.INIT0 = 16'h5aaa;
    defparam add_47_29.INIT1 = 16'h5aaa;
    defparam add_47_29.INJECT1_0 = "NO";
    defparam add_47_29.INJECT1_1 = "NO";
    CCU2D add_47_27 (.A0(count_bytes[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6522), .COUT(n6523), .S0(n367[25]), .S1(n367[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_27.INIT0 = 16'h5aaa;
    defparam add_47_27.INIT1 = 16'h5aaa;
    defparam add_47_27.INJECT1_0 = "NO";
    defparam add_47_27.INJECT1_1 = "NO";
    LUT4 i3422_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[19]), .Z(n466[19])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3422_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2_3_lut_4_lut_adj_122 (.A(rnd_num[12]), .B(dec_data[12]), .C(n8149), 
         .D(n8151), .Z(n1809[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_122.init = 16'h6996;
    LUT4 word_actual_39__I_0_i11_2_lut_rep_103 (.A(rnd_num[10]), .B(dec_data[10]), 
         .Z(n8149)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i11_2_lut_rep_103.init = 16'h6666;
    LUT4 i3423_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[20]), .Z(n466[20])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3423_2_lut_4_lut.init = 16'hfe00;
    CCU2D add_47_25 (.A0(count_bytes[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6521), .COUT(n6522), .S0(n367[23]), .S1(n367[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_25.INIT0 = 16'h5aaa;
    defparam add_47_25.INIT1 = 16'h5aaa;
    defparam add_47_25.INJECT1_0 = "NO";
    defparam add_47_25.INJECT1_1 = "NO";
    CCU2D add_47_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6510), .S1(n367[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_47_1.INIT0 = 16'hF000;
    defparam add_47_1.INIT1 = 16'h5555;
    defparam add_47_1.INJECT1_0 = "NO";
    defparam add_47_1.INJECT1_1 = "NO";
    LUT4 word_actual_39__I_0_i12_2_lut_rep_105 (.A(rnd_num[11]), .B(dec_data[11]), 
         .Z(n8151)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i12_2_lut_rep_105.init = 16'h6666;
    LUT4 word_actual_39__I_0_i9_2_lut_rep_106 (.A(rnd_num[8]), .B(dec_data[8]), 
         .Z(n8152)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i9_2_lut_rep_106.init = 16'h6666;
    LUT4 i2_3_lut_rep_74_4_lut (.A(rnd_num[8]), .B(dec_data[8]), .C(n1809[0]), 
         .D(n8154), .Z(n8120)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_74_4_lut.init = 16'h6996;
    LUT4 i565_4_lut_3_lut_rep_92_4_lut (.A(rnd_num[8]), .B(dec_data[8]), 
         .C(n1809[0]), .D(n8154), .Z(n8138)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i565_4_lut_3_lut_rep_92_4_lut.init = 16'hf660;
    LUT4 i3424_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[21]), .Z(n466[21])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3424_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3425_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[22]), .Z(n466[22])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3425_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3426_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[23]), .Z(n466[23])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3426_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3427_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[24]), .Z(n466[24])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3427_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3428_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[25]), .Z(n466[25])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3428_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i10_2_lut_rep_108 (.A(rnd_num[9]), .B(dec_data[9]), 
         .Z(n8154)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i10_2_lut_rep_108.init = 16'h6666;
    LUT4 i2_3_lut (.A(n8122), .B(n1834), .C(n1843), .Z(n1860[1])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i2_3_lut.init = 16'h9696;
    LUT4 i411_4_lut_3_lut_4_lut (.A(rnd_num[16]), .B(dec_data[16]), .C(n8156), 
         .D(n8155), .Z(n1825)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i411_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_123 (.A(rnd_num[16]), .B(dec_data[16]), .C(n8155), 
         .D(n8156), .Z(n1823[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_123.init = 16'h6996;
    LUT4 i3429_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[26]), .Z(n466[26])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3429_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i15_2_lut_rep_109 (.A(rnd_num[14]), .B(dec_data[14]), 
         .Z(n8155)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i15_2_lut_rep_109.init = 16'h6666;
    LUT4 word_actual_39__I_0_i16_2_lut_rep_110 (.A(rnd_num[15]), .B(dec_data[15]), 
         .Z(n8156)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i16_2_lut_rep_110.init = 16'h6666;
    LUT4 i614_4_lut_3_lut_4_lut (.A(rnd_num[13]), .B(dec_data[13]), .C(n1823[0]), 
         .D(n8120), .Z(n2_adj_854)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i614_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_124 (.A(rnd_num[13]), .B(dec_data[13]), .C(n1823[0]), 
         .D(n8120), .Z(n1879[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_124.init = 16'h6996;
    LUT4 word_actual_39__I_0_i18_2_lut_rep_112 (.A(rnd_num[17]), .B(dec_data[17]), 
         .Z(n8158)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i18_2_lut_rep_112.init = 16'h6666;
    LUT4 i2_3_lut_rep_46_4_lut (.A(rnd_num[17]), .B(dec_data[17]), .C(n1879[0]), 
         .D(n8096), .Z(n8092)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_46_4_lut.init = 16'h6996;
    LUT4 i579_4_lut_3_lut_rep_42_4_lut (.A(rnd_num[17]), .B(dec_data[17]), 
         .C(n1879[0]), .D(n8096), .Z(n8088)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i579_4_lut_3_lut_rep_42_4_lut.init = 16'hf660;
    LUT4 i467_4_lut_3_lut_4_lut (.A(rnd_num[32]), .B(dec_data[32]), .C(n8160), 
         .D(n8159), .Z(n1843)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i467_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_125 (.A(rnd_num[32]), .B(dec_data[32]), .C(n8159), 
         .D(n8160), .Z(n1841[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_125.init = 16'h6996;
    LUT4 word_actual_39__I_0_i31_2_lut_rep_113 (.A(rnd_num[30]), .B(dec_data[30]), 
         .Z(n8159)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i31_2_lut_rep_113.init = 16'h6666;
    LUT4 word_actual_39__I_0_i32_2_lut_rep_114 (.A(rnd_num[31]), .B(dec_data[31]), 
         .Z(n8160)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i32_2_lut_rep_114.init = 16'h6666;
    LUT4 i418_4_lut_3_lut_4_lut (.A(rnd_num[20]), .B(dec_data[20]), .C(n8163), 
         .D(n8162), .Z(n1828)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i418_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_rep_84_4_lut (.A(rnd_num[20]), .B(dec_data[20]), .C(n8162), 
         .D(n8163), .Z(n8130)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_84_4_lut.init = 16'h6996;
    LUT4 i4629_4_lut_3_lut_4_lut (.A(rnd_num[39]), .B(dec_data[39]), .C(n3015), 
         .D(n8092), .Z(n2_adj_851)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i4629_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 word_actual_39__I_0_i19_2_lut_rep_116 (.A(rnd_num[18]), .B(dec_data[18]), 
         .Z(n8162)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i19_2_lut_rep_116.init = 16'h6666;
    LUT4 word_actual_39__I_0_i20_2_lut_rep_117 (.A(rnd_num[19]), .B(dec_data[19]), 
         .Z(n8163)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i20_2_lut_rep_117.init = 16'h6666;
    LUT4 i425_4_lut_3_lut_4_lut (.A(rnd_num[24]), .B(dec_data[24]), .C(n8165), 
         .D(n8164), .Z(n1831)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i425_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_126 (.A(rnd_num[24]), .B(dec_data[24]), .C(n8164), 
         .D(n8165), .Z(n1829[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_126.init = 16'h6996;
    LUT4 word_actual_39__I_0_i23_2_lut_rep_118 (.A(rnd_num[22]), .B(dec_data[22]), 
         .Z(n8164)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i23_2_lut_rep_118.init = 16'h6666;
    LUT4 i3430_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[27]), .Z(n466[27])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3430_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i24_2_lut_rep_119 (.A(rnd_num[23]), .B(dec_data[23]), 
         .Z(n8165)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i24_2_lut_rep_119.init = 16'h6666;
    LUT4 i551_4_lut_3_lut_rep_75_4_lut (.A(rnd_num[21]), .B(dec_data[21]), 
         .C(n1829[0]), .D(n8130), .Z(n8121)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i551_4_lut_3_lut_rep_75_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_rep_78_4_lut (.A(rnd_num[21]), .B(dec_data[21]), .C(n1829[0]), 
         .D(n8130), .Z(n8124)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_78_4_lut.init = 16'h6996;
    LUT4 i432_4_lut_3_lut_4_lut (.A(rnd_num[28]), .B(dec_data[28]), .C(n8169), 
         .D(n8168), .Z(n1834)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i432_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_rep_85_4_lut (.A(rnd_num[28]), .B(dec_data[28]), .C(n8168), 
         .D(n8169), .Z(n8131)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_85_4_lut.init = 16'h6996;
    LUT4 word_actual_39__I_0_i27_2_lut_rep_122 (.A(rnd_num[26]), .B(dec_data[26]), 
         .Z(n8168)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i27_2_lut_rep_122.init = 16'h6666;
    LUT4 word_actual_39__I_0_i28_2_lut_rep_123 (.A(rnd_num[27]), .B(dec_data[27]), 
         .Z(n8169)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i28_2_lut_rep_123.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_127 (.A(rnd_num[29]), .B(dec_data[29]), .C(n1841[0]), 
         .D(n8131), .Z(n1860[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_127.init = 16'h6996;
    LUT4 i530_4_lut_3_lut_rep_76_4_lut (.A(rnd_num[29]), .B(dec_data[29]), 
         .C(n1841[0]), .D(n8131), .Z(n8122)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i530_4_lut_3_lut_rep_76_4_lut.init = 16'hf660;
    LUT4 i3431_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[28]), .Z(n466[28])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3431_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3432_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n367[29]), .Z(n466[29])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3432_2_lut_4_lut.init = 16'hfe00;
    LUT4 i2_3_lut_rep_64_4_lut (.A(rnd_num[25]), .B(dec_data[25]), .C(n1860[0]), 
         .D(n8124), .Z(n8110)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_64_4_lut.init = 16'h6996;
    LUT4 i362_4_lut_3_lut_4_lut (.A(rnd_num[25]), .B(dec_data[25]), .C(n1860[0]), 
         .D(n8124), .Z(n2_adj_855)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i362_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i495_4_lut_3_lut_4_lut (.A(rnd_num[36]), .B(dec_data[36]), .C(n8174), 
         .D(n8173), .Z(n1851)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i495_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_rep_86_4_lut (.A(rnd_num[36]), .B(dec_data[36]), .C(n8173), 
         .D(n8174), .Z(n8132)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_rep_86_4_lut.init = 16'h6996;
    LUT4 i3373_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[1]), .Z(n433[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3373_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i35_2_lut_rep_127 (.A(rnd_num[34]), .B(dec_data[34]), 
         .Z(n8173)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i35_2_lut_rep_127.init = 16'h6666;
    LUT4 i3374_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[2]), .Z(n433[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3374_2_lut_4_lut.init = 16'hfe00;
    LUT4 word_actual_39__I_0_i36_2_lut_rep_128 (.A(rnd_num[35]), .B(dec_data[35]), 
         .Z(n8174)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i36_2_lut_rep_128.init = 16'h6666;
    LUT4 word_actual_39__I_0_i39_2_lut_rep_129 (.A(rnd_num[38]), .B(dec_data[38]), 
         .Z(n8175)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam word_actual_39__I_0_i39_2_lut_rep_129.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_128 (.A(rnd_num[38]), .B(dec_data[38]), .C(n8132), 
         .D(error_bits[37]), .Z(n1856[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_128.init = 16'h6996;
    LUT4 i516_4_lut_3_lut_rep_77_4_lut (.A(rnd_num[38]), .B(dec_data[38]), 
         .C(error_bits[37]), .D(n8132), .Z(n8123)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i516_4_lut_3_lut_rep_77_4_lut.init = 16'hf660;
    LUT4 i3375_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[3]), .Z(n433[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3375_2_lut_4_lut.init = 16'hfe00;
    LUT4 i383_4_lut_3_lut_4_lut (.A(rnd_num[33]), .B(dec_data[33]), .C(n1856[0]), 
         .D(n8110), .Z(n2_adj_853)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i383_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_129 (.A(rnd_num[33]), .B(dec_data[33]), .C(n1856[0]), 
         .D(n8110), .Z(n3015)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(46[19:30])
    defparam i2_3_lut_4_lut_adj_129.init = 16'h6996;
    LUT4 i3376_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[4]), .Z(n433[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3376_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3377_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[5]), .Z(n433[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3377_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3378_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[6]), .Z(n433[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3378_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3379_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[7]), .Z(n433[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3379_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3380_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[8]), .Z(n433[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3380_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3381_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[9]), .Z(n433[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3381_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3382_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[10]), .Z(n433[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3382_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3383_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[11]), .Z(n433[11])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3383_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3384_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[12]), .Z(n433[12])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3384_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3385_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[13]), .Z(n433[13])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3385_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3386_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[14]), .Z(n433[14])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3386_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3387_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[15]), .Z(n433[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3387_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3388_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[16]), .Z(n433[16])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3388_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3389_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[17]), .Z(n433[17])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3389_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3390_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[18]), .Z(n433[18])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3390_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3391_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[19]), .Z(n433[19])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3391_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3392_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[20]), .Z(n433[20])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3392_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3393_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[21]), .Z(n433[21])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3393_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3394_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[22]), .Z(n433[22])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3394_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3395_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[23]), .Z(n433[23])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3395_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3396_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[24]), .Z(n433[24])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3396_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3397_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[25]), .Z(n433[25])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3397_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3398_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[26]), .Z(n433[26])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3398_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3399_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[27]), .Z(n433[27])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3399_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3400_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[28]), .Z(n433[28])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3400_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3401_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[29]), .Z(n433[29])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3401_2_lut_4_lut.init = 16'hfe00;
    LUT4 i450_2_lut_3_lut_4_lut (.A(n8107), .B(n2_adj_850), .C(n1844[2]), 
         .D(n2), .Z(n1835[3])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i450_2_lut_3_lut_4_lut.init = 16'h6000;
    LUT4 i3402_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[30]), .Z(n433[30])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3402_2_lut_4_lut.init = 16'hfe00;
    LUT4 i3403_2_lut_4_lut (.A(count_bytes[26]), .B(n8_adj_856), .C(count_bytes[28]), 
         .D(n400[31]), .Z(n433[31])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i3403_2_lut_4_lut.init = 16'hfe00;
    LUT4 i537_4_lut_3_lut (.A(n1834), .B(n8122), .C(n1843), .Z(n1863)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i537_4_lut_3_lut.init = 16'he8e8;
    LUT4 i558_4_lut_3_lut (.A(n1828), .B(n8121), .C(n1831), .Z(n1867)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/calc_ber.vhd(55[22:27])
    defparam i558_4_lut_3_lut.init = 16'he8e8;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ft601
//

module ft601 (FT601_CLK_c, fifo_emp, FT601_TXE_N_c, n8133, FT601_WR_N_c);
    input FT601_CLK_c;
    input fifo_emp;
    input FT601_TXE_N_c;
    output n8133;
    output FT601_WR_N_c;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(30[9:18])
    
    wire tx_active, n8185;
    
    FD1S3IX tx_active_24 (.D(n8185), .CK(FT601_CLK_c), .CD(fifo_emp), 
            .Q(tx_active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=35, LSE_LLINE=159, LSE_RLINE=159 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ft601.vhd(64[9] 87[16])
    defparam tx_active_24.GSR = "ENABLED";
    LUT4 ft601_txe_n_I_0_27_1_lut_rep_139 (.A(FT601_TXE_N_c), .Z(n8185)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ft601.vhd(97[51:66])
    defparam ft601_txe_n_I_0_27_1_lut_rep_139.init = 16'h5555;
    LUT4 i1_3_lut_rep_87_3_lut (.A(FT601_TXE_N_c), .B(tx_active), .C(fifo_emp), 
         .Z(n8133)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ft601.vhd(97[51:66])
    defparam i1_3_lut_rep_87_3_lut.init = 16'h0404;
    LUT4 fifo_rd_en_I_0_1_lut_3_lut_3_lut (.A(FT601_TXE_N_c), .B(tx_active), 
         .C(fifo_emp), .Z(FT601_WR_N_c)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ft601.vhd(97[51:66])
    defparam fifo_rd_en_I_0_1_lut_3_lut_3_lut.init = 16'hfbfb;
    
endmodule
//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (\enc_data[49] , \enc_data[45] , \enc_data[47] , \enc_data[48] , 
            \enc_data[43] , \enc_data[42] , \enc_data[41] , \enc_data[40] , 
            \dec_data[32] , sclk, rbyteclk_N_428, \enc_data[44] , \enc_data[46] , 
            \dec_data[33] , \dec_data[34] , \dec_data[35] , \dec_data[36] , 
            \dec_data[37] , \dec_data[38] , \dec_data[39] );
    input \enc_data[49] ;
    input \enc_data[45] ;
    input \enc_data[47] ;
    input \enc_data[48] ;
    input \enc_data[43] ;
    input \enc_data[42] ;
    input \enc_data[41] ;
    input \enc_data[40] ;
    output \dec_data[32] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[44] ;
    input \enc_data[46] ;
    output \dec_data[33] ;
    output \dec_data[34] ;
    output \dec_data[35] ;
    output \dec_data[36] ;
    output \dec_data[37] ;
    output \dec_data[38] ;
    output \dec_data[39] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire n7490, n8216, n8215, n8219, n8218, p13, n3390, n8113, 
        n8103, n8114, n7452, ao_N_538, n7309, n4, or127_N_503, 
        ao, bo, bo_N_537, co, co_N_536, do, do_N_535, eo, eo_N_534, 
        fo, fo_N_533, go, go_N_532, ho, ho_N_531, or122_N_483, 
        n3449, or123_N_490, or122_N_485, n5161, p22_N_446, n4_adj_848, 
        n8190, n4_adj_849, n8188, n23, n8191, n3501, n8187, n8186, 
        n8102;
    
    LUT4 i2_4_lut_then_4_lut (.A(n7490), .B(\enc_data[49] ), .C(\enc_data[45] ), 
         .D(\enc_data[47] ), .Z(n8216)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hd1c4;
    LUT4 i2_4_lut_else_4_lut (.A(n7490), .B(\enc_data[49] ), .C(\enc_data[45] ), 
         .D(\enc_data[47] ), .Z(n8215)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1d4f;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n8219)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[48] ), .B(\enc_data[43] ), 
         .C(\enc_data[42] ), .D(\enc_data[41] ), .Z(n8218)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 enc_data_43__bdd_4_lut (.A(\enc_data[43] ), .B(\enc_data[42] ), 
         .C(\enc_data[40] ), .D(\enc_data[41] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_43__bdd_4_lut.init = 16'h0116;
    LUT4 i1_2_lut_rep_67 (.A(\enc_data[42] ), .B(n3390), .Z(n8113)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_67.init = 16'h8888;
    LUT4 i1_2_lut_rep_57_3_lut (.A(\enc_data[42] ), .B(n3390), .C(\enc_data[40] ), 
         .Z(n8103)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_57_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_68 (.A(n3390), .B(\enc_data[42] ), .Z(n8114)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_68.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n3390), .B(\enc_data[42] ), .C(n7452), 
         .D(\enc_data[40] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3390), .B(\enc_data[42] ), .C(n7309), 
         .D(\enc_data[40] ), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut (.A(n3390), .B(\enc_data[42] ), .C(\enc_data[41] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[32] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(or122_N_483), .B(n3449), .C(or123_N_490), .D(or127_N_503), 
         .Z(n7452)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n7490), .B(or122_N_485), .C(p13), .D(\enc_data[44] ), 
         .Z(n3449)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i3322_2_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), .Z(n5161)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3322_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_112 (.A(p22_N_446), .B(\enc_data[44] ), .C(n4_adj_848), 
         .D(\enc_data[48] ), .Z(n3390)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_112.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n7309), .B(\enc_data[41] ), .C(or122_N_483), 
         .D(n8103), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_113 (.A(\enc_data[41] ), .B(n3449), .C(n8113), .D(or123_N_490), 
         .Z(n7309)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_113.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5161), .B(\enc_data[42] ), .C(n4), .D(n8190), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[44] ), .C(n4_adj_849), .D(\enc_data[43] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_114 (.A(\enc_data[48] ), .B(n8188), .C(n23), .D(n8114), 
         .Z(n4_adj_849)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_114.init = 16'h7350;
    LUT4 i1_4_lut_adj_115 (.A(p13), .B(\enc_data[44] ), .C(n5161), .D(n8191), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_115.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[46] ), .B(\enc_data[45] ), .C(n3501), 
         .D(n8187), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[33] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[34] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[35] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[36] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[37] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[38] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[39] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[40] ), .B(n8113), .C(n7452), 
         .D(\enc_data[43] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[48] ), .B(\enc_data[44] ), .C(\enc_data[43] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), .C(\enc_data[42] ), 
         .D(\enc_data[43] ), .Z(n4_adj_848)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i1_2_lut_rep_140 (.A(\enc_data[47] ), .B(\enc_data[49] ), .Z(n8186)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_140.init = 16'heeee;
    LUT4 i1_3_lut_rep_56_4_lut (.A(\enc_data[47] ), .B(\enc_data[49] ), 
         .C(\enc_data[46] ), .D(n3501), .Z(n8102)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_56_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_141 (.A(\enc_data[47] ), .B(\enc_data[49] ), .Z(n8187)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_2_lut_rep_141.init = 16'h8888;
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[47] ), .B(\enc_data[49] ), .C(n8102), 
         .D(\enc_data[45] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(202[11] 203[24])
    defparam xh_I_0_4_lut_4_lut.init = 16'h525a;
    LUT4 i1_2_lut_rep_142 (.A(\enc_data[41] ), .B(\enc_data[40] ), .Z(n8188)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_142.init = 16'h8888;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[40] ), .B(\enc_data[41] ), 
         .C(\enc_data[43] ), .D(\enc_data[42] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 xg_I_0_4_lut_4_lut (.A(n3501), .B(\enc_data[46] ), .C(n8186), 
         .D(\enc_data[45] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 i1_2_lut_rep_144 (.A(\enc_data[48] ), .B(\enc_data[44] ), .Z(n8190)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_144.init = 16'heeee;
    LUT4 i5658_2_lut_rep_145 (.A(\enc_data[42] ), .B(\enc_data[43] ), .Z(n8191)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5658_2_lut_rep_145.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(\enc_data[42] ), .B(\enc_data[43] ), 
         .C(\enc_data[44] ), .D(\enc_data[48] ), .Z(n7490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(\enc_data[48] ), .B(\enc_data[44] ), 
         .C(\enc_data[40] ), .D(\enc_data[41] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'h8000;
    PFUMX i6070 (.BLUT(n8218), .ALUT(n8219), .C0(\enc_data[40] ), .Z(or122_N_485));
    PFUMX i6068 (.BLUT(n8215), .ALUT(n8216), .C0(\enc_data[46] ), .Z(n3501));
    
endmodule
//
// Verilog Description of module deserializer
//

module deserializer (sclk, sclk_enable_231, data_valid, LED_c, bit_slip_N_318, 
            enc_data, rx_rdy, rbyteclk_N_428, buf_clk, GND_net, buf_dataini, 
            clk_int);
    output sclk;
    input sclk_enable_231;
    output data_valid;
    output LED_c;
    output bit_slip_N_318;
    output [49:0]enc_data;
    output rx_rdy;
    output rbyteclk_N_428;
    input buf_clk;
    input GND_net;
    input [4:0]buf_dataini;
    input clk_int;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(40[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(68[12:19])
    wire [49:0]q50_buf;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(60[12:19])
    
    wire n8183, n2666, n2664;
    wire [19:0]n2313;
    
    wire n2709, n7756, n2710, n2662, n2660, n2658;
    wire [39:0]q40_buf;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(59[12:19])
    wire [7:0]n521;
    
    wire n2564, n2656;
    wire [39:0]n2334;
    
    wire n2655;
    wire [39:0]q_tmp;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(61[12:17])
    
    wire n7717, bit_slip_N_312;
    wire [39:0]n1586;
    
    wire n2595;
    wire [2:0]hold_slip;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(71[12:21])
    
    wire n8136;
    wire [2:0]n1;
    
    wire n7372, n12, n13, n2605, n12_adj_846, n8_adj_847, n7613, 
        n2729, n2730, n10, n16, n7559, n2727, n2728, n2725, 
        n2726, sclk_enable_184, n2565, n2568, n2607, n2707, n2708, 
        n8134;
    wire [3:0]lnk_trnd_buf;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(70[12:24])
    
    wire sclk_enable_224, n2723, n2724, n7, n2713, n2714, n2617, 
        n2711, n2712, n2619, n2629, n2631, n2641, n2672, n2674, 
        n2676, n2678, n2680, n2682, n2688, n2690, n2692, n2694, 
        n2696, n2698, n2704, n2706, n2720, n2722, n2671, n2673, 
        n2687, sclk_enable_106;
    wire [2:0]n673;
    
    wire n3744, n3743, n3742, n3741, n2689, n2703, n2643, n2705, 
        n2596, sclk_enable_186, n2597, n2599, sclk_enable_188, sclk_enable_190, 
        n2606, n2608, n2609, n2611, n2618, n2620, n2621, n2623, 
        n2630, n2632, n2633, n2635, n2642, n2644, n2645, n2647, 
        n2719, n2659, n2721, n2697, n2661, n2663, n2695, n2665, 
        n2675, n2693, n2677, n2679, n2691, n2681, sclk_enable_227, 
        n2657, bit_slip, n7354;
    
    FD1P3IX q50_buf__i9 (.D(n2666), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i9.GSR = "ENABLED";
    FD1P3IX q50_buf__i8 (.D(n2664), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i8.GSR = "ENABLED";
    PFUMX i921 (.BLUT(n2313[13]), .ALUT(n2709), .C0(n7756), .Z(n2710));
    FD1P3IX q50_buf__i7 (.D(n2662), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i7.GSR = "ENABLED";
    FD1P3IX q50_buf__i6 (.D(n2660), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i6.GSR = "ENABLED";
    FD1P3IX q50_buf__i5 (.D(n2658), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i5.GSR = "ENABLED";
    LUT4 i787_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n521[3]), .Z(n2564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i787_3_lut.init = 16'hcaca;
    FD1P3IX q50_buf__i4 (.D(n2656), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i4.GSR = "ENABLED";
    FD1P3IX q50_buf__i3 (.D(n2334[1]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i3.GSR = "ENABLED";
    FD1P3IX q50_buf__i2 (.D(n2334[0]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i2.GSR = "ENABLED";
    LUT4 i867_3_lut (.A(n2655), .B(q40_buf[2]), .C(n521[4]), .Z(n2656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i867_3_lut.init = 16'hcaca;
    LUT4 i866_3_lut (.A(q_tmp[4]), .B(q40_buf[0]), .C(n521[3]), .Z(n2655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i866_3_lut.init = 16'hcaca;
    LUT4 i865_3_lut (.A(q_tmp[3]), .B(q40_buf[1]), .C(n521[4]), .Z(n2334[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i865_3_lut.init = 16'hcaca;
    LUT4 i790_3_lut (.A(q_tmp[2]), .B(q40_buf[0]), .C(n521[4]), .Z(n2334[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i790_3_lut.init = 16'hcaca;
    LUT4 i5934_2_lut (.A(n521[3]), .B(n521[2]), .Z(n7717)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i5934_2_lut.init = 16'heeee;
    LUT4 mux_228_i1_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(bit_slip_N_312), 
         .Z(n1586[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i1_3_lut.init = 16'hcaca;
    LUT4 i806_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n521[3]), .Z(n2595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i806_3_lut.init = 16'hcaca;
    LUT4 mux_228_i2_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(bit_slip_N_312), 
         .Z(n1586[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i2_3_lut.init = 16'hcaca;
    FD1S3IX hold_slip__i0 (.D(n1[0]), .CK(sclk), .CD(n8136), .Q(hold_slip[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam hold_slip__i0.GSR = "ENABLED";
    FD1P3IX q50_buf__i1 (.D(q_tmp[1]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i1.GSR = "ENABLED";
    PFUMX i21 (.BLUT(n7372), .ALUT(n12), .C0(q50_buf[6]), .Z(n13));
    LUT4 i816_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n521[3]), .Z(n2605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i816_3_lut.init = 16'hcaca;
    LUT4 mux_228_i9_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(bit_slip_N_312), 
         .Z(n1586[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i9_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(q50_buf[8]), .B(q50_buf[2]), .C(q50_buf[3]), .D(q50_buf[4]), 
         .Z(n12_adj_846)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(q50_buf[7]), .B(q50_buf[5]), .Z(n8_adj_847)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i5726_2_lut (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n7613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5726_2_lut.init = 16'heeee;
    PFUMX i941 (.BLUT(n2313[19]), .ALUT(n2729), .C0(n7756), .Z(n2730));
    LUT4 i7_4_lut (.A(q50_buf[3]), .B(q50_buf[4]), .C(q50_buf[2]), .D(n10), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i7_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_110 (.A(q50_buf[9]), .B(q50_buf[0]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i1_2_lut_adj_110.init = 16'h8888;
    LUT4 i5672_2_lut (.A(q50_buf[5]), .B(q50_buf[8]), .Z(n7559)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5672_2_lut.init = 16'heeee;
    PFUMX i939 (.BLUT(n2313[18]), .ALUT(n2727), .C0(n7756), .Z(n2728));
    PFUMX i937 (.BLUT(n2313[17]), .ALUT(n2725), .C0(n7756), .Z(n2726));
    FD1P3AX q_tmp_i0_i0 (.D(n2565), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i0.GSR = "ENABLED";
    FD1S3IX q_valid_65 (.D(LED_c), .CK(sclk), .CD(n2568), .Q(data_valid));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_valid_65.GSR = "ENABLED";
    LUT4 i818_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n521[3]), .Z(n2607)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i818_3_lut.init = 16'hcaca;
    PFUMX i919 (.BLUT(n2313[12]), .ALUT(n2707), .C0(n7756), .Z(n2708));
    LUT4 mux_228_i10_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(bit_slip_N_312), 
         .Z(n1586[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i10_3_lut.init = 16'hcaca;
    FD1S3AX counter_FSM_i1 (.D(n8134), .CK(sclk), .Q(bit_slip_N_318));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i1.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i0 (.D(n13), .SP(sclk_enable_224), .CK(sclk), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam lnk_trnd_buf_i0_i0.GSR = "ENABLED";
    FD1P3IX q50_buf__i10 (.D(q_tmp[8]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i10.GSR = "ENABLED";
    PFUMX i935 (.BLUT(n2313[16]), .ALUT(n2723), .C0(n7756), .Z(n2724));
    LUT4 i4_4_lut (.A(n7), .B(hold_slip[1]), .C(hold_slip[2]), .D(n8136), 
         .Z(sclk_enable_224)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_2_lut (.A(bit_slip_N_318), .B(hold_slip[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    PFUMX i925 (.BLUT(n2313[15]), .ALUT(n2713), .C0(n7756), .Z(n2714));
    LUT4 i828_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n521[3]), .Z(n2617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i828_3_lut.init = 16'hcaca;
    LUT4 mux_228_i17_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(bit_slip_N_312), 
         .Z(n1586[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i17_3_lut.init = 16'hcaca;
    PFUMX i923 (.BLUT(n2313[14]), .ALUT(n2711), .C0(n7756), .Z(n2712));
    LUT4 i830_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n521[3]), .Z(n2619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i830_3_lut.init = 16'hcaca;
    LUT4 mux_228_i18_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(bit_slip_N_312), 
         .Z(n1586[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i18_3_lut.init = 16'hcaca;
    LUT4 i840_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n521[3]), .Z(n2629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i840_3_lut.init = 16'hcaca;
    LUT4 mux_228_i25_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(bit_slip_N_312), 
         .Z(n1586[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i25_3_lut.init = 16'hcaca;
    LUT4 i842_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n521[3]), .Z(n2631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i842_3_lut.init = 16'hcaca;
    LUT4 mux_228_i26_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(bit_slip_N_312), 
         .Z(n1586[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i26_3_lut.init = 16'hcaca;
    LUT4 i852_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n521[3]), .Z(n2641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i852_3_lut.init = 16'hcaca;
    LUT4 mux_228_i33_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(bit_slip_N_312), 
         .Z(n1586[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i33_3_lut.init = 16'hcaca;
    LUT4 i879_3_lut (.A(q_tmp[10]), .B(q40_buf[8]), .C(n521[4]), .Z(n2334[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i879_3_lut.init = 16'hcaca;
    FD1P3IX q50_buf__i11 (.D(q_tmp[9]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i11.GSR = "ENABLED";
    FD1P3IX q50_buf__i12 (.D(n2334[8]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i12.GSR = "ENABLED";
    FD1P3IX q50_buf__i13 (.D(n2334[9]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i13.GSR = "ENABLED";
    FD1P3IX q50_buf__i14 (.D(n2672), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i14.GSR = "ENABLED";
    FD1P3IX q50_buf__i15 (.D(n2674), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i15.GSR = "ENABLED";
    FD1P3IX q50_buf__i16 (.D(n2676), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i16.GSR = "ENABLED";
    FD1P3IX q50_buf__i17 (.D(n2678), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i17.GSR = "ENABLED";
    FD1P3IX q50_buf__i18 (.D(n2680), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i18.GSR = "ENABLED";
    FD1P3IX q50_buf__i19 (.D(n2682), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i19.GSR = "ENABLED";
    FD1P3IX q50_buf__i20 (.D(q_tmp[16]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i20.GSR = "ENABLED";
    FD1P3IX q50_buf__i21 (.D(q_tmp[17]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i21.GSR = "ENABLED";
    FD1P3IX q50_buf__i22 (.D(n2334[16]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i22.GSR = "ENABLED";
    FD1P3IX q50_buf__i23 (.D(n2334[17]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i23.GSR = "ENABLED";
    FD1P3IX q50_buf__i24 (.D(n2688), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i24.GSR = "ENABLED";
    FD1P3IX q50_buf__i25 (.D(n2690), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i25.GSR = "ENABLED";
    FD1P3IX q50_buf__i26 (.D(n2692), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i26.GSR = "ENABLED";
    FD1P3IX q50_buf__i27 (.D(n2694), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i27.GSR = "ENABLED";
    FD1P3IX q50_buf__i28 (.D(n2696), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i28.GSR = "ENABLED";
    FD1P3IX q50_buf__i29 (.D(n2698), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i29.GSR = "ENABLED";
    FD1P3IX q50_buf__i30 (.D(q_tmp[24]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i30.GSR = "ENABLED";
    FD1P3IX q50_buf__i31 (.D(q_tmp[25]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i31.GSR = "ENABLED";
    FD1P3IX q50_buf__i32 (.D(n2334[24]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i32.GSR = "ENABLED";
    FD1P3IX q50_buf__i33 (.D(n2334[25]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i33.GSR = "ENABLED";
    FD1P3IX q50_buf__i34 (.D(n2704), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i34.GSR = "ENABLED";
    FD1P3IX q50_buf__i35 (.D(n2706), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i35.GSR = "ENABLED";
    FD1P3IX q50_buf__i36 (.D(n2708), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i36.GSR = "ENABLED";
    FD1P3IX q50_buf__i37 (.D(n2710), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i37.GSR = "ENABLED";
    FD1P3IX q50_buf__i38 (.D(n2712), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i38.GSR = "ENABLED";
    FD1P3IX q50_buf__i39 (.D(n2714), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i39.GSR = "ENABLED";
    FD1P3IX q50_buf__i40 (.D(q_tmp[32]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[40])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i40.GSR = "ENABLED";
    FD1P3IX q50_buf__i41 (.D(q_tmp[33]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[41])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i41.GSR = "ENABLED";
    FD1P3IX q50_buf__i42 (.D(n2334[32]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[42])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i42.GSR = "ENABLED";
    FD1P3IX q50_buf__i43 (.D(n2334[33]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[43])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i43.GSR = "ENABLED";
    FD1P3IX q50_buf__i44 (.D(n2720), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[44])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i44.GSR = "ENABLED";
    FD1P3IX q50_buf__i45 (.D(n2722), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[45])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i45.GSR = "ENABLED";
    FD1P3IX q50_buf__i46 (.D(n2724), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[46])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i46.GSR = "ENABLED";
    FD1P3IX q50_buf__i47 (.D(n2726), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i47.GSR = "ENABLED";
    FD1P3IX q50_buf__i48 (.D(n2728), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[48])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i48.GSR = "ENABLED";
    FD1P3IX q50_buf__i49 (.D(n2730), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[49])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i49.GSR = "ENABLED";
    LUT4 i881_3_lut (.A(q_tmp[11]), .B(q40_buf[9]), .C(n521[4]), .Z(n2334[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i881_3_lut.init = 16'hcaca;
    LUT4 i883_3_lut (.A(n2671), .B(q40_buf[10]), .C(n521[4]), .Z(n2672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i883_3_lut.init = 16'hcaca;
    LUT4 i882_3_lut (.A(q_tmp[12]), .B(q40_buf[8]), .C(n521[3]), .Z(n2671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i882_3_lut.init = 16'hcaca;
    LUT4 i885_3_lut (.A(n2673), .B(q40_buf[11]), .C(n521[4]), .Z(n2674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i885_3_lut.init = 16'hcaca;
    LUT4 i884_3_lut (.A(q_tmp[13]), .B(q40_buf[9]), .C(n521[3]), .Z(n2673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i884_3_lut.init = 16'hcaca;
    LUT4 i895_3_lut (.A(q_tmp[18]), .B(q40_buf[16]), .C(n521[4]), .Z(n2334[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i895_3_lut.init = 16'hcaca;
    LUT4 i897_3_lut (.A(q_tmp[19]), .B(q40_buf[17]), .C(n521[4]), .Z(n2334[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i897_3_lut.init = 16'hcaca;
    LUT4 i899_3_lut (.A(n2687), .B(q40_buf[18]), .C(n521[4]), .Z(n2688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i899_3_lut.init = 16'hcaca;
    LUT4 i898_3_lut (.A(q_tmp[20]), .B(q40_buf[16]), .C(n521[3]), .Z(n2687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i898_3_lut.init = 16'hcaca;
    FD1P3IX hold_slip__i1 (.D(n673[1]), .SP(sclk_enable_106), .CD(n8136), 
            .CK(sclk), .Q(hold_slip[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam hold_slip__i1.GSR = "ENABLED";
    FD1P3IX hold_slip__i2 (.D(n673[2]), .SP(sclk_enable_106), .CD(n8136), 
            .CK(sclk), .Q(hold_slip[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam hold_slip__i2.GSR = "ENABLED";
    FD1S3IX counter_FSM_i5 (.D(sclk_enable_184), .CK(sclk), .CD(n3744), 
            .Q(n521[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i5.GSR = "ENABLED";
    FD1S3IX counter_FSM_i4 (.D(sclk_enable_184), .CK(sclk), .CD(n3743), 
            .Q(n521[3]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i4.GSR = "ENABLED";
    FD1S3IX counter_FSM_i3 (.D(sclk_enable_184), .CK(sclk), .CD(n3742), 
            .Q(n521[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i3.GSR = "ENABLED";
    FD1S3IX q__i0 (.D(q50_buf[0]), .CK(sclk), .CD(n3741), .Q(enc_data[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i0.GSR = "ENABLED";
    LUT4 i901_3_lut (.A(n2689), .B(q40_buf[19]), .C(n521[4]), .Z(n2690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i901_3_lut.init = 16'hcaca;
    LUT4 i900_3_lut (.A(q_tmp[21]), .B(q40_buf[17]), .C(n521[3]), .Z(n2689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i900_3_lut.init = 16'hcaca;
    LUT4 i911_3_lut (.A(q_tmp[26]), .B(q40_buf[24]), .C(n521[4]), .Z(n2334[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i911_3_lut.init = 16'hcaca;
    LUT4 i913_3_lut (.A(q_tmp[27]), .B(q40_buf[25]), .C(n521[4]), .Z(n2334[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i913_3_lut.init = 16'hcaca;
    LUT4 i915_3_lut (.A(n2703), .B(q40_buf[26]), .C(n521[4]), .Z(n2704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i915_3_lut.init = 16'hcaca;
    LUT4 i854_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n521[3]), .Z(n2643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i854_3_lut.init = 16'hcaca;
    LUT4 i914_3_lut (.A(q_tmp[28]), .B(q40_buf[24]), .C(n521[3]), .Z(n2703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i914_3_lut.init = 16'hcaca;
    LUT4 i917_3_lut (.A(n2705), .B(q40_buf[27]), .C(n521[4]), .Z(n2706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i917_3_lut.init = 16'hcaca;
    LUT4 i916_3_lut (.A(q_tmp[29]), .B(q40_buf[25]), .C(n521[3]), .Z(n2705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i916_3_lut.init = 16'hcaca;
    LUT4 i927_3_lut (.A(q_tmp[34]), .B(q40_buf[32]), .C(n521[4]), .Z(n2334[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i927_3_lut.init = 16'hcaca;
    LUT4 mux_228_i34_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(bit_slip_N_312), 
         .Z(n1586[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i34_3_lut.init = 16'hcaca;
    LUT4 i929_3_lut (.A(q_tmp[35]), .B(q40_buf[33]), .C(n521[4]), .Z(n2334[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i929_3_lut.init = 16'hcaca;
    FD1P3AX q_tmp_i0_i1 (.D(n2596), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i2 (.D(n2597), .SP(sclk_enable_186), .CK(sclk), .Q(q_tmp[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i3 (.D(n2599), .SP(sclk_enable_186), .CK(sclk), .Q(q_tmp[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i4 (.D(n1586[4]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i5 (.D(n1586[5]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i6 (.D(q40_buf[6]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i7 (.D(q40_buf[7]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i8 (.D(n2606), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i9 (.D(n2608), .SP(sclk_enable_184), .CK(sclk), .Q(q_tmp[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i10 (.D(n2609), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i11 (.D(n2611), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i12 (.D(n1586[12]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i13 (.D(n1586[13]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i14 (.D(q40_buf[14]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i15 (.D(q40_buf[15]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i16 (.D(n2618), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i17 (.D(n2620), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i18 (.D(n2621), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i19 (.D(n2623), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i20 (.D(n1586[20]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i21 (.D(n1586[21]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i22 (.D(q40_buf[22]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i23 (.D(q40_buf[23]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i24 (.D(n2630), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i25 (.D(n2632), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i26 (.D(n2633), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i27 (.D(n2635), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i28 (.D(n1586[28]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i29 (.D(n1586[29]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i30 (.D(q40_buf[30]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i31 (.D(q40_buf[31]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i32 (.D(n2642), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i33 (.D(n2644), .SP(sclk_enable_184), .CK(sclk), 
            .Q(q_tmp[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i34 (.D(n2645), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i35 (.D(n2647), .SP(sclk_enable_186), .CK(sclk), 
            .Q(q_tmp[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i36 (.D(n1586[36]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i37 (.D(n1586[37]), .SP(sclk_enable_188), .CK(sclk), 
            .Q(q_tmp[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i38 (.D(q40_buf[38]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX q_tmp_i0_i39 (.D(q40_buf[39]), .SP(sclk_enable_190), .CK(sclk), 
            .Q(q_tmp[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q_tmp_i0_i39.GSR = "ENABLED";
    FD1S3IX q__i1 (.D(q50_buf[1]), .CK(sclk), .CD(n3741), .Q(enc_data[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i1.GSR = "ENABLED";
    LUT4 i931_3_lut (.A(n2719), .B(q40_buf[34]), .C(n521[4]), .Z(n2720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i931_3_lut.init = 16'hcaca;
    LUT4 i870_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(n521[4]), .Z(n2659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i870_3_lut.init = 16'hcaca;
    LUT4 i930_3_lut (.A(q_tmp[36]), .B(q40_buf[32]), .C(n521[3]), .Z(n2719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i930_3_lut.init = 16'hcaca;
    LUT4 mux_656_i1_3_lut (.A(q_tmp[6]), .B(q40_buf[0]), .C(n521[2]), 
         .Z(n2313[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i1_3_lut.init = 16'hcaca;
    LUT4 i933_3_lut (.A(n2721), .B(q40_buf[35]), .C(n521[4]), .Z(n2722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i933_3_lut.init = 16'hcaca;
    LUT4 i932_3_lut (.A(q_tmp[37]), .B(q40_buf[33]), .C(n521[3]), .Z(n2721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i932_3_lut.init = 16'hcaca;
    PFUMX i909 (.BLUT(n2313[11]), .ALUT(n2697), .C0(n7756), .Z(n2698));
    LUT4 i343_2_lut (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n673[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i343_2_lut.init = 16'h6666;
    LUT4 i872_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(n521[4]), .Z(n2661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i872_3_lut.init = 16'hcaca;
    LUT4 mux_656_i2_3_lut (.A(q_tmp[7]), .B(q40_buf[1]), .C(n521[2]), 
         .Z(n2313[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i2_3_lut.init = 16'hcaca;
    LUT4 i350_3_lut (.A(hold_slip[2]), .B(hold_slip[1]), .C(hold_slip[0]), 
         .Z(n673[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i350_3_lut.init = 16'h6a6a;
    LUT4 i1907_1_lut (.A(n521[3]), .Z(n3744)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1907_1_lut.init = 16'h5555;
    LUT4 i1906_1_lut (.A(n521[2]), .Z(n3743)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1906_1_lut.init = 16'h5555;
    LUT4 i1905_1_lut (.A(bit_slip_N_312), .Z(n3742)) /* synthesis lut_function=(!(A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1905_1_lut.init = 16'h5555;
    LUT4 i5925_2_lut (.A(LED_c), .B(rx_rdy), .Z(n3741)) /* synthesis lut_function=(!(A (B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(105[17] 178[24])
    defparam i5925_2_lut.init = 16'h7777;
    LUT4 i874_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(n521[4]), .Z(n2663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i874_3_lut.init = 16'hcaca;
    LUT4 mux_656_i3_3_lut (.A(q40_buf[0]), .B(q40_buf[2]), .C(n521[2]), 
         .Z(n2313[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i3_3_lut.init = 16'hcaca;
    PFUMX i907 (.BLUT(n2313[10]), .ALUT(n2695), .C0(n7756), .Z(n2696));
    LUT4 i876_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(n521[4]), .Z(n2665)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i876_3_lut.init = 16'hcaca;
    LUT4 mux_656_i4_3_lut (.A(q40_buf[1]), .B(q40_buf[3]), .C(n521[2]), 
         .Z(n2313[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i4_3_lut.init = 16'hcaca;
    LUT4 i886_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(n521[4]), .Z(n2675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i886_3_lut.init = 16'hcaca;
    PFUMX i905 (.BLUT(n2313[9]), .ALUT(n2693), .C0(n7756), .Z(n2694));
    LUT4 mux_656_i5_3_lut (.A(q_tmp[14]), .B(q40_buf[8]), .C(n521[2]), 
         .Z(n2313[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i5_3_lut.init = 16'hcaca;
    LUT4 i5922_2_lut_4_lut (.A(n521[3]), .B(n521[2]), .C(n8134), .D(bit_slip_N_312), 
         .Z(sclk_enable_190)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam i5922_2_lut_4_lut.init = 16'h0001;
    LUT4 i808_3_lut (.A(n1586[2]), .B(q40_buf[6]), .C(n521[2]), .Z(n2597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i808_3_lut.init = 16'hcaca;
    LUT4 mux_228_i3_3_lut (.A(q40_buf[2]), .B(q40_buf[4]), .C(bit_slip_N_312), 
         .Z(n1586[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i3_3_lut.init = 16'hcaca;
    LUT4 i810_3_lut (.A(n1586[3]), .B(q40_buf[7]), .C(n521[2]), .Z(n2599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i810_3_lut.init = 16'hcaca;
    LUT4 mux_228_i4_3_lut (.A(q40_buf[3]), .B(q40_buf[5]), .C(bit_slip_N_312), 
         .Z(n1586[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i4_3_lut.init = 16'hcaca;
    LUT4 i888_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(n521[4]), .Z(n2677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i888_3_lut.init = 16'hcaca;
    LUT4 mux_228_i5_3_lut (.A(q40_buf[4]), .B(q40_buf[6]), .C(bit_slip_N_312), 
         .Z(n1586[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i5_3_lut.init = 16'hcaca;
    LUT4 mux_228_i6_3_lut (.A(q40_buf[5]), .B(q40_buf[7]), .C(bit_slip_N_312), 
         .Z(n1586[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i6_3_lut.init = 16'hcaca;
    LUT4 i820_3_lut (.A(n1586[10]), .B(q40_buf[14]), .C(n521[2]), .Z(n2609)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i820_3_lut.init = 16'hcaca;
    LUT4 mux_656_i6_3_lut (.A(q_tmp[15]), .B(q40_buf[9]), .C(n521[2]), 
         .Z(n2313[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i6_3_lut.init = 16'hcaca;
    LUT4 i890_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(n521[4]), .Z(n2679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i890_3_lut.init = 16'hcaca;
    LUT4 mux_228_i11_3_lut (.A(q40_buf[10]), .B(q40_buf[12]), .C(bit_slip_N_312), 
         .Z(n1586[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i11_3_lut.init = 16'hcaca;
    LUT4 i822_3_lut (.A(n1586[11]), .B(q40_buf[15]), .C(n521[2]), .Z(n2611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i822_3_lut.init = 16'hcaca;
    LUT4 mux_228_i12_3_lut (.A(q40_buf[11]), .B(q40_buf[13]), .C(bit_slip_N_312), 
         .Z(n1586[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i12_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(lnk_trnd_buf[0]), .B(lnk_trnd_buf[3]), .C(lnk_trnd_buf[2]), 
         .D(lnk_trnd_buf[1]), .Z(LED_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(92[17:92])
    defparam i3_4_lut.init = 16'h8000;
    FD1S3IX q__i2 (.D(q50_buf[2]), .CK(sclk), .CD(n3741), .Q(enc_data[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i2.GSR = "ENABLED";
    FD1S3IX q__i3 (.D(q50_buf[3]), .CK(sclk), .CD(n3741), .Q(enc_data[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i3.GSR = "ENABLED";
    FD1S3IX q__i4 (.D(q50_buf[4]), .CK(sclk), .CD(n3741), .Q(enc_data[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i4.GSR = "ENABLED";
    FD1S3IX q__i5 (.D(q50_buf[5]), .CK(sclk), .CD(n3741), .Q(enc_data[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i5.GSR = "ENABLED";
    FD1S3IX q__i6 (.D(q50_buf[6]), .CK(sclk), .CD(n3741), .Q(enc_data[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i6.GSR = "ENABLED";
    FD1S3IX q__i7 (.D(q50_buf[7]), .CK(sclk), .CD(n3741), .Q(enc_data[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i7.GSR = "ENABLED";
    FD1S3IX q__i8 (.D(q50_buf[8]), .CK(sclk), .CD(n3741), .Q(enc_data[8])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i8.GSR = "ENABLED";
    FD1S3IX q__i9 (.D(q50_buf[9]), .CK(sclk), .CD(n3741), .Q(enc_data[9])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i9.GSR = "ENABLED";
    FD1S3IX q__i10 (.D(q50_buf[10]), .CK(sclk), .CD(n3741), .Q(enc_data[10])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i10.GSR = "ENABLED";
    FD1S3IX q__i11 (.D(q50_buf[11]), .CK(sclk), .CD(n3741), .Q(enc_data[11])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i11.GSR = "ENABLED";
    FD1S3IX q__i12 (.D(q50_buf[12]), .CK(sclk), .CD(n3741), .Q(enc_data[12])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i12.GSR = "ENABLED";
    FD1S3IX q__i13 (.D(q50_buf[13]), .CK(sclk), .CD(n3741), .Q(enc_data[13])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i13.GSR = "ENABLED";
    FD1S3IX q__i14 (.D(q50_buf[14]), .CK(sclk), .CD(n3741), .Q(enc_data[14])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i14.GSR = "ENABLED";
    FD1S3IX q__i15 (.D(q50_buf[15]), .CK(sclk), .CD(n3741), .Q(enc_data[15])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i15.GSR = "ENABLED";
    FD1S3IX q__i16 (.D(q50_buf[16]), .CK(sclk), .CD(n3741), .Q(enc_data[16])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i16.GSR = "ENABLED";
    FD1S3IX q__i17 (.D(q50_buf[17]), .CK(sclk), .CD(n3741), .Q(enc_data[17])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i17.GSR = "ENABLED";
    FD1S3IX q__i18 (.D(q50_buf[18]), .CK(sclk), .CD(n3741), .Q(enc_data[18])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i18.GSR = "ENABLED";
    FD1S3IX q__i19 (.D(q50_buf[19]), .CK(sclk), .CD(n3741), .Q(enc_data[19])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i19.GSR = "ENABLED";
    FD1S3IX q__i20 (.D(q50_buf[20]), .CK(sclk), .CD(n3741), .Q(enc_data[20])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i20.GSR = "ENABLED";
    FD1S3IX q__i21 (.D(q50_buf[21]), .CK(sclk), .CD(n3741), .Q(enc_data[21])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i21.GSR = "ENABLED";
    FD1S3IX q__i22 (.D(q50_buf[22]), .CK(sclk), .CD(n3741), .Q(enc_data[22])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i22.GSR = "ENABLED";
    FD1S3IX q__i23 (.D(q50_buf[23]), .CK(sclk), .CD(n3741), .Q(enc_data[23])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i23.GSR = "ENABLED";
    FD1S3IX q__i24 (.D(q50_buf[24]), .CK(sclk), .CD(n3741), .Q(enc_data[24])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i24.GSR = "ENABLED";
    FD1S3IX q__i25 (.D(q50_buf[25]), .CK(sclk), .CD(n3741), .Q(enc_data[25])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i25.GSR = "ENABLED";
    FD1S3IX q__i26 (.D(q50_buf[26]), .CK(sclk), .CD(n3741), .Q(enc_data[26])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i26.GSR = "ENABLED";
    FD1S3IX q__i27 (.D(q50_buf[27]), .CK(sclk), .CD(n3741), .Q(enc_data[27])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i27.GSR = "ENABLED";
    FD1S3IX q__i28 (.D(q50_buf[28]), .CK(sclk), .CD(n3741), .Q(enc_data[28])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i28.GSR = "ENABLED";
    FD1S3IX q__i29 (.D(q50_buf[29]), .CK(sclk), .CD(n3741), .Q(enc_data[29])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i29.GSR = "ENABLED";
    FD1S3IX q__i30 (.D(q50_buf[30]), .CK(sclk), .CD(n3741), .Q(enc_data[30])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i30.GSR = "ENABLED";
    FD1S3IX q__i31 (.D(q50_buf[31]), .CK(sclk), .CD(n3741), .Q(enc_data[31])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i31.GSR = "ENABLED";
    FD1S3IX q__i32 (.D(q50_buf[32]), .CK(sclk), .CD(n3741), .Q(enc_data[32])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i32.GSR = "ENABLED";
    FD1S3IX q__i33 (.D(q50_buf[33]), .CK(sclk), .CD(n3741), .Q(enc_data[33])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i33.GSR = "ENABLED";
    FD1S3IX q__i34 (.D(q50_buf[34]), .CK(sclk), .CD(n3741), .Q(enc_data[34])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i34.GSR = "ENABLED";
    FD1S3IX q__i35 (.D(q50_buf[35]), .CK(sclk), .CD(n3741), .Q(enc_data[35])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i35.GSR = "ENABLED";
    FD1S3IX q__i36 (.D(q50_buf[36]), .CK(sclk), .CD(n3741), .Q(enc_data[36])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i36.GSR = "ENABLED";
    FD1S3IX q__i37 (.D(q50_buf[37]), .CK(sclk), .CD(n3741), .Q(enc_data[37])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i37.GSR = "ENABLED";
    FD1S3IX q__i38 (.D(q50_buf[38]), .CK(sclk), .CD(n3741), .Q(enc_data[38])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i38.GSR = "ENABLED";
    FD1S3IX q__i39 (.D(q50_buf[39]), .CK(sclk), .CD(n3741), .Q(enc_data[39])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i39.GSR = "ENABLED";
    FD1S3IX q__i40 (.D(q50_buf[40]), .CK(sclk), .CD(n3741), .Q(enc_data[40])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i40.GSR = "ENABLED";
    FD1S3IX q__i41 (.D(q50_buf[41]), .CK(sclk), .CD(n3741), .Q(enc_data[41])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i41.GSR = "ENABLED";
    FD1S3IX q__i42 (.D(q50_buf[42]), .CK(sclk), .CD(n3741), .Q(enc_data[42])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i42.GSR = "ENABLED";
    FD1S3IX q__i43 (.D(q50_buf[43]), .CK(sclk), .CD(n3741), .Q(enc_data[43])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i43.GSR = "ENABLED";
    FD1S3IX q__i44 (.D(q50_buf[44]), .CK(sclk), .CD(n3741), .Q(enc_data[44])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i44.GSR = "ENABLED";
    FD1S3IX q__i45 (.D(q50_buf[45]), .CK(sclk), .CD(n3741), .Q(enc_data[45])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i45.GSR = "ENABLED";
    FD1S3IX q__i46 (.D(q50_buf[46]), .CK(sclk), .CD(n3741), .Q(enc_data[46])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i46.GSR = "ENABLED";
    FD1S3IX q__i47 (.D(q50_buf[47]), .CK(sclk), .CD(n3741), .Q(enc_data[47])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i47.GSR = "ENABLED";
    FD1S3IX q__i48 (.D(q50_buf[48]), .CK(sclk), .CD(n3741), .Q(enc_data[48])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i48.GSR = "ENABLED";
    FD1S3IX q__i49 (.D(q50_buf[49]), .CK(sclk), .CD(n3741), .Q(enc_data[49])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q__i49.GSR = "ENABLED";
    FD1S3IX counter_FSM_i2 (.D(bit_slip_N_318), .CK(sclk), .CD(n8134), 
            .Q(bit_slip_N_312));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i2.GSR = "ENABLED";
    LUT4 mux_228_i13_3_lut (.A(q40_buf[12]), .B(q40_buf[14]), .C(bit_slip_N_312), 
         .Z(n1586[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i13_3_lut.init = 16'hcaca;
    LUT4 mux_656_i7_3_lut (.A(q40_buf[8]), .B(q40_buf[10]), .C(n521[2]), 
         .Z(n2313[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i7_3_lut.init = 16'hcaca;
    PFUMX i903 (.BLUT(n2313[8]), .ALUT(n2691), .C0(n7756), .Z(n2692));
    LUT4 mux_228_i14_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(bit_slip_N_312), 
         .Z(n1586[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i14_3_lut.init = 16'hcaca;
    LUT4 i832_3_lut (.A(n1586[18]), .B(q40_buf[22]), .C(n521[2]), .Z(n2621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i832_3_lut.init = 16'hcaca;
    LUT4 mux_228_i19_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(bit_slip_N_312), 
         .Z(n1586[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i19_3_lut.init = 16'hcaca;
    FD1P3AX lnk_trnd_buf_i0_i1 (.D(lnk_trnd_buf[0]), .SP(sclk_enable_224), 
            .CK(sclk), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam lnk_trnd_buf_i0_i1.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i2 (.D(lnk_trnd_buf[1]), .SP(sclk_enable_224), 
            .CK(sclk), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam lnk_trnd_buf_i0_i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i3 (.D(lnk_trnd_buf[2]), .SP(sclk_enable_224), 
            .CK(sclk), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam lnk_trnd_buf_i0_i3.GSR = "ENABLED";
    LUT4 i834_3_lut (.A(n1586[19]), .B(q40_buf[23]), .C(n521[2]), .Z(n2623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i834_3_lut.init = 16'hcaca;
    PFUMX i893 (.BLUT(n2313[7]), .ALUT(n2681), .C0(n7756), .Z(n2682));
    LUT4 i5933_2_lut (.A(n521[4]), .B(n521[3]), .Z(n7756)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i5933_2_lut.init = 16'heeee;
    PFUMX i891 (.BLUT(n2313[6]), .ALUT(n2679), .C0(n7756), .Z(n2680));
    LUT4 mux_228_i20_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(bit_slip_N_312), 
         .Z(n1586[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i20_3_lut.init = 16'hcaca;
    LUT4 mux_228_i21_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(bit_slip_N_312), 
         .Z(n1586[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i21_3_lut.init = 16'hcaca;
    LUT4 i5916_2_lut_rep_90 (.A(rx_rdy), .B(LED_c), .Z(n8136)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(219[20:51])
    defparam i5916_2_lut_rep_90.init = 16'hdddd;
    LUT4 i745_2_lut_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(hold_slip[0]), 
         .D(bit_slip_N_318), .Z(n1[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(219[20:51])
    defparam i745_2_lut_3_lut_4_lut.init = 16'h0f2d;
    LUT4 i310_2_lut_rep_80_3_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_318), 
         .Z(sclk_enable_106)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(219[20:51])
    defparam i310_2_lut_rep_80_3_lut.init = 16'hfdfd;
    LUT4 i2_3_lut_4_lut (.A(rx_rdy), .B(LED_c), .C(bit_slip_N_312), .D(bit_slip_N_318), 
         .Z(sclk_enable_227)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(219[20:51])
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    LUT4 mux_228_i22_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(bit_slip_N_312), 
         .Z(n1586[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i22_3_lut.init = 16'hcaca;
    LUT4 i892_3_lut (.A(q40_buf[13]), .B(q40_buf[15]), .C(n521[4]), .Z(n2681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i892_3_lut.init = 16'hcaca;
    LUT4 mux_656_i8_3_lut (.A(q40_buf[9]), .B(q40_buf[11]), .C(n521[2]), 
         .Z(n2313[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i8_3_lut.init = 16'hcaca;
    LUT4 i902_3_lut (.A(q40_buf[18]), .B(q40_buf[20]), .C(n521[4]), .Z(n2691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i902_3_lut.init = 16'hcaca;
    LUT4 i844_3_lut (.A(n1586[26]), .B(q40_buf[30]), .C(n521[2]), .Z(n2633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i844_3_lut.init = 16'hcaca;
    LUT4 mux_656_i9_3_lut (.A(q_tmp[22]), .B(q40_buf[16]), .C(n521[2]), 
         .Z(n2313[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i9_3_lut.init = 16'hcaca;
    LUT4 mux_228_i27_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(bit_slip_N_312), 
         .Z(n1586[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i27_3_lut.init = 16'hcaca;
    LUT4 i846_3_lut (.A(n1586[27]), .B(q40_buf[31]), .C(n521[2]), .Z(n2635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i846_3_lut.init = 16'hcaca;
    LUT4 mux_228_i28_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(bit_slip_N_312), 
         .Z(n1586[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i28_3_lut.init = 16'hcaca;
    LUT4 mux_228_i29_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(bit_slip_N_312), 
         .Z(n1586[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i29_3_lut.init = 16'hcaca;
    LUT4 mux_228_i30_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(bit_slip_N_312), 
         .Z(n1586[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i30_3_lut.init = 16'hcaca;
    LUT4 i856_3_lut (.A(n1586[34]), .B(q40_buf[38]), .C(n521[2]), .Z(n2645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i856_3_lut.init = 16'hcaca;
    LUT4 mux_228_i35_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(bit_slip_N_312), 
         .Z(n1586[34])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i35_3_lut.init = 16'hcaca;
    LUT4 i858_3_lut (.A(n1586[35]), .B(q40_buf[39]), .C(n521[2]), .Z(n2647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i858_3_lut.init = 16'hcaca;
    LUT4 mux_228_i36_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(bit_slip_N_312), 
         .Z(n1586[35])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i36_3_lut.init = 16'hcaca;
    LUT4 mux_228_i37_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(bit_slip_N_312), 
         .Z(n1586[36])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i37_3_lut.init = 16'hcaca;
    LUT4 mux_228_i38_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(bit_slip_N_312), 
         .Z(n1586[37])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_228_i38_3_lut.init = 16'hcaca;
    LUT4 i869_3_lut (.A(n2657), .B(q40_buf[3]), .C(n521[4]), .Z(n2658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i869_3_lut.init = 16'hcaca;
    LUT4 i868_3_lut (.A(q_tmp[5]), .B(q40_buf[1]), .C(n521[3]), .Z(n2657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i868_3_lut.init = 16'hcaca;
    LUT4 i904_3_lut (.A(q40_buf[19]), .B(q40_buf[21]), .C(n521[4]), .Z(n2693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i904_3_lut.init = 16'hcaca;
    FD1P3AX bit_slip_69 (.D(n7354), .SP(sclk_enable_227), .CK(sclk), .Q(bit_slip));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(213[9] 249[16])
    defparam bit_slip_69.GSR = "ENABLED";
    LUT4 mux_656_i10_3_lut (.A(q_tmp[23]), .B(q40_buf[17]), .C(n521[2]), 
         .Z(n2313[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i10_3_lut.init = 16'hcaca;
    LUT4 i906_3_lut (.A(q40_buf[20]), .B(q40_buf[22]), .C(n521[4]), .Z(n2695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i906_3_lut.init = 16'hcaca;
    PFUMX i889 (.BLUT(n2313[5]), .ALUT(n2677), .C0(n7756), .Z(n2678));
    LUT4 mux_656_i11_3_lut (.A(q40_buf[16]), .B(q40_buf[18]), .C(n521[2]), 
         .Z(n2313[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i11_3_lut.init = 16'hcaca;
    FD1P3IX q50_buf__i0 (.D(q_tmp[0]), .SP(sclk_enable_231), .CD(n8183), 
            .CK(sclk), .Q(q50_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=101, LSE_RLINE=101 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(98[9] 180[16])
    defparam q50_buf__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_111 (.A(n13), .B(sclk_enable_224), .Z(n7354)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_111.init = 16'h4444;
    PFUMX i887 (.BLUT(n2313[4]), .ALUT(n2675), .C0(n7756), .Z(n2676));
    LUT4 i908_3_lut (.A(q40_buf[21]), .B(q40_buf[23]), .C(n521[4]), .Z(n2697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i908_3_lut.init = 16'hcaca;
    LUT4 mux_656_i12_3_lut (.A(q40_buf[17]), .B(q40_buf[19]), .C(n521[2]), 
         .Z(n2313[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i12_3_lut.init = 16'hcaca;
    LUT4 i922_3_lut (.A(q40_buf[28]), .B(q40_buf[30]), .C(n521[4]), .Z(n2711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i922_3_lut.init = 16'hcaca;
    LUT4 mux_656_i15_3_lut (.A(q40_buf[24]), .B(q40_buf[26]), .C(n521[2]), 
         .Z(n2313[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i15_3_lut.init = 16'hcaca;
    LUT4 i918_3_lut (.A(q40_buf[26]), .B(q40_buf[28]), .C(n521[4]), .Z(n2707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i918_3_lut.init = 16'hcaca;
    LUT4 mux_656_i13_3_lut (.A(q_tmp[30]), .B(q40_buf[24]), .C(n521[2]), 
         .Z(n2313[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i13_3_lut.init = 16'hcaca;
    PFUMX i877 (.BLUT(n2313[3]), .ALUT(n2665), .C0(n7756), .Z(n2666));
    LUT4 i924_3_lut (.A(q40_buf[29]), .B(q40_buf[31]), .C(n521[4]), .Z(n2713)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i924_3_lut.init = 16'hcaca;
    PFUMX i875 (.BLUT(n2313[2]), .ALUT(n2663), .C0(n7756), .Z(n2664));
    PFUMX i873 (.BLUT(n2313[1]), .ALUT(n2661), .C0(n7756), .Z(n2662));
    PFUMX i871 (.BLUT(n2313[0]), .ALUT(n2659), .C0(n7756), .Z(n2660));
    LUT4 mux_656_i16_3_lut (.A(q40_buf[25]), .B(q40_buf[27]), .C(n521[2]), 
         .Z(n2313[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i16_3_lut.init = 16'hcaca;
    PFUMX i855 (.BLUT(n1586[33]), .ALUT(n2643), .C0(n7717), .Z(n2644));
    PFUMX i853 (.BLUT(n1586[32]), .ALUT(n2641), .C0(n7717), .Z(n2642));
    LUT4 i934_3_lut (.A(q40_buf[34]), .B(q40_buf[36]), .C(n521[4]), .Z(n2723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i934_3_lut.init = 16'hcaca;
    PFUMX i843 (.BLUT(n1586[25]), .ALUT(n2631), .C0(n7717), .Z(n2632));
    LUT4 mux_656_i17_3_lut (.A(q_tmp[38]), .B(q40_buf[32]), .C(n521[2]), 
         .Z(n2313[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i17_3_lut.init = 16'hcaca;
    PFUMX i841 (.BLUT(n1586[24]), .ALUT(n2629), .C0(n7717), .Z(n2630));
    PFUMX i831 (.BLUT(n1586[17]), .ALUT(n2619), .C0(n7717), .Z(n2620));
    PFUMX i829 (.BLUT(n1586[16]), .ALUT(n2617), .C0(n7717), .Z(n2618));
    PFUMX i819 (.BLUT(n1586[9]), .ALUT(n2607), .C0(n7717), .Z(n2608));
    LUT4 i936_3_lut (.A(q40_buf[35]), .B(q40_buf[37]), .C(n521[4]), .Z(n2725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i936_3_lut.init = 16'hcaca;
    LUT4 mux_656_i18_3_lut (.A(q_tmp[39]), .B(q40_buf[33]), .C(n521[2]), 
         .Z(n2313[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i18_3_lut.init = 16'hcaca;
    LUT4 i938_3_lut (.A(q40_buf[36]), .B(q40_buf[38]), .C(n521[4]), .Z(n2727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i938_3_lut.init = 16'hcaca;
    LUT4 mux_656_i19_3_lut (.A(q40_buf[32]), .B(q40_buf[34]), .C(n521[2]), 
         .Z(n2313[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i19_3_lut.init = 16'hcaca;
    PFUMX i817 (.BLUT(n1586[8]), .ALUT(n2605), .C0(n7717), .Z(n2606));
    LUT4 i940_3_lut (.A(q40_buf[37]), .B(q40_buf[39]), .C(n521[4]), .Z(n2729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i940_3_lut.init = 16'hcaca;
    LUT4 mux_656_i20_3_lut (.A(q40_buf[33]), .B(q40_buf[35]), .C(n521[2]), 
         .Z(n2313[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i20_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(q50_buf[1]), .B(n16), .C(n7559), .D(q50_buf[7]), 
         .Z(n12)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i8_4_lut.init = 16'h0008;
    LUT4 i920_3_lut (.A(q40_buf[27]), .B(q40_buf[29]), .C(n521[4]), .Z(n2709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam i920_3_lut.init = 16'hcaca;
    LUT4 mux_656_i14_3_lut (.A(q_tmp[31]), .B(q40_buf[25]), .C(n521[2]), 
         .Z(n2313[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(106[21] 157[30])
    defparam mux_656_i14_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(q50_buf[1]), .B(n12_adj_846), .C(n8_adj_847), .D(n7613), 
         .Z(n7372)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(223[32] 224[67])
    defparam i6_4_lut.init = 16'h0040;
    PFUMX i807 (.BLUT(n1586[1]), .ALUT(n2595), .C0(n7717), .Z(n2596));
    PFUMX i788 (.BLUT(n1586[0]), .ALUT(n2564), .C0(n7717), .Z(n2565));
    ddrx4 ddrx4_inst (.rbyteclk_N_428(rbyteclk_N_428), .sclk(sclk), .bit_slip(bit_slip), 
          .q40_buf({q40_buf}), .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini({buf_dataini}), 
          .LED_c(LED_c), .clk_int(clk_int), .rx_rdy(rx_rdy), .n8183(n8183), 
          .n525(n521[4]), .sclk_enable_184(sclk_enable_184), .n8134(n8134), 
          .n526(n521[3]), .n527(n521[2]), .sclk_enable_188(sclk_enable_188), 
          .sclk_enable_186(sclk_enable_186), .n2568(n2568)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    
endmodule
//
// Verilog Description of module ddrx4
//

module ddrx4 (rbyteclk_N_428, sclk, bit_slip, q40_buf, buf_clk, GND_net, 
            buf_dataini, LED_c, clk_int, rx_rdy, n8183, n525, sclk_enable_184, 
            n8134, n526, n527, sclk_enable_188, sclk_enable_186, n2568) /* synthesis NGD_DRC_MASK=1 */ ;
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
    output n8183;
    input n525;
    output sclk_enable_184;
    output n8134;
    input n526;
    input n527;
    output sclk_enable_188;
    output sclk_enable_186;
    output n2568;
    
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire eclko /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(39[12:17])
    wire eclki /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(34[12:17])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(40[12:19])
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(68[12:19])
    
    wire rx_reset;
    wire [4:0]dataini_t;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(47[12:21])
    
    wire xstop, dqsdel, locked, freeze_t, uddcntln_t, uddcntln_i, 
        reset_inv, freeze_i;
    
    INV i6136 (.A(sclk), .Z(rbyteclk_N_428));
    IDDRX4B Inst8_IDDRX4B3 (.D(dataini_t[3]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[24]), .Q1(q40_buf[25]), 
            .Q2(q40_buf[26]), .Q3(q40_buf[27]), .Q4(q40_buf[28]), .Q5(q40_buf[29]), 
            .Q6(q40_buf[30]), .Q7(q40_buf[31])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B3.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B2 (.D(dataini_t[2]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[16]), .Q1(q40_buf[17]), 
            .Q2(q40_buf[18]), .Q3(q40_buf[19]), .Q4(q40_buf[20]), .Q5(q40_buf[21]), 
            .Q6(q40_buf[22]), .Q7(q40_buf[23])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B2.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B1 (.D(dataini_t[1]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[8]), .Q1(q40_buf[9]), 
            .Q2(q40_buf[10]), .Q3(q40_buf[11]), .Q4(q40_buf[12]), .Q5(q40_buf[13]), 
            .Q6(q40_buf[14]), .Q7(q40_buf[15])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B1.GSR = "ENABLED";
    IDDRX4B Inst8_IDDRX4B0 (.D(dataini_t[0]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[0]), .Q1(q40_buf[1]), 
            .Q2(q40_buf[2]), .Q3(q40_buf[3]), .Q4(q40_buf[4]), .Q5(q40_buf[5]), 
            .Q6(q40_buf[6]), .Q7(q40_buf[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B0.GSR = "ENABLED";
    CLKDIVC Inst7_CLKDIVC (.RST(rx_reset), .CLKI(eclko), .ALIGNWD(bit_slip), 
            .CDIVX(sclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst7_CLKDIVC.GSR = "DISABLED";
    defparam Inst7_CLKDIVC.DIV = "4.0";
    ECLKSYNCA Inst6_ECLKSYNCA (.ECLKI(eclki), .STOP(xstop), .ECLKO(eclko)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    DLLDELC Inst4_DLLDELC (.CLKI(buf_clk), .DQSDEL(dqsdel), .CLKO(eclki)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst4_DLLDELC.DEL_ADJ = "PLUS";
    defparam Inst4_DLLDELC.DEL_VAL = 0;
    DQSDLLC Inst3_DQSDLLC (.CLK(eclko), .RST(GND_net), .UDDCNTLN(uddcntln_t), 
            .FREEZE(freeze_t), .LOCK(locked), .DQSDEL(dqsdel)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst3_DQSDLLC.GSR = "ENABLED";
    defparam Inst3_DQSDLLC.DEL_ADJ = "PLUS";
    defparam Inst3_DQSDLLC.DEL_VAL = 0;
    defparam Inst3_DQSDLLC.LOCK_SENSITIVITY = "LOW";
    defparam Inst3_DQSDLLC.FIN = "375.0";
    defparam Inst3_DQSDLLC.FORCE_MAX_DELAY = "NO";
    DELAYE udel_dataini4 (.A(buf_dataini[4]), .Z(dataini_t[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam udel_dataini4.DEL_MODE = "USER_DEFINED";
    defparam udel_dataini4.DEL_VALUE = "DELAY8";
    DELAYE udel_dataini3 (.A(buf_dataini[3]), .Z(dataini_t[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam udel_dataini3.DEL_MODE = "USER_DEFINED";
    defparam udel_dataini3.DEL_VALUE = "DELAY8";
    DELAYE udel_dataini2 (.A(buf_dataini[2]), .Z(dataini_t[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam udel_dataini2.DEL_MODE = "USER_DEFINED";
    defparam udel_dataini2.DEL_VALUE = "DELAY8";
    DELAYE udel_dataini1 (.A(buf_dataini[1]), .Z(dataini_t[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam udel_dataini1.DEL_MODE = "USER_DEFINED";
    defparam udel_dataini1.DEL_VALUE = "DELAY8";
    DELAYE udel_dataini0 (.A(buf_dataini[0]), .Z(dataini_t[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam udel_dataini0.DEL_MODE = "USER_DEFINED";
    defparam udel_dataini0.DEL_VALUE = "DELAY8";
    AND2 AND2_t1 (.A(LED_c), .B(uddcntln_i), .Z(uddcntln_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(190[15:19])
    INV INV_0 (.A(GND_net), .Z(reset_inv)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    OR2 OR2_t0 (.A(LED_c), .B(freeze_i), .Z(freeze_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(197[14:17])
    IDDRX4B Inst8_IDDRX4B4 (.D(dataini_t[4]), .ECLK(eclko), .SCLK(sclk), 
            .RST(rx_reset), .ALIGNWD(bit_slip), .Q0(q40_buf[32]), .Q1(q40_buf[33]), 
            .Q2(q40_buf[34]), .Q3(q40_buf[35]), .Q4(q40_buf[36]), .Q5(q40_buf[37]), 
            .Q6(q40_buf[38]), .Q7(q40_buf[39])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=24, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=75, LSE_RLINE=75 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/deserializer.vhd(75[18:23])
    defparam Inst8_IDDRX4B4.GSR = "ENABLED";
    rx_sync Inst5_rx_sync (.clk_int(clk_int), .xstop(xstop), .rx_rdy(rx_rdy), 
            .rx_reset(rx_reset), .locked(locked), .freeze_i(freeze_i), 
            .uddcntln_i(uddcntln_i), .reset_inv(reset_inv), .n8183(n8183), 
            .n525(n525), .sclk_enable_184(sclk_enable_184), .n8134(n8134), 
            .n526(n526), .n527(n527), .sclk_enable_188(sclk_enable_188), 
            .sclk_enable_186(sclk_enable_186), .n2568(n2568));   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(307[21:28])
    
endmodule
//
// Verilog Description of module rx_sync
//

module rx_sync (clk_int, xstop, rx_rdy, rx_reset, locked, freeze_i, 
            uddcntln_i, reset_inv, n8183, n525, sclk_enable_184, n8134, 
            n526, n527, sclk_enable_188, sclk_enable_186, n2568);
    input clk_int;
    output xstop;
    output rx_rdy;
    output rx_reset;
    input locked;
    output freeze_i;
    output uddcntln_i;
    input reset_inv;
    output n8183;
    input n525;
    output sclk_enable_184;
    output n8134;
    input n526;
    input n527;
    output sclk_enable_188;
    output sclk_enable_186;
    output n2568;
    
    wire clk_int /* synthesis is_clock=1, SET_AS_NETWORK=clk_int */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(68[12:19])
    wire [5:0]STATE;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(69[12:17])
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(70[12:20])
    
    wire RSTN_I, N_172_I, N_171_I, N_170_I, N_169_I, RX_STOPE_0, 
        RX_STARTE_0_FAST, RX_START_FAST, RX_STARTE_0, LOCK_P1, LOCK_P2, 
        FREEZEE_0;
    wire [2:0]CTRL_CNT;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(74[12:20])
    
    wire CTRL_CNT_N0, N_161_I, CTRL_CNT_N1;
    wire [2:2]CTRL_CNT_FAST;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(78[12:25])
    wire [2:2]CTRL_CNTE_0_FAST;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(79[12:28])
    wire [2:2]CTRL_CNTE_0;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(77[12:23])
    
    wire CTRL_CNT_N1_0_S_0_X0, CTRL_CNT_N1_0_S_0_X1, n12, n8184, n7370, 
        N_118_LI, N_166, UDDCNTLNE_0, N_137, n6564, n7485, n4;
    
    FD1S3BX STATE0_REG_Z106 (.D(STATE_NS[0]), .CK(clk_int), .PD(RSTN_I), 
            .Q(STATE[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(127[23:30])
    defparam STATE0_REG_Z106.GSR = "ENABLED";
    FD1S3DX STATE1_REG_Z108 (.D(STATE_NS[1]), .CK(clk_int), .CD(RSTN_I), 
            .Q(STATE[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(135[23:30])
    defparam STATE1_REG_Z108.GSR = "ENABLED";
    FD1S3DX STAT2_REG_Z110 (.D(N_172_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(143[22:29])
    defparam STAT2_REG_Z110.GSR = "ENABLED";
    FD1S3DX STAT3_REG_Z112 (.D(N_171_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(151[22:29])
    defparam STAT3_REG_Z112.GSR = "ENABLED";
    FD1S3DX STAT4_REG_Z114 (.D(N_170_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(159[22:29])
    defparam STAT4_REG_Z114.GSR = "ENABLED";
    FD1S3DX STAT5_REG_Z116 (.D(N_169_I), .CK(clk_int), .CD(RSTN_I), .Q(STATE[5])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(167[22:29])
    defparam STAT5_REG_Z116.GSR = "ENABLED";
    FD1S3DX RX_STOP_REG_Z118 (.D(RX_STOPE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(xstop)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(175[24:31])
    defparam RX_STOP_REG_Z118.GSR = "ENABLED";
    FD1S3DX RX_START_FAST_REG_Z120 (.D(RX_STARTE_0_FAST), .CK(clk_int), 
            .CD(RSTN_I), .Q(RX_START_FAST)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(183[30:37])
    defparam RX_START_FAST_REG_Z120.GSR = "ENABLED";
    FD1S3DX RX_START_REG_Z122 (.D(RX_STARTE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_rdy)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(191[25:32])
    defparam RX_START_REG_Z122.GSR = "ENABLED";
    FD1S3DX RX_RESET_REG_Z124 (.D(STATE[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(rx_reset)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(199[25:32])
    defparam RX_RESET_REG_Z124.GSR = "ENABLED";
    FD1S3DX LOCK_P2_REG_Z128 (.D(LOCK_P1), .CK(clk_int), .CD(RSTN_I), 
            .Q(LOCK_P2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(215[24:31])
    defparam LOCK_P2_REG_Z128.GSR = "ENABLED";
    FD1S3DX LOCK_P1_REG_Z130 (.D(locked), .CK(clk_int), .CD(RSTN_I), .Q(LOCK_P1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(223[24:31])
    defparam LOCK_P1_REG_Z130.GSR = "ENABLED";
    FD1S3DX FREEZE_REG_Z132 (.D(FREEZEE_0), .CK(clk_int), .CD(RSTN_I), 
            .Q(freeze_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(231[23:30])
    defparam FREEZE_REG_Z132.GSR = "ENABLED";
    FD1P3DX CTRL_CNT0_REG_Z134 (.D(CTRL_CNT_N0), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(239[26:33])
    defparam CTRL_CNT0_REG_Z134.GSR = "ENABLED";
    FD1P3DX CTRL_CNT1_REG_Z136 (.D(CTRL_CNT_N1), .SP(N_161_I), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(248[26:33])
    defparam CTRL_CNT1_REG_Z136.GSR = "ENABLED";
    FD1S3DX CTRL_CNT_FAST2_REG_Z138 (.D(CTRL_CNTE_0_FAST[2]), .CK(clk_int), 
            .CD(RSTN_I), .Q(CTRL_CNT_FAST[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(257[31:38])
    defparam CTRL_CNT_FAST2_REG_Z138.GSR = "ENABLED";
    FD1S3DX CTRL_CNT2_REG_Z140 (.D(CTRL_CNTE_0[2]), .CK(clk_int), .CD(RSTN_I), 
            .Q(CTRL_CNT[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(265[26:33])
    defparam CTRL_CNT2_REG_Z140.GSR = "ENABLED";
    PFUMX CTRL_CNT_N1_0_S_0 (.BLUT(CTRL_CNT_N1_0_S_0_X0), .ALUT(CTRL_CNT_N1_0_S_0_X1), 
          .C0(CTRL_CNT[1]), .Z(CTRL_CNT_N1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(307[21:28])
    LUT4 i5937_4_lut (.A(STATE[0]), .B(locked), .C(n12), .D(LOCK_P2), 
         .Z(STATE_NS[0])) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B (C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(69[12:17])
    defparam i5937_4_lut.init = 16'h2327;
    LUT4 i1_4_lut (.A(RX_START_FAST), .B(n8184), .C(STATE[5]), .D(CTRL_CNT_FAST[2]), 
         .Z(n12)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(69[12:17])
    defparam i1_4_lut.init = 16'h555d;
    LUT4 i1_4_lut_adj_105 (.A(STATE[0]), .B(rx_rdy), .C(n7370), .D(locked), 
         .Z(STATE_NS[1])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(109[12:21])
    defparam i1_4_lut_adj_105.init = 16'hfa10;
    LUT4 i12_4_lut (.A(STATE[2]), .B(STATE[1]), .C(N_118_LI), .D(N_166), 
         .Z(N_172_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(288[17:85])
    defparam i12_4_lut.init = 16'hc0ca;
    FD1S3BX UDDCNTLN_REG_Z104 (.D(UDDCNTLNE_0), .CK(clk_int), .PD(RSTN_I), 
            .Q(uddcntln_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(119[25:32])
    defparam UDDCNTLN_REG_Z104.GSR = "ENABLED";
    INV RSTN_RNIB582 (.A(reset_inv), .Z(RSTN_I)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=21, LSE_RCOL=28, LSE_LLINE=307, LSE_RLINE=307 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/ddrx4.vhd(307[21:28])
    LUT4 i12_4_lut_adj_106 (.A(STATE[3]), .B(STATE[2]), .C(N_118_LI), 
         .D(N_166), .Z(N_171_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(287[17:85])
    defparam i12_4_lut_adj_106.init = 16'hc0ca;
    LUT4 i12_4_lut_adj_107 (.A(STATE[4]), .B(STATE[3]), .C(N_118_LI), 
         .D(N_166), .Z(N_170_I)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(286[17:85])
    defparam i12_4_lut_adj_107.init = 16'hc0ca;
    LUT4 N_137_I_0_4_lut (.A(N_137), .B(STATE[4]), .C(CTRL_CNT[2]), .D(n8184), 
         .Z(N_169_I)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(285[17:36])
    defparam N_137_I_0_4_lut.init = 16'haeaa;
    LUT4 RX_STOPE_0_I_0_3_lut (.A(xstop), .B(STATE[2]), .C(STATE[4]), 
         .Z(RX_STOPE_0)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(315[21:63])
    defparam RX_STOPE_0_I_0_3_lut.init = 16'hcece;
    LUT4 i1_3_lut (.A(STATE[5]), .B(RX_START_FAST), .C(n6564), .Z(RX_STARTE_0_FAST)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_3_lut_adj_108 (.A(STATE[5]), .B(rx_rdy), .C(n6564), .Z(RX_STARTE_0)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_108.init = 16'ha8a8;
    LUT4 FREEZEE_0_I_0_4_lut (.A(freeze_i), .B(STATE[1]), .C(n7485), .D(n4), 
         .Z(FREEZEE_0)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(317[21] 318[54])
    defparam FREEZEE_0_I_0_4_lut.init = 16'heeec;
    LUT4 i1_2_lut (.A(CTRL_CNT[0]), .B(STATE[4]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(265[26:33])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_109 (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .Z(n7485)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(265[26:33])
    defparam i1_2_lut_adj_109.init = 16'hbbbb;
    LUT4 i2_3_lut (.A(STATE[0]), .B(CTRL_CNT_FAST[2]), .C(CTRL_CNT[1]), 
         .Z(N_161_I)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(283[17:74])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 CTRL_CNT_0__I_0_2_lut (.A(CTRL_CNT[0]), .B(STATE[0]), .Z(CTRL_CNT_N1_0_S_0_X0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(331[29:57])
    defparam CTRL_CNT_0__I_0_2_lut.init = 16'h2222;
    LUT4 UDDCNTLNE_0_I_0_2_lut (.A(STATE[2]), .B(uddcntln_i), .Z(UDDCNTLNE_0)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(314[21:48])
    defparam UDDCNTLNE_0_I_0_2_lut.init = 16'h4444;
    LUT4 rx_start_I_0_1_lut_rep_137 (.A(rx_rdy), .Z(n8183)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam rx_start_I_0_1_lut_rep_137.init = 16'h5555;
    LUT4 i1840_1_lut_2_lut_2_lut (.A(rx_rdy), .B(n525), .Z(sclk_enable_184)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i1840_1_lut_2_lut_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut (.A(rx_rdy), .B(LOCK_P2), .C(N_118_LI), .D(STATE[1]), 
         .Z(n7370)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i1_4_lut_4_lut.init = 16'h0d00;
    LUT4 i101_2_lut_rep_88_2_lut (.A(rx_rdy), .B(n525), .Z(n8134)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i101_2_lut_rep_88_2_lut.init = 16'hdddd;
    LUT4 i5929_3_lut_rep_79_4_lut_4_lut (.A(rx_rdy), .B(n526), .C(n527), 
         .D(n525), .Z(sclk_enable_188)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i5929_3_lut_rep_79_4_lut_4_lut.init = 16'h0002;
    LUT4 i5932_2_lut_3_lut_3_lut (.A(rx_rdy), .B(n526), .C(n525), .Z(sclk_enable_186)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i5932_2_lut_3_lut_3_lut.init = 16'h0202;
    LUT4 i791_2_lut_2_lut (.A(rx_rdy), .B(n527), .Z(n2568)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(338[53:67])
    defparam i791_2_lut_2_lut.init = 16'hdddd;
    LUT4 i801_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0_FAST[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(320[29:56])
    defparam i801_3_lut_4_lut.init = 16'h00f8;
    LUT4 i802_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(STATE[0]), .Z(CTRL_CNTE_0[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(320[29:56])
    defparam i802_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(n7485), .D(STATE[5]), 
         .Z(CTRL_CNT_N0)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i1776_3_lut_4_lut (.A(STATE[0]), .B(CTRL_CNT[0]), .C(STATE[5]), 
         .D(CTRL_CNT[2]), .Z(CTRL_CNT_N1_0_S_0_X1)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1776_3_lut_4_lut.init = 16'h1110;
    LUT4 i793_3_lut_3_lut_4_lut (.A(LOCK_P2), .B(locked), .C(STATE[5]), 
         .D(rx_rdy), .Z(N_137)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(215[24:31])
    defparam i793_3_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i794_2_lut_3_lut (.A(LOCK_P2), .B(locked), .C(rx_rdy), .Z(N_166)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(215[24:31])
    defparam i794_2_lut_3_lut.init = 16'h7070;
    LUT4 STATE_NS_I_MB_1_0__I_17_2_lut_rep_138 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .Z(n8184)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(308[21:52])
    defparam STATE_NS_I_MB_1_0__I_17_2_lut_rep_138.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(LOCK_P2), 
         .D(CTRL_CNT[2]), .Z(n6564)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(308[21:52])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 STATE_NS_I_0_191_2_lut_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .C(CTRL_CNT_FAST[2]), .Z(N_118_LI)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/rx_sync.vhd(308[21:52])
    defparam STATE_NS_I_0_191_2_lut_3_lut.init = 16'h0404;
    
endmodule
//
// Verilog Description of module \prng_recv("0111100101111001011110010111100101111001") 
//

module \prng_recv("0111100101111001011110010111100101111001")  (rnd_num, sclk, 
            sclk_enable_230, n8375);
    output [39:0]rnd_num;
    input sclk;
    input sclk_enable_230;
    input n8375;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    
    wire feedback, n6;
    
    FD1P3JX shift_reg_i13 (.D(rnd_num[12]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[13])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i13.GSR = "ENABLED";
    FD1P3JX shift_reg_i4 (.D(rnd_num[3]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i4.GSR = "ENABLED";
    FD1P3JX shift_reg_i12 (.D(rnd_num[11]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[12])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i12.GSR = "ENABLED";
    FD1P3IX shift_reg_i1 (.D(rnd_num[0]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i1.GSR = "ENABLED";
    FD1P3IX shift_reg_i2 (.D(rnd_num[1]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i2.GSR = "ENABLED";
    FD1P3IX shift_reg_i7 (.D(rnd_num[6]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i7.GSR = "ENABLED";
    FD1P3IX shift_reg_i9 (.D(rnd_num[8]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i9.GSR = "ENABLED";
    FD1P3IX shift_reg_i10 (.D(rnd_num[9]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i10.GSR = "ENABLED";
    FD1P3IX shift_reg_i15 (.D(rnd_num[14]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i15.GSR = "ENABLED";
    FD1P3IX shift_reg_i17 (.D(rnd_num[16]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i17.GSR = "ENABLED";
    FD1P3IX shift_reg_i18 (.D(rnd_num[17]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i18.GSR = "ENABLED";
    FD1P3IX shift_reg_i23 (.D(rnd_num[22]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i23.GSR = "ENABLED";
    FD1P3IX shift_reg_i25 (.D(rnd_num[24]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i25.GSR = "ENABLED";
    FD1P3IX shift_reg_i26 (.D(rnd_num[25]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i26.GSR = "ENABLED";
    FD1P3IX shift_reg_i31 (.D(rnd_num[30]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i31.GSR = "ENABLED";
    FD1P3IX shift_reg_i33 (.D(rnd_num[32]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i33.GSR = "ENABLED";
    FD1P3IX shift_reg_i34 (.D(rnd_num[33]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i34.GSR = "ENABLED";
    FD1P3IX shift_reg_i39 (.D(rnd_num[38]), .SP(sclk_enable_230), .CD(n8375), 
            .CK(sclk), .Q(rnd_num[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i39.GSR = "ENABLED";
    FD1P3JX shift_reg_i11 (.D(rnd_num[10]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[11])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i11.GSR = "ENABLED";
    FD1P3JX shift_reg_i38 (.D(rnd_num[37]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[38])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i38.GSR = "ENABLED";
    FD1P3JX shift_reg_i37 (.D(rnd_num[36]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[37])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i37.GSR = "ENABLED";
    FD1P3JX shift_reg_i36 (.D(rnd_num[35]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[36])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i36.GSR = "ENABLED";
    FD1P3JX shift_reg_i35 (.D(rnd_num[34]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[35])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i35.GSR = "ENABLED";
    FD1P3JX shift_reg_i32 (.D(rnd_num[31]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[32])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i32.GSR = "ENABLED";
    FD1P3JX shift_reg_i30 (.D(rnd_num[29]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[30])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i30.GSR = "ENABLED";
    FD1P3JX shift_reg_i29 (.D(rnd_num[28]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[29])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i29.GSR = "ENABLED";
    FD1P3JX shift_reg_i28 (.D(rnd_num[27]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[28])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i28.GSR = "ENABLED";
    FD1P3JX shift_reg_i27 (.D(rnd_num[26]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[27])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i27.GSR = "ENABLED";
    FD1P3JX shift_reg_i24 (.D(rnd_num[23]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[24])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i24.GSR = "ENABLED";
    FD1P3JX shift_reg_i22 (.D(rnd_num[21]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[22])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i22.GSR = "ENABLED";
    FD1P3JX shift_reg_i21 (.D(rnd_num[20]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[21])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i21.GSR = "ENABLED";
    FD1P3JX shift_reg_i20 (.D(rnd_num[19]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[20])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i20.GSR = "ENABLED";
    FD1P3JX shift_reg_i19 (.D(rnd_num[18]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[19])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i19.GSR = "ENABLED";
    FD1P3JX shift_reg_i16 (.D(rnd_num[15]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[16])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i16.GSR = "ENABLED";
    FD1P3JX shift_reg_i14 (.D(rnd_num[13]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[14])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i14.GSR = "ENABLED";
    FD1P3JX shift_reg_i3 (.D(rnd_num[2]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i3.GSR = "ENABLED";
    FD1P3JX shift_reg_i0 (.D(feedback), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i0.GSR = "ENABLED";
    FD1P3JX shift_reg_i8 (.D(rnd_num[7]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[8])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i8.GSR = "ENABLED";
    FD1P3JX shift_reg_i6 (.D(rnd_num[5]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(rnd_num[21]), .B(rnd_num[0]), .C(rnd_num[39]), .D(n6), 
         .Z(feedback)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(68[17:101])
    defparam i4_4_lut.init = 16'h6996;
    FD1P3JX shift_reg_i5 (.D(rnd_num[4]), .SP(sclk_enable_230), .PD(n8375), 
            .CK(sclk), .Q(rnd_num[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=124, LSE_RLINE=124 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(50[9] 64[16])
    defparam shift_reg_i5.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(rnd_num[1]), .B(rnd_num[31]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/prng_recv.vhd(68[17:101])
    defparam i1_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module dec_8b10b_U2
//

module dec_8b10b_U2 (\dec_data[8] , sclk, \enc_data[12] , \enc_data[10] , 
            \enc_data[11] , rbyteclk_N_428, \enc_data[14] , \enc_data[13] , 
            \enc_data[18] , \enc_data[19] , \enc_data[15] , \enc_data[17] , 
            \enc_data[16] , \dec_data[9] , \dec_data[10] , \dec_data[11] , 
            \dec_data[12] , \dec_data[13] , \dec_data[14] , \dec_data[15] );
    output \dec_data[8] ;
    input sclk;
    input \enc_data[12] ;
    input \enc_data[10] ;
    input \enc_data[11] ;
    input rbyteclk_N_428;
    input \enc_data[14] ;
    input \enc_data[13] ;
    input \enc_data[18] ;
    input \enc_data[19] ;
    input \enc_data[15] ;
    input \enc_data[17] ;
    input \enc_data[16] ;
    output \dec_data[9] ;
    output \dec_data[10] ;
    output \dec_data[11] ;
    output \dec_data[12] ;
    output \dec_data[13] ;
    output \dec_data[14] ;
    output \dec_data[15] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, n3326, n7315, n4, or127_N_503, ao_N_538, bo, bo_N_537, 
        co, co_N_536, do, do_N_535, eo, eo_N_534, fo, fo_N_533, 
        go, go_N_532, p13, n4_adj_844, n8148, n23, n8109, n7505, 
        n8234, n7533, n8150, n8147, n3446, n8205, n8233, ho, 
        ho_N_531, n8206, n8094, n8108, n8203, n8106, or122_N_483, 
        n3472, or123_N_490, n7461, or122_N_485, n4_adj_845, p22_N_446, 
        n8207;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[8] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3326), .B(\enc_data[12] ), .C(n7315), 
         .D(\enc_data[10] ), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut (.A(n3326), .B(\enc_data[12] ), .C(\enc_data[11] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[14] ), .C(n4_adj_844), .D(\enc_data[13] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut (.A(\enc_data[18] ), .B(n8148), .C(n23), .D(n8109), 
         .Z(n4_adj_844)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'h7350;
    LUT4 i2_4_lut_then_4_lut (.A(n7505), .B(\enc_data[19] ), .C(\enc_data[15] ), 
         .D(\enc_data[17] ), .Z(n8234)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hd1c4;
    LUT4 i1_4_lut_adj_99 (.A(p13), .B(\enc_data[14] ), .C(n7533), .D(n8150), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_99.init = 16'habbb;
    LUT4 xc_I_0_4_lut (.A(n7533), .B(\enc_data[12] ), .C(n4), .D(n8147), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    LUT4 xf_I_0_4_lut (.A(\enc_data[16] ), .B(\enc_data[15] ), .C(n3446), 
         .D(n8205), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 i2_4_lut_else_4_lut (.A(n7505), .B(\enc_data[19] ), .C(\enc_data[15] ), 
         .D(\enc_data[17] ), .Z(n8233)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1d4f;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n8206)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_48_3_lut (.A(\enc_data[12] ), .B(n3326), .C(\enc_data[10] ), 
         .Z(n8094)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_48_3_lut.init = 16'h8080;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[9] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[10] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[11] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[12] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[13] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[14] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[15] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_62 (.A(\enc_data[12] ), .B(n3326), .Z(n8108)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_62.init = 16'h8888;
    LUT4 i1_2_lut_rep_157 (.A(\enc_data[17] ), .B(\enc_data[19] ), .Z(n8203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_157.init = 16'heeee;
    LUT4 i1_3_lut_rep_60_4_lut (.A(\enc_data[17] ), .B(\enc_data[19] ), 
         .C(\enc_data[16] ), .D(n3446), .Z(n8106)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_60_4_lut.init = 16'hff01;
    LUT4 i2_4_lut (.A(or122_N_483), .B(n3472), .C(or123_N_490), .D(or127_N_503), 
         .Z(n7461)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_100 (.A(p13), .B(or122_N_485), .C(\enc_data[14] ), 
         .D(n7505), .Z(n3472)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_100.init = 16'hceff;
    LUT4 enc_data_13__bdd_4_lut_6059 (.A(\enc_data[13] ), .B(\enc_data[12] ), 
         .C(\enc_data[10] ), .D(\enc_data[11] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_13__bdd_4_lut_6059.init = 16'h0116;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .C(\enc_data[12] ), 
         .D(\enc_data[13] ), .Z(n4_adj_845)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i1_2_lut_rep_63 (.A(n3326), .B(\enc_data[12] ), .Z(n8109)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_63.init = 16'h2222;
    LUT4 i1_2_lut_rep_101 (.A(\enc_data[18] ), .B(\enc_data[14] ), .Z(n8147)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_101.init = 16'heeee;
    LUT4 i5642_2_lut_rep_102 (.A(\enc_data[10] ), .B(\enc_data[11] ), .Z(n8148)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5642_2_lut_rep_102.init = 16'h8888;
    LUT4 i3272_2_lut_rep_104 (.A(\enc_data[12] ), .B(\enc_data[13] ), .Z(n8150)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3272_2_lut_rep_104.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_101 (.A(\enc_data[12] ), .B(\enc_data[13] ), 
         .C(\enc_data[14] ), .D(\enc_data[18] ), .Z(n7505)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_101.init = 16'hfffe;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), 
         .C(\enc_data[13] ), .D(\enc_data[12] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_102 (.A(\enc_data[18] ), .B(\enc_data[14] ), 
         .C(\enc_data[11] ), .D(\enc_data[10] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_102.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[18] ), .B(\enc_data[14] ), .C(\enc_data[13] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_159 (.A(\enc_data[19] ), .B(\enc_data[17] ), .Z(n8205)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(206[7:24])
    defparam i1_2_lut_rep_159.init = 16'h8888;
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[19] ), .B(\enc_data[17] ), .C(n8106), 
         .D(\enc_data[15] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(206[7:24])
    defparam xh_I_0_4_lut_4_lut.init = 16'h343c;
    PFUMX i6062 (.BLUT(n8206), .ALUT(n8207), .C0(\enc_data[10] ), .Z(or122_N_485));
    LUT4 i1_4_lut_adj_103 (.A(p22_N_446), .B(\enc_data[14] ), .C(n4_adj_845), 
         .D(\enc_data[18] ), .Z(n3326)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_103.init = 16'hc832;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[10] ), .B(n8108), .C(n7461), 
         .D(\enc_data[13] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i5646_2_lut (.A(\enc_data[10] ), .B(\enc_data[11] ), .Z(n7533)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5646_2_lut.init = 16'heeee;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n3326), .B(\enc_data[12] ), .C(n7461), 
         .D(\enc_data[10] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    PFUMX i6080 (.BLUT(n8233), .ALUT(n8234), .C0(\enc_data[16] ), .Z(n3446));
    LUT4 xb_I_0_4_lut (.A(n7315), .B(\enc_data[11] ), .C(or122_N_483), 
         .D(n8094), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 xg_I_0_4_lut_4_lut (.A(n3446), .B(\enc_data[16] ), .C(n8203), 
         .D(\enc_data[15] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[18] ), .B(\enc_data[13] ), 
         .C(\enc_data[12] ), .D(\enc_data[11] ), .Z(n8207)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i2_4_lut_adj_104 (.A(\enc_data[11] ), .B(n3472), .C(n8108), .D(or123_N_490), 
         .Z(n7315)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_104.init = 16'hffec;
    
endmodule
//
// Verilog Description of module dec_8b10b_U3
//

module dec_8b10b_U3 (\dec_data[0] , sclk, rbyteclk_N_428, \enc_data[6] , 
            \enc_data[2] , \enc_data[0] , \enc_data[1] , \enc_data[5] , 
            \dec_data[1] , \dec_data[2] , \dec_data[3] , \dec_data[4] , 
            \dec_data[5] , \dec_data[6] , \dec_data[7] , \enc_data[4] , 
            \enc_data[8] , \enc_data[9] , \enc_data[7] , \enc_data[3] );
    output \dec_data[0] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[6] ;
    input \enc_data[2] ;
    input \enc_data[0] ;
    input \enc_data[1] ;
    input \enc_data[5] ;
    output \dec_data[1] ;
    output \dec_data[2] ;
    output \dec_data[3] ;
    output \dec_data[4] ;
    output \dec_data[5] ;
    output \dec_data[6] ;
    output \dec_data[7] ;
    input \enc_data[4] ;
    input \enc_data[8] ;
    input \enc_data[9] ;
    input \enc_data[7] ;
    input \enc_data[3] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ao, ao_N_538, bo, bo_N_537, co, co_N_536, do, do_N_535, 
        eo, eo_N_534, fo, fo_N_533, go, go_N_532, ho, ho_N_531, 
        n8209, n8210, n3440, n3306, n8111, n8100, n8112, n7473, 
        n7318, n4, or127_N_503, n8177, or122_N_483, n3462, or123_N_490, 
        n7456, or122_N_485, p13, n7541, p22_N_446, n4_adj_842, n8179, 
        n4_adj_843, n8182, n23, n8180, n8178, n8213, n8212, n8099;
    
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    PFUMX i6064 (.BLUT(n8209), .ALUT(n8210), .C0(\enc_data[6] ), .Z(n3440));
    LUT4 i1_2_lut_rep_65 (.A(\enc_data[2] ), .B(n3306), .Z(n8111)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_65.init = 16'h8888;
    LUT4 i1_2_lut_rep_54_3_lut (.A(\enc_data[2] ), .B(n3306), .C(\enc_data[0] ), 
         .Z(n8100)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_54_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_66 (.A(n3306), .B(\enc_data[2] ), .Z(n8112)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_66.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n3306), .B(\enc_data[2] ), .C(n7473), 
         .D(\enc_data[0] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3306), .B(\enc_data[2] ), .C(n7318), 
         .D(\enc_data[0] ), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut (.A(n3306), .B(\enc_data[2] ), .C(\enc_data[1] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 xg_I_0_4_lut_4_lut (.A(n3440), .B(\enc_data[6] ), .C(n8177), 
         .D(\enc_data[5] ), .Z(go_N_532)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(220[8] 221[11])
    defparam xg_I_0_4_lut_4_lut.init = 16'h6763;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[2] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[3] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[4] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[5] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[6] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(or122_N_483), .B(n3462), .C(or123_N_490), .D(or127_N_503), 
         .Z(n7473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n7456), .B(or122_N_485), .C(p13), .D(\enc_data[4] ), 
         .Z(n3462)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i5654_2_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), .Z(n7541)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5654_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_93 (.A(p22_N_446), .B(\enc_data[4] ), .C(n4_adj_842), 
         .D(\enc_data[8] ), .Z(n3306)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_93.init = 16'hc832;
    LUT4 i2_4_lut_then_4_lut (.A(n7456), .B(\enc_data[9] ), .C(\enc_data[5] ), 
         .D(\enc_data[7] ), .Z(n8210)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hd1c4;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[0] ), .B(n8111), .C(n7473), 
         .D(\enc_data[3] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 xb_I_0_4_lut (.A(n7318), .B(\enc_data[1] ), .C(or122_N_483), 
         .D(n8100), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_94 (.A(\enc_data[1] ), .B(n3462), .C(n8111), .D(or123_N_490), 
         .Z(n7318)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_94.init = 16'hffec;
    LUT4 i2_4_lut_else_4_lut (.A(n7456), .B(\enc_data[9] ), .C(\enc_data[5] ), 
         .D(\enc_data[7] ), .Z(n8209)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1d4f;
    LUT4 xc_I_0_4_lut (.A(n7541), .B(\enc_data[2] ), .C(n4), .D(n8179), 
         .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[4] ), .C(n4_adj_843), .D(\enc_data[3] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_95 (.A(\enc_data[8] ), .B(n8182), .C(n23), .D(n8112), 
         .Z(n4_adj_843)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_95.init = 16'h7350;
    LUT4 i1_4_lut_adj_96 (.A(p13), .B(\enc_data[4] ), .C(n7541), .D(n8180), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_96.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[6] ), .B(\enc_data[5] ), .C(n3440), 
         .D(n8178), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h323c;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[0] ), .B(\enc_data[1] ), .C(\enc_data[2] ), 
         .D(\enc_data[3] ), .Z(n4_adj_842)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[8] ), .B(\enc_data[3] ), 
         .C(\enc_data[2] ), .D(\enc_data[1] ), .Z(n8213)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[8] ), .B(\enc_data[3] ), 
         .C(\enc_data[2] ), .D(\enc_data[1] ), .Z(n8212)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_131 (.A(\enc_data[7] ), .B(\enc_data[9] ), .Z(n8177)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_131.init = 16'heeee;
    LUT4 i1_3_lut_rep_53_4_lut (.A(\enc_data[7] ), .B(\enc_data[9] ), .C(\enc_data[6] ), 
         .D(n3440), .Z(n8099)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_53_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_132 (.A(\enc_data[9] ), .B(\enc_data[7] ), .Z(n8178)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_2_lut_rep_132.init = 16'h8888;
    LUT4 xh_I_0_4_lut_4_lut (.A(\enc_data[9] ), .B(\enc_data[7] ), .C(n8099), 
         .D(\enc_data[5] ), .Z(ho_N_531)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam xh_I_0_4_lut_4_lut.init = 16'h343c;
    LUT4 i2_3_lut_4_lut (.A(\enc_data[8] ), .B(\enc_data[4] ), .C(\enc_data[3] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_133 (.A(\enc_data[8] ), .B(\enc_data[4] ), .Z(n8179)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_133.init = 16'heeee;
    LUT4 i5652_2_lut_rep_134 (.A(\enc_data[2] ), .B(\enc_data[3] ), .Z(n8180)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5652_2_lut_rep_134.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_97 (.A(\enc_data[2] ), .B(\enc_data[3] ), 
         .C(\enc_data[4] ), .D(\enc_data[8] ), .Z(n7456)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_97.init = 16'hfffe;
    LUT4 i1_2_lut_rep_136 (.A(\enc_data[1] ), .B(\enc_data[0] ), .Z(n8182)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_136.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_98 (.A(\enc_data[1] ), .B(\enc_data[0] ), 
         .C(\enc_data[4] ), .D(\enc_data[8] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_3_lut_4_lut_adj_98.init = 16'h8000;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[2] ), .B(\enc_data[3] ), 
         .C(\enc_data[1] ), .D(\enc_data[0] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(115[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 enc_data_3__bdd_4_lut (.A(\enc_data[3] ), .B(\enc_data[2] ), .C(\enc_data[0] ), 
         .D(\enc_data[1] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_3__bdd_4_lut.init = 16'h0116;
    PFUMX i6066 (.BLUT(n8212), .ALUT(n8213), .C0(\enc_data[0] ), .Z(or122_N_485));
    
endmodule
//
// Verilog Description of module dec_8b10b_U0
//

module dec_8b10b_U0 (\enc_data[38] , \enc_data[34] , \enc_data[33] , \enc_data[37] , 
            \enc_data[35] , \enc_data[39] , \enc_data[32] , \enc_data[31] , 
            \enc_data[36] , \dec_data[24] , sclk, rbyteclk_N_428, \enc_data[30] , 
            \dec_data[25] , \dec_data[26] , \dec_data[27] , \dec_data[28] , 
            \dec_data[29] , \dec_data[30] , \dec_data[31] );
    input \enc_data[38] ;
    input \enc_data[34] ;
    input \enc_data[33] ;
    input \enc_data[37] ;
    input \enc_data[35] ;
    input \enc_data[39] ;
    input \enc_data[32] ;
    input \enc_data[31] ;
    input \enc_data[36] ;
    output \dec_data[24] ;
    input sclk;
    input rbyteclk_N_428;
    input \enc_data[30] ;
    output \dec_data[25] ;
    output \dec_data[26] ;
    output \dec_data[27] ;
    output \dec_data[28] ;
    output \dec_data[29] ;
    output \dec_data[30] ;
    output \dec_data[31] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire p13, or123_N_490, n8135, n8222, n8221, n8225, n8224, 
        n7999, n7998, ao, ao_N_538, bo, bo_N_537, co, co_N_536, 
        do, do_N_535, eo, eo_N_534, fo, fo_N_533, go, go_N_532, 
        n3362, n8115, ho, ho_N_531, or122_N_483, n3529, or127_N_503, 
        n7470, or122_N_485, n8104, n5153, p22_N_446, n4, n7327, 
        n4_adj_839, n8194, n4_adj_840, n8193, n7451, n8116, n8195, 
        n3476, n4_adj_841, ior134_N_529, n7647;
    
    LUT4 i2_3_lut_4_lut (.A(\enc_data[38] ), .B(\enc_data[34] ), .C(\enc_data[33] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_then_4_lut (.A(\enc_data[37] ), .B(n8135), .C(\enc_data[35] ), 
         .D(\enc_data[39] ), .Z(n8222)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hf122;
    LUT4 i2_4_lut_else_4_lut (.A(\enc_data[37] ), .B(n8135), .C(\enc_data[35] ), 
         .D(\enc_data[39] ), .Z(n8221)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1f27;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n8225)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[38] ), .B(\enc_data[33] ), 
         .C(\enc_data[32] ), .D(\enc_data[31] ), .Z(n8224)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    LUT4 enc_data_36__bdd_3_lut (.A(\enc_data[36] ), .B(\enc_data[37] ), 
         .C(\enc_data[39] ), .Z(n7999)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam enc_data_36__bdd_3_lut.init = 16'h3131;
    LUT4 enc_data_36__bdd_4_lut (.A(\enc_data[36] ), .B(\enc_data[37] ), 
         .C(\enc_data[39] ), .D(\enc_data[35] ), .Z(n7998)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam enc_data_36__bdd_4_lut.init = 16'h2d9d;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[24] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_69 (.A(\enc_data[32] ), .B(n3362), .Z(n8115)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_69.init = 16'h8888;
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(or122_N_483), .B(n3529), .C(or123_N_490), .D(or127_N_503), 
         .Z(n7470)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n8135), .B(or122_N_485), .C(p13), .D(\enc_data[34] ), 
         .Z(n3529)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut.init = 16'hddfd;
    LUT4 i1_2_lut_rep_58_3_lut (.A(\enc_data[32] ), .B(n3362), .C(\enc_data[30] ), 
         .Z(n8104)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_58_3_lut.init = 16'h8080;
    LUT4 i3314_2_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), .Z(n5153)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3314_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_88 (.A(p22_N_446), .B(\enc_data[34] ), .C(n4), .D(\enc_data[38] ), 
         .Z(n3362)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut_adj_88.init = 16'hc832;
    LUT4 xb_I_0_4_lut (.A(n7327), .B(\enc_data[31] ), .C(or122_N_483), 
         .D(n8104), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_89 (.A(\enc_data[31] ), .B(n3529), .C(n8115), .D(or123_N_490), 
         .Z(n7327)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i2_4_lut_adj_89.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n5153), .B(\enc_data[32] ), .C(n4_adj_839), 
         .D(n8194), .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    LUT4 xe_I_0_4_lut (.A(\enc_data[33] ), .B(\enc_data[34] ), .C(n4_adj_840), 
         .D(p13), .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h373c;
    LUT4 i1_4_lut_adj_90 (.A(\enc_data[38] ), .B(n8193), .C(n7451), .D(n8116), 
         .Z(n4_adj_840)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_90.init = 16'h7350;
    LUT4 i1_4_lut_adj_91 (.A(\enc_data[34] ), .B(p13), .C(n5153), .D(n8195), 
         .Z(n7451)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_91.init = 16'hcddd;
    LUT4 xf_I_0_4_lut (.A(\enc_data[37] ), .B(\enc_data[35] ), .C(n3476), 
         .D(n4_adj_841), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[36] ), .B(\enc_data[39] ), .C(\enc_data[35] ), 
         .Z(n4_adj_841)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(203[7:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_70 (.A(n3362), .B(\enc_data[32] ), .Z(n8116)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_70.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3362), .B(\enc_data[32] ), .C(n7327), 
         .D(\enc_data[30] ), .Z(n4_adj_839)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n3362), .B(\enc_data[32] ), .C(n7470), 
         .D(\enc_data[30] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut (.A(\enc_data[37] ), .B(\enc_data[39] ), .Z(ior134_N_529)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(n3362), .B(\enc_data[32] ), .C(\enc_data[31] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i5758_4_lut (.A(\enc_data[37] ), .B(n8194), .C(n8195), .D(\enc_data[39] ), 
         .Z(n7647)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5758_4_lut.init = 16'hfefc;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[25] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[26] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[27] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[28] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[29] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[30] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[31] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), .C(\enc_data[32] ), 
         .D(\enc_data[33] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(101[10:38])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 xg_I_0_4_lut_4_lut (.A(\enc_data[36] ), .B(\enc_data[35] ), .C(ior134_N_529), 
         .D(n3476), .Z(go_N_532)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam xg_I_0_4_lut_4_lut.init = 16'h55ad;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[30] ), .B(\enc_data[31] ), .C(\enc_data[32] ), 
         .D(\enc_data[33] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 i1_2_lut_rep_147 (.A(\enc_data[31] ), .B(\enc_data[30] ), .Z(n8193)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_147.init = 16'h8888;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[30] ), .B(n8115), .C(n7470), 
         .D(\enc_data[33] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i1_2_lut_rep_148 (.A(\enc_data[38] ), .B(\enc_data[34] ), .Z(n8194)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_148.init = 16'heeee;
    LUT4 i5694_2_lut_rep_149 (.A(\enc_data[32] ), .B(\enc_data[33] ), .Z(n8195)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5694_2_lut_rep_149.init = 16'heeee;
    LUT4 i1_2_lut_rep_89_3_lut_4_lut (.A(\enc_data[32] ), .B(\enc_data[33] ), 
         .C(\enc_data[34] ), .D(\enc_data[38] ), .Z(n8135)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_89_3_lut_4_lut.init = 16'hfffe;
    PFUMX i6074 (.BLUT(n8224), .ALUT(n8225), .C0(\enc_data[30] ), .Z(or122_N_485));
    PFUMX i6021 (.BLUT(n7999), .ALUT(n7998), .C0(n7647), .Z(ho_N_531));
    PFUMX i6072 (.BLUT(n8221), .ALUT(n8222), .C0(\enc_data[36] ), .Z(n3476));
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[32] ), .B(\enc_data[33] ), 
         .C(\enc_data[31] ), .D(\enc_data[30] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(115[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(\enc_data[38] ), .B(\enc_data[34] ), 
         .C(\enc_data[30] ), .D(\enc_data[31] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'h8000;
    
endmodule
//
// Verilog Description of module async_fifo
//

module async_fifo (ber, sclk, FT601_CLK_c, sclk_enable_230, n8133, 
            GND_net, FT601_DATA_c_27, FT601_DATA_c_26, FT601_DATA_c_25, 
            FT601_DATA_c_24, fifo_emp, VCC_net, FT601_DATA_c_31, FT601_DATA_c_30, 
            FT601_DATA_c_29, FT601_DATA_c_28, FT601_DATA_c_19, FT601_DATA_c_18, 
            FT601_DATA_c_17, FT601_DATA_c_16, FT601_DATA_c_23, FT601_DATA_c_22, 
            FT601_DATA_c_21, FT601_DATA_c_20, FT601_DATA_c_11, FT601_DATA_c_10, 
            FT601_DATA_c_9, FT601_DATA_c_8, FT601_DATA_c_15, FT601_DATA_c_14, 
            FT601_DATA_c_13, FT601_DATA_c_12, FT601_DATA_c_3, FT601_DATA_c_2, 
            FT601_DATA_c_1, FT601_DATA_c_0, FT601_DATA_c_7, FT601_DATA_c_6, 
            FT601_DATA_c_5, FT601_DATA_c_4) /* synthesis NGD_DRC_MASK=1 */ ;
    input [31:0]ber;
    input sclk;
    input FT601_CLK_c;
    input sclk_enable_230;
    input n8133;
    input GND_net;
    output FT601_DATA_c_27;
    output FT601_DATA_c_26;
    output FT601_DATA_c_25;
    output FT601_DATA_c_24;
    output fifo_emp;
    input VCC_net;
    output FT601_DATA_c_31;
    output FT601_DATA_c_30;
    output FT601_DATA_c_29;
    output FT601_DATA_c_28;
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
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(30[9:18])
    
    wire full;
    
    FIFO8KB async_fifo_0_7 (.DI0(ber[0]), .DI1(ber[1]), .DI2(ber[2]), 
            .DI3(ber[3]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_24), .DO1(FT601_DATA_c_25), .DO2(FT601_DATA_c_26), 
            .DO3(FT601_DATA_c_27), .EF(fifo_emp), .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_0_7.GSR = "ENABLED";
    FIFO8KB async_fifo_1_6 (.DI0(ber[4]), .DI1(ber[5]), .DI2(ber[6]), 
            .DI3(ber[7]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_28), .DO1(FT601_DATA_c_29), .DO2(FT601_DATA_c_30), 
            .DO3(FT601_DATA_c_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_1_6.GSR = "ENABLED";
    FIFO8KB async_fifo_2_5 (.DI0(ber[8]), .DI1(ber[9]), .DI2(ber[10]), 
            .DI3(ber[11]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_16), .DO1(FT601_DATA_c_17), .DO2(FT601_DATA_c_18), 
            .DO3(FT601_DATA_c_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_2_5.GSR = "ENABLED";
    FIFO8KB async_fifo_3_4 (.DI0(ber[12]), .DI1(ber[13]), .DI2(ber[14]), 
            .DI3(ber[15]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_20), .DO1(FT601_DATA_c_21), .DO2(FT601_DATA_c_22), 
            .DO3(FT601_DATA_c_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_3_4.GSR = "ENABLED";
    FIFO8KB async_fifo_4_3 (.DI0(ber[16]), .DI1(ber[17]), .DI2(ber[18]), 
            .DI3(ber[19]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_8), .DO1(FT601_DATA_c_9), .DO2(FT601_DATA_c_10), 
            .DO3(FT601_DATA_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_4_3.GSR = "ENABLED";
    FIFO8KB async_fifo_5_2 (.DI0(ber[20]), .DI1(ber[21]), .DI2(ber[22]), 
            .DI3(ber[23]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_12), .DO1(FT601_DATA_c_13), .DO2(FT601_DATA_c_14), 
            .DO3(FT601_DATA_c_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_5_2.GSR = "ENABLED";
    FIFO8KB async_fifo_6_1 (.DI0(ber[24]), .DI1(ber[25]), .DI2(ber[26]), 
            .DI3(ber[27]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_0), .DO1(FT601_DATA_c_1), .DO2(FT601_DATA_c_2), 
            .DO3(FT601_DATA_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_6_1.GSR = "ENABLED";
    FIFO8KB async_fifo_7_0 (.DI0(ber[28]), .DI1(ber[29]), .DI2(ber[30]), 
            .DI3(ber[31]), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .FULLI(full), 
            .EMPTYI(fifo_emp), .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), 
            .CSR0(VCC_net), .WE(sclk_enable_230), .RE(n8133), .ORE(n8133), 
            .CLKW(sclk), .CLKR(FT601_CLK_c), .RST(GND_net), .RPRST(GND_net), 
            .DO0(FT601_DATA_c_4), .DO1(FT601_DATA_c_5), .DO2(FT601_DATA_c_6), 
            .DO3(FT601_DATA_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=43, LSE_LLINE=146, LSE_RLINE=146 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(146[21:43])
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
    defparam async_fifo_7_0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module dec_8b10b_U1
//

module dec_8b10b_U1 (\enc_data[26] , \enc_data[25] , \enc_data[22] , \enc_data[23] , 
            \enc_data[28] , \enc_data[24] , \enc_data[27] , \enc_data[29] , 
            \enc_data[21] , \dec_data[16] , sclk, \enc_data[20] , rbyteclk_N_428, 
            \dec_data[17] , \dec_data[18] , \dec_data[19] , \dec_data[20] , 
            \dec_data[21] , \dec_data[22] , \dec_data[23] );
    input \enc_data[26] ;
    input \enc_data[25] ;
    input \enc_data[22] ;
    input \enc_data[23] ;
    input \enc_data[28] ;
    input \enc_data[24] ;
    input \enc_data[27] ;
    input \enc_data[29] ;
    input \enc_data[21] ;
    output \dec_data[16] ;
    input sclk;
    input \enc_data[20] ;
    input rbyteclk_N_428;
    output \dec_data[17] ;
    output \dec_data[18] ;
    output \dec_data[19] ;
    output \dec_data[20] ;
    output \dec_data[21] ;
    output \dec_data[22] ;
    output \dec_data[23] ;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/machxo2_top.vhd(67[12:16])
    wire rbyteclk_N_428 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(63[3:11])
    
    wire ior134_N_529, n3453, go_N_532, n8137, n8199, n8228, n8227, 
        n8231, n8230, ao, p13, or123_N_490, n8200, ao_N_538, or122_N_483, 
        n3525, or127_N_503, n7467, bo, bo_N_537, p22_N_446, n4, 
        n3342, n7553, or122_N_485, n7324, n8105, n8117, n4_adj_836, 
        co_N_536, co, do, do_N_535, eo, eo_N_534, fo, fo_N_533, 
        go, ho, ho_N_531, n4_adj_837, n23, n8118, n8201, n4_adj_838, 
        n7649, n8026, n8025;
    
    LUT4 xg_I_0_4_lut_4_lut (.A(\enc_data[26] ), .B(\enc_data[25] ), .C(ior134_N_529), 
         .D(n3453), .Z(go_N_532)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(205[12:28])
    defparam xg_I_0_4_lut_4_lut.init = 16'h55ad;
    LUT4 i1_2_lut_rep_91_3_lut_4_lut (.A(\enc_data[22] ), .B(\enc_data[23] ), 
         .C(\enc_data[28] ), .D(\enc_data[24] ), .Z(n8137)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_91_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5684_2_lut_rep_153 (.A(\enc_data[24] ), .B(\enc_data[28] ), .Z(n8199)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5684_2_lut_rep_153.init = 16'heeee;
    LUT4 i2_4_lut_then_4_lut (.A(\enc_data[27] ), .B(n8137), .C(\enc_data[25] ), 
         .D(\enc_data[29] ), .Z(n8228)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_then_4_lut.init = 16'hf122;
    LUT4 i2_4_lut_else_4_lut (.A(\enc_data[27] ), .B(n8137), .C(\enc_data[25] ), 
         .D(\enc_data[29] ), .Z(n8227)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i2_4_lut_else_4_lut.init = 16'h1f27;
    LUT4 p31_I_0_4_lut_then_4_lut (.A(\enc_data[28] ), .B(\enc_data[23] ), 
         .C(\enc_data[22] ), .D(\enc_data[21] ), .Z(n8231)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_then_4_lut.init = 16'h2880;
    LUT4 p31_I_0_4_lut_else_4_lut (.A(\enc_data[28] ), .B(\enc_data[23] ), 
         .C(\enc_data[22] ), .D(\enc_data[21] ), .Z(n8230)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_4_lut_else_4_lut.init = 16'h8000;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(\dec_data[16] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(\enc_data[28] ), .B(\enc_data[24] ), .C(\enc_data[23] ), 
         .D(p13), .Z(or123_N_490)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(160[12:36])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_154 (.A(\enc_data[21] ), .B(\enc_data[20] ), .Z(n8200)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[10:19])
    defparam i1_2_lut_rep_154.init = 16'h8888;
    FD1S3AX ao_228 (.D(ao_N_538), .CK(rbyteclk_N_428), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(or122_N_483), .B(n3525), .C(or123_N_490), .D(or127_N_503), 
         .Z(n7467)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hfffe;
    FD1S3AX bo_229 (.D(bo_N_537), .CK(rbyteclk_N_428), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(p22_N_446), .B(\enc_data[24] ), .C(n4), .D(\enc_data[28] ), 
         .Z(n3342)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 i5666_2_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), .Z(n7553)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5666_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_83 (.A(n8137), .B(or122_N_485), .C(p13), .D(\enc_data[24] ), 
         .Z(n3525)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_83.init = 16'hddfd;
    LUT4 xb_I_0_4_lut (.A(n7324), .B(\enc_data[21] ), .C(or122_N_483), 
         .D(n8105), .Z(bo_N_537)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut_adj_84 (.A(\enc_data[21] ), .B(n3525), .C(n8117), .D(or123_N_490), 
         .Z(n7324)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut_adj_84.init = 16'hffec;
    LUT4 xc_I_0_4_lut (.A(n7553), .B(\enc_data[22] ), .C(n4_adj_836), 
         .D(n8199), .Z(co_N_536)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(191[10:19])
    defparam xc_I_0_4_lut.init = 16'h3c39;
    FD1S3AX co_230 (.D(co_N_536), .CK(rbyteclk_N_428), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_535), .CK(rbyteclk_N_428), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_534), .CK(rbyteclk_N_428), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_533), .CK(rbyteclk_N_428), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_532), .CK(rbyteclk_N_428), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_531), .CK(rbyteclk_N_428), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 xe_I_0_4_lut (.A(p13), .B(\enc_data[24] ), .C(n4_adj_837), .D(\enc_data[23] ), 
         .Z(eo_N_534)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h363e;
    LUT4 i1_4_lut_adj_85 (.A(\enc_data[28] ), .B(n8200), .C(n23), .D(n8118), 
         .Z(n4_adj_837)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_85.init = 16'h7350;
    LUT4 i1_4_lut_adj_86 (.A(p13), .B(\enc_data[24] ), .C(n7553), .D(n8201), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_86.init = 16'habbb;
    LUT4 xf_I_0_4_lut (.A(\enc_data[27] ), .B(\enc_data[25] ), .C(n3453), 
         .D(n4_adj_838), .Z(fo_N_533)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(233[10:19])
    defparam xf_I_0_4_lut.init = 16'h363c;
    LUT4 i1_3_lut (.A(\enc_data[26] ), .B(\enc_data[29] ), .C(\enc_data[25] ), 
         .Z(n4_adj_838)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(206[7:24])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut (.A(\enc_data[27] ), .B(\enc_data[29] ), .Z(ior134_N_529)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i5760_4_lut (.A(\enc_data[27] ), .B(n8199), .C(n8201), .D(\enc_data[29] ), 
         .Z(n7649)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5760_4_lut.init = 16'hfefc;
    LUT4 enc_data_26__bdd_3_lut (.A(\enc_data[26] ), .B(\enc_data[27] ), 
         .C(\enc_data[29] ), .Z(n8026)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam enc_data_26__bdd_3_lut.init = 16'h3131;
    LUT4 i1_2_lut_rep_71 (.A(\enc_data[22] ), .B(n3342), .Z(n8117)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_71.init = 16'h8888;
    LUT4 i1_2_lut_rep_59_3_lut (.A(\enc_data[22] ), .B(n3342), .C(\enc_data[20] ), 
         .Z(n8105)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_59_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_72 (.A(n3342), .B(\enc_data[22] ), .Z(n8118)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_72.init = 16'h2222;
    LUT4 xa_I_0_3_lut_3_lut_4_lut (.A(n3342), .B(\enc_data[22] ), .C(n7467), 
         .D(\enc_data[20] ), .Z(ao_N_538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam xa_I_0_3_lut_3_lut_4_lut.init = 16'h0ff2;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3342), .B(\enc_data[22] ), .C(n7324), 
         .D(\enc_data[20] ), .Z(n4_adj_836)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut (.A(n3342), .B(\enc_data[22] ), .C(\enc_data[21] ), 
         .Z(or127_N_503)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(\enc_data[21] ), .B(\enc_data[20] ), 
         .C(\enc_data[24] ), .D(\enc_data[28] ), .Z(or122_N_483)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[10:19])
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'h8000;
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(\dec_data[17] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(\dec_data[18] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(\dec_data[19] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(\dec_data[20] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(\dec_data[21] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(\dec_data[22] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(\dec_data[23] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=24, LSE_RCOL=45, LSE_LLINE=114, LSE_RLINE=114 */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 enc_data_23__bdd_4_lut (.A(\enc_data[23] ), .B(\enc_data[22] ), 
         .C(\enc_data[20] ), .D(\enc_data[21] ), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam enc_data_23__bdd_4_lut.init = 16'h0116;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), 
         .C(\enc_data[23] ), .D(\enc_data[22] ), .Z(p22_N_446)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 enc_data_26__bdd_4_lut (.A(\enc_data[26] ), .B(\enc_data[27] ), 
         .C(\enc_data[29] ), .D(\enc_data[25] ), .Z(n8025)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam enc_data_26__bdd_4_lut.init = 16'h2d9d;
    LUT4 i1_4_lut_4_lut (.A(\enc_data[20] ), .B(\enc_data[21] ), .C(\enc_data[22] ), 
         .D(\enc_data[23] ), .Z(n4)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(107[9] 109[22])
    defparam i1_4_lut_4_lut.init = 16'h1008;
    LUT4 xd_I_0_3_lut_4_lut (.A(\enc_data[20] ), .B(n8117), .C(n7467), 
         .D(\enc_data[23] ), .Z(do_N_535)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/final_Eval/usb_plug_mod_ber/MachXO2/src/dec_8b10b.vhd(105[8:26])
    defparam xd_I_0_3_lut_4_lut.init = 16'h07f8;
    LUT4 i3286_2_lut_rep_155 (.A(\enc_data[22] ), .B(\enc_data[23] ), .Z(n8201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3286_2_lut_rep_155.init = 16'heeee;
    PFUMX i6078 (.BLUT(n8230), .ALUT(n8231), .C0(\enc_data[20] ), .Z(or122_N_485));
    PFUMX i6076 (.BLUT(n8227), .ALUT(n8228), .C0(\enc_data[26] ), .Z(n3453));
    PFUMX i6035 (.BLUT(n8026), .ALUT(n8025), .C0(n7649), .Z(ho_N_531));
    
endmodule
