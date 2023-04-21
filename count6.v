//Jaleel Created this file
module count10(clock,inc,reset, Count, count_eq_9)

input clock, inc, reset;
output [3:0] Count;
output count_eq_9;

DFF0 FF1 (RCA_out[0], clock, rst, count[0]);
DFF0 FF2 (RCA_out[1], clock, rst, count[1]);
DFF0 FF3 (RCA_out[2], clock, rst, count[2]);
DFF0 FF4 (RCA_out[3], clock, rst, count[3]);

wire rst;
wire [3:0] RCA_out;
RCA comp2 ( count, inc, RCA_out);
assign count_eq_9= (count== 4'b1000) ? 1: 0;
assign rst= (count_eq_9 & inc) | reset;

endmodule