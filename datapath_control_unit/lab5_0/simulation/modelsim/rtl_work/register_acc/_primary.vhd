library verilog;
use verilog.vl_types.all;
entity register_acc is
    generic(
        N               : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        c_acc           : in     vl_logic_vector(1 downto 0);
        z               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end register_acc;
