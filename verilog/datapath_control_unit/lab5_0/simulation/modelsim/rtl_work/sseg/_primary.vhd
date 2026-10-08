library verilog;
use verilog.vl_types.all;
entity sseg is
    port(
        Din             : in     vl_logic_vector(3 downto 0);
        Enable          : in     vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        h               : out    vl_logic
    );
end sseg;
