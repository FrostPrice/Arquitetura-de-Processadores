library verilog;
use verilog.vl_types.all;
entity risc_v32i_vlg_check_tst is
    port(
        ALU_OUT         : in     vl_logic_vector(31 downto 0);
        INSTRUCTION1    : in     vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(31 downto 0);
        REG_WR          : in     vl_logic;
        RS1_VALUE       : in     vl_logic_vector(31 downto 0);
        RS2_VALUE       : in     vl_logic_vector(31 downto 0);
        SIG_EXT12_32    : in     vl_logic_vector(31 downto 0);
        UAL_FONTE       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end risc_v32i_vlg_check_tst;
