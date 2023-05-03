library verilog;
use verilog.vl_types.all;
entity counter_4bits is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        counter         : out    vl_logic_vector(3 downto 0);
        y               : out    vl_logic
    );
end counter_4bits;
