library IEEE;
use IEEE.std_logic_1164.all;

entity contBCD_Arty_tb is

end contBCD_Arty_tb;

architecture contBCD_Arty_tb_arq of contBCD_Arty_tb is

	component contBCD_Arty is
		generic(
			N: natural := 4
		);
		port(
			clk_i: in std_logic; --clk de 100Mhz
			rst_i: in std_logic;
			ena_i: in std_logic;
			s_o: out std_logic_vector(3 downto 0)
		);
	end component;

	constant N_tb: natural:=10;	
	signal clk_tb: std_logic := '0';
	signal rst_tb: std_logic := '1';
	signal ena_tb: std_logic := '1';
	signal s_tb: std_logic_vector(3 downto 0);
	
begin

	clk_tb <= not clk_tb after 5 ns; --clk de 100MHz
	rst_tb <= '0' after 50 us,
			  '1' after 400 us,
			  '0' after 460 us;
	ena_tb <= '0' after 300 us,
			  '1' after 350 us;
	
	DUT: contBCD_Arty
		generic map(
			N => N_tb
		)
		port map(
			clk_i => clk_tb,
			rst_i => rst_tb,
			ena_i => ena_tb,
			s_o => s_tb
		);

end contBCD_Arty_tb_arq;