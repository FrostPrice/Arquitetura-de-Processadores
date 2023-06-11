library verilog;
use verilog.vl_types.all;
entity add_sub is
    port(
        o_COUT          : out    vl_logic;
        i_A             : in     vl_logic_vector(31 downto 0);
        i_CIN           : in     vl_logic;
        i_B             : in     vl_logic_vector(31 downto 0);
        o_S             : out    vl_logic_vector(31 downto 0)
    );
end add_sub;
