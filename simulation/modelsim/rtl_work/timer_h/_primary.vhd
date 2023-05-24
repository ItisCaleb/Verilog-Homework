library verilog;
use verilog.vl_types.all;
entity timer_h is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        min_tens        : out    vl_logic_vector(2 downto 0);
        hour_tens       : out    vl_logic_vector(2 downto 0);
        min_units       : out    vl_logic_vector(3 downto 0);
        hour_units      : out    vl_logic_vector(3 downto 0)
    );
end timer_h;
