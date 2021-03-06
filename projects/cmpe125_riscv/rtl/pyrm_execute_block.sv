module pyrm_execute_block(
	pc_pyri,
	pc_valid_pyri,
	pc_retry_pyro,
	in1_pyri,
	in1_valid_pyri,
	in1_retry_pyro,
	in2_pyri,
	in2_valid_pyri,
	in2_retry_pyro,
	inst_pyri,
	inst_valid_pyri,
	inst_retry_pyro,
	reset_pyri,
	pc_pyro,
	pc_valid_pyro,
	pc_retry_pyri,
	inst_pyro,
	inst_valid_pyro,
	inst_retry_pyri,
	rdata_pyro,
	rdata_valid_pyro,
	rdata_retry_pyri,
	raddr_pyro,
	raddr_valid_pyro,
	raddr_retry_pyri,
  branch_pc_pyro, // Same as lab3 branch_pc_o_next (not branch_pc_o)
	branch_pc_valid_pyro,
	branch_pc_retry_pyri,
	clk
);


  

  

  

  

  


input [64-1:0] pc_pyri;
input pc_valid_pyri;
output pc_retry_pyro;
input [64-1:0] in1_pyri;
input in1_valid_pyri;
output in1_retry_pyro;
input [64-1:0] in2_pyri;
input in2_valid_pyri;
output in2_retry_pyro;
input [32-1:0] inst_pyri;
input inst_valid_pyri;
output inst_retry_pyro;
input  reset_pyri;
output[64-1:0] pc_pyro;
output pc_valid_pyro;
input pc_retry_pyri;
output[32-1:0] inst_pyro;
output inst_valid_pyro;
input inst_retry_pyri;
output[64-1:0] rdata_pyro;
output rdata_valid_pyro;
input rdata_retry_pyri;
output[64-1:0] raddr_pyro;
output raddr_valid_pyro;
input raddr_retry_pyri;
output[64-1:0] branch_pc_pyro;
output branch_pc_valid_pyro;
input branch_pc_retry_pyri;
input clk;
logic branch_pc__write__8098;
logic __tid6187__8173;
logic __tid6195__8187;
logic __tid6203__8201;
logic [64-1:0] in2__8278;
logic [6-1:0] __tid6387__8279;
logic __tid6526__8358;
logic __tid6534__8370;
logic [64-1:0] __tid6554__8376;
logic [64-1:0] __tid6556__8379;
logic [64-1:0] rdata_out__8381;
logic [64-1:0] __tid6565__8383;
logic [64-1:0] __tid6567__8386;
logic [64-1:0] rdata_out__8388;
logic [64-1:0] __tid6578__8403;
logic [6-1:0] __tid6580__8406;
logic [64-1:0] rdata_out__8407;
logic [64-1:0] __tid6589__8411;
logic [64-1:0] __tid6591__8413;
logic __tid6595__8414;
logic __tid6597__8415;
logic [64-1:0] rdata_out__8417;
logic [64-1:0] rdata_out__8418;
logic [64-1:0] rdata_out__8419;
logic [64-1:0] __tid6613__8423;
logic [64-1:0] __tid6615__8426;
logic __tid6619__8428;
logic __tid6621__8429;
logic [64-1:0] rdata_out__8431;
logic [64-1:0] rdata_out__8432;
logic [64-1:0] rdata_out__8433;
logic [64-1:0] __tid6637__8437;
logic [64-1:0] __tid6639__8440;
logic [64-1:0] rdata_out__8442;
logic [64-1:0] __tid6669__8457;
logic [6-1:0] __tid6671__8460;
logic [64-1:0] rdata_out__8461;
logic [64-1:0] __tid6680__8463;
logic [6-1:0] __tid6682__8466;
logic [64-1:0] rdata_out__8467;
logic [64-1:0] __tid6693__8481;
logic [64-1:0] __tid6695__8484;
logic [64-1:0] rdata_out__8486;
logic [64-1:0] __tid6704__8488;
logic [64-1:0] __tid6706__8491;
logic [64-1:0] rdata_out__8493;
logic in1__read__8698;
logic in2__read__8700;
logic rdata__write__8768;
logic raddr__write__8774;
logic [5-1:0] __tid6797__8783;
logic [5-1:0] __tid6806__8787;
logic [6-1:0] __tid6854__8808;
logic [64-1:0] __tid6888__8828;
logic [64-1:0] __tid6890__8831;
logic __tid6892__8833;
logic __tid6892__8840;
logic [64-1:0] __tid6913__8852;
logic [64-1:0] __tid6915__8855;
logic __tid6917__8857;
logic __tid6917__8866;
logic __tid6919__8880;
logic [64-1:0] __tid6946__8892;
logic [64-1:0] __tid6948__8894;
logic __tid6950__8895;
logic __tid6950__8900;
logic __tid6952__8912;
logic [64-1:0] __tid6979__8924;
logic [64-1:0] __tid6981__8926;
logic __tid6983__8927;
logic __tid6983__8932;
logic __tid6985__8944;
logic [64-1:0] __tid7012__8956;
logic [64-1:0] __tid7014__8959;
logic __tid7016__8961;
logic __tid7016__8970;
logic __tid7018__8984;
logic [64-1:0] __tid7045__8996;
logic [64-1:0] __tid7047__8999;
logic __tid7049__9001;
logic __tid7049__9010;
logic in1__read__9020;
logic in2__read__9022;
logic __tid7051__9024;
logic [64-1:0] __tid7073__9030;
logic [64-1:0] __tid7083__9037;
logic [64-1:0] branch_pc__9040;
logic branch_pc__write__9048;
logic [64-1:0] __tid7095__9056;
logic [64-1:0] rdata__9059;
logic rdata__write__9060;
logic raddr__write__9067;
logic raddr__write__9076;
logic [64-1:0] __tid7127__9078;
logic [64-1:0] rdata__9081;
logic rdata__write__9082;
logic [6-1:0] __tid7148__9089;
logic [64-1:0] __tid7175__9104;
logic in1__read__9105;
logic raddr__write__9120;
logic [64-1:0] sextd__9122;
logic in2__read__9123;
logic [6-1:0] __tid7213__9124;
logic __tid7215__9125;
logic __tid7217__9126;
logic __tid7223__9128;
logic __tid7225__9129;
logic [64-1:0] sextd__9133;
logic [64-1:0] sextd__9134;
logic [64-1:0] sextd__9137;
logic [64-1:0] __tid7240__9139;
logic in1__read__9140;
logic [64-1:0] __tid7242__9141;
logic [64-1:0] rdata__9142;
logic rdata__write__9143;
logic [6-1:0] __tid7287__9163;
logic [64-1:0] __tid7314__9178;
logic in1__read__9179;
logic raddr__write__9182;
logic rdata__write__9185;
logic raddr__write__9198;
logic [64-1:0] __tid7343__9200;
logic in1__read__9201;
logic [64-1:0] imm__9203;
logic rdata__write__9205;
logic [64-1:0] __tid7372__9219;
logic [64-1:0] imm__9222;
logic [64-1:0] __tid7381__9224;
logic [64-1:0] __tid7383__9226;
logic [64-1:0] rdata__9227;
logic raddr__write__9246;
logic in1__read__9250;
logic rdata__write__9263;
logic in2__read__9334;
logic branch_pc__write__9461;
logic __tid9356__10153;
logic __tid9368__10159;
logic __tid9372__10161;
logic __tid9374__10162;
logic __tid9378__10164;
logic __tid9380__10165;
logic __tid9384__10167;
logic __tid9390__10170;
logic __tid9396__10173;
logic [7-1:0] __tid6137__8134;
logic [3-1:0] __tid6148__8140;
logic [7-1:0] __tid6177__8159;
logic __tid6181__8161;
logic __tid6207__8162;
logic [7-1:0] __tid6183__8165;
logic __tid6187__8168;
logic __tid6187__8174;
logic __tid6189__8175;
logic __tid6213__8176;
logic [7-1:0] __tid6191__8179;
logic __tid6195__8182;
logic __tid6195__8188;
logic __tid6197__8189;
logic __tid6219__8190;
logic [7-1:0] __tid6199__8193;
logic __tid6203__8196;
logic __tid6203__8202;
logic __tid6225__8203;
logic __tid6227__8204;
logic [7-1:0] __tid6233__8207;
logic __tid6239__8209;
logic __tid6241__8210;
logic [7-1:0] __tid6247__8213;
logic __tid6253__8215;
logic __tid6255__8216;
logic [7-1:0] __tid6261__8219;
logic __tid6267__8221;
logic __tid6269__8222;
logic [7-1:0] __tid6275__8225;
logic __tid6281__8227;
logic __tid6283__8228;
logic [7-1:0] __tid6289__8231;
logic __tid6295__8233;
logic __tid6297__8234;
logic [7-1:0] __tid6303__8237;
logic __tid6309__8239;
logic __tid6311__8240;
logic [7-1:0] __tid6317__8243;
logic __tid6323__8245;
logic __tid6325__8246;
logic __tid6341__8253;
logic __tid6343__8254;
logic __tid6345__8255;
logic __tid6347__8256;
logic __tid6349__8257;
logic __tid6351__8258;
logic __tid6353__8259;
logic __tid6355__8260;
logic __tid6357__8261;
logic __tid6359__8262;
logic __tid6361__8263;
logic __tid6363__8264;
logic __tid6365__8265;
logic __tid6367__8266;
logic [3-1:0] __tid6400__8287;
logic __tid6406__8289;
logic __tid6408__8290;
logic [3-1:0] __tid6411__8292;
logic __tid6417__8294;
logic __tid6419__8295;
logic [3-1:0] __tid6422__8297;
logic __tid6428__8299;
logic __tid6430__8300;
logic [3-1:0] __tid6433__8302;
logic __tid6439__8304;
logic __tid6441__8305;
logic [3-1:0] __tid6444__8307;
logic __tid6450__8309;
logic __tid6452__8310;
logic [3-1:0] __tid6455__8312;
logic __tid6461__8314;
logic __tid6463__8315;
logic [3-1:0] __tid6466__8317;
logic __tid6472__8319;
logic __tid6474__8320;
logic __tid6476__8321;
logic __tid6478__8322;
logic __tid6480__8323;
logic __tid6482__8324;
logic __tid6484__8325;
logic __tid6486__8326;
logic __tid6488__8327;
logic __tid6490__8328;
logic __tid6492__8329;
logic __tid6494__8330;
logic __tid6496__8331;
logic __tid6498__8332;
logic [32-1:0] inst__8340;
logic [7-1:0] __tid6514__8341;
logic [7-1:0] __tid6516__8344;
logic __tid6520__8346;
logic __tid6538__8347;
logic [7-1:0] __tid6522__8350;
logic __tid6526__8353;
logic __tid6526__8359;
logic __tid6528__8360;
logic [7-1:0] __tid6530__8363;
logic __tid6534__8365;
logic __tid6534__8371;
logic __tid6548__8372;
logic __tid6550__8373;
logic [64-1:0] rdata_out__8395;
logic __tid6478__8400;
logic __tid6482__8408;
logic __tid6486__8420;
logic __tid6490__8434;
logic __tid6494__8443;
logic [32-1:0] inst__8448;
logic [7-1:0] __tid6655__8449;
logic [7-1:0] __tid6657__8451;
logic __tid6663__8453;
logic __tid6665__8454;
logic [64-1:0] rdata_out__8473;
logic __tid6498__8478;
logic [64-1:0] rdata_out__8500;
logic [64-1:0] rdata_out__8526;
logic [64-1:0] rdata_out__8542;
logic [64-1:0] rdata_out__8572;
logic [64-1:0] rdata_out__8602;
logic [64-1:0] rdata_out__8636;
logic [64-1:0] rdata_out__8701;
logic [5-1:0] __tid6779__8771;
logic __tid6343__8775;
logic [32-1:0] inst__8784;
logic __tid6799__8785;
logic [32-1:0] inst__8788;
logic __tid6808__8789;
logic [32-1:0] inst__8794;
logic [6-1:0] __tid6821__8795;
logic [32-1:0] inst__8800;
logic [4-1:0] __tid6834__8801;
logic [2-1:0] __tid6840__8803;
logic [8-1:0] __tid6842__8804;
logic [12-1:0] __tid6844__8805;
logic [13-1:0] __tid6846__8806;
logic [64-1:0] imm__8807;
logic __tid6856__8809;
logic __tid6858__8810;
logic __tid6864__8812;
logic __tid6866__8813;
logic [64-1:0] imm__8817;
logic [64-1:0] imm__8818;
logic [64-1:0] imm__8821;
logic [3-1:0] __tid6882__8823;
logic __tid6886__8825;
logic __tid6892__8841;
logic branch_true__8842;
logic __tid6905__8843;
logic __tid6923__8844;
logic [3-1:0] __tid6907__8847;
logic __tid6911__8849;
logic __tid6917__8867;
logic __tid6919__8868;
logic __tid6919__8881;
logic branch_true__8882;
logic __tid6938__8883;
logic __tid6956__8884;
logic [3-1:0] __tid6940__8887;
logic __tid6944__8889;
logic __tid6950__8901;
logic __tid6952__8902;
logic __tid6952__8913;
logic branch_true__8914;
logic __tid6971__8915;
logic __tid6989__8916;
logic [3-1:0] __tid6973__8919;
logic __tid6977__8921;
logic __tid6983__8933;
logic __tid6985__8934;
logic __tid6985__8945;
logic branch_true__8946;
logic __tid7004__8947;
logic __tid7022__8948;
logic [3-1:0] __tid7006__8951;
logic __tid7010__8953;
logic __tid7016__8971;
logic __tid7018__8972;
logic __tid7018__8985;
logic branch_true__8986;
logic __tid7037__8987;
logic __tid7055__8988;
logic [3-1:0] __tid7039__8991;
logic __tid7043__8993;
logic __tid7049__9011;
logic __tid7051__9012;
logic __tid7051__9025;
logic branch_true__9026;
logic __tid7069__9027;
logic [64-1:0] __tid7075__9033;
logic [64-1:0] branch_pc__9034;
logic [64-1:0] branch_pc__9047;
logic __tid6347__9053;
logic [32-1:0] inst__9063;
logic [5-1:0] __tid7108__9064;
logic __tid6351__9068;
logic [32-1:0] inst__9072;
logic [5-1:0] __tid7121__9073;
logic [32-1:0] inst__9085;
logic [12-1:0] __tid7140__9086;
logic [64-1:0] imm__9088;
logic __tid7150__9090;
logic __tid7152__9091;
logic __tid7158__9093;
logic __tid7160__9094;
logic [64-1:0] imm__9098;
logic [64-1:0] imm__9099;
logic [64-1:0] imm__9102;
logic [64-1:0] __tid7177__9106;
logic [64-1:0] branch_target__9107;
logic [64-1:0] branch_target__9109;
logic __tid6355__9112;
logic [32-1:0] inst__9116;
logic [5-1:0] __tid7201__9117;
logic __tid6359__9147;
logic [32-1:0] inst__9152;
logic [7-1:0] __tid7262__9153;
logic [32-1:0] inst__9158;
logic [5-1:0] __tid7275__9159;
logic [12-1:0] __tid7279__9161;
logic [64-1:0] imm__9162;
logic __tid7289__9164;
logic __tid7291__9165;
logic __tid7297__9167;
logic __tid7299__9168;
logic [64-1:0] imm__9172;
logic [64-1:0] imm__9173;
logic [64-1:0] imm__9176;
logic [64-1:0] __tid7316__9180;
logic [64-1:0] raddr__9181;
logic __tid6363__9190;
logic [32-1:0] inst__9194;
logic [5-1:0] __tid7337__9195;
logic [32-1:0] inst__9213;
logic [5-1:0] __tid7366__9214;
logic [64-1:0] raddr__9271;
logic raddr__write__9272;
logic in1__read__9275;
logic [64-1:0] rdata__9279;
logic rdata__write__9280;
logic in1__read__9327;
logic [64-1:0] raddr__9330;
logic raddr__write__9331;
logic [64-1:0] rdata__9332;
logic rdata__write__9333;
logic [64-1:0] raddr__9357;
logic raddr__write__9358;
logic in2__read__9361;
logic in1__read__9377;
logic [64-1:0] rdata__9380;
logic rdata__write__9381;
logic [64-1:0] raddr__9423;
logic raddr__write__9424;
logic [64-1:0] rdata__9430;
logic rdata__write__9431;
logic in1__read__9452;
logic in2__read__9466;
logic [64-1:0] rdata__9516;
logic rdata__write__9517;
logic [64-1:0] raddr__9523;
logic raddr__write__9524;
logic in1__read__9541;
logic branch_pc__write__9546;
logic in2__read__9551;
logic in1__read__9596;
logic in2__read__9599;
logic [64-1:0] branch_pc__9721;
logic branch_pc__write__9722;
logic rdata__write__9729;
logic raddr__write__9733;
logic in1__read__9797;
logic in2__read__9799;
logic rdata__write__9967;
logic raddr__write__9973;
logic branch_pc__write__10055;
logic branch_pc__write__10128;
logic raddr__write__10129;
logic rdata__write__10130;
logic in2__read__10133;
logic in1__read__10134;
logic __tid9358__10154;
logic __tid9360__10155;
logic __tid9362__10156;
logic __tid9364__10157;
logic __tid9382__10166;
logic __tid9386__10168;
logic __tid9388__10169;
logic __tid9392__10171;
logic __tid9394__10172;
logic __tid9398__10174;
logic __tid9401__10175;
logic __tid9403__10176;
logic __tid9405__10177;
logic __tid9407__10178;
logic __tid9409__10179;
logic __tid9411__10180;
logic __tid9413__10181;
logic __tid9415__10182;
logic __block_valid__10183;
logic __tid9422__10193;
logic __tid9434__10199;
logic __tid9438__10201;
logic __tid9442__10203;
logic __tid9446__10205;
logic [64-1:0] pc_pyri;
logic pc_retry_pyro;
logic pc_valid_pyri;
logic [64-1:0] in1_pyri;
logic in1_retry_pyro;
logic in1_valid_pyri;
logic [64-1:0] in2_pyri;
logic in2_retry_pyro;
logic in2_valid_pyri;
logic [32-1:0] inst_pyri;
logic inst_retry_pyro;
logic inst_valid_pyri;
logic reset_pyri;
logic reset_retry_pyro;
logic reset_valid_pyri;
logic [64-1:0] pc_pyro;
logic pc_valid_pyro;
logic pc_retry_pyri;
logic [32-1:0] inst_pyro;
logic inst_valid_pyro;
logic inst_retry_pyri;
logic [64-1:0] rdata_pyro;
logic rdata_valid_pyro;
logic rdata_retry_pyri;
logic [64-1:0] raddr_pyro;
logic raddr_valid_pyro;
logic raddr_retry_pyri;
logic [64-1:0] branch_pc_pyro;
logic branch_pc_valid_pyro;
logic branch_pc_retry_pyri;





assign branch_pc__write__8098 = 0; // asn branch_pc__write__8098, false

assign __tid6187__8173 = 0; // asn __tid6187__8173, false

assign __tid6195__8187 = 0; // asn __tid6195__8187, false

assign __tid6203__8201 = 0; // asn __tid6203__8201, false

assign in2__8278 = in2_pyri; // asn in2__8278, in2_pyri

assign __tid6387__8279 = in2__8278[5:0]; // asn __tid6387__8279, %bit_read(in2__8278, 5<uint<4>>, 0<uint<1>>)

assign __tid6526__8358 = 0; // asn __tid6526__8358, false

assign __tid6534__8370 = 0; // asn __tid6534__8370, false

assign __tid6554__8376 = in1_pyri; // asn __tid6554__8376, in1_pyri

assign __tid6556__8379 = in2_pyri; // asn __tid6556__8379, in2_pyri

assign rdata_out__8381 = __tid6554__8376 - __tid6556__8379; // asn rdata_out__8381, %subtraction(__tid6554__8376, __tid6556__8379)

assign __tid6565__8383 = in1_pyri; // asn __tid6565__8383, in1_pyri

assign __tid6567__8386 = in2_pyri; // asn __tid6567__8386, in2_pyri

assign rdata_out__8388 = __tid6565__8383 + __tid6567__8386; // asn rdata_out__8388, %addition(__tid6565__8383, __tid6567__8386)

assign __tid6578__8403 = in1_pyri; // asn __tid6578__8403, in1_pyri

assign __tid6580__8406 = __tid6387__8279; // asn __tid6580__8406, __tid6387__8279

assign rdata_out__8407 = __tid6578__8403 << __tid6580__8406; // asn rdata_out__8407, %left_shift(__tid6578__8403, __tid6580__8406)

assign __tid6589__8411 = in1_pyri; // asn __tid6589__8411, in1_pyri

assign __tid6591__8413 = in2_pyri; // asn __tid6591__8413, in2_pyri

assign __tid6595__8414 = $signed(__tid6589__8411) < $signed(__tid6591__8413); // asn __tid6595__8414, %signed_less_than(__tid6589__8411, __tid6591__8413)

assign __tid6597__8415 = __tid6595__8414; // asn __tid6597__8415, __tid6595__8414

assign rdata_out__8417 = 64'd1; // asn rdata_out__8417, 1<uint<1>>

assign rdata_out__8418 = 64'd0; // asn rdata_out__8418, 0<uint<1>>

assign rdata_out__8419 = (__tid6597__8415) ? rdata_out__8417 : rdata_out__8418;

assign __tid6613__8423 = in1_pyri; // asn __tid6613__8423, in1_pyri

assign __tid6615__8426 = in2_pyri; // asn __tid6615__8426, in2_pyri

assign __tid6619__8428 = __tid6613__8423 < __tid6615__8426; // asn __tid6619__8428, %less_than(__tid6613__8423, __tid6615__8426)

assign __tid6621__8429 = __tid6619__8428; // asn __tid6621__8429, __tid6619__8428

assign rdata_out__8431 = 64'd1; // asn rdata_out__8431, 1<uint<1>>

assign rdata_out__8432 = 64'd0; // asn rdata_out__8432, 0<uint<1>>

assign rdata_out__8433 = (__tid6621__8429) ? rdata_out__8431 : rdata_out__8432;

assign __tid6637__8437 = in1_pyri; // asn __tid6637__8437, in1_pyri

assign __tid6639__8440 = in2_pyri; // asn __tid6639__8440, in2_pyri

assign rdata_out__8442 = __tid6637__8437 ^ __tid6639__8440; // asn rdata_out__8442, %arithmetic_xor(__tid6637__8437, __tid6639__8440)

assign __tid6669__8457 = in1_pyri; // asn __tid6669__8457, in1_pyri

assign __tid6671__8460 = __tid6387__8279; // asn __tid6671__8460, __tid6387__8279

assign rdata_out__8461 = $signed(__tid6669__8457) >>> __tid6671__8460; // asn rdata_out__8461, %arith_right_shift(__tid6669__8457, __tid6671__8460)

assign __tid6680__8463 = in1_pyri; // asn __tid6680__8463, in1_pyri

assign __tid6682__8466 = __tid6387__8279; // asn __tid6682__8466, __tid6387__8279

assign rdata_out__8467 = __tid6680__8463 >> __tid6682__8466; // asn rdata_out__8467, %right_shift(__tid6680__8463, __tid6682__8466)

assign __tid6693__8481 = in1_pyri; // asn __tid6693__8481, in1_pyri

assign __tid6695__8484 = in2_pyri; // asn __tid6695__8484, in2_pyri

assign rdata_out__8486 = __tid6693__8481 | __tid6695__8484; // asn rdata_out__8486, %numeric_or(__tid6693__8481, __tid6695__8484)

assign __tid6704__8488 = in1_pyri; // asn __tid6704__8488, in1_pyri

assign __tid6706__8491 = in2_pyri; // asn __tid6706__8491, in2_pyri

assign rdata_out__8493 = __tid6704__8488 & __tid6706__8491; // asn rdata_out__8493, %numeric_and(__tid6704__8488, __tid6706__8491)

assign in1__read__8698 = 1; // asn in1__read__8698, true

assign in2__read__8700 = 1; // asn in2__read__8700, true

assign rdata__write__8768 = 1; // asn rdata__write__8768, true

assign raddr__write__8774 = 1; // asn raddr__write__8774, true

assign __tid6797__8783 = 5'd31; // asn __tid6797__8783, 31<uint<5>>

assign __tid6806__8787 = 5'd7; // asn __tid6806__8787, 7<uint<5>>

assign __tid6854__8808 = 6'd12; // asn __tid6854__8808, 12<uint<6>>

assign __tid6888__8828 = in1_pyri; // asn __tid6888__8828, in1_pyri

assign __tid6890__8831 = in2_pyri; // asn __tid6890__8831, in2_pyri

assign __tid6892__8833 = __tid6888__8828 == __tid6890__8831; // asn __tid6892__8833, %is_equal(__tid6888__8828, __tid6890__8831)

assign __tid6892__8840 = 0; // asn __tid6892__8840, false

assign __tid6913__8852 = in1_pyri; // asn __tid6913__8852, in1_pyri

assign __tid6915__8855 = in2_pyri; // asn __tid6915__8855, in2_pyri

assign __tid6917__8857 = __tid6913__8852 != __tid6915__8855; // asn __tid6917__8857, %is_not_equal(__tid6913__8852, __tid6915__8855)

assign __tid6917__8866 = 0; // asn __tid6917__8866, false

assign __tid6919__8880 = 0; // asn __tid6919__8880, false

assign __tid6946__8892 = in1_pyri; // asn __tid6946__8892, in1_pyri

assign __tid6948__8894 = in2_pyri; // asn __tid6948__8894, in2_pyri

// BUGGY LINE:
//assign __tid6950__8895 = $signed(__tid6946__8892) > $signed(__tid6948__8894); // asn __tid6950__8895, %signed_less_than(__tid6946__8892, __tid6948__8894)
assign __tid6950__8895 = $signed(__tid6946__8892) < $signed(__tid6948__8894); // asn __tid6950__8895, %signed_less_than(__tid6946__8892, __tid6948__8894)

assign __tid6950__8900 = 0; // asn __tid6950__8900, false

assign __tid6952__8912 = 0; // asn __tid6952__8912, false

assign __tid6979__8924 = in1_pyri; // asn __tid6979__8924, in1_pyri

assign __tid6981__8926 = in2_pyri; // asn __tid6981__8926, in2_pyri

assign __tid6983__8927 = $signed(__tid6979__8924) >= $signed(__tid6981__8926); // asn __tid6983__8927, %signed_greater_than_or_equal(__tid6979__8924, __tid6981__8926)

assign __tid6983__8932 = 0; // asn __tid6983__8932, false

assign __tid6985__8944 = 0; // asn __tid6985__8944, false

assign __tid7012__8956 = in1_pyri; // asn __tid7012__8956, in1_pyri

assign __tid7014__8959 = in2_pyri; // asn __tid7014__8959, in2_pyri

assign __tid7016__8961 = __tid7012__8956 < __tid7014__8959; // asn __tid7016__8961, %less_than(__tid7012__8956, __tid7014__8959)

assign __tid7016__8970 = 0; // asn __tid7016__8970, false

assign __tid7018__8984 = 0; // asn __tid7018__8984, false

assign __tid7045__8996 = in1_pyri; // asn __tid7045__8996, in1_pyri

assign __tid7047__8999 = in2_pyri; // asn __tid7047__8999, in2_pyri

assign __tid7049__9001 = __tid7045__8996 >= __tid7047__8999; // asn __tid7049__9001, %greater_than_or_equal(__tid7045__8996, __tid7047__8999)

assign __tid7049__9010 = 0; // asn __tid7049__9010, false

assign in1__read__9020 = 1; // asn in1__read__9020, true

assign in2__read__9022 = 1; // asn in2__read__9022, true

assign __tid7051__9024 = 0; // asn __tid7051__9024, false

assign __tid7073__9030 = pc_pyri; // asn __tid7073__9030, pc_pyri

assign __tid7083__9037 = pc_pyri; // asn __tid7083__9037, pc_pyri

assign branch_pc__9040 = __tid7083__9037 + 64'd4; // asn branch_pc__9040, %addition(__tid7083__9037, 4<uint<64>>)

assign branch_pc__write__9048 = 1; // asn branch_pc__write__9048, true

assign __tid7095__9056 = pc_pyri; // asn __tid7095__9056, pc_pyri

assign rdata__9059 = __tid7095__9056 + 64'd4; // asn rdata__9059, %addition(__tid7095__9056, 4<uint<64>>)

assign rdata__write__9060 = 1; // asn rdata__write__9060, true

assign raddr__write__9067 = 1; // asn raddr__write__9067, true

assign raddr__write__9076 = 1; // asn raddr__write__9076, true

assign __tid7127__9078 = pc_pyri; // asn __tid7127__9078, pc_pyri

assign rdata__9081 = __tid7127__9078 + 64'd4; // asn rdata__9081, %addition(__tid7127__9078, 4<uint<64>>)

assign rdata__write__9082 = 1; // asn rdata__write__9082, true

assign __tid7148__9089 = 6'd11; // asn __tid7148__9089, 11<uint<6>>

assign __tid7175__9104 = in1_pyri; // asn __tid7175__9104, in1_pyri

assign in1__read__9105 = 1; // asn in1__read__9105, true

assign raddr__write__9120 = 1; // asn raddr__write__9120, true

assign sextd__9122 = in2_pyri; // asn sextd__9122, in2_pyri

assign in2__read__9123 = 1; // asn in2__read__9123, true

assign __tid7213__9124 = 6'd11; // asn __tid7213__9124, 11<uint<6>>

assign __tid7215__9125 = sextd__9122[__tid7213__9124]; // asn __tid7215__9125, %bit_read(sextd__9122, __tid7213__9124)

assign __tid7217__9126 = __tid7215__9125; // asn __tid7217__9126, __tid7215__9125

assign __tid7223__9128 = __tid7217__9126 == 1'd1; // asn __tid7223__9128, %is_equal(__tid7217__9126, 1<uint<1>>)

assign __tid7225__9129 = __tid7223__9128; // asn __tid7225__9129, __tid7223__9128

assign sextd__9133 = in2_pyri; // asn sextd__9133, in2_pyri

assign sextd__9134 = sextd__9133 | 64'd18446744073709547520; // asn sextd__9134, %numeric_or(sextd__9133, 18446744073709547520<uint<64>>)

assign sextd__9137 = (__tid7225__9129) ? sextd__9134 : in2_pyri;

assign __tid7240__9139 = in1_pyri; // asn __tid7240__9139, in1_pyri

assign in1__read__9140 = 1; // asn in1__read__9140, true

assign __tid7242__9141 = sextd__9137; // asn __tid7242__9141, sextd__9137

assign rdata__9142 = __tid7240__9139 + __tid7242__9141; // asn rdata__9142, %addition(__tid7240__9139, __tid7242__9141)

assign rdata__write__9143 = 1; // asn rdata__write__9143, true

assign __tid7287__9163 = 6'd11; // asn __tid7287__9163, 11<uint<6>>

assign __tid7314__9178 = in1_pyri; // asn __tid7314__9178, in1_pyri

assign in1__read__9179 = 1; // asn in1__read__9179, true

assign raddr__write__9182 = 1; // asn raddr__write__9182, true

assign rdata__write__9185 = 1; // asn rdata__write__9185, true

assign raddr__write__9198 = 1; // asn raddr__write__9198, true

assign __tid7343__9200 = in1_pyri; // asn __tid7343__9200, in1_pyri

assign in1__read__9201 = 1; // asn in1__read__9201, true

assign imm__9203 = __tid7343__9200 << 64'd12; // asn imm__9203, %left_shift(__tid7343__9200, 12<uint<64>>)

assign rdata__write__9205 = 1; // asn rdata__write__9205, true

assign __tid7372__9219 = in1_pyri; // asn __tid7372__9219, in1_pyri

assign imm__9222 = __tid7372__9219 << 64'd12; // asn imm__9222, %left_shift(__tid7372__9219, 12<uint<64>>)

assign __tid7381__9224 = pc_pyri; // asn __tid7381__9224, pc_pyri

assign __tid7383__9226 = imm__9222; // asn __tid7383__9226, imm__9222

assign rdata__9227 = __tid7381__9224 + __tid7383__9226; // asn rdata__9227, %addition(__tid7381__9224, __tid7383__9226)

assign raddr__write__9246 = 0; // asn raddr__write__9246, false

assign in1__read__9250 = 0; // asn in1__read__9250, false

assign rdata__write__9263 = 0; // asn rdata__write__9263, false

assign in2__read__9334 = 0; // asn in2__read__9334, false

assign branch_pc__write__9461 = 0; // asn branch_pc__write__9461, false

assign pc_pyro = pc_pyri; // asn pc_pyro, pc_pyri

assign __tid9356__10153 = pc_valid_pyri; // asn __tid9356__10153, pc_valid_pyri

assign __tid9368__10159 = inst_valid_pyri; // asn __tid9368__10159, inst_valid_pyri

assign __tid9372__10161 = ! inst_retry_pyri; // asn __tid9372__10161, %logical_not(inst_retry_pyri)

assign __tid9374__10162 = __tid9372__10161; // asn __tid9374__10162, __tid9372__10161

assign __tid9378__10164 = ! pc_retry_pyri; // asn __tid9378__10164, %logical_not(pc_retry_pyri)

assign __tid9380__10165 = __tid9378__10164; // asn __tid9380__10165, __tid9378__10164

assign __tid9384__10167 = ! rdata_retry_pyri; // asn __tid9384__10167, %logical_not(rdata_retry_pyri)

assign __tid9390__10170 = ! raddr_retry_pyri; // asn __tid9390__10170, %logical_not(raddr_retry_pyri)

assign __tid9396__10173 = ! branch_pc_retry_pyri; // asn __tid9396__10173, %logical_not(branch_pc_retry_pyri)

assign __tid6137__8134 = inst_pyri[6:0]; // asn __tid6137__8134, %bit_read(inst_pyri, 6<uint<4>>, 0<uint<1>>)

assign __tid6148__8140 = inst_pyri[14:12]; // asn __tid6148__8140, %bit_read(inst_pyri, 14<uint<5>>, 12<uint<5>>)

assign __tid6177__8159 = __tid6137__8134; // asn __tid6177__8159, __tid6137__8134

assign __tid6181__8161 = __tid6177__8159 == 7'd19; // asn __tid6181__8161, %is_equal(__tid6177__8159, 19<uint<7>>)

assign __tid6207__8162 = ! __tid6181__8161; // asn __tid6207__8162, %logical_not(__tid6181__8161)

assign __tid6183__8165 = __tid6137__8134; // asn __tid6183__8165, __tid6137__8134

assign __tid6187__8168 = __tid6183__8165 == 7'd51; // asn __tid6187__8168, %is_equal(__tid6183__8165, 51<uint<7>>)

assign __tid6187__8174 = (__tid6207__8162) ? __tid6187__8168 : __tid6187__8173;

assign __tid6189__8175 = __tid6181__8161 | __tid6187__8174; // asn __tid6189__8175, %logical_or(__tid6181__8161, __tid6187__8174)

assign __tid6213__8176 = ! __tid6189__8175; // asn __tid6213__8176, %logical_not(__tid6189__8175)

assign __tid6191__8179 = __tid6137__8134; // asn __tid6191__8179, __tid6137__8134

assign __tid6195__8182 = __tid6191__8179 == 7'd27; // asn __tid6195__8182, %is_equal(__tid6191__8179, 27<uint<7>>)

assign __tid6195__8188 = (__tid6213__8176) ? __tid6195__8182 : __tid6195__8187;

assign __tid6197__8189 = __tid6189__8175 | __tid6195__8188; // asn __tid6197__8189, %logical_or(__tid6189__8175, __tid6195__8188)

assign __tid6219__8190 = ! __tid6197__8189; // asn __tid6219__8190, %logical_not(__tid6197__8189)

assign __tid6199__8193 = __tid6137__8134; // asn __tid6199__8193, __tid6137__8134

assign __tid6203__8196 = __tid6199__8193 == 7'd59; // asn __tid6203__8196, %is_equal(__tid6199__8193, 59<uint<7>>)

assign __tid6203__8202 = (__tid6219__8190) ? __tid6203__8196 : __tid6203__8201;

assign __tid6225__8203 = __tid6197__8189 | __tid6203__8202; // asn __tid6225__8203, %logical_or(__tid6197__8189, __tid6203__8202)

assign __tid6227__8204 = __tid6225__8203; // asn __tid6227__8204, __tid6225__8203

assign __tid6233__8207 = __tid6137__8134; // asn __tid6233__8207, __tid6137__8134

assign __tid6239__8209 = __tid6233__8207 == 7'd99; // asn __tid6239__8209, %is_equal(__tid6233__8207, 99<uint<7>>)

assign __tid6241__8210 = __tid6239__8209; // asn __tid6241__8210, __tid6239__8209

assign __tid6247__8213 = __tid6137__8134; // asn __tid6247__8213, __tid6137__8134

assign __tid6253__8215 = __tid6247__8213 == 7'd111; // asn __tid6253__8215, %is_equal(__tid6247__8213, 111<uint<7>>)

assign __tid6255__8216 = __tid6253__8215; // asn __tid6255__8216, __tid6253__8215

assign __tid6261__8219 = __tid6137__8134; // asn __tid6261__8219, __tid6137__8134

assign __tid6267__8221 = __tid6261__8219 == 7'd103; // asn __tid6267__8221, %is_equal(__tid6261__8219, 103<uint<7>>)

assign __tid6269__8222 = __tid6267__8221; // asn __tid6269__8222, __tid6267__8221

assign __tid6275__8225 = __tid6137__8134; // asn __tid6275__8225, __tid6137__8134

assign __tid6281__8227 = __tid6275__8225 == 7'd3; // asn __tid6281__8227, %is_equal(__tid6275__8225, 3<uint<7>>)

assign __tid6283__8228 = __tid6281__8227; // asn __tid6283__8228, __tid6281__8227

assign __tid6289__8231 = __tid6137__8134; // asn __tid6289__8231, __tid6137__8134

assign __tid6295__8233 = __tid6289__8231 == 7'd35; // asn __tid6295__8233, %is_equal(__tid6289__8231, 35<uint<7>>)

assign __tid6297__8234 = __tid6295__8233; // asn __tid6297__8234, __tid6295__8233

assign __tid6303__8237 = __tid6137__8134; // asn __tid6303__8237, __tid6137__8134

assign __tid6309__8239 = __tid6303__8237 == 7'd55; // asn __tid6309__8239, %is_equal(__tid6303__8237, 55<uint<7>>)

assign __tid6311__8240 = __tid6309__8239; // asn __tid6311__8240, __tid6309__8239

assign __tid6317__8243 = __tid6137__8134; // asn __tid6317__8243, __tid6137__8134

assign __tid6323__8245 = __tid6317__8243 == 7'd23; // asn __tid6323__8245, %is_equal(__tid6317__8243, 23<uint<7>>)

assign __tid6325__8246 = __tid6323__8245; // asn __tid6325__8246, __tid6323__8245

assign __tid6341__8253 = ! __tid6227__8204; // asn __tid6341__8253, %logical_not(__tid6227__8204)

assign __tid6343__8254 = __tid6341__8253 & __tid6241__8210; // asn __tid6343__8254, %logical_and(__tid6341__8253, __tid6241__8210)

assign __tid6345__8255 = ! __tid6343__8254; // asn __tid6345__8255, %logical_not(__tid6343__8254)

assign __tid6347__8256 = __tid6345__8255 & __tid6255__8216; // asn __tid6347__8256, %logical_and(__tid6345__8255, __tid6255__8216)

assign __tid6349__8257 = ! __tid6347__8256; // asn __tid6349__8257, %logical_not(__tid6347__8256)

assign __tid6351__8258 = __tid6349__8257 & __tid6269__8222; // asn __tid6351__8258, %logical_and(__tid6349__8257, __tid6269__8222)

assign __tid6353__8259 = ! __tid6351__8258; // asn __tid6353__8259, %logical_not(__tid6351__8258)

assign __tid6355__8260 = __tid6353__8259 & __tid6283__8228; // asn __tid6355__8260, %logical_and(__tid6353__8259, __tid6283__8228)

assign __tid6357__8261 = ! __tid6355__8260; // asn __tid6357__8261, %logical_not(__tid6355__8260)

assign __tid6359__8262 = __tid6357__8261 & __tid6297__8234; // asn __tid6359__8262, %logical_and(__tid6357__8261, __tid6297__8234)

assign __tid6361__8263 = ! __tid6359__8262; // asn __tid6361__8263, %logical_not(__tid6359__8262)

assign __tid6363__8264 = __tid6361__8263 & __tid6311__8240; // asn __tid6363__8264, %logical_and(__tid6361__8263, __tid6311__8240)

assign __tid6365__8265 = ! __tid6363__8264; // asn __tid6365__8265, %logical_not(__tid6363__8264)

assign __tid6367__8266 = __tid6365__8265 & __tid6325__8246; // asn __tid6367__8266, %logical_and(__tid6365__8265, __tid6325__8246)

assign __tid6400__8287 = __tid6148__8140; // asn __tid6400__8287, __tid6148__8140

assign __tid6406__8289 = __tid6400__8287 == 3'd0; // asn __tid6406__8289, %is_equal(__tid6400__8287, 0<uint<3>>)

assign __tid6408__8290 = __tid6406__8289; // asn __tid6408__8290, __tid6406__8289

assign __tid6411__8292 = __tid6148__8140; // asn __tid6411__8292, __tid6148__8140

assign __tid6417__8294 = __tid6411__8292 == 3'd1; // asn __tid6417__8294, %is_equal(__tid6411__8292, 1<uint<3>>)

assign __tid6419__8295 = __tid6417__8294; // asn __tid6419__8295, __tid6417__8294

assign __tid6422__8297 = __tid6148__8140; // asn __tid6422__8297, __tid6148__8140

assign __tid6428__8299 = __tid6422__8297 == 3'd2; // asn __tid6428__8299, %is_equal(__tid6422__8297, 2<uint<3>>)

assign __tid6430__8300 = __tid6428__8299; // asn __tid6430__8300, __tid6428__8299

assign __tid6433__8302 = __tid6148__8140; // asn __tid6433__8302, __tid6148__8140

assign __tid6439__8304 = __tid6433__8302 == 3'd3; // asn __tid6439__8304, %is_equal(__tid6433__8302, 3<uint<3>>)

assign __tid6441__8305 = __tid6439__8304; // asn __tid6441__8305, __tid6439__8304

assign __tid6444__8307 = __tid6148__8140; // asn __tid6444__8307, __tid6148__8140

assign __tid6450__8309 = __tid6444__8307 == 3'd4; // asn __tid6450__8309, %is_equal(__tid6444__8307, 4<uint<3>>)

assign __tid6452__8310 = __tid6450__8309; // asn __tid6452__8310, __tid6450__8309

assign __tid6455__8312 = __tid6148__8140; // asn __tid6455__8312, __tid6148__8140

assign __tid6461__8314 = __tid6455__8312 == 3'd5; // asn __tid6461__8314, %is_equal(__tid6455__8312, 5<uint<3>>)

assign __tid6463__8315 = __tid6461__8314; // asn __tid6463__8315, __tid6461__8314

assign __tid6466__8317 = __tid6148__8140; // asn __tid6466__8317, __tid6148__8140

assign __tid6472__8319 = __tid6466__8317 == 3'd6; // asn __tid6472__8319, %is_equal(__tid6466__8317, 6<uint<3>>)

assign __tid6474__8320 = __tid6472__8319; // asn __tid6474__8320, __tid6472__8319

assign __tid6476__8321 = ! __tid6408__8290; // asn __tid6476__8321, %logical_not(__tid6408__8290)

assign __tid6478__8322 = __tid6476__8321 & __tid6419__8295; // asn __tid6478__8322, %logical_and(__tid6476__8321, __tid6419__8295)

assign __tid6480__8323 = ! __tid6478__8322; // asn __tid6480__8323, %logical_not(__tid6478__8322)

assign __tid6482__8324 = __tid6480__8323 & __tid6430__8300; // asn __tid6482__8324, %logical_and(__tid6480__8323, __tid6430__8300)

assign __tid6484__8325 = ! __tid6482__8324; // asn __tid6484__8325, %logical_not(__tid6482__8324)

assign __tid6486__8326 = __tid6484__8325 & __tid6441__8305; // asn __tid6486__8326, %logical_and(__tid6484__8325, __tid6441__8305)

assign __tid6488__8327 = ! __tid6486__8326; // asn __tid6488__8327, %logical_not(__tid6486__8326)

assign __tid6490__8328 = __tid6488__8327 & __tid6452__8310; // asn __tid6490__8328, %logical_and(__tid6488__8327, __tid6452__8310)

assign __tid6492__8329 = ! __tid6490__8328; // asn __tid6492__8329, %logical_not(__tid6490__8328)

assign __tid6494__8330 = __tid6492__8329 & __tid6463__8315; // asn __tid6494__8330, %logical_and(__tid6492__8329, __tid6463__8315)

assign __tid6496__8331 = ! __tid6494__8330; // asn __tid6496__8331, %logical_not(__tid6494__8330)

assign __tid6498__8332 = __tid6496__8331 & __tid6474__8320; // asn __tid6498__8332, %logical_and(__tid6496__8331, __tid6474__8320)

assign inst__8340 = inst_pyri; // asn inst__8340, inst_pyri

assign __tid6514__8341 = inst__8340[31:25]; // asn __tid6514__8341, %bit_read(inst__8340, 31<uint<6>>, 25<uint<6>>)

assign __tid6516__8344 = __tid6137__8134; // asn __tid6516__8344, __tid6137__8134

assign __tid6520__8346 = __tid6516__8344 == 7'd51; // asn __tid6520__8346, %is_equal(__tid6516__8344, 51<uint<7>>)

assign __tid6538__8347 = ! __tid6520__8346; // asn __tid6538__8347, %logical_not(__tid6520__8346)

assign __tid6522__8350 = __tid6137__8134; // asn __tid6522__8350, __tid6137__8134

assign __tid6526__8353 = __tid6522__8350 == 7'd59; // asn __tid6526__8353, %is_equal(__tid6522__8350, 59<uint<7>>)

assign __tid6526__8359 = (__tid6538__8347) ? __tid6526__8353 : __tid6526__8358;

assign __tid6528__8360 = __tid6520__8346 | __tid6526__8359; // asn __tid6528__8360, %logical_or(__tid6520__8346, __tid6526__8359)

assign __tid6530__8363 = __tid6514__8341; // asn __tid6530__8363, __tid6514__8341

assign __tid6534__8365 = __tid6530__8363 != 7'd0; // asn __tid6534__8365, %is_not_equal(__tid6530__8363, 0<uint<7>>)

assign __tid6534__8371 = (__tid6528__8360) ? __tid6534__8365 : __tid6534__8370;

assign __tid6548__8372 = __tid6528__8360 & __tid6534__8371; // asn __tid6548__8372, %logical_and(__tid6528__8360, __tid6534__8371)

assign __tid6550__8373 = __tid6548__8372; // asn __tid6550__8373, __tid6548__8372

assign rdata_out__8395 = (__tid6550__8373) ? rdata_out__8381 : rdata_out__8388;

assign __tid6478__8400 = __tid6478__8322; // asn __tid6478__8400, __tid6478__8322

assign __tid6482__8408 = __tid6482__8324; // asn __tid6482__8408, __tid6482__8324

assign __tid6486__8420 = __tid6486__8326; // asn __tid6486__8420, __tid6486__8326

assign __tid6490__8434 = __tid6490__8328; // asn __tid6490__8434, __tid6490__8328

assign __tid6494__8443 = __tid6494__8330; // asn __tid6494__8443, __tid6494__8330

assign inst__8448 = inst_pyri; // asn inst__8448, inst_pyri

assign __tid6655__8449 = inst__8448[31:25]; // asn __tid6655__8449, %bit_read(inst__8448, 31<uint<6>>, 25<uint<6>>)

assign __tid6657__8451 = __tid6655__8449; // asn __tid6657__8451, __tid6655__8449

assign __tid6663__8453 = __tid6657__8451 > 7'd0; // asn __tid6663__8453, %greater_than(__tid6657__8451, 0<uint<7>>)

assign __tid6665__8454 = __tid6663__8453; // asn __tid6665__8454, __tid6663__8453

assign rdata_out__8473 = (__tid6665__8454) ? rdata_out__8461 : rdata_out__8467;

assign __tid6498__8478 = __tid6498__8332; // asn __tid6498__8478, __tid6498__8332

assign rdata_out__8500 = (__tid6498__8478) ? rdata_out__8486 : rdata_out__8493;

assign rdata_out__8526 = (__tid6494__8443) ? rdata_out__8473 : rdata_out__8500;

assign rdata_out__8542 = (__tid6490__8434) ? rdata_out__8442 : rdata_out__8526;

assign rdata_out__8572 = (__tid6486__8420) ? rdata_out__8433 : rdata_out__8542;

assign rdata_out__8602 = (__tid6482__8408) ? rdata_out__8419 : rdata_out__8572;

assign rdata_out__8636 = (__tid6478__8400) ? rdata_out__8407 : rdata_out__8602;

assign rdata_out__8701 = (__tid6408__8290) ? rdata_out__8395 : rdata_out__8636;

assign __tid6779__8771 = inst__8340[11:7]; // asn __tid6779__8771, %bit_read(inst__8340, 11<uint<5>>, 7<uint<4>>)

assign __tid6343__8775 = __tid6343__8254; // asn __tid6343__8775, __tid6343__8254

assign inst__8784 = inst_pyri; // asn inst__8784, inst_pyri

assign __tid6799__8785 = inst__8784[__tid6797__8783]; // asn __tid6799__8785, %bit_read(inst__8784, __tid6797__8783)

assign inst__8788 = inst_pyri; // asn inst__8788, inst_pyri

assign __tid6808__8789 = inst__8788[__tid6806__8787]; // asn __tid6808__8789, %bit_read(inst__8788, __tid6806__8787)

assign inst__8794 = inst_pyri; // asn inst__8794, inst_pyri

assign __tid6821__8795 = inst__8794[30:25]; // asn __tid6821__8795, %bit_read(inst__8794, 30<uint<6>>, 25<uint<6>>)

assign inst__8800 = inst_pyri; // asn inst__8800, inst_pyri

assign __tid6834__8801 = inst__8800[11:8]; // asn __tid6834__8801, %bit_read(inst__8800, 11<uint<5>>, 8<uint<4>>)

assign __tid6840__8803 = { __tid6799__8785, __tid6808__8789 }; // asn __tid6840__8803, %concat(__tid6799__8785, 1<uint<32>>, __tid6808__8789, 1<uint<32>>)

assign __tid6842__8804 = { __tid6840__8803, __tid6821__8795 }; // asn __tid6842__8804, %concat(__tid6840__8803, 2<uint<32>>, __tid6821__8795, 6<uint<32>>)

assign __tid6844__8805 = { __tid6842__8804, __tid6834__8801 }; // asn __tid6844__8805, %concat(__tid6842__8804, 8<uint<32>>, __tid6834__8801, 4<uint<32>>)

assign __tid6846__8806 = { __tid6844__8805, 1'd0 }; // asn __tid6846__8806, %concat(__tid6844__8805, 12<uint<32>>, 0<uint<1>>, 1<uint<32>>)

assign imm__8807 = { 51'd0, __tid6846__8806 }; // asn imm__8807, __tid6846__8806

assign __tid6856__8809 = imm__8807[__tid6854__8808]; // asn __tid6856__8809, %bit_read(imm__8807, __tid6854__8808)

assign __tid6858__8810 = __tid6856__8809; // asn __tid6858__8810, __tid6856__8809

assign __tid6864__8812 = __tid6858__8810 == 1'd1; // asn __tid6864__8812, %is_equal(__tid6858__8810, 1<uint<1>>)

assign __tid6866__8813 = __tid6864__8812; // asn __tid6866__8813, __tid6864__8812

assign imm__8817 = { 51'd0, __tid6846__8806 }; // asn imm__8817, __tid6846__8806

assign imm__8818 = imm__8817 | 64'd18446744073709547520; // asn imm__8818, %numeric_or(imm__8817, 18446744073709547520<uint<64>>)

assign imm__8821 = (__tid6866__8813) ? imm__8818 : { 51'd0, __tid6846__8806 };

assign __tid6882__8823 = __tid6148__8140; // asn __tid6882__8823, __tid6148__8140

assign __tid6886__8825 = __tid6882__8823 == 3'd0; // asn __tid6886__8825, %is_equal(__tid6882__8823, 0<uint<3>>)

assign __tid6892__8841 = (__tid6886__8825) ? __tid6892__8833 : __tid6892__8840;

assign branch_true__8842 = __tid6886__8825 & __tid6892__8841; // asn branch_true__8842, %logical_and(__tid6886__8825, __tid6892__8841)

assign __tid6905__8843 = branch_true__8842; // asn __tid6905__8843, branch_true__8842

assign __tid6923__8844 = ! __tid6905__8843; // asn __tid6923__8844, %logical_not(__tid6905__8843)

assign __tid6907__8847 = __tid6148__8140; // asn __tid6907__8847, __tid6148__8140

assign __tid6911__8849 = __tid6907__8847 == 3'd1; // asn __tid6911__8849, %is_equal(__tid6907__8847, 1<uint<3>>)

assign __tid6917__8867 = (__tid6911__8849) ? __tid6917__8857 : __tid6917__8866;

assign __tid6919__8868 = __tid6911__8849 & __tid6917__8867; // asn __tid6919__8868, %logical_and(__tid6911__8849, __tid6917__8867)

assign __tid6919__8881 = (__tid6923__8844) ? __tid6919__8868 : __tid6919__8880;

assign branch_true__8882 = __tid6905__8843 | __tid6919__8881; // asn branch_true__8882, %logical_or(__tid6905__8843, __tid6919__8881)

assign __tid6938__8883 = branch_true__8882; // asn __tid6938__8883, branch_true__8882

assign __tid6956__8884 = ! __tid6938__8883; // asn __tid6956__8884, %logical_not(__tid6938__8883)

assign __tid6940__8887 = __tid6148__8140; // asn __tid6940__8887, __tid6148__8140

assign __tid6944__8889 = __tid6940__8887 == 3'd4; // asn __tid6944__8889, %is_equal(__tid6940__8887, 4<uint<3>>)

assign __tid6950__8901 = (__tid6944__8889) ? __tid6950__8895 : __tid6950__8900;

assign __tid6952__8902 = __tid6944__8889 & __tid6950__8901; // asn __tid6952__8902, %logical_and(__tid6944__8889, __tid6950__8901)

assign __tid6952__8913 = (__tid6956__8884) ? __tid6952__8902 : __tid6952__8912;

assign branch_true__8914 = __tid6938__8883 | __tid6952__8913; // asn branch_true__8914, %logical_or(__tid6938__8883, __tid6952__8913)

assign __tid6971__8915 = branch_true__8914; // asn __tid6971__8915, branch_true__8914

assign __tid6989__8916 = ! __tid6971__8915; // asn __tid6989__8916, %logical_not(__tid6971__8915)

assign __tid6973__8919 = __tid6148__8140; // asn __tid6973__8919, __tid6148__8140

assign __tid6977__8921 = __tid6973__8919 == 3'd5; // asn __tid6977__8921, %is_equal(__tid6973__8919, 5<uint<3>>)

assign __tid6983__8933 = (__tid6977__8921) ? __tid6983__8927 : __tid6983__8932;

assign __tid6985__8934 = __tid6977__8921 & __tid6983__8933; // asn __tid6985__8934, %logical_and(__tid6977__8921, __tid6983__8933)

assign __tid6985__8945 = (__tid6989__8916) ? __tid6985__8934 : __tid6985__8944;

assign branch_true__8946 = __tid6971__8915 | __tid6985__8945; // asn branch_true__8946, %logical_or(__tid6971__8915, __tid6985__8945)

assign __tid7004__8947 = branch_true__8946; // asn __tid7004__8947, branch_true__8946

assign __tid7022__8948 = ! __tid7004__8947; // asn __tid7022__8948, %logical_not(__tid7004__8947)

assign __tid7006__8951 = __tid6148__8140; // asn __tid7006__8951, __tid6148__8140

assign __tid7010__8953 = __tid7006__8951 == 3'd6; // asn __tid7010__8953, %is_equal(__tid7006__8951, 6<uint<3>>)

assign __tid7016__8971 = (__tid7010__8953) ? __tid7016__8961 : __tid7016__8970;

assign __tid7018__8972 = __tid7010__8953 & __tid7016__8971; // asn __tid7018__8972, %logical_and(__tid7010__8953, __tid7016__8971)

assign __tid7018__8985 = (__tid7022__8948) ? __tid7018__8972 : __tid7018__8984;

assign branch_true__8986 = __tid7004__8947 | __tid7018__8985; // asn branch_true__8986, %logical_or(__tid7004__8947, __tid7018__8985)

assign __tid7037__8987 = branch_true__8986; // asn __tid7037__8987, branch_true__8986

assign __tid7055__8988 = ! __tid7037__8987; // asn __tid7055__8988, %logical_not(__tid7037__8987)

assign __tid7039__8991 = __tid6148__8140; // asn __tid7039__8991, __tid6148__8140

assign __tid7043__8993 = __tid7039__8991 == 3'd7; // asn __tid7043__8993, %is_equal(__tid7039__8991, 7<uint<3>>)

assign __tid7049__9011 = (__tid7043__8993) ? __tid7049__9001 : __tid7049__9010;

assign __tid7051__9012 = __tid7043__8993 & __tid7049__9011; // asn __tid7051__9012, %logical_and(__tid7043__8993, __tid7049__9011)

assign __tid7051__9025 = (__tid7055__8988) ? __tid7051__9012 : __tid7051__9024;

assign branch_true__9026 = __tid7037__8987 | __tid7051__9025; // asn branch_true__9026, %logical_or(__tid7037__8987, __tid7051__9025)

assign __tid7069__9027 = branch_true__9026; // asn __tid7069__9027, branch_true__9026

assign __tid7075__9033 = imm__8821; // asn __tid7075__9033, imm__8821

assign branch_pc__9034 = __tid7073__9030 + __tid7075__9033; // asn branch_pc__9034, %addition(__tid7073__9030, __tid7075__9033)

assign branch_pc__9047 = (__tid7069__9027) ? branch_pc__9034 : branch_pc__9040;

assign __tid6347__9053 = __tid6347__8256; // asn __tid6347__9053, __tid6347__8256

assign inst__9063 = inst_pyri; // asn inst__9063, inst_pyri

assign __tid7108__9064 = inst__9063[11:7]; // asn __tid7108__9064, %bit_read(inst__9063, 11<uint<5>>, 7<uint<4>>)

assign __tid6351__9068 = __tid6351__8258; // asn __tid6351__9068, __tid6351__8258

assign inst__9072 = inst_pyri; // asn inst__9072, inst_pyri

assign __tid7121__9073 = inst__9072[11:7]; // asn __tid7121__9073, %bit_read(inst__9072, 11<uint<5>>, 7<uint<4>>)

assign inst__9085 = inst_pyri; // asn inst__9085, inst_pyri

assign __tid7140__9086 = inst__9085[31:20]; // asn __tid7140__9086, %bit_read(inst__9085, 31<uint<6>>, 20<uint<6>>)

assign imm__9088 = { 52'd0, __tid7140__9086 }; // asn imm__9088, __tid7140__9086

assign __tid7150__9090 = imm__9088[__tid7148__9089]; // asn __tid7150__9090, %bit_read(imm__9088, __tid7148__9089)

assign __tid7152__9091 = __tid7150__9090; // asn __tid7152__9091, __tid7150__9090

assign __tid7158__9093 = __tid7152__9091 == 1'd1; // asn __tid7158__9093, %is_equal(__tid7152__9091, 1<uint<1>>)

assign __tid7160__9094 = __tid7158__9093; // asn __tid7160__9094, __tid7158__9093

assign imm__9098 = { 52'd0, __tid7140__9086 }; // asn imm__9098, __tid7140__9086

assign imm__9099 = imm__9098 | 64'd18446744073709547520; // asn imm__9099, %numeric_or(imm__9098, 18446744073709547520<uint<64>>)

assign imm__9102 = (__tid7160__9094) ? imm__9099 : { 52'd0, __tid7140__9086 };

assign __tid7177__9106 = imm__9102; // asn __tid7177__9106, imm__9102

assign branch_target__9107 = __tid7175__9104 + __tid7177__9106; // asn branch_target__9107, %addition(__tid7175__9104, __tid7177__9106)

assign branch_target__9109 = (branch_target__9107 & ~(64'd0 | (1 << 64'd0))) | ((64'd0 & 1) << 64'd0);

assign __tid6355__9112 = __tid6355__8260; // asn __tid6355__9112, __tid6355__8260

assign inst__9116 = inst_pyri; // asn inst__9116, inst_pyri

assign __tid7201__9117 = inst__9116[11:7]; // asn __tid7201__9117, %bit_read(inst__9116, 11<uint<5>>, 7<uint<4>>)

assign __tid6359__9147 = __tid6359__8262; // asn __tid6359__9147, __tid6359__8262

assign inst__9152 = inst_pyri; // asn inst__9152, inst_pyri

assign __tid7262__9153 = inst__9152[31:25]; // asn __tid7262__9153, %bit_read(inst__9152, 31<uint<6>>, 25<uint<6>>)

assign inst__9158 = inst_pyri; // asn inst__9158, inst_pyri

assign __tid7275__9159 = inst__9158[11:7]; // asn __tid7275__9159, %bit_read(inst__9158, 11<uint<5>>, 7<uint<4>>)

assign __tid7279__9161 = { __tid7262__9153, __tid7275__9159 }; // asn __tid7279__9161, %concat(__tid7262__9153, 7<uint<32>>, __tid7275__9159, 5<uint<32>>)

assign imm__9162 = { 52'd0, __tid7279__9161 }; // asn imm__9162, __tid7279__9161

assign __tid7289__9164 = imm__9162[__tid7287__9163]; // asn __tid7289__9164, %bit_read(imm__9162, __tid7287__9163)

assign __tid7291__9165 = __tid7289__9164; // asn __tid7291__9165, __tid7289__9164

assign __tid7297__9167 = __tid7291__9165 == 1'd1; // asn __tid7297__9167, %is_equal(__tid7291__9165, 1<uint<1>>)

assign __tid7299__9168 = __tid7297__9167; // asn __tid7299__9168, __tid7297__9167

assign imm__9172 = { 52'd0, __tid7279__9161 }; // asn imm__9172, __tid7279__9161

assign imm__9173 = imm__9172 | 64'd18446744073709547520; // asn imm__9173, %numeric_or(imm__9172, 18446744073709547520<uint<64>>)

assign imm__9176 = (__tid7299__9168) ? imm__9173 : { 52'd0, __tid7279__9161 };

assign __tid7316__9180 = imm__9176; // asn __tid7316__9180, imm__9176

assign raddr__9181 = __tid7314__9178 + __tid7316__9180; // asn raddr__9181, %addition(__tid7314__9178, __tid7316__9180)

assign __tid6363__9190 = __tid6363__8264; // asn __tid6363__9190, __tid6363__8264

assign inst__9194 = inst_pyri; // asn inst__9194, inst_pyri

assign __tid7337__9195 = inst__9194[11:7]; // asn __tid7337__9195, %bit_read(inst__9194, 11<uint<5>>, 7<uint<4>>)

assign inst__9213 = inst_pyri; // asn inst__9213, inst_pyri

assign __tid7366__9214 = inst__9213[11:7]; // asn __tid7366__9214, %bit_read(inst__9213, 11<uint<5>>, 7<uint<4>>)

assign raddr__9271 = (__tid6363__9190) ? { 59'd0, __tid7337__9195 } : { 59'd0, __tid7366__9214 };

assign raddr__write__9272 = (__tid6363__9190) ? raddr__write__9198 : __tid6367__8266;

assign in1__read__9275 = (__tid6363__9190) ? in1__read__9201 : __tid6367__8266;

assign rdata__9279 = (__tid6363__9190) ? imm__9203 : rdata__9227;

assign rdata__write__9280 = (__tid6363__9190) ? rdata__write__9205 : __tid6367__8266;

assign in1__read__9327 = (__tid6359__9147) ? in1__read__9179 : in1__read__9275;

assign raddr__9330 = (__tid6359__9147) ? raddr__9181 : raddr__9271;

assign raddr__write__9331 = (__tid6359__9147) ? raddr__write__9182 : raddr__write__9272;

assign rdata__9332 = (__tid6359__9147) ? in2_pyri : rdata__9279;

assign rdata__write__9333 = (__tid6359__9147) ? rdata__write__9185 : rdata__write__9280;

assign raddr__9357 = (__tid6355__9112) ? { 59'd0, __tid7201__9117 } : raddr__9330;

assign raddr__write__9358 = (__tid6355__9112) ? raddr__write__9120 : raddr__write__9331;

assign in2__read__9361 = (__tid6355__9112) ? in2__read__9123 : __tid6359__8262;

assign in1__read__9377 = (__tid6355__9112) ? in1__read__9140 : in1__read__9327;

assign rdata__9380 = (__tid6355__9112) ? rdata__9142 : rdata__9332;

assign rdata__write__9381 = (__tid6355__9112) ? rdata__write__9143 : rdata__write__9333;

assign raddr__9423 = (__tid6351__9068) ? { 59'd0, __tid7121__9073 } : raddr__9357;

assign raddr__write__9424 = (__tid6351__9068) ? raddr__write__9076 : raddr__write__9358;

assign rdata__9430 = (__tid6351__9068) ? rdata__9081 : rdata__9380;

assign rdata__write__9431 = (__tid6351__9068) ? rdata__write__9082 : rdata__write__9381;

assign in1__read__9452 = (__tid6351__9068) ? in1__read__9105 : in1__read__9377;

assign in2__read__9466 = (__tid6351__9068) ? in2__read__9334 : in2__read__9361;

assign rdata__9516 = (__tid6347__9053) ? rdata__9059 : rdata__9430;

assign rdata__write__9517 = (__tid6347__9053) ? rdata__write__9060 : rdata__write__9431;

assign raddr__9523 = (__tid6347__9053) ? { 59'd0, __tid7108__9064 } : raddr__9423;

assign raddr__write__9524 = (__tid6347__9053) ? raddr__write__9067 : raddr__write__9424;

assign in1__read__9541 = (__tid6347__9053) ? in1__read__9250 : in1__read__9452;

assign branch_pc__write__9546 = (__tid6347__9053) ? branch_pc__write__9461 : __tid6351__8258;

assign in2__read__9551 = (__tid6347__9053) ? in2__read__9334 : in2__read__9466;

assign in1__read__9596 = (__tid6343__8775) ? in1__read__9020 : in1__read__9541;

assign in2__read__9599 = (__tid6343__8775) ? in2__read__9022 : in2__read__9551;

assign branch_pc__9721 = (__tid6343__8775) ? branch_pc__9047 : branch_target__9109;

assign branch_pc__write__9722 = (__tid6343__8775) ? branch_pc__write__9048 : branch_pc__write__9546;

assign rdata__write__9729 = (__tid6343__8775) ? rdata__write__9263 : rdata__write__9517;

assign raddr__write__9733 = (__tid6343__8775) ? raddr__write__9246 : raddr__write__9524;

assign in1__read__9797 = (__tid6227__8204) ? in1__read__8698 : in1__read__9596;

assign in2__read__9799 = (__tid6227__8204) ? in2__read__8700 : in2__read__9599;

assign inst_pyro = inst_pyri; // asn inst_pyro, inst_pyri

assign rdata_pyro = (__tid6227__8204) ? rdata_out__8701 : rdata__9516;

assign rdata__write__9967 = (__tid6227__8204) ? rdata__write__8768 : rdata__write__9729;

assign raddr_pyro = (__tid6227__8204) ? { 59'd0, __tid6779__8771 } : raddr__9523;

assign raddr__write__9973 = (__tid6227__8204) ? raddr__write__8774 : raddr__write__9733;

assign branch_pc_pyro = branch_pc__9721; // asn branch_pc_pyro, branch_pc__9721

assign branch_pc__write__10055 = (__tid6227__8204) ? branch_pc__write__8098 : branch_pc__write__9722;

assign branch_pc__write__10128 = branch_pc__write__10055; // asn branch_pc__write__10128, branch_pc__write__10055

assign raddr__write__10129 = raddr__write__9973; // asn raddr__write__10129, raddr__write__9973

assign rdata__write__10130 = rdata__write__9967; // asn rdata__write__10130, rdata__write__9967

assign in2__read__10133 = in2__read__9799; // asn in2__read__10133, in2__read__9799

assign in1__read__10134 = in1__read__9797; // asn in1__read__10134, in1__read__9797

assign __tid9358__10154 = ! in1__read__10134; // asn __tid9358__10154, %logical_not(in1__read__10134)

assign __tid9360__10155 = __tid9358__10154 | in1_valid_pyri; // asn __tid9360__10155, %logical_or(__tid9358__10154, in1_valid_pyri)

assign __tid9362__10156 = ! in2__read__10133; // asn __tid9362__10156, %logical_not(in2__read__10133)

assign __tid9364__10157 = __tid9362__10156 | in2_valid_pyri; // asn __tid9364__10157, %logical_or(__tid9362__10156, in2_valid_pyri)

assign __tid9382__10166 = ! rdata__write__10130; // asn __tid9382__10166, %logical_not(rdata__write__10130)

assign __tid9386__10168 = __tid9382__10166 | __tid9384__10167; // asn __tid9386__10168, %logical_or(__tid9382__10166, __tid9384__10167)

assign __tid9388__10169 = ! raddr__write__10129; // asn __tid9388__10169, %logical_not(raddr__write__10129)

assign __tid9392__10171 = __tid9388__10169 | __tid9390__10170; // asn __tid9392__10171, %logical_or(__tid9388__10169, __tid9390__10170)

assign __tid9394__10172 = ! branch_pc__write__10128; // asn __tid9394__10172, %logical_not(branch_pc__write__10128)

assign __tid9398__10174 = __tid9394__10172 | __tid9396__10173; // asn __tid9398__10174, %logical_or(__tid9394__10172, __tid9396__10173)

assign __tid9401__10175 = __tid9356__10153 & __tid9360__10155; // asn __tid9401__10175, %logical_and(__tid9356__10153, __tid9360__10155)

assign __tid9403__10176 = __tid9401__10175 & __tid9364__10157; // asn __tid9403__10176, %logical_and(__tid9401__10175, __tid9364__10157)

assign __tid9405__10177 = __tid9403__10176 & __tid9368__10159; // asn __tid9405__10177, %logical_and(__tid9403__10176, __tid9368__10159)

assign __tid9407__10178 = __tid9405__10177 & __tid9374__10162; // asn __tid9407__10178, %logical_and(__tid9405__10177, __tid9374__10162)

assign __tid9409__10179 = __tid9407__10178 & __tid9380__10165; // asn __tid9409__10179, %logical_and(__tid9407__10178, __tid9380__10165)

assign __tid9411__10180 = __tid9409__10179 & __tid9386__10168; // asn __tid9411__10180, %logical_and(__tid9409__10179, __tid9386__10168)

assign __tid9413__10181 = __tid9411__10180 & __tid9392__10171; // asn __tid9413__10181, %logical_and(__tid9411__10180, __tid9392__10171)

assign __tid9415__10182 = __tid9413__10181 & __tid9398__10174; // asn __tid9415__10182, %logical_and(__tid9413__10181, __tid9398__10174)

assign __block_valid__10183 = __tid9415__10182; // asn __block_valid__10183, __tid9415__10182

assign __tid9422__10193 = ! __block_valid__10183; // asn __tid9422__10193, %logical_not(__block_valid__10183)

assign inst_valid_pyro = __tid9415__10182; // asn inst_valid_pyro, __tid9415__10182

assign pc_valid_pyro = __tid9415__10182; // asn pc_valid_pyro, __tid9415__10182

assign rdata_valid_pyro = __block_valid__10183 & rdata__write__10130; // asn rdata_valid_pyro, %logical_and(__block_valid__10183, rdata__write__10130)

assign raddr_valid_pyro = __block_valid__10183 & raddr__write__10129; // asn raddr_valid_pyro, %logical_and(__block_valid__10183, raddr__write__10129)

assign branch_pc_valid_pyro = __block_valid__10183 & branch_pc__write__10128; // asn branch_pc_valid_pyro, %logical_and(__block_valid__10183, branch_pc__write__10128)

assign __tid9434__10199 = __tid9422__10193; // asn __tid9434__10199, __tid9422__10193

assign pc_retry_pyro = pc_valid_pyri & __tid9434__10199; // asn pc_retry_pyro, %logical_and(pc_valid_pyri, __tid9434__10199)

assign __tid9438__10201 = __tid9422__10193 | __tid9358__10154; // asn __tid9438__10201, %logical_or(__tid9422__10193, __tid9358__10154)

assign in1_retry_pyro = in1_valid_pyri & __tid9438__10201; // asn in1_retry_pyro, %logical_and(in1_valid_pyri, __tid9438__10201)

assign __tid9442__10203 = __tid9422__10193 | __tid9362__10156; // asn __tid9442__10203, %logical_or(__tid9422__10193, __tid9362__10156)

assign in2_retry_pyro = in2_valid_pyri & __tid9442__10203; // asn in2_retry_pyro, %logical_and(in2_valid_pyri, __tid9442__10203)

assign __tid9446__10205 = __tid9422__10193; // asn __tid9446__10205, __tid9422__10193

assign inst_retry_pyro = inst_valid_pyri & __tid9446__10205; // asn inst_retry_pyro, %logical_and(inst_valid_pyri, __tid9446__10205)








endmodule

