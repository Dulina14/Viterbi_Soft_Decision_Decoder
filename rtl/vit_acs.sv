/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Viterbi add-compare-select                                 ////
////                                                             ////
////  Author: Feng Shi                                           ////
////          shifeng2015@gmail.com                              ////
//// https://opencores.org/projects/viterbi_decoder_soft_decision////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2025 Feng Shi                                 ////
////                    shifeng2015@gmail.com                    ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////

`default_nettype none

module vit_acs #(
 parameter WL_BM = 7,
 parameter WL_PM = 9) 
( 
input wire clk,
input wire rstn,
input wire enb,
input wire s_rst_acs,
input wire init_neg,

// Branch metrics from BMU
input  wire [WL_BM-1:0] bm0, 
input  wire [WL_BM-1:0] bm1, 
input  wire [WL_BM-1:0] bm2, 
input  wire [WL_BM-1:0] bm3, 
output wire [3:0]       o_tb, // traceback bits from all states
output wire [WL_PM-1:0] o_pm0,
output wire [WL_PM-1:0] o_pm1,
output wire [WL_PM-1:0] o_pm2,
output wire [WL_PM-1:0] o_pm3
);

// ---------------------------------------------------------------------- 
// acs (add-compare-select) column: 4 acs blocks
// ---------------------------------------------------------------------- 

wire [3:0] tb;
assign o_tb = tb;
wire [WL_PM-1:0] pm0, pm1, pm2, pm3;
assign o_pm0 = pm0;
assign o_pm1 = pm1;
assign o_pm2 = pm2;
assign o_pm3 = pm3;



// acs block #0
acs_rad2 #(WL_BM,WL_PM) acs0 (
                            // outputs
                            .o_pm_out(pm0),
                            .o_tb_out(tb[0]),
                            // inputs
                            .clk(clk),
                            .rstn(rstn),
                            .enb(enb),
                            .s_rst_acs(s_rst_acs),
                            .init_neg(1'b0),
                            .pm_in0(pm0),
                            .pm_in1(pm2),
                            .bm_in0(bm0),
                            .bm_in1(bm2)
);

// NOTE: init_neg is never provided to acs0 since it will always be initialized to 0

acs_rad2 #(WL_BM,WL_PM) acs1 (
                            // outputs
                            .o_pm_out(pm1),
                            .o_tb_out(tb[1]),
                            // inputs
                            .clk(clk),
                            .rstn(rstn),
                            .enb(enb),
                            .s_rst_acs(s_rst_acs),
                            .init_neg(init_neg),
                            .pm_in0(pm0),
                            .pm_in1(pm2),
                            .bm_in0(bm2),
                            .bm_in1(bm0)
);

acs_rad2 #(WL_BM,WL_PM) acs2 (
                            // outputs
                            .o_pm_out(pm2),
                            .o_tb_out(tb[2]),
                            // inputs
                            .clk(clk),
                            .rstn(rstn),
                            .enb(enb),
                            .s_rst_acs(s_rst_acs),
                            .init_neg(init_neg),
                            .pm_in0(pm1),
                            .pm_in1(pm3),
                            .bm_in0(bm1),
                            .bm_in1(bm3)
);

acs_rad2 #(WL_BM,WL_PM) acs3 (
                            // outputs
                            .o_pm_out(pm3),
                            .o_tb_out(tb[3]),
                            // inputs
                            .clk(clk),
                            .rstn(rstn),
                            .enb(enb),
                            .s_rst_acs(s_rst_acs),
                            .init_neg(init_neg),
                            .pm_in0(pm1),
                            .pm_in1(pm3),
                            .bm_in0(bm3),
                            .bm_in1(bm1)
);

endmodule
`default_nettype wire
