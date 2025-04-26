module bootROM(
  input         clock,
  input         reset,
  input         req_AWID,
  input  [31:0] req_AWADDR,
  input  [7:0]  req_AWLEN,
  input  [2:0]  req_AWSIZE,
  input  [1:0]  req_AWBURST,
  input         req_AWLOCK,
  input  [3:0]  req_AWCACHE,
  input  [2:0]  req_AWPROT,
  input  [3:0]  req_AWQOS,
  input         req_AWVALID,
  output        req_AWREADY,
  input  [31:0] req_WDATA,
  input  [3:0]  req_WSTRB,
  input         req_WLAST,
  input         req_WVALID,
  output        req_WREADY,
  output        req_BID,
  output [1:0]  req_BRESP,
  output        req_BVALID,
  input         req_BREADY,
  input         req_ARID,
  input  [31:0] req_ARADDR,
  input  [7:0]  req_ARLEN,
  input  [2:0]  req_ARSIZE,
  input  [1:0]  req_ARBURST,
  input         req_ARLOCK,
  input  [3:0]  req_ARCACHE,
  input  [2:0]  req_ARPROT,
  input  [3:0]  req_ARQOS,
  input         req_ARVALID,
  output        req_ARREADY,
  output        req_RID,
  output [31:0] req_RDATA,
  output [1:0]  req_RRESP,
  output        req_RLAST,
  output        req_RVALID,
  input         req_RREADY
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  readRequestBuffer_valid; // @[bootROM.scala 25:34]
  reg [31:0] readRequestBuffer_address; // @[bootROM.scala 25:34]
  reg [7:0] readRequestBuffer_len; // @[bootROM.scala 25:34]
  reg  readRequestBuffer_id; // @[bootROM.scala 25:34]
  wire  _GEN_0 = req_ARREADY & req_ARVALID | readRequestBuffer_valid; // @[bootROM.scala 33:36 34:29 25:34]
  wire [7:0] _readRequestBuffer_len_T_1 = readRequestBuffer_len - 8'h1; // @[bootROM.scala 42:52]
  wire [31:0] _readRequestBuffer_address_T_1 = readRequestBuffer_address + 32'h4; // @[bootROM.scala 43:60]
  wire  _T_2 = |readRequestBuffer_len; // @[bootROM.scala 44:33]
  wire [31:0] _req_RDATA_T_1 = {readRequestBuffer_address[31:2],2'h0}; // @[Cat.scala 33:92]
  wire [32:0] _req_RDATA_T_2 = {{1'd0}, _req_RDATA_T_1}; // @[bootROM.scala 47:97]
  wire [31:0] _req_RDATA_T_8 = _req_RDATA_T_1 + 32'h1; // @[bootROM.scala 47:97]
  wire [31:0] _req_RDATA_T_13 = _req_RDATA_T_1 + 32'h2; // @[bootROM.scala 47:97]
  wire [31:0] _req_RDATA_T_18 = _req_RDATA_T_1 + 32'h3; // @[bootROM.scala 47:97]
  wire [7:0] _GEN_10 = 5'h1 == _req_RDATA_T_2[4:0] ? 8'h5 : 8'h37; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_11 = 5'h2 == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_10; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_12 = 5'h3 == _req_RDATA_T_2[4:0] ? 8'h4 : _GEN_11; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_13 = 5'h4 == _req_RDATA_T_2[4:0] ? 8'h83 : _GEN_12; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_14 = 5'h5 == _req_RDATA_T_2[4:0] ? 8'h65 : _GEN_13; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_15 = 5'h6 == _req_RDATA_T_2[4:0] ? 8'h5 : _GEN_14; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_16 = 5'h7 == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_15; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_17 = 5'h8 == _req_RDATA_T_2[4:0] ? 8'he3 : _GEN_16; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_18 = 5'h9 == _req_RDATA_T_2[4:0] ? 8'h8e : _GEN_17; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_19 = 5'ha == _req_RDATA_T_2[4:0] ? 8'h5 : _GEN_18; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_20 = 5'hb == _req_RDATA_T_2[4:0] ? 8'hfe : _GEN_19; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_21 = 5'hc == _req_RDATA_T_2[4:0] ? 8'h9b : _GEN_20; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_22 = 5'hd == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_21; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_23 = 5'he == _req_RDATA_T_2[4:0] ? 8'h10 : _GEN_22; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_24 = 5'hf == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_23; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_25 = 5'h10 == _req_RDATA_T_2[4:0] ? 8'h93 : _GEN_24; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_26 = 5'h11 == _req_RDATA_T_2[4:0] ? 8'h90 : _GEN_25; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_27 = 5'h12 == _req_RDATA_T_2[4:0] ? 8'hf0 : _GEN_26; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_28 = 5'h13 == _req_RDATA_T_2[4:0] ? 8'h1 : _GEN_27; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_29 = 5'h14 == _req_RDATA_T_2[4:0] ? 8'h67 : _GEN_28; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_30 = 5'h15 == _req_RDATA_T_2[4:0] ? 8'h80 : _GEN_29; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_31 = 5'h16 == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_30; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_32 = 5'h17 == _req_RDATA_T_2[4:0] ? 8'h0 : _GEN_31; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_34 = 5'h1 == _req_RDATA_T_8[4:0] ? 8'h5 : 8'h37; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_35 = 5'h2 == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_34; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_36 = 5'h3 == _req_RDATA_T_8[4:0] ? 8'h4 : _GEN_35; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_37 = 5'h4 == _req_RDATA_T_8[4:0] ? 8'h83 : _GEN_36; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_38 = 5'h5 == _req_RDATA_T_8[4:0] ? 8'h65 : _GEN_37; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_39 = 5'h6 == _req_RDATA_T_8[4:0] ? 8'h5 : _GEN_38; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_40 = 5'h7 == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_39; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_41 = 5'h8 == _req_RDATA_T_8[4:0] ? 8'he3 : _GEN_40; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_42 = 5'h9 == _req_RDATA_T_8[4:0] ? 8'h8e : _GEN_41; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_43 = 5'ha == _req_RDATA_T_8[4:0] ? 8'h5 : _GEN_42; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_44 = 5'hb == _req_RDATA_T_8[4:0] ? 8'hfe : _GEN_43; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_45 = 5'hc == _req_RDATA_T_8[4:0] ? 8'h9b : _GEN_44; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_46 = 5'hd == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_45; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_47 = 5'he == _req_RDATA_T_8[4:0] ? 8'h10 : _GEN_46; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_48 = 5'hf == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_47; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_49 = 5'h10 == _req_RDATA_T_8[4:0] ? 8'h93 : _GEN_48; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_50 = 5'h11 == _req_RDATA_T_8[4:0] ? 8'h90 : _GEN_49; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_51 = 5'h12 == _req_RDATA_T_8[4:0] ? 8'hf0 : _GEN_50; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_52 = 5'h13 == _req_RDATA_T_8[4:0] ? 8'h1 : _GEN_51; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_53 = 5'h14 == _req_RDATA_T_8[4:0] ? 8'h67 : _GEN_52; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_54 = 5'h15 == _req_RDATA_T_8[4:0] ? 8'h80 : _GEN_53; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_55 = 5'h16 == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_54; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_56 = 5'h17 == _req_RDATA_T_8[4:0] ? 8'h0 : _GEN_55; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_58 = 5'h1 == _req_RDATA_T_13[4:0] ? 8'h5 : 8'h37; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_59 = 5'h2 == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_58; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_60 = 5'h3 == _req_RDATA_T_13[4:0] ? 8'h4 : _GEN_59; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_61 = 5'h4 == _req_RDATA_T_13[4:0] ? 8'h83 : _GEN_60; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_62 = 5'h5 == _req_RDATA_T_13[4:0] ? 8'h65 : _GEN_61; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_63 = 5'h6 == _req_RDATA_T_13[4:0] ? 8'h5 : _GEN_62; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_64 = 5'h7 == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_63; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_65 = 5'h8 == _req_RDATA_T_13[4:0] ? 8'he3 : _GEN_64; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_66 = 5'h9 == _req_RDATA_T_13[4:0] ? 8'h8e : _GEN_65; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_67 = 5'ha == _req_RDATA_T_13[4:0] ? 8'h5 : _GEN_66; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_68 = 5'hb == _req_RDATA_T_13[4:0] ? 8'hfe : _GEN_67; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_69 = 5'hc == _req_RDATA_T_13[4:0] ? 8'h9b : _GEN_68; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_70 = 5'hd == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_69; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_71 = 5'he == _req_RDATA_T_13[4:0] ? 8'h10 : _GEN_70; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_72 = 5'hf == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_71; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_73 = 5'h10 == _req_RDATA_T_13[4:0] ? 8'h93 : _GEN_72; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_74 = 5'h11 == _req_RDATA_T_13[4:0] ? 8'h90 : _GEN_73; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_75 = 5'h12 == _req_RDATA_T_13[4:0] ? 8'hf0 : _GEN_74; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_76 = 5'h13 == _req_RDATA_T_13[4:0] ? 8'h1 : _GEN_75; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_77 = 5'h14 == _req_RDATA_T_13[4:0] ? 8'h67 : _GEN_76; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_78 = 5'h15 == _req_RDATA_T_13[4:0] ? 8'h80 : _GEN_77; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_79 = 5'h16 == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_78; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_80 = 5'h17 == _req_RDATA_T_13[4:0] ? 8'h0 : _GEN_79; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_82 = 5'h1 == _req_RDATA_T_18[4:0] ? 8'h5 : 8'h37; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_83 = 5'h2 == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_82; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_84 = 5'h3 == _req_RDATA_T_18[4:0] ? 8'h4 : _GEN_83; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_85 = 5'h4 == _req_RDATA_T_18[4:0] ? 8'h83 : _GEN_84; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_86 = 5'h5 == _req_RDATA_T_18[4:0] ? 8'h65 : _GEN_85; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_87 = 5'h6 == _req_RDATA_T_18[4:0] ? 8'h5 : _GEN_86; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_88 = 5'h7 == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_87; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_89 = 5'h8 == _req_RDATA_T_18[4:0] ? 8'he3 : _GEN_88; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_90 = 5'h9 == _req_RDATA_T_18[4:0] ? 8'h8e : _GEN_89; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_91 = 5'ha == _req_RDATA_T_18[4:0] ? 8'h5 : _GEN_90; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_92 = 5'hb == _req_RDATA_T_18[4:0] ? 8'hfe : _GEN_91; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_93 = 5'hc == _req_RDATA_T_18[4:0] ? 8'h9b : _GEN_92; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_94 = 5'hd == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_93; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_95 = 5'he == _req_RDATA_T_18[4:0] ? 8'h10 : _GEN_94; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_96 = 5'hf == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_95; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_97 = 5'h10 == _req_RDATA_T_18[4:0] ? 8'h93 : _GEN_96; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_98 = 5'h11 == _req_RDATA_T_18[4:0] ? 8'h90 : _GEN_97; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_99 = 5'h12 == _req_RDATA_T_18[4:0] ? 8'hf0 : _GEN_98; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_100 = 5'h13 == _req_RDATA_T_18[4:0] ? 8'h1 : _GEN_99; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_101 = 5'h14 == _req_RDATA_T_18[4:0] ? 8'h67 : _GEN_100; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_102 = 5'h15 == _req_RDATA_T_18[4:0] ? 8'h80 : _GEN_101; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_103 = 5'h16 == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_102; // @[bootROM.scala 47:{39,39}]
  wire [7:0] _GEN_104 = 5'h17 == _req_RDATA_T_18[4:0] ? 8'h0 : _GEN_103; // @[bootROM.scala 47:{39,39}]
  wire [15:0] req_RDATA_lo = {_GEN_56,_GEN_32}; // @[Cat.scala 33:92]
  wire [15:0] req_RDATA_hi = {_GEN_104,_GEN_80}; // @[Cat.scala 33:92]
  assign req_AWREADY = 1'h0; // @[bootROM.scala 55:15]
  assign req_WREADY = 1'h0; // @[bootROM.scala 56:14]
  assign req_BID = 1'h0; // @[bootROM.scala 58:11]
  assign req_BRESP = 2'h0; // @[bootROM.scala 59:13]
  assign req_BVALID = 1'h0; // @[bootROM.scala 60:14]
  assign req_ARREADY = ~readRequestBuffer_valid; // @[bootROM.scala 53:18]
  assign req_RID = readRequestBuffer_id; // @[bootROM.scala 48:11]
  assign req_RDATA = {req_RDATA_hi,req_RDATA_lo}; // @[Cat.scala 33:92]
  assign req_RRESP = 2'h0; // @[bootROM.scala 50:13]
  assign req_RLAST = ~_T_2; // @[bootROM.scala 49:16]
  assign req_RVALID = readRequestBuffer_valid; // @[bootROM.scala 51:14]
  always @(posedge clock) begin
    if (reset) begin // @[bootROM.scala 25:34]
      readRequestBuffer_valid <= 1'h0; // @[bootROM.scala 25:34]
    end else if (readRequestBuffer_valid & req_RREADY) begin // @[bootROM.scala 41:47]
      if (~(|readRequestBuffer_len)) begin // @[bootROM.scala 44:38]
        readRequestBuffer_valid <= 1'h0; // @[bootROM.scala 44:64]
      end else begin
        readRequestBuffer_valid <= _GEN_0;
      end
    end else begin
      readRequestBuffer_valid <= _GEN_0;
    end
    if (readRequestBuffer_valid & req_RREADY) begin // @[bootROM.scala 41:47]
      readRequestBuffer_address <= _readRequestBuffer_address_T_1; // @[bootROM.scala 43:31]
    end else if (req_ARREADY & req_ARVALID) begin // @[bootROM.scala 33:36]
      readRequestBuffer_address <= req_ARADDR; // @[bootROM.scala 35:31]
    end
    if (readRequestBuffer_valid & req_RREADY) begin // @[bootROM.scala 41:47]
      readRequestBuffer_len <= _readRequestBuffer_len_T_1; // @[bootROM.scala 42:27]
    end else if (req_ARREADY & req_ARVALID) begin // @[bootROM.scala 33:36]
      readRequestBuffer_len <= req_ARLEN; // @[bootROM.scala 36:27]
    end
    if (req_ARREADY & req_ARVALID) begin // @[bootROM.scala 33:36]
      readRequestBuffer_id <= req_ARID; // @[bootROM.scala 38:26]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
