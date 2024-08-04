library IEEE;
use IEEE.std_logic_1164.all;

entity regDes_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end regDes_tb;

architecture regDes_tb_arch of regDes_tb is
    --Parte Declarativa
    component regDes is
        --Parte Declarativa
        --Generic
        generic(
        N: natural :=8
        );
        --port    
        port(
            clk_i: in std_logic;
            rst_i: in std_logic;
            d_i: in std_logic;
            d_o: out std_logic
        );
    end component;
    
    constant N_tb: natural := 4;
    signal clk_tb: std_logic := '0';
    signal rst_tb: std_logic := '1';
    signal ena_tb: std_logic := '0';
    signal d_i_tb: std_logic   := '0';
    signal d_o_tb: std_logic;


begin
-- Parte Descriptiva
    clk_tb <= not clk_tb after 10 ns;
    rst_tb <= '0' after 20 ns;
    ena_tb <= '1' after 62 ns;
    d_i_tb <= not d_i_tb after 40 ns;

    --Device Under Test
    regDes_inst: regDes 
        generic map(
            N=>N_tb
        )
        port map(
            clk_i   => clk_tb,
            rst_i   => rst_tb,
            d_i     => d_i_tb,
            d_o     => d_o_tb
        );   
end; --regDes_tb_arch 