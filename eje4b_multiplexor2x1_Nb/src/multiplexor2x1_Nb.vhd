library IEEE;
use IEEE.std_logic_1164.all;

entity  multiplexor2x1_Nb is
    --Parte Declarativa
    --Generic
    generic(
    N: natural :=4
    );
    --port    
    port(
        a_i: in std_logic_vector (N-1 downto 0);
        b_i: in std_logic_vector (N-1 downto 0);
        sel_i: in std_logic;
        y_o: out std_logic_vector (N-1 downto 0)
    );
end multiplexor2x1_Nb;

architecture multiplexor2x1_Nb_arch of multiplexor2x1_Nb is
    --Parte Declarativa
    --Generic
    --port    
    component multiplexor2x1_1b is
        --Generic
        --Port
        port(
            a_i:in std_logic;
            b_i:in std_logic;
            sel_i:in std_logic;
            y_o: out std_logic
        );
        --Signal
    end component;
    --signal
begin
    --Parte Descriptiva
    multiplexor2x1_Nb_inst: for i in 0 to N-1 generate
        sum_1Bit_inst: multiplexor2x1_1b 
        port map(
            a_i => a_i(i),
            b_i => b_i(i),
            sel_i => sel_i,
            y_o => y_o(i)
        );
    end generate;
end;-- multiplexor2x1_Nb_arch ;