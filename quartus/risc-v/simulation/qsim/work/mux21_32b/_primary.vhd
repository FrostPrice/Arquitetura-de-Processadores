library verilog;
use verilog.vl_types.all;
entity mux21_32b is
    port(
        o_S             : out    vl_logic_vector(31 downto 0);
        i_A             : in     vl_logic_vector(31 downto 0);
        i_SEL           : in     vl_logic;
        i_B             : in     vl_logic_vector(31 downto 0)
    );
end mux21_32b;
