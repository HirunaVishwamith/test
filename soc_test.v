module moduleCounter(
  input        clock,
  input        reset,
  output [2:0] count,
  input        incrm
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] cntReg; // @[soc (1).scala 64:23]
  wire [2:0] _cntReg_T_3 = cntReg + 3'h1; // @[soc (1).scala 66:35]
  assign count = cntReg; // @[soc (1).scala 67:9]
  always @(posedge clock) begin
    if (reset) begin // @[soc (1).scala 64:23]
      cntReg <= 3'h0; // @[soc (1).scala 64:23]
    end else if (incrm & cntReg == 3'h7) begin // @[soc (1).scala 65:16]
      cntReg <= 3'h0;
    end else if (incrm) begin // @[soc (1).scala 66:20]
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
  wire  readCounter_clock; // @[soc (1).scala 202:27]
  wire  readCounter_reset; // @[soc (1).scala 202:27]
  wire [2:0] readCounter_count; // @[soc (1).scala 202:27]
  wire  readCounter_incrm; // @[soc (1).scala 202:27]
  wire  writeCounter_clock; // @[soc (1).scala 205:28]
  wire  writeCounter_reset; // @[soc (1).scala 205:28]
  wire [2:0] writeCounter_count; // @[soc (1).scala 205:28]
  wire  writeCounter_incrm; // @[soc (1).scala 205:28]
  reg [2:0] readACERequestState; // @[soc (1).scala 201:36]
  reg [63:0] readDataVec_0; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_1; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_2; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_3; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_4; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_5; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_6; // @[soc (1).scala 203:28]
  reg [63:0] readDataVec_7; // @[soc (1).scala 203:28]
  wire  L2ARVALIDWire = 3'h0 == readACERequestState; // @[soc (1).scala 212:31]
  wire  _T_3 = L2_RVALID & L2_RID == 2'h0; // @[soc (1).scala 225:25]
  wire [63:0] _GEN_0 = 3'h0 == readCounter_count ? L2_RDATA : readDataVec_0; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_1 = 3'h1 == readCounter_count ? L2_RDATA : readDataVec_1; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_2 = 3'h2 == readCounter_count ? L2_RDATA : readDataVec_2; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_3 = 3'h3 == readCounter_count ? L2_RDATA : readDataVec_3; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_4 = 3'h4 == readCounter_count ? L2_RDATA : readDataVec_4; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_5 = 3'h5 == readCounter_count ? L2_RDATA : readDataVec_5; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_6 = 3'h6 == readCounter_count ? L2_RDATA : readDataVec_6; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [63:0] _GEN_7 = 3'h7 == readCounter_count ? L2_RDATA : readDataVec_7; // @[soc (1).scala 203:28 soc (1).scala 227:40 soc (1).scala 227:40]
  wire [2:0] _readACERequestState_T_3 = L2_AWREADY ? 3'h3 : 3'h2; // @[soc (1).scala 239:33]
  wire [63:0] _GEN_19 = 3'h1 == writeCounter_count ? readDataVec_1 : readDataVec_0; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_20 = 3'h2 == writeCounter_count ? readDataVec_2 : _GEN_19; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_21 = 3'h3 == writeCounter_count ? readDataVec_3 : _GEN_20; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_22 = 3'h4 == writeCounter_count ? readDataVec_4 : _GEN_21; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_23 = 3'h5 == writeCounter_count ? readDataVec_5 : _GEN_22; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_24 = 3'h6 == writeCounter_count ? readDataVec_6 : _GEN_23; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [63:0] _GEN_25 = 3'h7 == writeCounter_count ? readDataVec_7 : _GEN_24; // @[soc (1).scala 249:19 soc (1).scala 249:19]
  wire [2:0] _readACERequestState_T_10 = L2_BVALID & L2_BID == 2'h0 & L2_BRESP == 2'h0 ? 3'h0 : 3'h4; // @[soc (1).scala 255:33]
  wire [2:0] _GEN_27 = 3'h4 == readACERequestState ? _readACERequestState_T_10 : readACERequestState; // @[soc (1).scala 201:36 soc (1).scala 212:31 soc (1).scala 255:27]
  wire [63:0] _GEN_31 = 3'h3 == readACERequestState ? _GEN_25 : 64'h0; // @[soc (1).scala 153:32 soc (1).scala 212:31 soc (1).scala 249:19]
  wire [2:0] _GEN_32 = 3'h3 == readACERequestState ? 3'h3 : _GEN_27; // @[soc (1).scala 212:31 soc (1).scala 250:27]
  wire  _GEN_33 = 3'h3 == readACERequestState ? 1'h0 : 3'h4 == readACERequestState; // @[soc (1).scala 164:33 soc (1).scala 212:31]
  wire [63:0] _GEN_36 = 3'h2 == readACERequestState ? 64'hc0 : 64'h0; // @[soc (1).scala 144:33 soc (1).scala 212:31 soc (1).scala 237:20]
  wire  _GEN_38 = 3'h2 == readACERequestState ? 1'h0 : 3'h3 == readACERequestState; // @[soc (1).scala 151:33 soc (1).scala 212:31]
  wire  _GEN_40 = 3'h2 == readACERequestState ? 1'h0 : 3'h3 == readACERequestState & L2_WREADY; // @[soc (1).scala 210:22 soc (1).scala 212:31]
  wire [63:0] _GEN_41 = 3'h2 == readACERequestState ? 64'h0 : _GEN_31; // @[soc (1).scala 153:32 soc (1).scala 212:31]
  wire  _GEN_42 = 3'h2 == readACERequestState ? 1'h0 : _GEN_33; // @[soc (1).scala 164:33 soc (1).scala 212:31]
  wire  _GEN_54 = 3'h1 == readACERequestState ? 1'h0 : 3'h2 == readACERequestState; // @[soc (1).scala 141:34 soc (1).scala 212:31]
  wire [63:0] _GEN_56 = 3'h1 == readACERequestState ? 64'h0 : _GEN_36; // @[soc (1).scala 144:33 soc (1).scala 212:31]
  wire  _GEN_57 = 3'h1 == readACERequestState ? 1'h0 : _GEN_38; // @[soc (1).scala 151:33 soc (1).scala 212:31]
  wire  _GEN_59 = 3'h1 == readACERequestState ? 1'h0 : _GEN_40; // @[soc (1).scala 210:22 soc (1).scala 212:31]
  wire [63:0] _GEN_60 = 3'h1 == readACERequestState ? 64'h0 : _GEN_41; // @[soc (1).scala 153:32 soc (1).scala 212:31]
  wire  _GEN_61 = 3'h1 == readACERequestState ? 1'h0 : _GEN_42; // @[soc (1).scala 164:33 soc (1).scala 212:31]
  reg [2:0] readPeriRequestState; // @[soc (1).scala 261:37]
  reg [31:0] readDataVecPeri; // @[soc (1).scala 262:32]
  wire  PeriARVALIDWire = 3'h0 == readPeriRequestState; // @[soc (1).scala 264:32]
  wire [2:0] _readPeriRequestState_T_3 = peripheral_AWREADY ? 3'h3 : 3'h2; // @[soc (1).scala 289:34]
  wire [1:0] PeriBIDWire = {{1'd0}, peripheral_BID}; // @[soc (1).scala 193:32 soc (1).scala 381:21]
  wire [2:0] _readPeriRequestState_T_10 = peripheral_BVALID & PeriBIDWire == 2'h0 & peripheral_BRESP == 2'h0 ? 3'h0 : 3'h4
    ; // @[soc (1).scala 302:34]
  wire [2:0] _GEN_86 = 3'h4 == readPeriRequestState ? _readPeriRequestState_T_10 : readPeriRequestState; // @[soc (1).scala 261:37 soc (1).scala 264:32 soc (1).scala 302:28]
  wire [31:0] _GEN_88 = 3'h3 == readPeriRequestState ? readDataVecPeri : 32'h0; // @[soc (1).scala 181:34 soc (1).scala 264:32 soc (1).scala 296:21]
  wire [2:0] _GEN_89 = 3'h3 == readPeriRequestState ? 3'h3 : _GEN_86; // @[soc (1).scala 264:32 soc (1).scala 297:28]
  wire  _GEN_90 = 3'h3 == readPeriRequestState ? 1'h0 : 3'h4 == readPeriRequestState; // @[soc (1).scala 192:35 soc (1).scala 264:32]
  wire [31:0] _GEN_93 = 3'h2 == readPeriRequestState ? 32'h80 : 32'h0; // @[soc (1).scala 172:35 soc (1).scala 264:32 soc (1).scala 287:22]
  wire  _GEN_95 = 3'h2 == readPeriRequestState ? 1'h0 : 3'h3 == readPeriRequestState; // @[soc (1).scala 179:35 soc (1).scala 264:32]
  wire [31:0] _GEN_96 = 3'h2 == readPeriRequestState ? 32'h0 : _GEN_88; // @[soc (1).scala 181:34 soc (1).scala 264:32]
  wire  _GEN_97 = 3'h2 == readPeriRequestState ? 1'h0 : _GEN_90; // @[soc (1).scala 192:35 soc (1).scala 264:32]
  wire  _GEN_100 = 3'h1 == readPeriRequestState ? 1'h0 : 3'h2 == readPeriRequestState; // @[soc (1).scala 169:36 soc (1).scala 264:32]
  wire [31:0] _GEN_102 = 3'h1 == readPeriRequestState ? 32'h0 : _GEN_93; // @[soc (1).scala 172:35 soc (1).scala 264:32]
  wire  _GEN_103 = 3'h1 == readPeriRequestState ? 1'h0 : _GEN_95; // @[soc (1).scala 179:35 soc (1).scala 264:32]
  wire [31:0] _GEN_104 = 3'h1 == readPeriRequestState ? 32'h0 : _GEN_96; // @[soc (1).scala 181:34 soc (1).scala 264:32]
  wire  _GEN_105 = 3'h1 == readPeriRequestState ? 1'h0 : _GEN_97; // @[soc (1).scala 192:35 soc (1).scala 264:32]
  moduleCounter readCounter ( // @[soc (1).scala 202:27]
    .clock(readCounter_clock),
    .reset(readCounter_reset),
    .count(readCounter_count),
    .incrm(readCounter_incrm)
  );
  moduleCounter writeCounter ( // @[soc (1).scala 205:28]
    .clock(writeCounter_clock),
    .reset(writeCounter_reset),
    .count(writeCounter_count),
    .incrm(writeCounter_incrm)
  );
  assign L2_AWVALID = L2ARVALIDWire ? 1'h0 : _GEN_54; // @[soc (1).scala 141:34 soc (1).scala 212:31]
  assign L2_AWID = 2'h0; // @[soc (1).scala 143:31 soc (1).scala 212:31]
  assign L2_AWADDR = L2ARVALIDWire ? 64'h0 : _GEN_56; // @[soc (1).scala 144:33 soc (1).scala 212:31]
  assign L2_AWLEN = 8'h7; // @[soc (1).scala 315:12]
  assign L2_AWSIZE = 3'h3; // @[soc (1).scala 316:13]
  assign L2_AWBURST = 2'h1; // @[soc (1).scala 317:14]
  assign L2_AWLOCK = 1'h0; // @[soc (1).scala 318:13]
  assign L2_AWCACHE = 4'h2; // @[soc (1).scala 319:14]
  assign L2_AWPROT = 3'h0; // @[soc (1).scala 320:13]
  assign L2_AWQOS = 4'h0; // @[soc (1).scala 321:12]
  assign L2_ARVALID = 3'h0 == readACERequestState; // @[soc (1).scala 212:31]
  assign L2_ARID = 2'h0; // @[soc (1).scala 148:31 soc (1).scala 212:31 soc (1).scala 217:18]
  assign L2_ARADDR = L2ARVALIDWire ? 64'h80 : 64'h0; // @[soc (1).scala 149:33 soc (1).scala 212:31 soc (1).scala 218:20]
  assign L2_ARLEN = 8'h7; // @[soc (1).scala 331:12]
  assign L2_ARSIZE = 3'h3; // @[soc (1).scala 332:13]
  assign L2_ARBURST = 2'h1; // @[soc (1).scala 333:14]
  assign L2_ARLOCK = 1'h0; // @[soc (1).scala 334:13]
  assign L2_ARCACHE = 4'h2; // @[soc (1).scala 335:14]
  assign L2_ARPROT = 3'h0; // @[soc (1).scala 336:13]
  assign L2_ARQOS = 4'h0; // @[soc (1).scala 337:12]
  assign L2_WVALID = L2ARVALIDWire ? 1'h0 : _GEN_57; // @[soc (1).scala 151:33 soc (1).scala 212:31]
  assign L2_WDATA = L2ARVALIDWire ? 64'h0 : _GEN_60; // @[soc (1).scala 153:32 soc (1).scala 212:31]
  assign L2_WSTRB = 8'hff; // @[soc (1).scala 345:12]
  assign L2_WLAST = 1'h0; // @[soc (1).scala 154:32 soc (1).scala 154:32]
  assign L2_RREADY = 1'h0; // @[soc (1).scala 157:33 soc (1).scala 157:33]
  assign L2_BREADY = L2ARVALIDWire ? 1'h0 : _GEN_61; // @[soc (1).scala 164:33 soc (1).scala 212:31]
  assign core_sample0 = 1'h1; // @[soc (1).scala 138:16]
  assign core_sample1 = 1'h1; // @[soc (1).scala 139:16]
  assign peripheral_AWID = 1'h0; // @[soc (1).scala 363:19]
  assign peripheral_AWADDR = PeriARVALIDWire ? 32'h0 : _GEN_102; // @[soc (1).scala 172:35 soc (1).scala 264:32]
  assign peripheral_AWLEN = 8'h0; // @[soc (1).scala 365:26]
  assign peripheral_AWSIZE = 3'h2; // @[soc (1).scala 366:27]
  assign peripheral_AWBURST = 2'h1; // @[soc (1).scala 367:28]
  assign peripheral_AWLOCK = 1'h0; // @[soc (1).scala 368:27]
  assign peripheral_AWCACHE = 4'h0; // @[soc (1).scala 369:28]
  assign peripheral_AWPROT = 3'h2; // @[soc (1).scala 370:27]
  assign peripheral_AWQOS = 4'h0; // @[soc (1).scala 371:26]
  assign peripheral_AWVALID = PeriARVALIDWire ? 1'h0 : _GEN_100; // @[soc (1).scala 169:36 soc (1).scala 264:32]
  assign peripheral_WDATA = PeriARVALIDWire ? 32'h0 : _GEN_104; // @[soc (1).scala 181:34 soc (1).scala 264:32]
  assign peripheral_WSTRB = 4'hf; // @[soc (1).scala 376:26]
  assign peripheral_WLAST = 1'h0; // @[soc (1).scala 182:34 soc (1).scala 182:34]
  assign peripheral_WVALID = PeriARVALIDWire ? 1'h0 : _GEN_103; // @[soc (1).scala 179:35 soc (1).scala 264:32]
  assign peripheral_BREADY = PeriARVALIDWire ? 1'h0 : _GEN_105; // @[soc (1).scala 192:35 soc (1).scala 264:32]
  assign peripheral_ARID = 1'h0; // @[soc (1).scala 386:25]
  assign peripheral_ARADDR = PeriARVALIDWire ? 32'h80 : 32'h0; // @[soc (1).scala 177:35 soc (1).scala 264:32 soc (1).scala 269:22]
  assign peripheral_ARLEN = 8'h0; // @[soc (1).scala 388:26]
  assign peripheral_ARSIZE = 3'h2; // @[soc (1).scala 389:27]
  assign peripheral_ARBURST = 2'h1; // @[soc (1).scala 390:28]
  assign peripheral_ARLOCK = 1'h0; // @[soc (1).scala 391:27]
  assign peripheral_ARCACHE = 4'h0; // @[soc (1).scala 392:28]
  assign peripheral_ARPROT = 3'h2; // @[soc (1).scala 393:27]
  assign peripheral_ARQOS = 4'h0; // @[soc (1).scala 394:26]
  assign peripheral_ARVALID = 3'h0 == readPeriRequestState; // @[soc (1).scala 264:32]
  assign peripheral_RREADY = 1'h0; // @[soc (1).scala 185:35 soc (1).scala 185:35]
  assign readCounter_clock = clock;
  assign readCounter_reset = 3'h0 == readACERequestState; // @[soc (1).scala 212:31]
  assign readCounter_incrm = L2ARVALIDWire ? 1'h0 : 3'h1 == readACERequestState & _T_3; // @[soc (1).scala 208:21 soc (1).scala 212:31]
  assign writeCounter_clock = clock;
  assign writeCounter_reset = L2ARVALIDWire ? 1'h0 : 3'h1 == readACERequestState; // @[soc (1).scala 209:22 soc (1).scala 212:31]
  assign writeCounter_incrm = L2ARVALIDWire ? 1'h0 : _GEN_59; // @[soc (1).scala 210:22 soc (1).scala 212:31]
  always @(posedge clock) begin
    if (reset) begin // @[soc (1).scala 201:36]
      readACERequestState <= 3'h0; // @[soc (1).scala 201:36]
    end else if (L2ARVALIDWire) begin // @[soc (1).scala 212:31]
      if (L2_ARREADY) begin // @[soc (1).scala 220:33]
        readACERequestState <= 3'h1;
      end else begin
        readACERequestState <= 3'h0;
      end
    end else if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
      readACERequestState <= 3'h1; // @[soc (1).scala 230:27]
    end else if (3'h2 == readACERequestState) begin // @[soc (1).scala 212:31]
      readACERequestState <= _readACERequestState_T_3; // @[soc (1).scala 239:27]
    end else begin
      readACERequestState <= _GEN_32;
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_0 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_0 <= _GEN_0;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_1 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_1 <= _GEN_1;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_2 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_2 <= _GEN_2;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_3 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_3 <= _GEN_3;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_4 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_4 <= _GEN_4;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_5 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_5 <= _GEN_5;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_6 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_6 <= _GEN_6;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 203:28]
      readDataVec_7 <= 64'h0; // @[soc (1).scala 203:28]
    end else if (!(L2ARVALIDWire)) begin // @[soc (1).scala 212:31]
      if (3'h1 == readACERequestState) begin // @[soc (1).scala 212:31]
        if (L2_RVALID & L2_RID == 2'h0) begin // @[soc (1).scala 225:46]
          readDataVec_7 <= _GEN_7;
        end
      end
    end
    if (reset) begin // @[soc (1).scala 261:37]
      readPeriRequestState <= 3'h0; // @[soc (1).scala 261:37]
    end else if (PeriARVALIDWire) begin // @[soc (1).scala 264:32]
      if (peripheral_ARREADY) begin // @[soc (1).scala 271:34]
        readPeriRequestState <= 3'h1;
      end else begin
        readPeriRequestState <= 3'h0;
      end
    end else if (3'h1 == readPeriRequestState) begin // @[soc (1).scala 264:32]
      readPeriRequestState <= 3'h1; // @[soc (1).scala 280:28]
    end else if (3'h2 == readPeriRequestState) begin // @[soc (1).scala 264:32]
      readPeriRequestState <= _readPeriRequestState_T_3; // @[soc (1).scala 289:28]
    end else begin
      readPeriRequestState <= _GEN_89;
    end
    if (reset) begin // @[soc (1).scala 262:32]
      readDataVecPeri <= 32'h0; // @[soc (1).scala 262:32]
    end else if (!(PeriARVALIDWire)) begin // @[soc (1).scala 264:32]
      if (3'h1 == readPeriRequestState) begin // @[soc (1).scala 264:32]
        if (peripheral_RVALID & ~peripheral_RID) begin // @[soc (1).scala 276:50]
          readDataVecPeri <= peripheral_RDATA; // @[soc (1).scala 277:25]
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
