library verilog;
use verilog.vl_types.all;
entity milestone1 is
    port(
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        startF          : in     vl_logic;
        endF            : out    vl_logic;
        SRAM_address    : out    vl_logic_vector(17 downto 0);
        SRAM_write_data : out    vl_logic_vector(15 downto 0);
        SRAM_we_n       : out    vl_logic;
        SRAM_read_data  : in     vl_logic_vector(15 downto 0)
    );
end milestone1;
