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

module acs_rad2 #(
 parameter WL_BM = 6,
 parameter WL_PM = 9) 
( 
input wire                     clk,
input wire                     rstn,
input wire                     enb,
input wire                     s_rst_acs, // initialize pm's and tb's to 0
input wire                     init_neg,  // initialize pm_out to max negative value, overriding s_rst_acs

input  wire signed [WL_PM-1:0] pm_in0,
input  wire signed [WL_PM-1:0] pm_in1,
input  wire signed [WL_BM-1:0] bm_in0,
input  wire signed [WL_BM-1:0] bm_in1,

// Outputs
output wire signed [WL_PM-1:0] o_pm_out,
output wire                    o_tb_out
);


// Dependent parameters
parameter WL_BM_PAD = WL_PM - WL_BM ;



// Add path metrics and sign-extended branch metrics
wire [WL_PM-1:0] sum0 = pm_in0 + {{WL_BM_PAD{bm_in0[WL_BM-1]}},bm_in0} ;
wire [WL_PM-1:0] sum1 = pm_in1 + {{WL_BM_PAD{bm_in1[WL_BM-1]}},bm_in1} ;


// Subtract sum1 from sum0 to compare
wire [WL_PM-1:0] diff = sum0 - sum1 ;

// Pick the bigger sum (MSB(diff): 0: sum0>=sum1, 1: sum0<sum1)
wire             tb_out_int = diff[WL_PM-1] ;
wire [WL_PM-1:0] pm_out_int = diff[WL_PM-1] ? sum1 : sum0 ;  


// Path metric and traceback output registers
logic  [WL_PM-1:0] pm_out;
logic              tb_out;
always_ff @(posedge clk or negedge rstn) begin
   if(~rstn) begin
      pm_out <= 0 ;
      tb_out <= 0 ;
   end
   else if (s_rst_acs) begin
      pm_out <= (~init_neg) ? 0 : {2'b11,{{WL_PM-2}{1'b0}}};
      tb_out <= 0 ;
   end
   else if (enb) begin
      pm_out <= pm_out_int ;
      tb_out <= tb_out_int ;
   end
end

assign o_pm_out = pm_out;
assign o_tb_out = tb_out;


endmodule
