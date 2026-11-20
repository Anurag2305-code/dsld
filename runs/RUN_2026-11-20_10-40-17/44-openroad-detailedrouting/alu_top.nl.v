module alu_top (clk,
    halt,
    rst_n,
    zero,
    a,
    b,
    mode,
    op_mask,
    result);
 input clk;
 input halt;
 input rst_n;
 output zero;
 input [3:0] a;
 input [3:0] b;
 input [1:0] mode;
 output [7:0] op_mask;
 output [4:0] result;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire \pattern[0] ;
 wire \pattern[1] ;
 wire \pattern[2] ;
 wire \pattern[3] ;
 wire \pattern[4] ;
 wire \pattern[5] ;
 wire \pattern[6] ;
 wire \pattern[7] ;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net12;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;

 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_133 ();
 sky130_fd_sc_hd__inv_1 _159_ (.A(\pattern[4] ),
    .Y(_115_));
 sky130_fd_sc_hd__inv_1 _160_ (.A(\pattern[3] ),
    .Y(_116_));
 sky130_fd_sc_hd__or2_0 _161_ (.A(\pattern[1] ),
    .B(net52),
    .X(_125_));
 sky130_fd_sc_hd__mux2i_1 _162_ (.A0(net47),
    .A1(net43),
    .S(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__nand2_1 _163_ (.A(_071_),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__a21oi_1 _164_ (.A1(_061_),
    .A2(_067_),
    .B1(_074_),
    .Y(_075_));
 sky130_fd_sc_hd__xnor2_1 _165_ (.A(_031_),
    .B(_032_),
    .Y(_076_));
 sky130_fd_sc_hd__nor2_1 _166_ (.A(net2),
    .B(net6),
    .Y(_077_));
 sky130_fd_sc_hd__nand2_1 _167_ (.A(net2),
    .B(net6),
    .Y(_078_));
 sky130_fd_sc_hd__a21oi_1 _168_ (.A1(_045_),
    .A2(_078_),
    .B1(_150_),
    .Y(_079_));
 sky130_fd_sc_hd__nor2_1 _169_ (.A(_077_),
    .B(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__o21bai_1 _170_ (.A1(net52),
    .A2(net46),
    .B1_N(_078_),
    .Y(_081_));
 sky130_fd_sc_hd__nand2_1 _171_ (.A(net46),
    .B(_077_),
    .Y(_082_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_123_),
    .A2(_125_),
    .B1(net51),
    .Y(_126_));
 sky130_fd_sc_hd__a22oi_1 _173_ (.A1(net3),
    .A2(_050_),
    .B1(_051_),
    .B2(net1),
    .Y(_083_));
 sky130_fd_sc_hd__a21oi_1 _174_ (.A1(net45),
    .A2(_076_),
    .B1(_080_),
    .Y(_084_));
 sky130_fd_sc_hd__nand4_1 _175_ (.A(_081_),
    .B(_082_),
    .C(_083_),
    .D(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__xnor2_1 _176_ (.A(net1),
    .B(net5),
    .Y(_086_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(net52),
    .B(net1),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_1 _178_ (.A(_086_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__o32ai_1 _179_ (.A1(net45),
    .A2(_045_),
    .A3(_086_),
    .B1(_088_),
    .B2(net46),
    .Y(_089_));
 sky130_fd_sc_hd__o21ai_0 _180_ (.A1(net1),
    .A2(net5),
    .B1(_150_),
    .Y(_090_));
 sky130_fd_sc_hd__nand2_1 _181_ (.A(net2),
    .B(_050_),
    .Y(_091_));
 sky130_fd_sc_hd__nand4b_1 _182_ (.A_N(net31),
    .B(_089_),
    .C(_090_),
    .D(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__and2_0 _183_ (.A(_122_),
    .B(_126_),
    .X(_127_));
 sky130_fd_sc_hd__nor3_1 _184_ (.A(_053_),
    .B(_085_),
    .C(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__a32o_1 _185_ (.A1(_066_),
    .A2(_075_),
    .A3(_093_),
    .B1(net29),
    .B2(net64),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _186_ (.A0(\pattern[6] ),
    .A1(net62),
    .S(net31),
    .X(_015_));
 sky130_fd_sc_hd__o21ai_0 _187_ (.A1(\pattern[7] ),
    .A2(net32),
    .B1(_153_),
    .Y(_094_));
 sky130_fd_sc_hd__nand2_1 _188_ (.A(\pattern[5] ),
    .B(net28),
    .Y(_095_));
 sky130_fd_sc_hd__nor2_1 _189_ (.A(\pattern[6] ),
    .B(net27),
    .Y(_096_));
 sky130_fd_sc_hd__a31oi_1 _190_ (.A1(net27),
    .A2(_094_),
    .A3(_095_),
    .B1(_096_),
    .Y(_014_));
 sky130_fd_sc_hd__nand2_1 _191_ (.A(net59),
    .B(net29),
    .Y(_097_));
 sky130_fd_sc_hd__o21ai_0 _192_ (.A1(net29),
    .A2(_075_),
    .B1(_097_),
    .Y(_013_));
 sky130_fd_sc_hd__nand2_1 _193_ (.A(net57),
    .B(net31),
    .Y(_098_));
 sky130_fd_sc_hd__nor2_1 _194_ (.A(\pattern[4] ),
    .B(\pattern[3] ),
    .Y(_128_));
 sky130_fd_sc_hd__o21ai_0 _195_ (.A1(_118_),
    .A2(net31),
    .B1(_098_),
    .Y(_012_));
 sky130_fd_sc_hd__nand2_1 _196_ (.A(net52),
    .B(net54),
    .Y(_099_));
 sky130_fd_sc_hd__o31ai_1 _197_ (.A1(\pattern[6] ),
    .A2(net11),
    .A3(net10),
    .B1(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__o22ai_1 _198_ (.A1(_118_),
    .A2(net27),
    .B1(_100_),
    .B2(net31),
    .Y(_011_));
 sky130_fd_sc_hd__nand2_1 _199_ (.A(net58),
    .B(net29),
    .Y(_101_));
 sky130_fd_sc_hd__o21ai_0 _200_ (.A1(net29),
    .A2(_066_),
    .B1(_101_),
    .Y(_010_));
 sky130_fd_sc_hd__o21ai_0 _201_ (.A1(\pattern[3] ),
    .A2(_155_),
    .B1(net54),
    .Y(_102_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(\pattern[1] ),
    .B(net28),
    .Y(_103_));
 sky130_fd_sc_hd__nor2_1 _203_ (.A(net50),
    .B(net27),
    .Y(_104_));
 sky130_fd_sc_hd__a31oi_1 _204_ (.A1(_024_),
    .A2(_102_),
    .A3(_103_),
    .B1(_104_),
    .Y(_009_));
 sky130_fd_sc_hd__xnor2_1 _205_ (.A(_127_),
    .B(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__mux2_1 _206_ (.A0(net51),
    .A1(net63),
    .S(net31),
    .X(_008_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(net60),
    .B(net29),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_0 _208_ (.A1(_116_),
    .A2(net29),
    .B1(_105_),
    .Y(_007_));
 sky130_fd_sc_hd__o21ai_0 _209_ (.A1(\pattern[4] ),
    .A2(net32),
    .B1(_153_),
    .Y(_106_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(net51),
    .B(_022_),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_1 _211_ (.A(\pattern[3] ),
    .B(net27),
    .Y(_108_));
 sky130_fd_sc_hd__a31oi_1 _212_ (.A1(net27),
    .A2(_106_),
    .A3(_107_),
    .B1(_108_),
    .Y(_006_));
 sky130_fd_sc_hd__mux2_1 _213_ (.A0(_085_),
    .A1(net68),
    .S(net29),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _214_ (.A(net66),
    .B(net30),
    .Y(_109_));
 sky130_fd_sc_hd__o21ai_0 _215_ (.A1(_115_),
    .A2(net30),
    .B1(_109_),
    .Y(_004_));
 sky130_fd_sc_hd__a22oi_1 _216_ (.A1(\pattern[4] ),
    .A2(\pattern[3] ),
    .B1(\pattern[6] ),
    .B2(\pattern[5] ),
    .Y(_130_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(\pattern[5] ),
    .A2(net32),
    .B1(_153_),
    .Y(_110_));
 sky130_fd_sc_hd__nand2_1 _218_ (.A(\pattern[3] ),
    .B(_022_),
    .Y(_111_));
 sky130_fd_sc_hd__nor2_1 _219_ (.A(\pattern[4] ),
    .B(net27),
    .Y(_112_));
 sky130_fd_sc_hd__a31oi_1 _220_ (.A1(net27),
    .A2(_110_),
    .A3(_111_),
    .B1(_112_),
    .Y(_003_));
 sky130_fd_sc_hd__nor3_1 _221_ (.A(\pattern[7] ),
    .B(net11),
    .C(net10),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _222_ (.A1(_117_),
    .A2(net54),
    .B1(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__o22a_1 _223_ (.A1(net53),
    .A2(_024_),
    .B1(_114_),
    .B2(net31),
    .X(_002_));
 sky130_fd_sc_hd__a21boi_0 _224_ (.A1(_119_),
    .A2(net30),
    .B1_N(_092_),
    .Y(_001_));
 sky130_fd_sc_hd__mux2_1 _225_ (.A0(net53),
    .A1(net69),
    .S(net30),
    .X(_000_));
 sky130_fd_sc_hd__a22oi_1 _226_ (.A1(\pattern[7] ),
    .A2(_121_),
    .B1(_125_),
    .B2(net51),
    .Y(_131_));
 sky130_fd_sc_hd__nand3_1 _227_ (.A(_123_),
    .B(_130_),
    .C(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__nor2_1 _228_ (.A(_122_),
    .B(_126_),
    .Y(_133_));
 sky130_fd_sc_hd__nor3_1 _229_ (.A(_129_),
    .B(_132_),
    .C(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__inv_1 _230_ (.A(\pattern[1] ),
    .Y(_117_));
 sky130_fd_sc_hd__nor2_1 _231_ (.A(\pattern[3] ),
    .B(net50),
    .Y(_135_));
 sky130_fd_sc_hd__nor2_1 _232_ (.A(\pattern[5] ),
    .B(\pattern[4] ),
    .Y(_136_));
 sky130_fd_sc_hd__o31ai_1 _233_ (.A1(\pattern[3] ),
    .A2(net50),
    .A3(_136_),
    .B1(_124_),
    .Y(_137_));
 sky130_fd_sc_hd__a21oi_1 _234_ (.A1(_115_),
    .A2(_120_),
    .B1(\pattern[3] ),
    .Y(_138_));
 sky130_fd_sc_hd__nor3_1 _235_ (.A(net50),
    .B(net52),
    .C(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__or3_1 _236_ (.A(net50),
    .B(net52),
    .C(_138_),
    .X(_140_));
 sky130_fd_sc_hd__nand2_1 _237_ (.A(_124_),
    .B(_135_),
    .Y(_141_));
 sky130_fd_sc_hd__nor3_1 _238_ (.A(_137_),
    .B(_140_),
    .C(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__nand2b_1 _239_ (.A_N(\pattern[6] ),
    .B(\pattern[7] ),
    .Y(_143_));
 sky130_fd_sc_hd__a21oi_1 _240_ (.A1(\pattern[5] ),
    .A2(_143_),
    .B1(_136_),
    .Y(_144_));
 sky130_fd_sc_hd__inv_1 _241_ (.A(\pattern[7] ),
    .Y(_118_));
 sky130_fd_sc_hd__a21oi_1 _242_ (.A1(net50),
    .A2(\pattern[1] ),
    .B1(_124_),
    .Y(_145_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(_115_),
    .B(_141_),
    .Y(_146_));
 sky130_fd_sc_hd__o21ai_0 _244_ (.A1(\pattern[7] ),
    .A2(_142_),
    .B1(_146_),
    .Y(_147_));
 sky130_fd_sc_hd__a2111oi_0 _245_ (.A1(_116_),
    .A2(net50),
    .B1(_144_),
    .C1(_145_),
    .D1(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__a31oi_1 _246_ (.A1(net50),
    .A2(\pattern[1] ),
    .A3(net52),
    .B1(_135_),
    .Y(_149_));
 sky130_fd_sc_hd__nor2_1 _247_ (.A(_117_),
    .B(net53),
    .Y(_150_));
 sky130_fd_sc_hd__a21oi_1 _248_ (.A1(\pattern[5] ),
    .A2(_115_),
    .B1(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__nand3_1 _249_ (.A(_120_),
    .B(_143_),
    .C(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__nor2b_1 _250_ (.A(net11),
    .B_N(net10),
    .Y(_153_));
 sky130_fd_sc_hd__o31ai_1 _251_ (.A1(_138_),
    .A2(_149_),
    .A3(_152_),
    .B1(net54),
    .Y(_154_));
 sky130_fd_sc_hd__inv_1 _252_ (.A(net70),
    .Y(_119_));
 sky130_fd_sc_hd__o32ai_2 _253_ (.A1(net11),
    .A2(net10),
    .A3(_134_),
    .B1(net33),
    .B2(_154_),
    .Y(_155_));
 sky130_fd_sc_hd__inv_1 _254_ (.A(net32),
    .Y(_156_));
 sky130_fd_sc_hd__or2_0 _255_ (.A(net9),
    .B(net32),
    .X(_157_));
 sky130_fd_sc_hd__nand2_1 _256_ (.A(net61),
    .B(net29),
    .Y(_158_));
 sky130_fd_sc_hd__o21ai_0 _257_ (.A1(_117_),
    .A2(net29),
    .B1(_158_),
    .Y(_021_));
 sky130_fd_sc_hd__nor3_1 _258_ (.A(net11),
    .B(net10),
    .C(net32),
    .Y(_022_));
 sky130_fd_sc_hd__nand2_1 _259_ (.A(net52),
    .B(net28),
    .Y(_023_));
 sky130_fd_sc_hd__nand2_1 _260_ (.A(net9),
    .B(_156_),
    .Y(_024_));
 sky130_fd_sc_hd__o21ai_0 _261_ (.A1(net50),
    .A2(_155_),
    .B1(net54),
    .Y(_025_));
 sky130_fd_sc_hd__nor2_1 _262_ (.A(\pattern[1] ),
    .B(_024_),
    .Y(_026_));
 sky130_fd_sc_hd__nand2b_1 _263_ (.A_N(\pattern[5] ),
    .B(\pattern[6] ),
    .Y(_120_));
 sky130_fd_sc_hd__a31oi_1 _264_ (.A1(_023_),
    .A2(_024_),
    .A3(_025_),
    .B1(_026_),
    .Y(_020_));
 sky130_fd_sc_hd__nor4_1 _265_ (.A(\pattern[3] ),
    .B(net50),
    .C(_125_),
    .D(_136_),
    .Y(_027_));
 sky130_fd_sc_hd__o31ai_1 _266_ (.A1(net51),
    .A2(net52),
    .A3(_138_),
    .B1(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nand2_1 _267_ (.A(net5),
    .B(net49),
    .Y(_029_));
 sky130_fd_sc_hd__xor2_1 _268_ (.A(net6),
    .B(_029_),
    .X(_030_));
 sky130_fd_sc_hd__xnor2_1 _269_ (.A(net2),
    .B(_030_),
    .Y(_031_));
 sky130_fd_sc_hd__nand2b_1 _270_ (.A_N(net1),
    .B(net5),
    .Y(_032_));
 sky130_fd_sc_hd__maj3_1 _271_ (.A(net2),
    .B(_030_),
    .C(_032_),
    .X(_033_));
 sky130_fd_sc_hd__o21ai_0 _272_ (.A1(net5),
    .A2(net6),
    .B1(net48),
    .Y(_034_));
 sky130_fd_sc_hd__xnor2_1 _273_ (.A(net7),
    .B(_034_),
    .Y(_035_));
 sky130_fd_sc_hd__xor2_1 _274_ (.A(\pattern[5] ),
    .B(\pattern[6] ),
    .X(_121_));
 sky130_fd_sc_hd__nand2b_1 _275_ (.A_N(_035_),
    .B(net3),
    .Y(_036_));
 sky130_fd_sc_hd__xor2_1 _276_ (.A(net3),
    .B(_035_),
    .X(_037_));
 sky130_fd_sc_hd__nand2b_1 _277_ (.A_N(_037_),
    .B(_033_),
    .Y(_038_));
 sky130_fd_sc_hd__o31ai_1 _278_ (.A1(_125_),
    .A2(_135_),
    .A3(_140_),
    .B1(_028_),
    .Y(_039_));
 sky130_fd_sc_hd__inv_1 _279_ (.A(net44),
    .Y(_040_));
 sky130_fd_sc_hd__nand2b_1 _280_ (.A_N(_033_),
    .B(_037_),
    .Y(_041_));
 sky130_fd_sc_hd__nand3_1 _281_ (.A(_038_),
    .B(net44),
    .C(_041_),
    .Y(_042_));
 sky130_fd_sc_hd__nor2_1 _282_ (.A(net3),
    .B(net7),
    .Y(_043_));
 sky130_fd_sc_hd__or2_0 _283_ (.A(net3),
    .B(net7),
    .X(_044_));
 sky130_fd_sc_hd__nor3_1 _284_ (.A(_125_),
    .B(_135_),
    .C(_139_),
    .Y(_045_));
 sky130_fd_sc_hd__nor2_1 _285_ (.A(\pattern[7] ),
    .B(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__nand2_1 _286_ (.A(net3),
    .B(net7),
    .Y(_046_));
 sky130_fd_sc_hd__a21oi_1 _287_ (.A1(net43),
    .A2(_046_),
    .B1(_150_),
    .Y(_047_));
 sky130_fd_sc_hd__a21oi_1 _288_ (.A1(net53),
    .A2(net3),
    .B1(net47),
    .Y(_048_));
 sky130_fd_sc_hd__a21oi_1 _289_ (.A1(_044_),
    .A2(_046_),
    .B1(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__nor3_1 _290_ (.A(_136_),
    .B(_140_),
    .C(_141_),
    .Y(_050_));
 sky130_fd_sc_hd__nor3_1 _291_ (.A(_137_),
    .B(_139_),
    .C(_141_),
    .Y(_051_));
 sky130_fd_sc_hd__a221oi_1 _292_ (.A1(net4),
    .A2(_050_),
    .B1(_051_),
    .B2(net2),
    .C1(_049_),
    .Y(_052_));
 sky130_fd_sc_hd__o211ai_1 _293_ (.A1(_043_),
    .A2(_047_),
    .B1(_052_),
    .C1(_042_),
    .Y(_053_));
 sky130_fd_sc_hd__mux2_1 _294_ (.A0(_053_),
    .A1(net65),
    .S(net30),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _295_ (.A0(\pattern[5] ),
    .A1(net67),
    .S(net31),
    .X(_018_));
 sky130_fd_sc_hd__nand2_1 _296_ (.A(\pattern[1] ),
    .B(net52),
    .Y(_123_));
 sky130_fd_sc_hd__o21ai_0 _297_ (.A1(\pattern[6] ),
    .A2(net32),
    .B1(_153_),
    .Y(_054_));
 sky130_fd_sc_hd__nand2_1 _298_ (.A(\pattern[4] ),
    .B(_022_),
    .Y(_055_));
 sky130_fd_sc_hd__nor2_1 _299_ (.A(\pattern[5] ),
    .B(net27),
    .Y(_056_));
 sky130_fd_sc_hd__a31oi_1 _300_ (.A1(net27),
    .A2(_054_),
    .A3(_055_),
    .B1(_056_),
    .Y(_017_));
 sky130_fd_sc_hd__o31ai_1 _301_ (.A1(net5),
    .A2(net6),
    .A3(net7),
    .B1(net48),
    .Y(_057_));
 sky130_fd_sc_hd__xor2_1 _302_ (.A(net8),
    .B(_057_),
    .X(_058_));
 sky130_fd_sc_hd__nand2_1 _303_ (.A(net4),
    .B(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__xnor2_1 _304_ (.A(net4),
    .B(_058_),
    .Y(_060_));
 sky130_fd_sc_hd__a21o_1 _305_ (.A1(_036_),
    .A2(_038_),
    .B1(_060_),
    .X(_061_));
 sky130_fd_sc_hd__nand2_1 _306_ (.A(net8),
    .B(net48),
    .Y(_062_));
 sky130_fd_sc_hd__nor2_1 _307_ (.A(\pattern[1] ),
    .B(net53),
    .Y(_124_));
 sky130_fd_sc_hd__nand2_1 _308_ (.A(_057_),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__a21oi_1 _309_ (.A1(_059_),
    .A2(_061_),
    .B1(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__a31oi_1 _310_ (.A1(_059_),
    .A2(_061_),
    .A3(_063_),
    .B1(_040_),
    .Y(_065_));
 sky130_fd_sc_hd__nand2b_1 _311_ (.A_N(_064_),
    .B(_065_),
    .Y(_066_));
 sky130_fd_sc_hd__a31oi_1 _312_ (.A1(_036_),
    .A2(_038_),
    .A3(_060_),
    .B1(_040_),
    .Y(_067_));
 sky130_fd_sc_hd__a21oi_1 _313_ (.A1(net4),
    .A2(net8),
    .B1(_150_),
    .Y(_068_));
 sky130_fd_sc_hd__o21ai_0 _314_ (.A1(net4),
    .A2(net8),
    .B1(_125_),
    .Y(_069_));
 sky130_fd_sc_hd__a21oi_1 _315_ (.A1(_140_),
    .A2(_068_),
    .B1(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__a21oi_1 _316_ (.A1(net3),
    .A2(_051_),
    .B1(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__xor2_1 _317_ (.A(net4),
    .B(net8),
    .X(_072_));
 sky130_fd_sc_hd__dfrtp_1 _318_ (.CLK(clknet_2_2__leaf_clk),
    .D(_001_),
    .RESET_B(net55),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _319_ (.CLK(clknet_2_2__leaf_clk),
    .D(_005_),
    .RESET_B(net55),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_1 _320_ (.CLK(clknet_2_3__leaf_clk),
    .D(_019_),
    .RESET_B(net55),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_1 _321_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .RESET_B(net55),
    .Q(net24));
 sky130_fd_sc_hd__dfrtp_1 _322_ (.CLK(clknet_2_3__leaf_clk),
    .D(_010_),
    .RESET_B(net55),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _323_ (.CLK(clknet_2_3__leaf_clk),
    .D(_000_),
    .RESET_B(net55),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _324_ (.CLK(clknet_2_3__leaf_clk),
    .D(_021_),
    .RESET_B(net55),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _325_ (.CLK(clknet_2_0__leaf_clk),
    .D(_008_),
    .RESET_B(net56),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _326_ (.CLK(clknet_2_2__leaf_clk),
    .D(_007_),
    .RESET_B(net55),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _327_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .RESET_B(net12),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _328_ (.CLK(clknet_2_0__leaf_clk),
    .D(_018_),
    .RESET_B(net56),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _329_ (.CLK(clknet_2_1__leaf_clk),
    .D(_015_),
    .RESET_B(net56),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _330_ (.CLK(clknet_2_0__leaf_clk),
    .D(_012_),
    .RESET_B(net56),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _331_ (.CLK(clknet_2_2__leaf_clk),
    .D(_016_),
    .RESET_B(net12),
    .Q(net26));
 sky130_fd_sc_hd__dfstp_1 _332_ (.CLK(clknet_2_2__leaf_clk),
    .D(_002_),
    .SET_B(net55),
    .Q(\pattern[0] ));
 sky130_fd_sc_hd__dfrtp_1 _333_ (.CLK(clknet_2_1__leaf_clk),
    .D(_020_),
    .RESET_B(net55),
    .Q(\pattern[1] ));
 sky130_fd_sc_hd__dfrtp_1 _334_ (.CLK(clknet_2_0__leaf_clk),
    .D(_009_),
    .RESET_B(net56),
    .Q(\pattern[2] ));
 sky130_fd_sc_hd__dfrtp_1 _335_ (.CLK(clknet_2_1__leaf_clk),
    .D(_006_),
    .RESET_B(net56),
    .Q(\pattern[3] ));
 sky130_fd_sc_hd__dfrtp_1 _336_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .RESET_B(net56),
    .Q(\pattern[4] ));
 sky130_fd_sc_hd__dfrtp_1 _337_ (.CLK(clknet_2_0__leaf_clk),
    .D(_017_),
    .RESET_B(net56),
    .Q(\pattern[5] ));
 sky130_fd_sc_hd__dfrtp_1 _338_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .RESET_B(net56),
    .Q(\pattern[6] ));
 sky130_fd_sc_hd__dfrtp_1 _339_ (.CLK(clknet_2_1__leaf_clk),
    .D(_011_),
    .RESET_B(net56),
    .Q(\pattern[7] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload2 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout27 (.A(_024_),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout29 (.A(net30),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout30 (.A(net31),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout31 (.A(_157_),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout50 (.A(net51),
    .X(net50));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout51 (.A(\pattern[2] ),
    .X(net51));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout52 (.A(\pattern[0] ),
    .X(net52));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout53 (.A(\pattern[0] ),
    .X(net53));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout55 (.A(net12),
    .X(net55));
 sky130_fd_sc_hd__clkdlybuf4s50_1 fanout56 (.A(net12),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold57 (.A(net20),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold58 (.A(net25),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold59 (.A(net24),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold60 (.A(net16),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold61 (.A(net14),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold62 (.A(net19),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold63 (.A(net15),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold64 (.A(net26),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold65 (.A(net23),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold66 (.A(net17),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold67 (.A(net18),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold68 (.A(net22),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold69 (.A(net13),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold70 (.A(net21),
    .X(net70));
 sky130_fd_sc_hd__buf_2 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_2 input10 (.A(mode[0]),
    .X(net10));
 sky130_fd_sc_hd__buf_2 input11 (.A(mode[1]),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input12 (.A(rst_n),
    .X(net12));
 sky130_fd_sc_hd__buf_2 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_2 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(b[0]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(b[1]),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(b[2]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input8 (.A(b[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 input9 (.A(halt),
    .X(net9));
 sky130_fd_sc_hd__buf_1 max_cap28 (.A(_022_),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_1 max_cap43 (.A(_045_),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_1 max_cap44 (.A(net45),
    .X(net44));
 sky130_fd_sc_hd__buf_1 max_cap46 (.A(net47),
    .X(net46));
 sky130_fd_sc_hd__buf_1 max_cap47 (.A(_142_),
    .X(net47));
 sky130_fd_sc_hd__clkdlybuf4s25_1 max_cap48 (.A(net49),
    .X(net48));
 sky130_fd_sc_hd__clkdlybuf4s25_1 max_cap49 (.A(_028_),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_2 max_cap54 (.A(_153_),
    .X(net54));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(op_mask[0]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(op_mask[1]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(op_mask[2]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(op_mask[3]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(op_mask[4]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(op_mask[5]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(op_mask[6]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(op_mask[7]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(result[0]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(result[1]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(result[2]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(result[3]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(result[4]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(zero));
 sky130_fd_sc_hd__clkbuf_2 wire32 (.A(_155_),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire33 (.A(net34),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire34 (.A(net35),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire35 (.A(net36),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire36 (.A(net37),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire37 (.A(net38),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire38 (.A(net39),
    .X(net38));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire39 (.A(net40),
    .X(net39));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire40 (.A(net41),
    .X(net40));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire41 (.A(net42),
    .X(net41));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire42 (.A(_148_),
    .X(net42));
 sky130_fd_sc_hd__clkdlybuf4s25_1 wire45 (.A(_039_),
    .X(net45));
endmodule
