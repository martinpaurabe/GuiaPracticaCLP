library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

entity barrelshifterNB is
    --Parte Declarativa
    --Generic
    generic(
    N: natural :=4
    );
    --port    
    port(
        a_i: in std_logic_vector (N-1 downto 0);
        s_o: out std_logic_vector (N-1 downto 0);
        des_i: in std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0)
    );
end barrelshifterNB;

architecture barrelshifterNB_arch of barrelshifterNB is
    --Parte Declarativa
    --Generic
    --port    
    --signal
    signal des_aux_i: integer range 0 to N :=0;
begin
    --Parte Descriptiva
    process(a_i,des_i)
        variable aux_i:std_logic_vector (N-1 downto 0) := a_i;
    begin
        aux_i := a_i;
        des_aux_i <= to_integer(unsigned(des_i));
        barrel_loop_inst: for i in 0 to des_aux_i loop
            aux_i := aux_i(0) & aux_i(N-1 downto 1);
        end loop barrel_loop_inst;
        s_o <= aux_i;
    end process;
end;-- barrelshifterNB_arch ;