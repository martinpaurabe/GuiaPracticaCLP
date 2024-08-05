library IEEE;
use IEEE.std_logic_1164.all;

entity contBCD_est_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end contBCD_est_tb;

architecture contBCD_est_tb_arch of contBCD_est_tb is
    --Parte Declarativa
    component contBCD_est is
        generic(
            N: natural := 4
        );
        port(
            clk_i   : in std_logic;
            ena_i   : in std_logic;
            rst_i   : in std_logic;
            q_o     : out std_logic_vector(N-1 downto 0)
        );
    end component;
    
    constant N_tb: natural := 4;
    signal clk_i_tb: std_logic := '0';
    signal rst_i_tb: std_logic := '0';
    signal ena_i_tb: std_logic := '1';
    signal q_o_tb:   std_logic_vector(N_tb-1 downto 0);


begin
    -- Parte Descriptiva
    clk_i_tb <= not clk_i_tb after 10 ns;

    --Device Under Test
    DUT: contBCD_est 
        generic map(
            N => N_tb
        )
        port map(
            clk_i => clk_i_tb,
            rst_i => rst_i_tb,
            ena_i => ena_i_tb,
            q_o   => q_o_tb
        );

end; --my_neg_tb_arch 