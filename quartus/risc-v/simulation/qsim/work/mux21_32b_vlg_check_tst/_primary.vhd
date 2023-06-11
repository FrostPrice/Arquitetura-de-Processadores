library verilog;
use verilog.vl_types.all;
entity mux21_32b_vlg_check_tst is
    port(
        o_S             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux21_32b_vlg_check_tst;
