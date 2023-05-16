library verilog;
use verilog.vl_types.all;
entity RGY_combination is
    port(
        q               : in     vl_logic_vector(3 downto 0);
        r               : out    vl_logic_vector(1 downto 0);
        g               : out    vl_logic_vector(1 downto 0);
        y               : out    vl_logic_vector(1 downto 0)
    );
end RGY_combination;
