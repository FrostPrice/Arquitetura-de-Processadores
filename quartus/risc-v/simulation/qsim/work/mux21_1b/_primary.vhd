library verilog;
use verilog.vl_types.all;
entity mux21_1b is
    port(
        o_S             : out    vl_logic;
        i_SEL           : in     vl_logic;
        i_B             : in     vl_logic;
        i_A             : in     vl_logic
    );
end mux21_1b;
