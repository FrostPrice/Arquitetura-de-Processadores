library verilog;
use verilog.vl_types.all;
entity mux21_32b_vlg_sample_tst is
    port(
        i_A             : in     vl_logic_vector(31 downto 0);
        i_B             : in     vl_logic_vector(31 downto 0);
        i_SEL           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux21_32b_vlg_sample_tst;
