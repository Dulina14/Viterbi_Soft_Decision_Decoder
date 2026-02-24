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

module vit_tbu #(
 parameter WL_PM = 9)( 
input wire             clk,
input wire             rstn,
input wire [15:0]      info_seq_len,
input wire             rstp_all,
input wire             msg_end,
input wire [3:0]       tb,   // Traceback vector 
input wire [3:0]       abcd_wr,
input wire [3:0]       tbu_start,
input wire [WL_PM-1:0] i_pm0,
input wire [WL_PM-1:0] i_pm1,
input wire [WL_PM-1:0] i_pm2,
input wire [WL_PM-1:0] i_pm3,

output wire [15:0]     o_dec_bit,
output wire            o_dec_bvld

    
);



integer i;
bit [15:0] [3:0] a;
bit [15:0] [3:0] b;
bit [15:0] [3:0] c;
bit [15:0] [3:0] d;

always_ff @ (posedge clk or negedge rstn)
begin
    if(!rstn)     begin
                  for (i=0; i<16; i++) a[i] <= 'h0;
                  for (i=0; i<16; i++) b[i] <= 'h0;
                  for (i=0; i<16; i++) c[i] <= 'h0;
                  for (i=0; i<16; i++) d[i] <= 'h0;
                  end
    else          begin
    if(rstp_all)   begin
                  for (i=0; i<16; i++) a[i] <= 'h0;
                  for (i=0; i<16; i++) b[i] <= 'h0;
                  for (i=0; i<16; i++) c[i] <= 'h0;
                  for (i=0; i<16; i++) d[i] <= 'h0;
                  end

    if(abcd_wr[0]) begin
                  a[15] <= tb[3:0];
                  for (i=15; i>0; i--) a[i-1] <= a[i];
                  end

    if(abcd_wr[1]) begin
                  b[15] <= tb[3:0];
                  for (i=15; i>0; i--) b[i-1] <= b[i];
                  end

    if(abcd_wr[2]) begin
                  c[15] <= tb[3:0];
                  for (i=15; i>0; i--) c[i-1] <= c[i];
                  end

    if(abcd_wr[3]) begin
                  d[15] <= tb[3:0];
                  for (i=15; i>0; i--) d[i-1] <= d[i];
                  end
          end //else
end



logic a_dec_start;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn) a_dec_start <= 'h0;
 else      a_dec_start <=  tbu_start[0] |  tbu_start[2]; 
end


logic b_dec_start;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn) b_dec_start <= 'h0;
 else      b_dec_start <=  tbu_start[1] |  tbu_start[3]; 
end


/////////////////////////////
// mux vector
/////////////////////////////
 
logic vec_sel_a, vec_sel_b;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)        begin
                  vec_sel_a <= 'h0;
                  vec_sel_b <= 'h0;
                  end
 else
 if(tbu_start[0]) vec_sel_a <= 1'b0;
 else
 if(tbu_start[1]) vec_sel_b <= 1'b0;
 else
 if(tbu_start[2]) vec_sel_a <= 1'b1;
 else
 if(tbu_start[3]) vec_sel_b <= 1'b1;
end 

wire [31:0] [3:0] a_vec = vec_sel_a? {d, c} : {b, a};
wire [31:0] [3:0] b_vec = vec_sel_b? {a, d} : {c, b};


logic a_msg_end, b_msg_end;
always_ff @ (posedge clk or negedge rstn)
begin
 if(~rstn)        begin
                  a_msg_end <= 1'b0;
                  b_msg_end <= 1'b0;
                  end
 else
 if(rstp_all)     begin
                  a_msg_end <= 1'b0;
                  b_msg_end <= 1'b0;
                  end
 else                 
 if(tbu_start[0]) a_msg_end <= msg_end;
 else
 if(tbu_start[1]) b_msg_end <= msg_end;
 else
 if(tbu_start[2]) a_msg_end <= msg_end;
 else
 if(tbu_start[3]) b_msg_end <= msg_end;
end 


/////////////////////////////
// decode 
/////////////////////////////
wire [15:0] a_dec_bit; 
wire        a_dec_bvld;
wire [15:0] b_dec_bit;
wire        b_dec_bvld;

tbu_dec a_dec(
        .clk             (clk),
        .rstn            (rstn),
        .info_seq_len    (info_seq_len),
        .msg_end         (a_msg_end),
        .dec_start       (a_dec_start),
        .tbu_vec         (a_vec),
        .o_dec_bit       (a_dec_bit),
        .o_dec_bvld      (a_dec_bvld)
);

tbu_dec b_dec(
        .clk             (clk),
        .rstn            (rstn),
        .info_seq_len    (info_seq_len),
        .msg_end         (b_msg_end),
        .dec_start       (b_dec_start),
        .tbu_vec         (b_vec),
        .o_dec_bit       (b_dec_bit),
        .o_dec_bvld      (b_dec_bvld)
);


assign o_dec_bit  = a_dec_bvld ? a_dec_bit : (b_dec_bvld ? b_dec_bit : 1'b0);
assign o_dec_bvld = a_dec_bvld | b_dec_bvld;



endmodule

`default_nettype wire
