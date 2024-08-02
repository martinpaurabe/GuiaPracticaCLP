library IEEE;
use IEEE.std_logic_1164.all;

entity sum4b_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end sum4b_tb;

architecture sum4b_tb_arch of sum4b_tb is
--Parte Declarativa
   component sum4b is
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
   signal a_i_tb: std_logic_vector (3 downto 0) := "0000";
   signal b_i_tb: std_logic_vector (3 downto 0) := "0011";
   signal ci_i_tb: std_logic := '0';
   signal s_o_tb: std_logic_vector (3 downto 0);
   signal co_o_tb: std_logic;


begin
   -- Parte Descriptiva
   a_i_tb <="0111" after 10 ns;
   b_i_tb <= "0000" after 20 ns;
   ci_i_tb <= '1' after 40 ns;
   --Device Under Test
   DUT: sum4b 
      generic map(
         N=>4
      )
      port map(
         a_i => a_i_tb,
         b_i => b_i_tb,
         ci_i => ci_i_tb,
         s_o => s_o_tb,
         co_o => co_o_tb
      );

end; --sum4b_tb_arch 