library IEEE;
use IEEE.std_logic_1164.all;

entity sum4b is
    --Parte Declarativa
    --Generic
    generic(
    N: natural :=4
    );
    --port    
    port(
        a_i: in std_logic_vector (N-1 downto 0);
        b_i: in std_logic_vector (N-1 downto 0);
        ci_i: in std_logic;
        s_o: out std_logic_vector (N-1 downto 0);
        co_o: out std_logic
    );
end sum4b;

architecture sum4b_arch of sum4b is
    --Parte Declarativa
    --Generic
    --port    
    component sum1b is
        port(
            a_i: in std_logic;
            b_i: in std_logic;
            ci_i: in std_logic;
            s_o: out std_logic;
            co_o: out std_logic
        );
        end component;
    --signal
    signal aux: std_logic_vector(N downto 0);
begin
    --Parte Descriptiva
    aux(0) <= ci_i;
    sum_Nbits_inst: for i in 0 to N-1 generate
        sum_1Bit_inst: sum1b port map(
            a_i => a_i(i),
            b_i => b_i(i),
            ci_i => aux(i),
            s_o => s_o(i),
            co_o =>aux(i+1)
        );
    end generate;
    co_o <= aux(N);
end;-- sum4b_arch ;