library IEEE;
use IEEE.std_logic_1164.all;

entity ffd_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end ffd_tb;

architecture ffd_tb_arch of ffd_tb is
--Parte Declarativa
   component ffd is
      port(
         clk_i : in std_logic;
         rst_i : in std_logic;
         ena_i : in std_logic;
         d_i   : in std_logic;
         q_o   : out std_logic
      );
   end component;

   signal clk_tb: std_logic := '0';
   signal rst_tb: std_logic := '1';
   signal ena_tb: std_logic := '0';
   signal d_i_tb: std_logic   := '0';
   signal q_o_tb: std_logic;


begin
-- Parte Descriptiva
   clk_tb <= not clk_tb after 10 ns;
   rst_tb <= '0' after 20 ns;
   ena_tb <= '1' after 62 ns;
   d_i_tb <= '1' after 20 ns,
             '0' after 100 ns;

   --Device Under Test
   DUT: ffd 
      port map(
         clk_i =>clk_tb,
         rst_i =>rst_tb,
         ena_i =>ena_tb,
         d_i   =>d_i_tb,
         q_o   =>q_o_tb
      );

end; --ffd_tb_arch 