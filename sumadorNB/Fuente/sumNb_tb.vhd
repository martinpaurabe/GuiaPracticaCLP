library IEEE;
use IEEE.std_logic_1164.all;

entity sumNb_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end sumNb_tb;

architecture sumNb_tb_arch of sumNb_tb is
--Parte Declarativa
   component sumNb is
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
   end component;
   
   --signal
   constant N_tb: natural := 8;
   signal a_i_tb: std_logic_vector (N_tb-1 downto 0) := (others =>'0');
   signal b_i_tb: std_logic_vector (N_tb-1 downto 0) := "00111111";
   signal ci_i_tb: std_logic := '0';
   signal s_o_tb: std_logic_vector (N_tb-1 downto 0);
   signal co_o_tb: std_logic;


begin
   -- Test Vectors
   a_i_tb <="01111111" after 10 ns,
            "10000000" after 30 ns,
            "10101010" after 50 ns;
   b_i_tb <="00000000" after 20 ns,
            "01111110" after 40 ns,
            "01010000" after 60 ns;
   ci_i_tb <= '1' after 70 ns;
   --Device Under Test
   DUT: sumNb 
      generic map(
         N=>N_tb
      )
      port map(
         a_i => a_i_tb,
         b_i => b_i_tb,
         ci_i => ci_i_tb,
         s_o => s_o_tb,
         co_o => co_o_tb
      );

end; --sum4b_tb_arch 