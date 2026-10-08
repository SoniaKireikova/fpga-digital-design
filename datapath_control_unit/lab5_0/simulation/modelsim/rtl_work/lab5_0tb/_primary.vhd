library verilog;
use verilog.vl_types.all;
entity lab5_0tb is
    generic(
        N               : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end lab5_0tb;
