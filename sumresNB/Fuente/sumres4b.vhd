library IEEE;
use IEEE.std_logic_1164.all;

entity sumres4b is
    --Parte Declarativa
    --Generic
    generic(
    N: natural :=4
    );
    --port    
    port(
        a_i: in std_logic_vector (N-1 downto 0);
        b_i: in std_logic_vector (N-1 downto 0);
        sr_i: in std_logic;
        s_o: out std_logic_vector (N-1 downto 0);
        co_o: out std_logic
    );
end sumres4b;

architecture sumres4b_arch of sumres4b is
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
    signal b_i_aux: std_logic_vector(N-1 downto 0);
begin
    --Parte Descriptiva
    aux(0) <= sr_i;
    sum_Nbits_inst: for i in 0 to N-1 generate
        b_i_aux(i) <= b_i(i) xor sr_i; --tengo que generar la señal auxiliar para conectar y evalular señales
        sum_1Bit_inst: sum1b port map(
            a_i => a_i(i),
            b_i => b_i_aux(i),
            ci_i => aux(i),
            s_o => s_o(i),
            co_o =>aux(i+1)
        );
    end generate;
    co_o <= aux(N);
end;-- sumres4b_arch ;