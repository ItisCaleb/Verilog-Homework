library verilog;
use verilog.vl_types.all;
entity add_sub_4bits is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic;
        C               : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        V               : out    vl_logic
    );
end add_sub_4bits;
