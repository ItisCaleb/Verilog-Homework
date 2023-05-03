library verilog;
use verilog.vl_types.all;
entity decoder_3to8 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        F               : out    vl_logic_vector(7 downto 0)
    );
end decoder_3to8;
