library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexor2x1_1b_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end multiplexor2x1_1b_tb;

architecture multiplexor2x1_1b_tb_arch of multiplexor2x1_1b_tb is
--Parte Declarativa
    component multiplexor2x1_1b is
        port(
            a_i:    in std_logic;
            b_i:    in std_logic;
            sel_i:  in std_logic;
            y_o:    out std_logic
        );
    end component;

    signal a_i_tb: std_logic := '0';
    signal b_i_tb: std_logic := '0';
    signal sel_i_tb: std_logic := '0';
    signal y_o_tb: std_logic;

begin
    -- Parte Descriptiva
    a_i_tb <= not a_i_tb after 10 ns;
    b_i_tb <= not b_i_tb after 20 ns;
    sel_i_tb <= not sel_i_tb after 40 ns;
    
    --Device Under Test
    DUT: multiplexor2x1_1b 
        port map(
            a_i => a_i_tb,
            b_i => b_i_tb,
            sel_i => sel_i_tb,
            y_o => y_o_tb
        );

end; --my_neg_tb_arch 