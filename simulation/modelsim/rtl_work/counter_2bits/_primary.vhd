library verilog;
use verilog.vl_types.all;
entity counter_2bits is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        counter         : out    vl_logic_vector(1 downto 0)
    );
end counter_2bits;
