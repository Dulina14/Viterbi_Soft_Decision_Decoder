/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Viterbi FSM                                                ////
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

module vit_fsm(
  input wire           clk,
  input wire           rstn,
  input wire           start_vtd,
  input wire           g_dvld,
  input wire [15:0]    info_seq_len,

  output wire          o_rstp_all,
  output wire [3:0]    o_abcd_wr,
  output wire          o_zero_pad_dvld,
  output wire [3:0]    o_tbu_start,
  output wire          o_msg_end
);



//////////////////////
// FSM
/////////////////////
typedef enum logic [6:0]  { 
      VTD_IDLE       = 7'b000_0001,
      RST_VTD        = 7'b000_0010,
      A_TBM          = 7'b000_0100,
      B_TBM          = 7'b000_1000,
      C_TBM          = 7'b001_0000,
      D_TBM          = 7'b010_0000,
      REM_TB         = 7'b100_0000
} state_t;

state_t state, nxt_state;

wire s_vtd_idle   = state==VTD_IDLE;
wire s_rst_vtd    = state==RST_VTD;
wire s_a_tbm      = state==A_TBM;
wire s_b_tbm      = state==B_TBM;
wire s_c_tbm      = state==C_TBM;
wire s_d_tbm      = state==D_TBM;
wire s_rem_tb     = state==REM_TB;

always_ff @ (posedge clk or negedge rstn)
begin
  if(!rstn)       state <=  VTD_IDLE;
  else            state <=  nxt_state;
end


wire end_seq;
wire a_tbm_done;
wire b_tbm_done;
wire c_tbm_done;
wire d_tbm_done;
wire zero_pad_done;
wire rem_tb_done;


always_comb
begin
	nxt_state = state;

  case(state)
  VTD_IDLE:   if(start_vtd)        nxt_state = RST_VTD;

//  VTD_IDLE:   if(start_vtd)        nxt_state = A_TBM;
   
  RST_VTD:    if(g_dvld)           nxt_state = A_TBM;
 

  A_TBM:      if(a_tbm_done)  begin
                              if(end_seq)   nxt_state = REM_TB;
                              else          nxt_state = B_TBM;
                              end
 
  B_TBM:      if(b_tbm_done)  begin
                              if(end_seq)   nxt_state = REM_TB;
                              else          nxt_state = C_TBM;
                              end

  C_TBM:      if(c_tbm_done)  begin
                              if(end_seq)   nxt_state = REM_TB;
                              else          nxt_state = D_TBM;
                              end

  D_TBM:      if(d_tbm_done)  begin
                              if(end_seq)   nxt_state = REM_TB;
                              else          nxt_state = A_TBM;
                              end



  REM_TB:    if(rem_tb_done)     nxt_state = VTD_IDLE;           


  default:                         nxt_state = VTD_IDLE;  
 endcase
end



wire cnt_sym_clr;
wire cnt_clr = s_vtd_idle|s_rst_vtd;
//wire cnt_clr = s_vtd_idle | ((s_a_tbm |s_a_tbm | s_a_tbm | s_a_tbm ) & end_seq;
wire cnt_en  = ~cnt_clr & (g_dvld|end_seq);

reg [15:0] cnt;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)       cnt <= 'h0;
 else
 if(cnt_clr)     cnt <= 'h0;
 else
 if(cnt_en)      cnt <= cnt + 1'b1;
end

assign a_tbm_done   = (cnt[3:0] == 4'hf); 
assign b_tbm_done = a_tbm_done; 
assign c_tbm_done = a_tbm_done; 
assign d_tbm_done = a_tbm_done; 
assign zero_pad_done =  a_tbm_done; 
assign end_seq       = ~(cnt < info_seq_len);



logic rstp_all;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  rstp_all <= 1'b0;
 else       rstp_all <= s_rst_vtd & g_dvld;
end

assign o_rstp_all = rstp_all;

//write tb during g_dvld and zero pads

wire wr_tb_en = g_dvld | end_seq;

logic [11:0] abcd_wr;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  abcd_wr <= 'h0;
 else       abcd_wr <= {abcd_wr[7:0], (s_d_tbm & wr_tb_en), (s_c_tbm & wr_tb_en), (s_b_tbm & wr_tb_en), (s_a_tbm & wr_tb_en)};
end

//assign o_abcd_wr = abcd_wr[11:8];
assign o_abcd_wr = abcd_wr[7:4];

logic zero_pad_dvld;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  zero_pad_dvld <= 'h0;
 else       zero_pad_dvld <= (s_a_tbm | s_b_tbm | s_c_tbm | s_d_tbm) & end_seq ;
end

assign  o_zero_pad_dvld = zero_pad_dvld;


////////////////////////
// TB and TBD control
////////////////////////

wire a_tb_start = b_tbm_done & s_b_tbm;
wire b_tb_start = c_tbm_done & s_c_tbm;
wire c_tb_start = d_tbm_done & s_d_tbm;
wire d_tb_start = a_tbm_done & s_a_tbm & (cnt>16'd60);

logic [11:0] tbu_start;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  tbu_start <= 'h0;
 else       tbu_start <= {tbu_start[7:0], d_tb_start, c_tb_start,  b_tb_start, a_tb_start};
end

assign o_tbu_start = tbu_start[7:4];


logic msg_end;
wire msg_end_clr = s_vtd_idle;
wire msg_end_set = a_tb_start | b_tb_start | c_tb_start | d_tb_start; 
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)        msg_end <= 1'b0;
 else       
 if(msg_end_clr ) msg_end <= 1'b0;
 else
 if(msg_end_set)  msg_end <= end_seq;    
end

assign o_msg_end = msg_end;




endmodule

`default_nettype wire
