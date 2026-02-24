/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Viterbi Branch metrics unit                                ////
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
// Branch metric unit
// Radix-2
`default_nettype none

module vit_bmu #(
 parameter WL_CB = 5,
 parameter WL_BM = 7) 
( 
input wire clk,
input wire rstn,
input wire enb,
input wire signed [WL_CB-1:0] g0,
input wire signed [WL_CB-1:0] g1,

output wire signed [WL_BM-1:0] o_bm0,
output wire signed [WL_BM-1:0] o_bm1,
output wire signed [WL_BM-1:0] o_bm2,
output wire signed [WL_BM-1:0] o_bm3
   );


wire signed [WL_BM-1:0] sum0 = -$signed(g0) - $signed(g1) ; // -y1-y0
wire signed [WL_BM-1:0] sum1 =  $signed(g0) - $signed(g1) ; // -y1+y0
wire signed [WL_BM-1:0] sum2 = -$signed(g0) + $signed(g1) ; // +y1-y0
wire signed [WL_BM-1:0] sum3 = +$signed(g0) + $signed(g1) ; // +y1+y0

logic [WL_BM-1:0] bm0, bm1, bm2, bm3;
always_ff @ (posedge clk or negedge rstn) begin
   if(~rstn) begin
      bm0 <= 0;
      bm1 <= 0;
      bm2 <= 0;
      bm3 <= 0;
   end
   else if(enb) begin
      bm0 <= sum0;
      bm1 <= sum1;
      bm2 <= sum2;
      bm3 <= sum3;
   end
end

assign o_bm0 = bm0;
assign o_bm1 = bm1;
assign o_bm2 = bm2;
assign o_bm3 = bm3;



endmodule 
`default_nettype wire
