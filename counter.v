module counter(inc, reset, led_a, led_b, led_c, led_d, led_e, _led_f, led_g, clock)

input inc, reset, led_a, led_b, led_c, led_d, led_e, _led_f, led_g;
output clock;

clk_divider F1 (clock, rst, clk_out);

count10 F2 (clk_in,inc,reset, Count, count_eq_9)

sevenSegmentDecoder F3(count_eq_9, led_a, led_b, led_c, led_d, led_e, _led_f, led_g);
endmodule