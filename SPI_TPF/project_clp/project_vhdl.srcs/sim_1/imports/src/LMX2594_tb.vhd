library IEEE;
use IEEE.std_logic_1164.all;

entity LMX2594_tb is

end LMX2594_tb;

architecture LMX2594_tb_arch of LMX2594_tb is

	component LMX2594 is
		generic(
			prescaleFactor: natural:=1000
		);
		Port ( 
			LMX2594_rst         : in  std_logic; --reset
			LMX2594_ena	        : in  std_logic; --enable   
			LMX2594_clk_in      : in std_logic;  --Input CLK 
			LMX2594_csb  	    : out std_logic; --Serial Clk communication   
			LMX2594_sclk	    : buffer std_logic; --Serial Clk communication   
			LMX2594_sdat	    : out std_logic; --Serial Data Output   
			LMX2594_smux	    : in std_logic;  --Serial Data Input  
			LMX2594_r_nw	    : in  std_logic; --Read-Not Write select (1 to read; 0 to write)
			LMX2594_addr	    : in  std_logic_vector (6 downto 0);  --register address
			LMX2594_data_tx     : in std_logic_vector (15 downto 0); --Data to be write
			LMX2594_data_rx     : out std_logic_vector (15 downto 0);  --Data to be read 
			LMX2594_cc          : out std_logic --Comunication complete
		);
	end component;

	constant Prescaler_tb	: natural:=1;

	signal LMX2594_ena_tb		: std_logic :='0'; --enable   
	signal LMX2594_rst_tb     	: std_logic :='1'; --reset
	signal LMX2594_clk_in_tb  	: std_logic :='0';  --Input CLK 
	signal LMX2594_csb_tb  		: std_logic; --Serial Clk communication   
	signal LMX2594_sclk_tb		: std_logic; --Serial Clk communication   
	signal LMX2594_sdat_tb		: std_logic; --Serial Data Output   
	signal LMX2594_smux_tb		: std_logic;  --Serial Data Input  
	signal LMX2594_r_nw_tb		: std_logic :='0'; --Read-Not Write select (1 to read; 0 to write)
	signal LMX2594_addr_tb		: std_logic_vector (6 downto 0) := "0101010";  --register address
	signal LMX2594_data_tx_tb  	: std_logic_vector (15 downto 0) := "0101010101010101"; --Data to be write
	signal LMX2594_data_rx_tb  	: std_logic_vector (15 downto 0) := (others =>'0');  --Data to be read 
	signal LMX2594_cc_tb      	: std_logic; --Comunication complete
	
begin

	LMX2594_rst_tb 		<= '0' after 40 ns;

	LMX2594_ena_tb 		<= '1' after  70 ns,
							'0' after 120 ns,
							'1' after 2000 ns,
							'0' after 2050 ns;

	LMX2594_r_nw_tb 	<=  '1' after  60 ns,
							'0' after 140 ns,
							'1' after 1950 ns,
							'0' after 2050 ns;

	LMX2594_addr_tb	<= "1010101" after 1000 ns;
	LMX2594_data_tx_tb	<= "1010101010101010" after 1000 ns;

	LMX2594_clk_in_tb 	<= not LMX2594_clk_in_tb after 4 ns; --clk de 125MHz

	LMX2594_smux_tb <= LMX2594_sdat_tb;
	
	DUT: LMX2594
		generic map(
			prescaleFactor => Prescaler_tb
		)
		Port map( 
			LMX2594_rst     => LMX2594_rst_tb,
			LMX2594_ena	    => LMX2594_ena_tb,  
			LMX2594_clk_in  => LMX2594_clk_in_tb, 
			LMX2594_csb  	=> LMX2594_csb_tb,  
			LMX2594_sclk	=> LMX2594_sclk_tb,   
			LMX2594_sdat	=> LMX2594_sdat_tb,   
			LMX2594_smux	=> LMX2594_smux_tb,  
			LMX2594_r_nw	=> LMX2594_r_nw_tb,
			LMX2594_addr	=> LMX2594_addr_tb,
			LMX2594_data_tx => LMX2594_data_tx_tb,
			LMX2594_data_rx => LMX2594_data_rx_tb,
			LMX2594_cc      => LMX2594_cc_tb
		);

end LMX2594_tb_arch;