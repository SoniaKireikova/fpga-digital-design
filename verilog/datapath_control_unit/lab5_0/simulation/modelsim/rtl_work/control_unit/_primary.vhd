library verilog;
use verilog.vl_types.all;
entity control_unit is
    generic(
        N               : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        mode            : in     vl_logic;
        x               : in     vl_logic_vector;
        c_acc           : out    vl_logic_vector(1 downto 0);
        c_sh_rg         : out    vl_logic_vector(1 downto 0);
        ready           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end control_unit;
