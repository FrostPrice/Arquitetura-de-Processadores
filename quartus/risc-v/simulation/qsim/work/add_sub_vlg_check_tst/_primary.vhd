library verilog;
use verilog.vl_types.all;
entity add_sub_vlg_check_tst is
    port(
        o_COUT          : in     vl_logic;
        o_S             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end add_sub_vlg_check_tst;