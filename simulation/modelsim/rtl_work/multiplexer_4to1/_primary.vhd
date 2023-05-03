library verilog;
use verilog.vl_types.all;
entity multiplexer_4to1 is
    port(
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        \In\            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic
    );
end multiplexer_4to1;
