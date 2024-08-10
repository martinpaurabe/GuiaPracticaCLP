library IEEE;
use IEEE.std_logic_1164.all;

entity monStab_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end monStab_tb;

architecture monStab_tb_arch of monStab_tb is
    --Parte Declarativa
    component monStab is
        generic(
            N: natural := 100
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
    signal rst_i_tb: std_logic := '1';
    signal ena_i_tb: std_logic := '0';
    signal q_o_tb: std_logic;


    begin
    -- Parte Descriptiva
    clk_i_tb <= not clk_i_tb after 5 ns;
    rst_i_tb <= '0' after 40 ns;
    
    ena_i_tb <=  '1' after 20 ns,
                '0' after 140 ns,
                '1' after 150 ns,
                '1' after 250 ns,
                '0' after 280 ns,
                '1' after 350 ns,
                '0' after 380 ns;

    --Device Under Test
    DUT: monStab 
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