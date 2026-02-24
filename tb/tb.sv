
`timescale 1 ns / 1 ns
//////////////////////
// clk =/ 




module tb;

  reg clk;
  initial begin
  clk <=0;
  #0;
  forever #1 clk = ~clk;
  end
  
  reg rstn;
  initial rstn <= 0;
  always
    begin
    #10 rstn <= 1;
    end    


    reg start_vtd;
   initial 
    begin
    start_vtd = 0;
    #100 start_vtd = 1;
    #4   start_vtd = 0;
    end     



   reg tx_en;
   initial 
    begin
    tx_en = 0;
    #150 tx_en = 1;
    end      
   
wire [15:0] info_seq_len = 16'd1026;
wire [15:0] vtd_len = info_seq_len - 16'd2;
   
reg [4:0] count;
wire clear = count==5'd19;
always@(posedge clk or negedge rstn)
begin
	if(~rstn) count <= 0;
    else
    if(clear) count <= 0;
   else
    if(tx_en) count <= count + 1;
end




 reg [15:0] cnt;

 wire cnt_en_tmp = (cnt<16'd19) ? (count<5'd17) : (count<5'd16);

 wire cnt_en = tx_en & cnt_en_tmp;
always@(posedge clk or negedge rstn)
begin
	if(~rstn) cnt <= 0;
    else
    if(cnt_en) cnt <= cnt + 1;
  end

wire cpp_en = cnt_en & (cnt<info_seq_len);

reg signed [15:0] cpp_i, cpp_q;
wire dec_bvld;
wire [15:0] dec_bit;


vit_top dut(
  .clk             (clk) ,
  .rstn            (rstn) ,
  .info_seq_len    (vtd_len),
  .init_neg        (1'b1),
  .start_vtd       (start_vtd),
  .g_dvld             (cpp_en),
  .g0         (cpp_i[4:0]),
  .g1         (cpp_q[4:0]),
  .o_dec_bit       (dec_bit),
  .o_dec_bvld      (dec_bvld)
  
 );

// corr inputs
//
localparam LEN = 1026; 
reg signed [15:0] data_i [0:LEN-1];
reg signed [15:0] data_q [0:LEN-1];
integer file1, i, stat1;
initial begin
//   file1 = $fopen("../tb/g0_noisy.txt", "r");
   file1 = $fopen("../tb/g0_noisy.filedump", "r");
    i=0;
    while (! $feof(file1))
        begin
        stat1 = $fscanf(file1,"%h\n",data_i[i]);
        i=i+1;
        end
            $fclose(file1);
end

integer file2, i2, stat2;
initial begin
//   file2 = $fopen("../tb/g1_noisy.txt", "r");
   file2 = $fopen("../tb/g1_noisy.filedump", "r");
    i2=0;
    while (! $feof(file2))
        begin
        stat2 = $fscanf(file2,"%h\n",data_q[i2]);
        i2=i2+1;
        end
            $fclose(file2);
end


integer idx ;
always@(posedge clk)
begin
	if(~rstn) begin
		  idx = 0;
	  end
	  else 
      if(cpp_en) begin
		  idx = idx + 1;
	  end
  end


always@(idx) cpp_i <= data_i[idx];
always@(idx) cpp_q <= data_q[idx];

///////////////////////////
//decoded bits
//////////////////////////

reg rxd [0:LEN-1];
//integer file1, i, stat1;
initial begin
   file1 = $fopen("../tb/bits_rx.filedump", "r");
    i=0;
    while (! $feof(file1))
        begin
        stat1 = $fscanf(file1,"%b\n",rxd[i]);
        i=i+1;
        end
            $fclose(file1);
end

integer k ;
always@(posedge clk)
begin
	if(~rstn) k = 0;
	else 
    if(dec_bvld) k = k + 16;
  end

reg [15:0] cpp_dec;
always@(k) cpp_dec <= {rxd[k+15], rxd[k+14], rxd[k+13], rxd[k+12], rxd[k+11], rxd[k+10], rxd[k+9], rxd[k+8], rxd[k+7], rxd[k+6], rxd[k+5], rxd[k+4] , rxd[k+3], rxd[k+2] , rxd[k+1], rxd[k]} ;

reg dec_err;// = dec_bvld? (cpp_dec != dec_bit) : 1'b0;

always@(posedge clk or negedge rstn)
begin
	if(~rstn) dec_err <= 0;
    else      dec_err <=  dec_bvld? (cpp_dec != dec_bit) : 1'b0;
  end


wire signed [8:0] pm1 = 9'd250;
wire signed [6:0] bm1 = 7'd13;

wire signed [8:0] pm2 = 9'd50;
wire signed [6:0] bm2 = 7'd1;

wire signed [8:0] pm1_add = pm1 + {2'h0, bm1};
wire signed [8:0] pm2_add = pm2 + {2'h0, bm1};

wire signed [8:0] sub = pm1_add - pm2_add;


endmodule
