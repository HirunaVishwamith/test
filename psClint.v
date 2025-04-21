module psClint(
  input         clock,
  input         reset,
  input         client_AWID,
  input  [31:0] client_AWADDR,
  input  [7:0]  client_AWLEN,
  input  [2:0]  client_AWSIZE,
  input  [1:0]  client_AWBURST,
  input         client_AWLOCK,
  input  [3:0]  client_AWCACHE,
  input  [2:0]  client_AWPROT,
  input  [3:0]  client_AWQOS,
  input         client_AWVALID,
  output        client_AWREADY,
  input  [31:0] client_WDATA,
  input  [3:0]  client_WSTRB,
  input         client_WLAST,
  input         client_WVALID,
  output        client_WREADY,
  output        client_BID,
  output [1:0]  client_BRESP,
  output        client_BVALID,
  input         client_BREADY,
  input         client_ARID,
  input  [31:0] client_ARADDR,
  input  [7:0]  client_ARLEN,
  input  [2:0]  client_ARSIZE,
  input  [1:0]  client_ARBURST,
  input         client_ARLOCK,
  input  [3:0]  client_ARCACHE,
  input  [2:0]  client_ARPROT,
  input  [3:0]  client_ARQOS,
  input         client_ARVALID,
  output        client_ARREADY,
  output        client_RID,
  output [31:0] client_RDATA,
  output [1:0]  client_RRESP,
  output        client_RLAST,
  output        client_RVALID,
  input         client_RREADY,
  output        MTIP,
  input         psMaster_AWID,
  input  [31:0] psMaster_AWADDR,
  input  [7:0]  psMaster_AWLEN,
  input  [2:0]  psMaster_AWSIZE,
  input  [1:0]  psMaster_AWBURST,
  input         psMaster_AWLOCK,
  input  [3:0]  psMaster_AWCACHE,
  input  [2:0]  psMaster_AWPROT,
  input  [3:0]  psMaster_AWQOS,
  input         psMaster_AWVALID,
  output        psMaster_AWREADY,
  input  [31:0] psMaster_WDATA,
  input  [3:0]  psMaster_WSTRB,
  input         psMaster_WLAST,
  input         psMaster_WVALID,
  output        psMaster_WREADY,
  output        psMaster_BID,
  output [1:0]  psMaster_BRESP,
  output        psMaster_BVALID,
  input         psMaster_BREADY,
  input         psMaster_ARID,
  input  [31:0] psMaster_ARADDR,
  input  [7:0]  psMaster_ARLEN,
  input  [2:0]  psMaster_ARSIZE,
  input  [1:0]  psMaster_ARBURST,
  input         psMaster_ARLOCK,
  input  [3:0]  psMaster_ARCACHE,
  input  [2:0]  psMaster_ARPROT,
  input  [3:0]  psMaster_ARQOS,
  input         psMaster_ARVALID,
  output        psMaster_ARREADY,
  output        psMaster_RID,
  output [31:0] psMaster_RDATA,
  output [1:0]  psMaster_RRESP,
  output        psMaster_RLAST,
  output        psMaster_RVALID,
  input         psMaster_RREADY,
  output        STANDBY,
  output        RUNNING
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
`endif // RANDOMIZE_REG_INIT
  reg  readRequestBuffer_valid; // @[uart.scala 18:34]
  reg [31:0] readRequestBuffer_address; // @[uart.scala 18:34]
  reg [7:0] readRequestBuffer_len; // @[uart.scala 18:34]
  reg  readRequestBuffer_id; // @[uart.scala 18:34]
  reg  writeRequestBuffer_address_valid; // @[uart.scala 26:35]
  reg [31:0] writeRequestBuffer_address_offset; // @[uart.scala 26:35]
  reg  writeRequestBuffer_address_id; // @[uart.scala 26:35]
  reg  writeRequestBuffer_data_valid; // @[uart.scala 26:35]
  reg [31:0] writeRequestBuffer_data_data; // @[uart.scala 26:35]
  reg  writeRequestBuffer_data_last; // @[uart.scala 26:35]
  wire  _T = client_ARREADY & client_ARVALID; // @[uart.scala 42:23]
  wire  _GEN_0 = client_ARREADY & client_ARVALID | readRequestBuffer_valid; // @[uart.scala 42:42 43:29 18:34]
  wire [7:0] _readRequestBuffer_len_T_1 = readRequestBuffer_len - 8'h1; // @[uart.scala 51:52]
  wire  _T_2 = |readRequestBuffer_len; // @[uart.scala 52:33]
  reg [63:0] mtime; // @[uart.scala 54:22]
  reg [63:0] mtimecmp; // @[uart.scala 55:25]
  reg [31:0] mtimecmplowtemp; // @[uart.scala 56:28]
  reg [3:0] couter_wrap; // @[uart.scala 57:28]
  wire [3:0] _couter_wrap_T_1 = couter_wrap + 4'h1; // @[uart.scala 58:30]
  wire [63:0] _GEN_166 = {{63'd0}, &couter_wrap}; // @[uart.scala 59:18]
  wire [63:0] _mtime_T_2 = mtime + _GEN_166; // @[uart.scala 59:18]
  reg [63:0] mtimeRead; // @[uart.scala 60:22]
  reg [31:0] ps_stat; // @[uart.scala 69:24]
  wire [31:0] _client_RDATA_T_3 = _T_2 ? mtimeRead[31:0] : mtimeRead[63:32]; // @[uart.scala 74:44]
  wire [31:0] _GEN_9 = 32'h4000000 == readRequestBuffer_address ? ps_stat : 32'h8; // @[uart.scala 70:16 71:37 75:38]
  wire [31:0] _GEN_10 = 32'h200bff8 == readRequestBuffer_address ? _client_RDATA_T_3 : _GEN_9; // @[uart.scala 71:37 74:38]
  wire [31:0] _GEN_11 = 32'h40600000 == readRequestBuffer_address ? 32'h2 : _GEN_10; // @[uart.scala 71:37 73:38]
  wire [31:0] _GEN_12 = 32'he000002c == readRequestBuffer_address ? 32'h2 : _GEN_11; // @[uart.scala 71:37 72:38]
  wire [31:0] _putChar_valid_T = writeRequestBuffer_address_offset & 32'hff; // @[uart.scala 86:58]
  wire  putChar_valid = _putChar_valid_T == 32'h4 & writeRequestBuffer_address_valid & writeRequestBuffer_data_valid; // @[uart.scala 86:159]
  wire [7:0] putChar_byte = writeRequestBuffer_data_data[7:0]; // @[uart.scala 87:47]
  reg [7:0] lastUartChars_0; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_1; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_2; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_3; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_4; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_5; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_6; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_7; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_8; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_9; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_10; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_11; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_12; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_13; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_14; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_15; // @[uart.scala 89:30]
  reg [7:0] lastUartChars_16; // @[uart.scala 89:30]
  reg  terminalReady; // @[uart.scala 95:30]
  wire  _terminalReady_T = 8'h20 == lastUartChars_0; // @[uart.scala 97:130]
  wire  _terminalReady_T_15 = 8'h75 == lastUartChars_15; // @[uart.scala 97:130]
  wire  _terminalReady_T_31 = 8'h20 == lastUartChars_0 & 8'h3a == lastUartChars_1 & 8'h6e == lastUartChars_2 & 8'h69 ==
    lastUartChars_3 & 8'h67 == lastUartChars_4 & 8'h6f == lastUartChars_5 & 8'h6c == lastUartChars_6 & 8'h20 ==
    lastUartChars_7 & 8'h74 == lastUartChars_8 & 8'h6f == lastUartChars_9 & 8'h6f == lastUartChars_10 & 8'h72 ==
    lastUartChars_11 & 8'h64 == lastUartChars_12 & 8'h6c == lastUartChars_13 & 8'h69 == lastUartChars_14 &
    _terminalReady_T_15; // @[uart.scala 97:151]
  reg  afterLogin; // @[uart.scala 100:27]
  wire  _T_10 = ~afterLogin; // @[uart.scala 101:8]
  reg  hardInput_0_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_0_char; // @[uart.scala 105:26]
  reg  hardInput_1_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_1_char; // @[uart.scala 105:26]
  reg  hardInput_2_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_2_char; // @[uart.scala 105:26]
  reg  hardInput_3_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_3_char; // @[uart.scala 105:26]
  reg  hardInput_4_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_4_char; // @[uart.scala 105:26]
  reg  hardInput_5_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_5_char; // @[uart.scala 105:26]
  reg  hardInput_6_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_6_char; // @[uart.scala 105:26]
  reg  hardInput_7_valid; // @[uart.scala 105:26]
  reg [7:0] hardInput_7_char; // @[uart.scala 105:26]
  reg  hardInput_8_valid; // @[uart.scala 105:26]
  reg  hardInput_9_valid; // @[uart.scala 105:26]
  reg  command_0_valid; // @[uart.scala 110:24]
  reg [7:0] command_0_char; // @[uart.scala 110:24]
  reg  command_1_valid; // @[uart.scala 110:24]
  reg [7:0] command_1_char; // @[uart.scala 110:24]
  reg  command_2_valid; // @[uart.scala 110:24]
  reg [7:0] command_2_char; // @[uart.scala 110:24]
  reg  command_3_valid; // @[uart.scala 110:24]
  reg [7:0] command_3_char; // @[uart.scala 110:24]
  reg  command_4_valid; // @[uart.scala 110:24]
  reg [7:0] command_4_char; // @[uart.scala 110:24]
  reg  command_5_valid; // @[uart.scala 110:24]
  reg [7:0] command_5_char; // @[uart.scala 110:24]
  reg  command_6_valid; // @[uart.scala 110:24]
  reg [7:0] command_6_char; // @[uart.scala 110:24]
  reg  command_7_valid; // @[uart.scala 110:24]
  reg [7:0] command_7_char; // @[uart.scala 110:24]
  reg  command_8_valid; // @[uart.scala 110:24]
  reg [7:0] command_8_char; // @[uart.scala 110:24]
  reg  command_9_valid; // @[uart.scala 110:24]
  reg [7:0] command_9_char; // @[uart.scala 110:24]
  reg  command_10_valid; // @[uart.scala 110:24]
  reg [7:0] command_10_char; // @[uart.scala 110:24]
  reg  command_11_valid; // @[uart.scala 110:24]
  reg [7:0] command_11_char; // @[uart.scala 110:24]
  reg  command_12_valid; // @[uart.scala 110:24]
  reg [7:0] command_12_char; // @[uart.scala 110:24]
  reg  command_13_valid; // @[uart.scala 110:24]
  reg [7:0] command_13_char; // @[uart.scala 110:24]
  reg  command_14_valid; // @[uart.scala 110:24]
  reg [7:0] command_14_char; // @[uart.scala 110:24]
  reg  command_15_valid; // @[uart.scala 110:24]
  reg [7:0] command_15_char; // @[uart.scala 110:24]
  reg  command_16_valid; // @[uart.scala 110:24]
  reg [7:0] command_16_char; // @[uart.scala 110:24]
  reg  command_17_valid; // @[uart.scala 110:24]
  wire [31:0] _T_11 = readRequestBuffer_address & 32'hffff0fff; // @[uart.scala 116:33]
  wire  _T_13 = _T_11 == 32'h40600000 & readRequestBuffer_valid; // @[uart.scala 116:69]
  wire  _T_16 = _T_13 & terminalReady & _T_10; // @[uart.scala 117:46]
  wire  _client_RDATA_T_4 = ~hardInput_0_valid; // @[uart.scala 119:38]
  wire [1:0] _client_RDATA_T_5 = {_client_RDATA_T_4,1'h0}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_167 = {{30'd0}, _client_RDATA_T_5}; // @[uart.scala 119:32]
  wire [31:0] _client_RDATA_T_6 = 32'h8 | _GEN_167; // @[uart.scala 119:32]
  wire [31:0] _GEN_32 = _T_16 ? _client_RDATA_T_6 : _GEN_12; // @[uart.scala 118:5 119:18]
  wire  _T_19 = _T_11 == 32'h40600004 & readRequestBuffer_valid; // @[uart.scala 123:69]
  wire  _T_22 = _T_19 & terminalReady & _T_10; // @[uart.scala 124:46]
  wire  _GEN_33 = client_RREADY ? hardInput_1_valid : hardInput_0_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_35 = client_RREADY ? hardInput_2_valid : hardInput_1_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_37 = client_RREADY ? hardInput_3_valid : hardInput_2_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_39 = client_RREADY ? hardInput_4_valid : hardInput_3_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_41 = client_RREADY ? hardInput_5_valid : hardInput_4_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_43 = client_RREADY ? hardInput_6_valid : hardInput_5_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_45 = client_RREADY ? hardInput_7_valid : hardInput_6_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_47 = client_RREADY ? hardInput_8_valid : hardInput_7_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_49 = client_RREADY ? hardInput_9_valid : hardInput_8_valid; // @[uart.scala 127:25 105:26 128:88]
  wire  _GEN_51 = client_RREADY ? 1'h0 : hardInput_9_valid; // @[uart.scala 127:25 105:26 129:28]
  wire [31:0] _GEN_52 = _T_22 ? {{24'd0}, hardInput_0_char} : _GEN_32; // @[uart.scala 125:5 126:18]
  wire  _GEN_53 = _T_22 ? _GEN_33 : hardInput_0_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_55 = _T_22 ? _GEN_35 : hardInput_1_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_57 = _T_22 ? _GEN_37 : hardInput_2_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_59 = _T_22 ? _GEN_39 : hardInput_3_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_61 = _T_22 ? _GEN_41 : hardInput_4_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_63 = _T_22 ? _GEN_43 : hardInput_5_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_65 = _T_22 ? _GEN_45 : hardInput_6_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_67 = _T_22 ? _GEN_47 : hardInput_7_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_69 = _T_22 ? _GEN_49 : hardInput_8_valid; // @[uart.scala 105:26 125:5]
  wire  _GEN_71 = _T_22 ? _GEN_51 : hardInput_9_valid; // @[uart.scala 105:26 125:5]
  wire  _T_26 = _T_13 & afterLogin; // @[uart.scala 135:29]
  wire  _client_RDATA_T_7 = ~command_0_valid; // @[uart.scala 137:38]
  wire [1:0] _client_RDATA_T_8 = {_client_RDATA_T_7,1'h0}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_168 = {{30'd0}, _client_RDATA_T_8}; // @[uart.scala 137:32]
  wire [31:0] _client_RDATA_T_9 = 32'h8 | _GEN_168; // @[uart.scala 137:32]
  wire [31:0] _GEN_72 = _T_26 ? _client_RDATA_T_9 : _GEN_52; // @[uart.scala 136:5 137:18]
  wire  _T_30 = _T_19 & afterLogin; // @[uart.scala 142:29]
  wire  _GEN_73 = client_RREADY ? command_1_valid : command_0_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_75 = client_RREADY ? command_2_valid : command_1_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_77 = client_RREADY ? command_3_valid : command_2_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_79 = client_RREADY ? command_4_valid : command_3_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_81 = client_RREADY ? command_5_valid : command_4_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_83 = client_RREADY ? command_6_valid : command_5_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_85 = client_RREADY ? command_7_valid : command_6_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_87 = client_RREADY ? command_8_valid : command_7_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_89 = client_RREADY ? command_9_valid : command_8_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_91 = client_RREADY ? command_10_valid : command_9_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_93 = client_RREADY ? command_11_valid : command_10_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_95 = client_RREADY ? command_12_valid : command_11_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_97 = client_RREADY ? command_13_valid : command_12_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_99 = client_RREADY ? command_14_valid : command_13_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_101 = client_RREADY ? command_15_valid : command_14_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_103 = client_RREADY ? command_16_valid : command_15_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_105 = client_RREADY ? command_17_valid : command_16_valid; // @[uart.scala 110:24 145:25 146:84]
  wire  _GEN_107 = client_RREADY ? 1'h0 : command_17_valid; // @[uart.scala 110:24 145:25 147:26]
  wire  _GEN_109 = _T_30 ? _GEN_73 : command_0_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_111 = _T_30 ? _GEN_75 : command_1_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_113 = _T_30 ? _GEN_77 : command_2_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_115 = _T_30 ? _GEN_79 : command_3_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_117 = _T_30 ? _GEN_81 : command_4_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_119 = _T_30 ? _GEN_83 : command_5_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_121 = _T_30 ? _GEN_85 : command_6_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_123 = _T_30 ? _GEN_87 : command_7_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_125 = _T_30 ? _GEN_89 : command_8_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_127 = _T_30 ? _GEN_91 : command_9_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_129 = _T_30 ? _GEN_93 : command_10_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_131 = _T_30 ? _GEN_95 : command_11_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_133 = _T_30 ? _GEN_97 : command_12_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_135 = _T_30 ? _GEN_99 : command_13_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_137 = _T_30 ? _GEN_101 : command_14_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_139 = _T_30 ? _GEN_103 : command_15_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_141 = _T_30 ? _GEN_105 : command_16_valid; // @[uart.scala 110:24 143:5]
  wire  _GEN_143 = _T_30 ? _GEN_107 : command_17_valid; // @[uart.scala 110:24 143:5]
  wire  _T_31 = writeRequestBuffer_address_valid & writeRequestBuffer_data_valid; // @[uart.scala 151:41]
  wire  _GEN_144 = writeRequestBuffer_data_last ? 1'h0 : writeRequestBuffer_address_valid; // @[uart.scala 153:40 154:40 26:35]
  wire  _GEN_145 = writeRequestBuffer_address_valid & writeRequestBuffer_data_valid ? 1'h0 :
    writeRequestBuffer_data_valid; // @[uart.scala 151:75 152:35 26:35]
  wire  _GEN_146 = writeRequestBuffer_address_valid & writeRequestBuffer_data_valid ? _GEN_144 :
    writeRequestBuffer_address_valid; // @[uart.scala 151:75 26:35]
  wire  _GEN_147 = client_AWREADY & client_AWVALID | _GEN_146; // @[uart.scala 158:42 159:38]
  wire  _GEN_152 = client_WREADY & client_WVALID | _GEN_145; // @[uart.scala 166:40 167:35]
  wire  _T_36 = writeRequestBuffer_address_offset == 32'h2004000; // @[uart.scala 176:40]
  wire  _T_37 = writeRequestBuffer_address_valid & _T_36; // @[uart.scala 175:38]
  wire  _T_38 = _T_37 & writeRequestBuffer_data_valid; // @[uart.scala 176:59]
  wire  _T_39 = _T_38 & writeRequestBuffer_data_last; // @[uart.scala 177:35]
  wire [63:0] _mtimecmp_T = {writeRequestBuffer_data_data,mtimecmplowtemp}; // @[Cat.scala 33:92]
  reg  awFired; // @[uart.scala 203:50]
  reg  wFired; // @[uart.scala 203:50]
  reg  finished; // @[uart.scala 203:50]
  wire  _GEN_158 = psMaster_AWVALID & psMaster_AWREADY | awFired; // @[uart.scala 208:46 203:50 208:56]
  wire  _GEN_159 = psMaster_WVALID & psMaster_WREADY | wFired; // @[uart.scala 209:44 203:50 209:53]
  wire  _GEN_160 = psMaster_BVALID & psMaster_BREADY | finished; // @[uart.scala 210:44 203:50 210:55]
  reg  bid; // @[uart.scala 217:16]
  assign client_AWREADY = ~writeRequestBuffer_address_valid; // @[uart.scala 185:21]
  assign client_WREADY = ~writeRequestBuffer_data_valid | writeRequestBuffer_address_valid; // @[uart.scala 186:51]
  assign client_BID = writeRequestBuffer_address_id; // @[uart.scala 188:14]
  assign client_BRESP = 2'h0; // @[uart.scala 189:16]
  assign client_BVALID = _T_31 & writeRequestBuffer_data_last; // @[uart.scala 190:86]
  assign client_ARREADY = ~readRequestBuffer_valid; // @[uart.scala 183:21]
  assign client_RID = readRequestBuffer_id; // @[uart.scala 77:14]
  assign client_RDATA = _T_30 ? {{24'd0}, command_0_char} : _GEN_72; // @[uart.scala 143:5 144:18]
  assign client_RRESP = 2'h0; // @[uart.scala 79:16]
  assign client_RLAST = ~_T_2; // @[uart.scala 78:19]
  assign client_RVALID = readRequestBuffer_valid; // @[uart.scala 80:17]
  assign MTIP = mtime > mtimecmp; // @[uart.scala 193:18]
  assign psMaster_AWREADY = finished ? 1'h0 : ~awFired; // @[uart.scala 212:18 204:20 213:22]
  assign psMaster_WREADY = finished ? 1'h0 : ~wFired; // @[uart.scala 212:18 205:19 214:21]
  assign psMaster_BID = bid; // @[uart.scala 219:16]
  assign psMaster_BRESP = 2'h0; // @[uart.scala 220:18]
  assign psMaster_BVALID = finished ? 1'h0 : awFired & wFired; // @[uart.scala 212:18 206:19 215:21]
  assign psMaster_ARREADY = 1'h0; // @[uart.scala 222:20]
  assign psMaster_RID = 1'h0; // @[uart.scala 226:16]
  assign psMaster_RDATA = 32'h0; // @[uart.scala 225:18]
  assign psMaster_RRESP = 2'h0; // @[uart.scala 228:18]
  assign psMaster_RLAST = 1'h0; // @[uart.scala 227:18]
  assign psMaster_RVALID = 1'h0; // @[uart.scala 224:19]
  assign STANDBY = ~(|ps_stat); // @[uart.scala 232:14]
  assign RUNNING = |ps_stat; // @[uart.scala 233:22]
  always @(posedge clock) begin
    if (reset) begin // @[uart.scala 18:34]
      readRequestBuffer_valid <= 1'h0; // @[uart.scala 18:34]
    end else if (readRequestBuffer_valid & client_RREADY) begin // @[uart.scala 50:50]
      if (~(|readRequestBuffer_len)) begin // @[uart.scala 52:38]
        readRequestBuffer_valid <= 1'h0; // @[uart.scala 52:64]
      end else begin
        readRequestBuffer_valid <= _GEN_0;
      end
    end else begin
      readRequestBuffer_valid <= _GEN_0;
    end
    if (client_ARREADY & client_ARVALID) begin // @[uart.scala 42:42]
      readRequestBuffer_address <= client_ARADDR; // @[uart.scala 44:31]
    end
    if (readRequestBuffer_valid & client_RREADY) begin // @[uart.scala 50:50]
      readRequestBuffer_len <= _readRequestBuffer_len_T_1; // @[uart.scala 51:27]
    end else if (client_ARREADY & client_ARVALID) begin // @[uart.scala 42:42]
      readRequestBuffer_len <= client_ARLEN; // @[uart.scala 45:27]
    end
    if (client_ARREADY & client_ARVALID) begin // @[uart.scala 42:42]
      readRequestBuffer_id <= client_ARID; // @[uart.scala 47:26]
    end
    if (reset) begin // @[uart.scala 26:35]
      writeRequestBuffer_address_valid <= 1'h0; // @[uart.scala 26:35]
    end else begin
      writeRequestBuffer_address_valid <= _GEN_147;
    end
    if (client_AWREADY & client_AWVALID) begin // @[uart.scala 158:42]
      writeRequestBuffer_address_offset <= client_AWADDR; // @[uart.scala 160:39]
    end
    if (client_AWREADY & client_AWVALID) begin // @[uart.scala 158:42]
      writeRequestBuffer_address_id <= client_AWID; // @[uart.scala 161:35]
    end
    if (reset) begin // @[uart.scala 26:35]
      writeRequestBuffer_data_valid <= 1'h0; // @[uart.scala 26:35]
    end else begin
      writeRequestBuffer_data_valid <= _GEN_152;
    end
    if (client_WREADY & client_WVALID) begin // @[uart.scala 166:40]
      writeRequestBuffer_data_data <= client_WDATA; // @[uart.scala 168:34]
    end
    if (client_WREADY & client_WVALID) begin // @[uart.scala 166:40]
      writeRequestBuffer_data_last <= client_WLAST; // @[uart.scala 169:34]
    end
    if (reset) begin // @[uart.scala 54:22]
      mtime <= 64'h0; // @[uart.scala 54:22]
    end else begin
      mtime <= _mtime_T_2; // @[uart.scala 59:9]
    end
    if (reset) begin // @[uart.scala 55:25]
      mtimecmp <= 64'h0; // @[uart.scala 55:25]
    end else if (_T_39) begin // @[uart.scala 179:5]
      mtimecmp <= _mtimecmp_T; // @[uart.scala 180:14]
    end
    if (writeRequestBuffer_data_valid & ~writeRequestBuffer_data_last) begin // @[uart.scala 173:72]
      mtimecmplowtemp <= writeRequestBuffer_data_data; // @[uart.scala 173:90]
    end
    if (reset) begin // @[uart.scala 57:28]
      couter_wrap <= 4'h0; // @[uart.scala 57:28]
    end else begin
      couter_wrap <= _couter_wrap_T_1; // @[uart.scala 58:15]
    end
    if (_T) begin // @[uart.scala 61:42]
      mtimeRead <= mtime; // @[uart.scala 62:15]
    end
    if (reset) begin // @[uart.scala 69:24]
      ps_stat <= 32'h0; // @[uart.scala 69:24]
    end else if (psMaster_WREADY & psMaster_WVALID) begin // @[uart.scala 229:44]
      ps_stat <= psMaster_WDATA; // @[uart.scala 229:54]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_0 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_0 <= putChar_byte; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_1 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_1 <= lastUartChars_0; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_2 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_2 <= lastUartChars_1; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_3 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_3 <= lastUartChars_2; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_4 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_4 <= lastUartChars_3; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_5 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_5 <= lastUartChars_4; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_6 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_6 <= lastUartChars_5; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_7 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_7 <= lastUartChars_6; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_8 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_8 <= lastUartChars_7; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_9 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_9 <= lastUartChars_8; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_10 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_10 <= lastUartChars_9; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_11 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_11 <= lastUartChars_10; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_12 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_12 <= lastUartChars_11; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_13 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_13 <= lastUartChars_12; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_14 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_14 <= lastUartChars_13; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_15 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_15 <= lastUartChars_14; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 89:30]
      lastUartChars_16 <= 8'h0; // @[uart.scala 89:30]
    end else if (putChar_valid) begin // @[uart.scala 90:23]
      lastUartChars_16 <= lastUartChars_15; // @[uart.scala 92:47]
    end
    if (reset) begin // @[uart.scala 95:30]
      terminalReady <= 1'h0; // @[uart.scala 95:30]
    end else if (~terminalReady) begin // @[uart.scala 96:24]
      terminalReady <= _terminalReady_T_31 & 8'h62 == lastUartChars_16; // @[uart.scala 97:19]
    end
    if (reset) begin // @[uart.scala 100:27]
      afterLogin <= 1'h0; // @[uart.scala 100:27]
    end else if (~afterLogin) begin // @[uart.scala 101:21]
      afterLogin <= _terminalReady_T & 8'h23 == lastUartChars_1 & 8'h20 == lastUartChars_2 & 8'h7e == lastUartChars_3; // @[uart.scala 102:16]
    end
    hardInput_0_valid <= reset | _GEN_53; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_0_char <= 8'h72; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_0_char <= hardInput_1_char; // @[uart.scala 128:88]
      end
    end
    hardInput_1_valid <= reset | _GEN_55; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_1_char <= 8'h6f; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_1_char <= hardInput_2_char; // @[uart.scala 128:88]
      end
    end
    hardInput_2_valid <= reset | _GEN_57; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_2_char <= 8'h6f; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_2_char <= hardInput_3_char; // @[uart.scala 128:88]
      end
    end
    hardInput_3_valid <= reset | _GEN_59; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_3_char <= 8'h74; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_3_char <= hardInput_4_char; // @[uart.scala 128:88]
      end
    end
    hardInput_4_valid <= reset | _GEN_61; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_4_char <= 8'ha; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_4_char <= hardInput_5_char; // @[uart.scala 128:88]
      end
    end
    hardInput_5_valid <= reset | _GEN_63; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_5_char <= 8'h6c; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_5_char <= hardInput_6_char; // @[uart.scala 128:88]
      end
    end
    hardInput_6_valid <= reset | _GEN_65; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_6_char <= 8'h73; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_6_char <= hardInput_7_char; // @[uart.scala 128:88]
      end
    end
    hardInput_7_valid <= reset | _GEN_67; // @[uart.scala 105:{26,26}]
    if (reset) begin // @[uart.scala 105:26]
      hardInput_7_char <= 8'h20; // @[uart.scala 105:26]
    end else if (_T_22) begin // @[uart.scala 125:5]
      if (client_RREADY) begin // @[uart.scala 127:25]
        hardInput_7_char <= 8'h2e; // @[uart.scala 128:88]
      end
    end
    hardInput_8_valid <= reset | _GEN_69; // @[uart.scala 105:{26,26}]
    hardInput_9_valid <= reset | _GEN_71; // @[uart.scala 105:{26,26}]
    command_0_valid <= reset | _GEN_109; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_0_char <= 8'h6c; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_0_char <= command_1_char; // @[uart.scala 146:84]
      end
    end
    command_1_valid <= reset | _GEN_111; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_1_char <= 8'h73; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_1_char <= command_2_char; // @[uart.scala 146:84]
      end
    end
    command_2_valid <= reset | _GEN_113; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_2_char <= 8'h20; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_2_char <= command_3_char; // @[uart.scala 146:84]
      end
    end
    command_3_valid <= reset | _GEN_115; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_3_char <= 8'h2e; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_3_char <= command_4_char; // @[uart.scala 146:84]
      end
    end
    command_4_valid <= reset | _GEN_117; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_4_char <= 8'h2e; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_4_char <= command_5_char; // @[uart.scala 146:84]
      end
    end
    command_5_valid <= reset | _GEN_119; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_5_char <= 8'h20; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_5_char <= command_6_char; // @[uart.scala 146:84]
      end
    end
    command_6_valid <= reset | _GEN_121; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_6_char <= 8'h26; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_6_char <= command_7_char; // @[uart.scala 146:84]
      end
    end
    command_7_valid <= reset | _GEN_123; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_7_char <= 8'h26; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_7_char <= command_8_char; // @[uart.scala 146:84]
      end
    end
    command_8_valid <= reset | _GEN_125; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_8_char <= 8'h20; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_8_char <= command_9_char; // @[uart.scala 146:84]
      end
    end
    command_9_valid <= reset | _GEN_127; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_9_char <= 8'h70; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_9_char <= command_10_char; // @[uart.scala 146:84]
      end
    end
    command_10_valid <= reset | _GEN_129; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_10_char <= 8'h6f; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_10_char <= command_11_char; // @[uart.scala 146:84]
      end
    end
    command_11_valid <= reset | _GEN_131; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_11_char <= 8'h77; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_11_char <= command_12_char; // @[uart.scala 146:84]
      end
    end
    command_12_valid <= reset | _GEN_133; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_12_char <= 8'h65; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_12_char <= command_13_char; // @[uart.scala 146:84]
      end
    end
    command_13_valid <= reset | _GEN_135; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_13_char <= 8'h72; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_13_char <= command_14_char; // @[uart.scala 146:84]
      end
    end
    command_14_valid <= reset | _GEN_137; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_14_char <= 8'h6f; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_14_char <= command_15_char; // @[uart.scala 146:84]
      end
    end
    command_15_valid <= reset | _GEN_139; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_15_char <= 8'h66; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_15_char <= command_16_char; // @[uart.scala 146:84]
      end
    end
    command_16_valid <= reset | _GEN_141; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 110:24]
      command_16_char <= 8'h66; // @[uart.scala 110:24]
    end else if (_T_30) begin // @[uart.scala 143:5]
      if (client_RREADY) begin // @[uart.scala 145:25]
        command_16_char <= 8'ha; // @[uart.scala 146:84]
      end
    end
    command_17_valid <= reset | _GEN_143; // @[uart.scala 110:{24,24}]
    if (reset) begin // @[uart.scala 203:50]
      awFired <= 1'h0; // @[uart.scala 203:50]
    end else begin
      awFired <= _GEN_158;
    end
    if (reset) begin // @[uart.scala 203:50]
      wFired <= 1'h0; // @[uart.scala 203:50]
    end else begin
      wFired <= _GEN_159;
    end
    if (reset) begin // @[uart.scala 203:50]
      finished <= 1'h0; // @[uart.scala 203:50]
    end else begin
      finished <= _GEN_160;
    end
    if (psMaster_AWREADY & psMaster_AWVALID) begin // @[uart.scala 218:46]
      bid <= psMaster_AWID; // @[uart.scala 218:52]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  readRequestBuffer_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readRequestBuffer_address = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  readRequestBuffer_len = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  readRequestBuffer_id = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  writeRequestBuffer_address_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  writeRequestBuffer_address_offset = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  writeRequestBuffer_address_id = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  writeRequestBuffer_data_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  writeRequestBuffer_data_data = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  writeRequestBuffer_data_last = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  mtime = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  mtimecmp = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  mtimecmplowtemp = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  couter_wrap = _RAND_13[3:0];
  _RAND_14 = {2{`RANDOM}};
  mtimeRead = _RAND_14[63:0];
  _RAND_15 = {1{`RANDOM}};
  ps_stat = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  lastUartChars_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  lastUartChars_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  lastUartChars_2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  lastUartChars_3 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  lastUartChars_4 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  lastUartChars_5 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  lastUartChars_6 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  lastUartChars_7 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  lastUartChars_8 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  lastUartChars_9 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  lastUartChars_10 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  lastUartChars_11 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  lastUartChars_12 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  lastUartChars_13 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  lastUartChars_14 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  lastUartChars_15 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  lastUartChars_16 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  terminalReady = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  afterLogin = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  hardInput_0_valid = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  hardInput_0_char = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  hardInput_1_valid = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  hardInput_1_char = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  hardInput_2_valid = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  hardInput_2_char = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  hardInput_3_valid = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  hardInput_3_char = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  hardInput_4_valid = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  hardInput_4_char = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  hardInput_5_valid = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  hardInput_5_char = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  hardInput_6_valid = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  hardInput_6_char = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  hardInput_7_valid = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  hardInput_7_char = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  hardInput_8_valid = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  hardInput_9_valid = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  command_0_valid = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  command_0_char = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  command_1_valid = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  command_1_char = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  command_2_valid = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  command_2_char = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  command_3_valid = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  command_3_char = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  command_4_valid = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  command_4_char = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  command_5_valid = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  command_5_char = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  command_6_valid = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  command_6_char = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  command_7_valid = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  command_7_char = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  command_8_valid = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  command_8_char = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  command_9_valid = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  command_9_char = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  command_10_valid = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  command_10_char = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  command_11_valid = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  command_11_char = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  command_12_valid = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  command_12_char = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  command_13_valid = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  command_13_char = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  command_14_valid = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  command_14_char = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  command_15_valid = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  command_15_char = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  command_16_valid = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  command_16_char = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  command_17_valid = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  awFired = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  wFired = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  finished = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  bid = _RAND_91[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
