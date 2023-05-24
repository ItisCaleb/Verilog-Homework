library verilog;
use verilog.vl_types.all;
entity student_id is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        id              : out    vl_logic_vector(3 downto 0)
    );
end student_id;
