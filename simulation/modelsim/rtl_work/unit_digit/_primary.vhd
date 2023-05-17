library verilog;
use verilog.vl_types.all;
entity unit_digit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        c_in            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0);
        carry           : out    vl_logic
    );
end unit_digit;
