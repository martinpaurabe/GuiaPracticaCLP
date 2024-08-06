library IEEE;
use IEEE.std_logic_1164.all;

entity genEna_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end genEna_tb;

architecture genEna_tb_arch of genEna_tb is
    --Parte Declarativa
    component genEna is
        generic(
            N: natural := 4
        );
        port(
            clk_i: in std_logic;
            rst_i: in std_logic;
            ena_i: in std_logic;
            q_o: out std_logic
        );
    end component;

    constant N_tb: natural := 5;
    signal clk_i_tb: std_logic := '0';
    signal rst_i_tb: std_logic := '0';
    signal ena_i_tb: std_logic := '0';
    signal q_o_tb: std_logic;


    begin
    -- Parte Descriptiva
    clk_i_tb <= not clk_i_tb after 10 ns;
    rst_i_tb <= '1' after 200 ns,
                '0' after 230 ns;
    ena_i_tb <=  '1' after 20 ns,
                '0' after 140 ns,
                '1' after 150 ns,
                '0' after 350 ns,
                '1' after 450 ns;

    --Device Under Test
    DUT: genEna 
        generic map(
            N => N_tb
        )
        port map(
            clk_i =>clk_i_tb,
            rst_i =>rst_i_tb,
            ena_i =>ena_i_tb,
            q_o   =>q_o_tb
        );

end; --my_neg_tb_arch 