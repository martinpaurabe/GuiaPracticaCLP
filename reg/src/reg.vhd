library IEEE;
use IEEE.std_logic_1164.all;

entity reg is
    generic(
        N   :natural :=4
    );
    port(
        clk_i   : in std_logic;
        rst_i   : in std_logic;
        ena_i   : in std_logic;
        d_i     : in std_logic_vector (N-1 downto 0);
        d_o     : in std_logic_vector (N-1 downto 0)    
    );
end;--reg

architecture reg_arch of reg is
    --Declarative seccion

begin
    --Descriptive seccion
    process(clk_i,rst_i)
    begin
        if(rst_i)
            q_o <= (others => '0'); --another option we could sentence (N-1 downto 0 => '0')
        elsif rising_edge(clk_i) then
            q_o <= (others => '0'); --another option we could sentence (N-1 downto 0 => '0')
        elsif   ena_i = '1' then
            q_o <= d_i;
        end if;
    end process;
end;
