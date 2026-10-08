library verilog;
use verilog.vl_types.all;
entity shift_register is
    generic(
        N               : integer := 8
    );
    port(
        c_sh_rg         : in     vl_logic_vector(1 downto 0);
        Clk             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        x               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end shift_register;
