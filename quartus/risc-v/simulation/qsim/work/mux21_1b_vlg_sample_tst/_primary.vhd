library verilog;
use verilog.vl_types.all;
entity mux21_1b_vlg_sample_tst is
    port(
        i_A             : in     vl_logic;
        i_B             : in     vl_logic;
        i_SEL           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux21_1b_vlg_sample_tst;
