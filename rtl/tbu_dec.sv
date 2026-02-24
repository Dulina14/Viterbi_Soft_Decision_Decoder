/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Viterbi Trace Back Unit                                    ////
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

module tbu_dec(
  input wire           clk,
  input wire           rstn,
  input wire           dec_start,
  input wire [15:0]    info_seq_len,
  input wire           msg_end,
  input wire [31:0] [3:0]     tbu_vec,

  output wire [15:0]   o_dec_bit,
  output wire          o_dec_bvld
);

/////////////////////////////
// generate controls 
/////////////////////////////
logic tbu_enb;
wire tbu_clr;
wire tbu_set = dec_start;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)        tbu_enb <= 1'b0;
 else
 if(tbu_clr)      tbu_enb <= 1'b0;
 else
 if(tbu_set)      tbu_enb <= 1'b1;
end 
logic [4:0] cnt;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)       cnt <= 'h0;
 else
 if(tbu_enb)     cnt <= cnt + 1'b1;
 else            cnt <= 'h0;
end

assign tbu_clr = cnt == 5'h1e;


logic [1:0] tbu_shift_enb;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)      tbu_shift_enb <= 1'b0;
 else           tbu_shift_enb <= {tbu_shift_enb[0], tbu_enb & tbu_clr};
end 



/////////////////////////
//trace back
////////////////////////
wire [1:0] start_state = 2'd0;


bit d;
logic [1:0] s;
integer k, i;
logic [31:0] info_bit;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)       begin
                 s <= 'h0;
                 k <= 0;
                 d<= 1'b0;
                 info_bit <= 'h0; 
                 end 
 else
 if(dec_start)   begin
                 k <= 30;
                 d <= tbu_vec[31][start_state];
                 if(tbu_vec[31][start_state] == 1'b0) s <= {1'b0, start_state[1]};
                 else                                 s <= {1'b0, start_state[1]} + 2'h2;
                 end
  
 else
 if(tbu_enb)     begin
                 k <= k - 1;
                 d <= tbu_vec[k][s];

                 if(tbu_vec[k][s] == 1'b0)            s <= {1'b0, s[1]};
                 else                                 s <= {1'b0, s[1]} + 2'h2;

                 if(s[0]==1'b0)   info_bit[k] <= 1'b0;
                 else             info_bit[k] <= 1'b1;   
                 end

        
end

wire word2_en = msg_end & (info_seq_len[3:0] !=4'hf) & tbu_shift_enb[1];

logic [15:0] dec_bit;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)              dec_bit <= 'h0;
 else
 if(tbu_shift_enb[0])   dec_bit <= info_bit[15:0];
 else
 if(word2_en)           dec_bit <= info_bit[31:16];
end


assign o_dec_bit = dec_bit;

logic dec_bvld;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)  dec_bvld <= 1'b0;
 else       dec_bvld <= tbu_shift_enb[0] | word2_en; 
end

assign o_dec_bvld = dec_bvld;



endmodule

`default_nettype wire
