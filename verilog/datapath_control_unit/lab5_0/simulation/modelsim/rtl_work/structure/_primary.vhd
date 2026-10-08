library verilog;
use verilog.vl_types.all;
entity structure is
    generic(
        N               : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic_vector;
        start           : in     vl_logic;
        mode            : in     vl_logic;
        ready           : out    vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        h               : out    vl_logic;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end structure;
