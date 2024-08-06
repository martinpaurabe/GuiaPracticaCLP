library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexor2x1_1b is
    --Generic
    --Port
    port(
        a_i:in std_logic;
        b_i:in std_logic;
        sel_i:in std_logic;
        y_o: out std_logic
    );
    --Signal
end multiplexor2x1_1b;

architecture multiplexor2x1_1b_arch of multiplexor2x1_1b is
    --Generic
    --Component
    --Signal
begin
    y_o <= (a_i and not sel_i) or (b_i and sel_i);
end;-- multiplexor2x1_1b