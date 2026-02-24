/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Viterbi top                                                ////
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

module vit_top #(
 parameter WL_CB = 5,
 parameter WL_BM = 7,
 parameter WL_PM = 9) 
( 
 
input wire clk,
input wire rstn,
input wire [15:0] info_seq_len,
input wire init_neg,
input wire g_dvld,  
input wire start_vtd,
input wire signed [WL_CB-1:0] g0,
input wire signed [WL_CB-1:0] g1,
output wire [15:0]     o_dec_bit,
output wire            o_dec_bvld

);

// branch metric wires
wire [WL_BM-1:0] bm0, bm1, bm2, bm3;
wire          rstp_all;
wire [3:0]    abcd_wr;
wire          zero_pad_dvld;
wire [3:0]    tbu_start;
wire          msg_end;



logic [2*WL_CB-1:0] gg;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)         gg <= 'h0;
 else
 if(g_dvld)        gg <= {g1, g0};
end

wire [WL_CB-1:0] gg0 = zero_pad_dvld? 0 : gg[WL_CB-1:0];
wire [WL_CB-1:0] gg1 = zero_pad_dvld? 0 : gg[2*WL_CB-1:WL_CB];


logic enb0;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  enb0 <= 1'b0;
 else       enb0 <= g_dvld ;
end
wire enb = enb0 | zero_pad_dvld;

logic [15:0] tbu_seq_len;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  tbu_seq_len <= 'h0;
 else       tbu_seq_len <= (info_seq_len==16'h0)? 16'h0 : (info_seq_len-1'b1);
end

logic [15:0] fsm_seq_len;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  fsm_seq_len <= 'h0;
 else       fsm_seq_len <= (info_seq_len==16'h0)? 16'h0 : (info_seq_len + 16'd1);
end



vit_bmu vit_bmu( 
             .clk(clk),
             .rstn(rstn),
             .enb(enb),
             .g0(gg0),
             .g1(gg1),
             .o_bm0(bm0),
             .o_bm1(bm1),
             .o_bm2(bm2),
             .o_bm3(bm3)
);


// traceback bits from all states
wire [3:0] tb;
wire [WL_PM-1:0] pm0, pm1, pm2, pm3;

vit_acs vit_acs(
        .clk(clk),
        .rstn(rstn),
        .enb(enb),
        .s_rst_acs(rstp_all),
        .init_neg(init_neg),
        .bm0(bm0),
        .bm1(bm1),
        .bm2(bm2),
        .bm3(bm3),
        .o_tb(tb), 
        .o_pm0(pm0),
        .o_pm1(pm1),
        .o_pm2(pm2),
        .o_pm3(pm3)
);

//traceback unit
vit_tbu vit_tbu(
        .clk             (clk),
        .rstn            (rstn),
        .info_seq_len    (fsm_seq_len),
        .rstp_all        (rstp_all),
        .msg_end         (msg_end),
        .abcd_wr         (abcd_wr),
        .tbu_start       (tbu_start),
        .tb              (tb),
        .i_pm0           (pm0),
        .i_pm1           (pm1),
        .i_pm2           (pm2),
        .i_pm3           (pm3),

        .o_dec_bit       (o_dec_bit),
        .o_dec_bvld      (o_dec_bvld)
    );



vit_fsm vit_fsm(
        .clk             (clk),
        .rstn            (rstn),
        .info_seq_len    (fsm_seq_len),
        .start_vtd       (start_vtd),
        .g_dvld          (g_dvld),

        .o_rstp_all      (rstp_all),
        .o_abcd_wr       (abcd_wr),
        .o_zero_pad_dvld (zero_pad_dvld),
        .o_tbu_start     (tbu_start),
        .o_msg_end       (msg_end)
    );





endmodule

`default_nettype wire
