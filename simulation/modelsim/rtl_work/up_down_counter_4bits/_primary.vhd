library verilog;
use verilog.vl_types.all;
entity up_down_counter_4bits is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        counter         : out    vl_logic_vector(3 downto 0)
    );
end up_down_counter_4bits;
