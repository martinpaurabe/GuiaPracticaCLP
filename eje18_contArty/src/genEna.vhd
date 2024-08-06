library IEEE;
use IEEE.std_logic_1164.all;

entity genEna is
	generic(
		N: natural := 4
	);
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		q_o: out std_logic
	);
end;

architecture genEna_arq of genEna is
begin
	process(clk_i)
		variable count: integer range 0 to N := 0;
	begin
		if (clk_i ='1') then
			if rst_i = '1' then
				count := 0;
				q_o <= '0';
			elsif ena_i = '1' then
				count := count + 1;
				if count = N then
					count := 0;
					q_o <= '1';
				else
					q_o <= '0';
				end if;
			end if;
		end if;
	end process;
end;