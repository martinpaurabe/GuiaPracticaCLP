library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity monStab is
	generic(
		N: natural := 10000
	);
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		q_o: out std_logic
	);
end;

architecture monStab_arq of monStab is

	signal STT: INTEGER range 0 to 15 :=0;

begin
	process(clk_i)
		variable count: integer range 0 to N := 0;
	begin
		if rising_edge(clk_i) then
			if rst_i = '1' then
				count := 0;
				q_o <= '0';
            else
                case STT is
                    when 0 =>
						count := 0;
						q_o <= '0';
						if (ena_i = '1') then
							STT <= 1;
							q_o <= '1';
						end if;
                    when 1 =>
						count := count + 1;
						if count = N then
							count := 0;
							q_o <= '0';
							STT <= 2;
						end if;
                    when 2 =>
						count := count + 1;
						if count = N then
							STT <= 0;
						end if;
                    when others =>
                        STT <= 0;
                end case;
            end if;
        end if;
    end process;
end;