library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexor2x1_Nb_tb is
--No necesito ni entradas ni salidas porque las señales las voy a simular
end multiplexor2x1_Nb_tb;

architecture multiplexor2x1_Nb_tb_arch of multiplexor2x1_Nb_tb is
--Parte Declarativa
   component multiplexor2x1_Nb is
      --Parte Declarativa
      --Generic
      generic(
      N: natural :=4
      );
      --port    
      port(
         a_i: in std_logic_vector (N-1 downto 0);
         b_i: in std_logic_vector (N-1 downto 0);
         sel_i: in std_logic;
         y_o: out std_logic_vector (N-1 downto 0)
      );
   end component;
   
   --signal
   constant N_tb: natural := 8;
   signal a_i_tb: std_logic_vector (N_tb-1 downto 0) := (others =>'0');
   signal b_i_tb: std_logic_vector (N_tb-1 downto 0) := "00111111";
   signal sel_i_tb: std_logic := '0';
   signal y_o_tb: std_logic_vector (N_tb-1 downto 0);


begin
   -- Test Vectors
   a_i_tb <="01111111" after 10 ns,
            "10000000" after 30 ns,
            "10101010" after 50 ns;
   b_i_tb <="00000000" after 20 ns,
            "01111110" after 40 ns,
            "01010000" after 60 ns;
   sel_i_tb <= not sel_i_tb after 5 ns;
   --Device Under Test
   DUT: multiplexor2x1_Nb 
      generic map(
         N=>N_tb
      )
      port map(
         a_i => a_i_tb,
         b_i => b_i_tb,
         sel_i => sel_i_tb,
         y_o => y_o_tb
      );

end; --sum4b_tb_arch 