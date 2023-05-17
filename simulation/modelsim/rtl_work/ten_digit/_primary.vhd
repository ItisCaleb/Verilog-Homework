library verilog;
use verilog.vl_types.all;
entity ten_digit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        c_in            : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0);
        carry           : out    vl_logic
    );
end ten_digit;
