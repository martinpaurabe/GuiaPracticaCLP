library IEEE;
use IEEE.std_logic_1164.all;

entity sum1b_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end sum1b_tb;

architecture sum1b_tb_arch of sum1b_tb is
--Parte Declarativa
   component sum1b is
      port(
         a_i: in std_logic_vector [3 downto 0];
         b_i: in std_logic;
         ci_i: in std_logic;
         s_o: out std_logic;
         co_o: out std_logic
      );
   end component;

   signal a_i_tb: std_logic := '0';
   signal b_i_tb: std_logic := '0';
   signal ci_i_tb: std_logic := '0';
   signal s_o_tb: std_logic;
   signal co_o_tb: std_logic;


begin
-- Parte Descriptiva
   a_i_tb <= not a_i_tb after 10 ns;
   b_i_tb <= not b_i_tb after 20 ns;
   ci_i_tb <= not ci_i_tb after 40 ns;
    --Device Under Test
   DUT: sum1b 
      port map(
         a_i => a_i_tb,
         b_i => b_i_tb,
         ci_i => ci_i_tb,
         s_o => s_o_tb,
         co_o => co_o_tb
      );

end; --my_neg_tb_arch 