library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

entity barrelshifterNB_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end barrelshifterNB_tb;

architecture barrelshifterNB_tb_arch of barrelshifterNB_tb is
   --Parte Declarativa
   component barrelshifterNB is
      --Parte Declarativa
      --Generic
      generic(
         N: natural :=4
      );
      --port    
      port(
         a_i: in std_logic_vector (N-1 downto 0);
         s_o: out std_logic_vector (N-1 downto 0);
         des_i: in std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0)
      );
   end component;

   constant N_tb: natural :=10;   
   signal a_i_tb: std_logic_vector (N_tb-1 downto 0):= (others=>'0');
   signal s_o_tb: std_logic_vector (N_tb-1 downto 0);
   signal des_i_tb: std_logic_vector (integer(ceil(log2(real(N_tb))))-1 downto 0):=(others=>'0');

begin
-- Parte Descriptiva
   des_i_tb <= std_logic_vector((unsigned(des_i_tb) + 1) mod N_tb) after 10 ns;
   a_i_tb(N_tb-1) <= '1';
   --Device Under Test
   barrel: barrelshifterNB
   generic map(
      N => N_tb
   )
   --port    
   port map(
      a_i => a_i_tb,
      s_o => s_o_tb,
      des_i => des_i_tb
   );

end; --barrelshifterNB_tb_arch 