module moduleCounter(
  input        clock,
  input        reset,
  output [2:0] count,
  input        incrm
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] cntReg; // @[soc.scala 64:23]
  wire [2:0] _cntReg_T_3 = cntReg + 3'h1; // @[soc.scala 66:35]
  assign count = cntReg; // @[soc.scala 67:9]
  always @(posedge clock) begin
    if (reset) begin // @[soc.scala 64:23]
      cntReg <= 3'h0; // @[soc.scala 64:23]
    end else if (incrm & cntReg == 3'h7) begin // @[soc.scala 65:16]
      cntReg <= 3'h0;
    end else if (incrm) begin // @[soc.scala 66:20]
      cntReg <= _cntReg_T_3;
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
  cntReg = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module soc(
  input         clock,
  input         reset,
  output        L2_AWVALID,
  input         L2_AWREADY,
  output [1:0]  L2_AWID,
  output [63:0] L2_AWADDR,
  output [7:0]  L2_AWLEN,
  output [2:0]  L2_AWSIZE,
  output [1:0]  L2_AWBURST,
  output        L2_AWLOCK,
  output [3:0]  L2_AWCACHE,
  output [2:0]  L2_AWPROT,
  output [3:0]  L2_AWQOS,
  output        L2_ARVALID,
  input         L2_ARREADY,
  output [1:0]  L2_ARID,
  output [63:0] L2_ARADDR,
  output [7:0]  L2_ARLEN,
  output [2:0]  L2_ARSIZE,
  output [1:0]  L2_ARBURST,
  output        L2_ARLOCK,
  output [3:0]  L2_ARCACHE,
  output [2:0]  L2_ARPROT,
  output [3:0]  L2_ARQOS,
  output        L2_WVALID,
  input         L2_WREADY,
  output [63:0] L2_WDATA,
  output [7:0]  L2_WSTRB,
  output        L2_WLAST,
  input         L2_RVALID,
  output        L2_RREADY,
  input  [1:0]  L2_RID,
  input  [63:0] L2_RDATA,
  input  [1:0]  L2_RRESP,
  input         L2_RLAST,
  input         L2_BVALID,
  output        L2_BREADY,
  input  [1:0]  L2_BID,
  input  [1:0]  L2_BRESP,
  input         MTIP,
  output        core_sample0,
  output        core_sample1,
  output        peripheral_AWID,
  output [31:0] peripheral_AWADDR,
  output [7:0]  peripheral_AWLEN,
  output [2:0]  peripheral_AWSIZE,
  output [1:0]  peripheral_AWBURST,
  output        peripheral_AWLOCK,
  output [3:0]  peripheral_AWCACHE,
  output [2:0]  peripheral_AWPROT,
  output [3:0]  peripheral_AWQOS,
  output        peripheral_AWVALID,
  input         peripheral_AWREADY,
  output [31:0] peripheral_WDATA,
  output [3:0]  peripheral_WSTRB,
  output        peripheral_WLAST,
  output        peripheral_WVALID,
  input         peripheral_WREADY,
  input         peripheral_BID,
  input  [1:0]  peripheral_BRESP,
  input         peripheral_BVALID,
  output        peripheral_BREADY,
  output        peripheral_ARID,
  output [31:0] peripheral_ARADDR,
  output [7:0]  peripheral_ARLEN,
  output [2:0]  peripheral_ARSIZE,
  output [1:0]  peripheral_ARBURST,
  output        peripheral_ARLOCK,
  output [3:0]  peripheral_ARCACHE,
  output [2:0]  peripheral_ARPROT,
  output [3:0]  peripheral_ARQOS,
  output        peripheral_ARVALID,
  input         peripheral_ARREADY,
  input         peripheral_RID,
  input  [31:0] peripheral_RDATA,
  input  [1:0]  peripheral_RRESP,
  input         peripheral_RLAST,
  input         peripheral_RVALID,
  output        peripheral_RREADY
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  readCounter_clock; // @[soc.scala 202:27]
  wire  readCounter_reset; // @[soc.scala 202:27]
  wire [2:0] readCounter_count; // @[soc.scala 202:27]
  wire  readCounter_incrm; // @[soc.scala 202:27]
  wire  writeCounter_clock; // @[soc.scala 205:28]
  wire  writeCounter_reset; // @[soc.scala 205:28]
  wire [2:0] writeCounter_count; // @[soc.scala 205:28]
  wire  writeCounter_incrm; // @[soc.scala 205:28]
  reg [2:0] readACERequestState; // @[soc.scala 201:36]
  reg [63:0] readDataVec_0; // @[soc.scala 203:28]
  reg [63:0] readDataVec_1; // @[soc.scala 203:28]
  reg [63:0] readDataVec_2; // @[soc.scala 203:28]
  reg [63:0] readDataVec_3; // @[soc.scala 203:28]
  reg [63:0] readDataVec_4; // @[soc.scala 203:28]
  reg [63:0] readDataVec_5; // @[soc.scala 203:28]
  reg [63:0] readDataVec_6; // @[soc.scala 203:28]
  reg [63:0] readDataVec_7; // @[soc.scala 203:28]
  wire  _T_4 = L2_RVALID & L2_RID == 2'h0; // @[soc.scala 228:25]
  wire [63:0] _GEN_0 = 3'h0 == readCounter_count ? L2_RDATA : readDataVec_0; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_1 = 3'h1 == readCounter_count ? L2_RDATA : readDataVec_1; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_2 = 3'h2 == readCounter_count ? L2_RDATA : readDataVec_2; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_3 = 3'h3 == readCounter_count ? L2_RDATA : readDataVec_3; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_4 = 3'h4 == readCounter_count ? L2_RDATA : readDataVec_4; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_5 = 3'h5 == readCounter_count ? L2_RDATA : readDataVec_5; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_6 = 3'h6 == readCounter_count ? L2_RDATA : readDataVec_6; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_7 = 3'h7 == readCounter_count ? L2_RDATA : readDataVec_7; // @[soc.scala 203:28 230:{40,40}]
  wire [63:0] _GEN_9 = L2_RVALID & L2_RID == 2'h0 ? _GEN_0 : readDataVec_0; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_10 = L2_RVALID & L2_RID == 2'h0 ? _GEN_1 : readDataVec_1; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_11 = L2_RVALID & L2_RID == 2'h0 ? _GEN_2 : readDataVec_2; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_12 = L2_RVALID & L2_RID == 2'h0 ? _GEN_3 : readDataVec_3; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_13 = L2_RVALID & L2_RID == 2'h0 ? _GEN_4 : readDataVec_4; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_14 = L2_RVALID & L2_RID == 2'h0 ? _GEN_5 : readDataVec_5; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_15 = L2_RVALID & L2_RID == 2'h0 ? _GEN_6 : readDataVec_6; // @[soc.scala 203:28 228:46]
  wire [63:0] _GEN_16 = L2_RVALID & L2_RID == 2'h0 ? _GEN_7 : readDataVec_7; // @[soc.scala 203:28 228:46]
  wire [2:0] _readACERequestState_T_4 = L2_RLAST & L2_RVALID & L2_RRESP == 2'h0 ? 3'h3 : 3'h2; // @[soc.scala 233:33]
  wire [2:0] _readACERequestState_T_5 = L2_AWREADY ? 3'h4 : 3'h3; // @[soc.scala 242:33]
  wire [63:0] _GEN_19 = 3'h1 == writeCounter_count ? readDataVec_1 : readDataVec_0; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_20 = 3'h2 == writeCounter_count ? readDataVec_2 : _GEN_19; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_21 = 3'h3 == writeCounter_count ? readDataVec_3 : _GEN_20; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_22 = 3'h4 == writeCounter_count ? readDataVec_4 : _GEN_21; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_23 = 3'h5 == writeCounter_count ? readDataVec_5 : _GEN_22; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_24 = 3'h6 == writeCounter_count ? readDataVec_6 : _GEN_23; // @[soc.scala 252:{19,19}]
  wire [63:0] _GEN_25 = 3'h7 == writeCounter_count ? readDataVec_7 : _GEN_24; // @[soc.scala 252:{19,19}]
  wire  _GEN_29 = 3'h4 == readACERequestState & writeCounter_count == 3'h7; // @[soc.scala 212:31 247:19 154:32]
  wire  _GEN_39 = 3'h3 == readACERequestState ? 1'h0 : _GEN_29; // @[soc.scala 212:31 154:32]
  wire  _GEN_58 = 3'h2 == readACERequestState ? 1'h0 : _GEN_39; // @[soc.scala 212:31 154:32]
  wire  _GEN_80 = 3'h1 == readACERequestState ? 1'h0 : _GEN_58; // @[soc.scala 212:31 154:32]
  wire  L2WLASTWire = 3'h0 == readACERequestState ? 1'h0 : _GEN_80; // @[soc.scala 212:31 154:32]
  wire [2:0] _readACERequestState_T_7 = L2WLASTWire & L2_WREADY ? 3'h5 : 3'h4; // @[soc.scala 253:33]
  wire [2:0] _readACERequestState_T_12 = L2_BVALID & L2_BID == 2'h0 & L2_BRESP == 2'h0 ? 3'h1 : 3'h5; // @[soc.scala 258:33]
  wire [2:0] _GEN_27 = 3'h5 == readACERequestState ? _readACERequestState_T_12 : readACERequestState; // @[soc.scala 212:31 258:27 201:36]
  wire [63:0] _GEN_31 = 3'h4 == readACERequestState ? _GEN_25 : 64'h0; // @[soc.scala 212:31 252:19 153:32]
  wire [2:0] _GEN_32 = 3'h4 == readACERequestState ? _readACERequestState_T_7 : _GEN_27; // @[soc.scala 212:31 253:27]
  wire  _GEN_33 = 3'h4 == readACERequestState ? 1'h0 : 3'h5 == readACERequestState; // @[soc.scala 212:31 164:33]
  wire [63:0] _GEN_36 = 3'h3 == readACERequestState ? 64'hc0 : 64'h0; // @[soc.scala 212:31 240:20 144:33]
  wire [2:0] _GEN_37 = 3'h3 == readACERequestState ? _readACERequestState_T_5 : _GEN_32; // @[soc.scala 212:31 242:27]
  wire  _GEN_38 = 3'h3 == readACERequestState ? 1'h0 : 3'h4 == readACERequestState; // @[soc.scala 212:31 151:33]
  wire  _GEN_40 = 3'h3 == readACERequestState ? 1'h0 : 3'h4 == readACERequestState & L2_WREADY; // @[soc.scala 210:22 212:31]
  wire [63:0] _GEN_41 = 3'h3 == readACERequestState ? 64'h0 : _GEN_31; // @[soc.scala 212:31 153:32]
  wire  _GEN_42 = 3'h3 == readACERequestState ? 1'h0 : _GEN_33; // @[soc.scala 212:31 164:33]
  wire  _GEN_54 = 3'h2 == readACERequestState ? 1'h0 : 3'h3 == readACERequestState; // @[soc.scala 212:31 141:34]
  wire [63:0] _GEN_56 = 3'h2 == readACERequestState ? 64'h0 : _GEN_36; // @[soc.scala 212:31 144:33]
  wire  _GEN_57 = 3'h2 == readACERequestState ? 1'h0 : _GEN_38; // @[soc.scala 212:31 151:33]
  wire  _GEN_59 = 3'h2 == readACERequestState ? 1'h0 : _GEN_40; // @[soc.scala 210:22 212:31]
  wire [63:0] _GEN_60 = 3'h2 == readACERequestState ? 64'h0 : _GEN_41; // @[soc.scala 212:31 153:32]
  wire  _GEN_61 = 3'h2 == readACERequestState ? 1'h0 : _GEN_42; // @[soc.scala 212:31 164:33]
  wire [63:0] _GEN_64 = 3'h1 == readACERequestState ? 64'h80 : 64'h0; // @[soc.scala 212:31 221:20 149:33]
  wire  _GEN_66 = 3'h1 == readACERequestState ? 1'h0 : 3'h2 == readACERequestState; // @[soc.scala 209:22 212:31]
  wire  _GEN_67 = 3'h1 == readACERequestState ? 1'h0 : 3'h2 == readACERequestState & _T_4; // @[soc.scala 208:21 212:31]
  wire  _GEN_76 = 3'h1 == readACERequestState ? 1'h0 : _GEN_54; // @[soc.scala 212:31 141:34]
  wire [63:0] _GEN_78 = 3'h1 == readACERequestState ? 64'h0 : _GEN_56; // @[soc.scala 212:31 144:33]
  wire  _GEN_79 = 3'h1 == readACERequestState ? 1'h0 : _GEN_57; // @[soc.scala 212:31 151:33]
  wire  _GEN_81 = 3'h1 == readACERequestState ? 1'h0 : _GEN_59; // @[soc.scala 210:22 212:31]
  wire [63:0] _GEN_82 = 3'h1 == readACERequestState ? 64'h0 : _GEN_60; // @[soc.scala 212:31 153:32]
  wire  _GEN_83 = 3'h1 == readACERequestState ? 1'h0 : _GEN_61; // @[soc.scala 212:31 164:33]
  reg [2:0] readPeriRequestState; // @[soc.scala 264:37]
  reg [31:0] readDataVecPeri; // @[soc.scala 265:32]
  wire [31:0] _GEN_106 = peripheral_RVALID & ~peripheral_RID ? peripheral_RDATA : readDataVecPeri; // @[soc.scala 282:50 283:25 265:32]
  wire [2:0] _readPeriRequestState_T_4 = peripheral_RLAST & peripheral_RVALID & peripheral_RRESP == 2'h0 ? 3'h3 : 3'h2; // @[soc.scala 286:34]
  wire [2:0] _readPeriRequestState_T_5 = peripheral_AWREADY ? 3'h4 : 3'h3; // @[soc.scala 295:34]
  wire  _GEN_117 = 3'h3 == readPeriRequestState ? 1'h0 : 3'h4 == readPeriRequestState; // @[soc.scala 267:32 179:35]
  wire  _GEN_125 = 3'h2 == readPeriRequestState ? 1'h0 : _GEN_117; // @[soc.scala 267:32 179:35]
  wire  _GEN_136 = 3'h1 == readPeriRequestState ? 1'h0 : _GEN_125; // @[soc.scala 267:32 179:35]
  wire  PeriWLASTWire = 3'h0 == readPeriRequestState ? 1'h0 : _GEN_136; // @[soc.scala 267:32 179:35]
  wire [2:0] _readPeriRequestState_T_7 = PeriWLASTWire & peripheral_WREADY ? 3'h5 : 3'h4; // @[soc.scala 303:34]
  wire [1:0] PeriBIDWire = {{1'd0}, peripheral_BID}; // @[soc.scala 193:32 387:21]
  wire [2:0] _readPeriRequestState_T_12 = peripheral_BVALID & PeriBIDWire == 2'h0 & peripheral_BRESP == 2'h0 ? 3'h1 : 3'h5
    ; // @[soc.scala 308:34]
  wire [2:0] _GEN_108 = 3'h5 == readPeriRequestState ? _readPeriRequestState_T_12 : readPeriRequestState; // @[soc.scala 267:32 308:28 264:37]
  wire [31:0] _GEN_110 = 3'h4 == readPeriRequestState ? readDataVecPeri : 32'h0; // @[soc.scala 267:32 302:21 181:34]
  wire [2:0] _GEN_111 = 3'h4 == readPeriRequestState ? _readPeriRequestState_T_7 : _GEN_108; // @[soc.scala 267:32 303:28]
  wire  _GEN_112 = 3'h4 == readPeriRequestState ? 1'h0 : 3'h5 == readPeriRequestState; // @[soc.scala 267:32 192:35]
  wire [31:0] _GEN_115 = 3'h3 == readPeriRequestState ? 32'h80 : 32'h0; // @[soc.scala 267:32 293:22 172:35]
  wire [2:0] _GEN_116 = 3'h3 == readPeriRequestState ? _readPeriRequestState_T_5 : _GEN_111; // @[soc.scala 267:32 295:28]
  wire [31:0] _GEN_118 = 3'h3 == readPeriRequestState ? 32'h0 : _GEN_110; // @[soc.scala 267:32 181:34]
  wire  _GEN_119 = 3'h3 == readPeriRequestState ? 1'h0 : _GEN_112; // @[soc.scala 267:32 192:35]
  wire  _GEN_122 = 3'h2 == readPeriRequestState ? 1'h0 : 3'h3 == readPeriRequestState; // @[soc.scala 267:32 169:36]
  wire [31:0] _GEN_124 = 3'h2 == readPeriRequestState ? 32'h0 : _GEN_115; // @[soc.scala 267:32 172:35]
  wire [31:0] _GEN_126 = 3'h2 == readPeriRequestState ? 32'h0 : _GEN_118; // @[soc.scala 267:32 181:34]
  wire  _GEN_127 = 3'h2 == readPeriRequestState ? 1'h0 : _GEN_119; // @[soc.scala 267:32 192:35]
  wire [31:0] _GEN_130 = 3'h1 == readPeriRequestState ? 32'h80 : 32'h0; // @[soc.scala 267:32 275:22 177:35]
  wire  _GEN_133 = 3'h1 == readPeriRequestState ? 1'h0 : _GEN_122; // @[soc.scala 267:32 169:36]
  wire [31:0] _GEN_135 = 3'h1 == readPeriRequestState ? 32'h0 : _GEN_124; // @[soc.scala 267:32 172:35]
  wire [31:0] _GEN_137 = 3'h1 == readPeriRequestState ? 32'h0 : _GEN_126; // @[soc.scala 267:32 181:34]
  wire  _GEN_138 = 3'h1 == readPeriRequestState ? 1'h0 : _GEN_127; // @[soc.scala 267:32 192:35]
  moduleCounter readCounter ( // @[soc.scala 202:27]
    .clock(readCounter_clock),
    .reset(readCounter_reset),
    .count(readCounter_count),
    .incrm(readCounter_incrm)
  );
  moduleCounter writeCounter ( // @[soc.scala 205:28]
    .clock(writeCounter_clock),
    .reset(writeCounter_reset),
    .count(writeCounter_count),
    .incrm(writeCounter_incrm)
  );
  assign L2_AWVALID = 3'h0 == readACERequestState ? 1'h0 : _GEN_76; // @[soc.scala 212:31 141:34]
  assign L2_AWID = 2'h0; // @[soc.scala 143:31 212:31]
  assign L2_AWADDR = 3'h0 == readACERequestState ? 64'h0 : _GEN_78; // @[soc.scala 212:31 144:33]
  assign L2_AWLEN = 8'h7; // @[soc.scala 321:12]
  assign L2_AWSIZE = 3'h3; // @[soc.scala 322:13]
  assign L2_AWBURST = 2'h1; // @[soc.scala 323:14]
  assign L2_AWLOCK = 1'h0; // @[soc.scala 324:13]
  assign L2_AWCACHE = 4'h2; // @[soc.scala 325:14]
  assign L2_AWPROT = 3'h0; // @[soc.scala 326:13]
  assign L2_AWQOS = 4'h0; // @[soc.scala 327:12]
  assign L2_ARVALID = 3'h0 == readACERequestState ? 1'h0 : 3'h1 == readACERequestState; // @[soc.scala 207:21 212:31]
  assign L2_ARID = 2'h0; // @[soc.scala 148:31 212:31]
  assign L2_ARADDR = 3'h0 == readACERequestState ? 64'h0 : _GEN_64; // @[soc.scala 212:31 149:33]
  assign L2_ARLEN = 8'h7; // @[soc.scala 337:12]
  assign L2_ARSIZE = 3'h3; // @[soc.scala 338:13]
  assign L2_ARBURST = 2'h1; // @[soc.scala 339:14]
  assign L2_ARLOCK = 1'h0; // @[soc.scala 340:13]
  assign L2_ARCACHE = 4'h2; // @[soc.scala 341:14]
  assign L2_ARPROT = 3'h0; // @[soc.scala 342:13]
  assign L2_ARQOS = 4'h0; // @[soc.scala 343:12]
  assign L2_WVALID = 3'h0 == readACERequestState ? 1'h0 : _GEN_79; // @[soc.scala 212:31 151:33]
  assign L2_WDATA = 3'h0 == readACERequestState ? 64'h0 : _GEN_82; // @[soc.scala 212:31 153:32]
  assign L2_WSTRB = 8'hff; // @[soc.scala 351:12]
  assign L2_WLAST = 3'h0 == readACERequestState ? 1'h0 : _GEN_80; // @[soc.scala 212:31 154:32]
  assign L2_RREADY = 1'h0; // @[soc.scala 157:{33,33}]
  assign L2_BREADY = 3'h0 == readACERequestState ? 1'h0 : _GEN_83; // @[soc.scala 212:31 164:33]
  assign core_sample0 = MTIP; // @[soc.scala 138:16]
  assign core_sample1 = 1'h1; // @[soc.scala 139:16]
  assign peripheral_AWID = 1'h0; // @[soc.scala 369:19]
  assign peripheral_AWADDR = 3'h0 == readPeriRequestState ? 32'h0 : _GEN_135; // @[soc.scala 267:32 172:35]
  assign peripheral_AWLEN = 8'h0; // @[soc.scala 371:26]
  assign peripheral_AWSIZE = 3'h2; // @[soc.scala 372:27]
  assign peripheral_AWBURST = 2'h1; // @[soc.scala 373:28]
  assign peripheral_AWLOCK = 1'h0; // @[soc.scala 374:27]
  assign peripheral_AWCACHE = 4'h0; // @[soc.scala 375:28]
  assign peripheral_AWPROT = 3'h2; // @[soc.scala 376:27]
  assign peripheral_AWQOS = 4'h0; // @[soc.scala 377:26]
  assign peripheral_AWVALID = 3'h0 == readPeriRequestState ? 1'h0 : _GEN_133; // @[soc.scala 267:32 169:36]
  assign peripheral_WDATA = 3'h0 == readPeriRequestState ? 32'h0 : _GEN_137; // @[soc.scala 267:32 181:34]
  assign peripheral_WSTRB = 4'hf; // @[soc.scala 382:26]
  assign peripheral_WLAST = 3'h0 == readPeriRequestState ? 1'h0 : _GEN_136; // @[soc.scala 267:32 179:35]
  assign peripheral_WVALID = 3'h0 == readPeriRequestState ? 1'h0 : _GEN_136; // @[soc.scala 267:32 179:35]
  assign peripheral_BREADY = 3'h0 == readPeriRequestState ? 1'h0 : _GEN_138; // @[soc.scala 267:32 192:35]
  assign peripheral_ARID = 1'h0; // @[soc.scala 392:25]
  assign peripheral_ARADDR = 3'h0 == readPeriRequestState ? 32'h0 : _GEN_130; // @[soc.scala 267:32 177:35]
  assign peripheral_ARLEN = 8'h0; // @[soc.scala 394:26]
  assign peripheral_ARSIZE = 3'h2; // @[soc.scala 395:27]
  assign peripheral_ARBURST = 2'h1; // @[soc.scala 396:28]
  assign peripheral_ARLOCK = 1'h0; // @[soc.scala 397:27]
  assign peripheral_ARCACHE = 4'h0; // @[soc.scala 398:28]
  assign peripheral_ARPROT = 3'h2; // @[soc.scala 399:27]
  assign peripheral_ARQOS = 4'h0; // @[soc.scala 400:26]
  assign peripheral_ARVALID = 3'h0 == readPeriRequestState ? 1'h0 : 3'h1 == readPeriRequestState; // @[soc.scala 267:32 174:36]
  assign peripheral_RREADY = 1'h0; // @[soc.scala 185:{35,35}]
  assign readCounter_clock = clock;
  assign readCounter_reset = 3'h0 == readACERequestState ? 1'h0 : 3'h1 == readACERequestState; // @[soc.scala 207:21 212:31]
  assign readCounter_incrm = 3'h0 == readACERequestState ? 1'h0 : _GEN_67; // @[soc.scala 208:21 212:31]
  assign writeCounter_clock = clock;
  assign writeCounter_reset = 3'h0 == readACERequestState ? 1'h0 : _GEN_66; // @[soc.scala 209:22 212:31]
  assign writeCounter_incrm = 3'h0 == readACERequestState ? 1'h0 : _GEN_81; // @[soc.scala 210:22 212:31]
  always @(posedge clock) begin
    if (reset) begin // @[soc.scala 201:36]
      readACERequestState <= 3'h0; // @[soc.scala 201:36]
    end else if (3'h0 == readACERequestState) begin // @[soc.scala 212:31]
      readACERequestState <= 3'h1; // @[soc.scala 214:27]
    end else if (3'h1 == readACERequestState) begin // @[soc.scala 212:31]
      if (L2_ARREADY) begin // @[soc.scala 223:33]
        readACERequestState <= 3'h2;
      end else begin
        readACERequestState <= 3'h1;
      end
    end else if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
      readACERequestState <= _readACERequestState_T_4; // @[soc.scala 233:27]
    end else begin
      readACERequestState <= _GEN_37;
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_0 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_0 <= _GEN_9;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_1 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_1 <= _GEN_10;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_2 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_2 <= _GEN_11;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_3 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_3 <= _GEN_12;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_4 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_4 <= _GEN_13;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_5 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_5 <= _GEN_14;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_6 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_6 <= _GEN_15;
        end
      end
    end
    if (reset) begin // @[soc.scala 203:28]
      readDataVec_7 <= 64'h0; // @[soc.scala 203:28]
    end else if (!(3'h0 == readACERequestState)) begin // @[soc.scala 212:31]
      if (!(3'h1 == readACERequestState)) begin // @[soc.scala 212:31]
        if (3'h2 == readACERequestState) begin // @[soc.scala 212:31]
          readDataVec_7 <= _GEN_16;
        end
      end
    end
    if (reset) begin // @[soc.scala 264:37]
      readPeriRequestState <= 3'h0; // @[soc.scala 264:37]
    end else if (3'h0 == readPeriRequestState) begin // @[soc.scala 267:32]
      readPeriRequestState <= 3'h1; // @[soc.scala 269:28]
    end else if (3'h1 == readPeriRequestState) begin // @[soc.scala 267:32]
      if (peripheral_ARREADY) begin // @[soc.scala 277:34]
        readPeriRequestState <= 3'h2;
      end else begin
        readPeriRequestState <= 3'h1;
      end
    end else if (3'h2 == readPeriRequestState) begin // @[soc.scala 267:32]
      readPeriRequestState <= _readPeriRequestState_T_4; // @[soc.scala 286:28]
    end else begin
      readPeriRequestState <= _GEN_116;
    end
    if (reset) begin // @[soc.scala 265:32]
      readDataVecPeri <= 32'h0; // @[soc.scala 265:32]
    end else if (!(3'h0 == readPeriRequestState)) begin // @[soc.scala 267:32]
      if (!(3'h1 == readPeriRequestState)) begin // @[soc.scala 267:32]
        if (3'h2 == readPeriRequestState) begin // @[soc.scala 267:32]
          readDataVecPeri <= _GEN_106;
        end
      end
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
  readACERequestState = _RAND_0[2:0];
  _RAND_1 = {2{`RANDOM}};
  readDataVec_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  readDataVec_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  readDataVec_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  readDataVec_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  readDataVec_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  readDataVec_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  readDataVec_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  readDataVec_7 = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  readPeriRequestState = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  readDataVecPeri = _RAND_10[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
