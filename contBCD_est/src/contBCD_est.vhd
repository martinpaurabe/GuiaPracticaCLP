library IEEE;
use IEEE.std_logic_1164.all;

entity contBCD_est is
    generic(
        N: natural := 4
    );
    port(
        clk_i   : in std_logic;
        ena_i   : in std_logic;
        rst_i   : in std_logic;
        q_o     : out std_logic_vector(N-1 downto 0)
    );
end contBCD_est;

architecture contBCD_est_arch of contBCD_est is

    component ffd is
        port(
            clk_i   : in std_logic;
            rst_i   : in std_logic;
            ena_i   : in std_logic;
            d_i     : in std_logic;
            q_o      : out std_logic    
        );
    end component;--ffd
    
    signal ffd_xor: std_logic_vector(N downto 0);
    signal ffd_and: std_logic_vector(N downto 0);
    signal ffd_q: std_logic_vector(N-1 downto 0);

begin
    ffd_and(0) <= ena_i;
    contBCD_est_inst: for i in 0 to N-1 generate
        ffd_inst: ffd
        port map(
            clk_i => clk_i,
            rst_i => rst_i,
            ena_i => ena_i,
            d_i   => ffd_xor(i),
            q_o   => ffd_q(i)  
        );
        ffd_xor(i) <= ffd_q(i) xor ffd_and(i);
        ffd_and(i+1) <= ffd_q(i) and ffd_and(i);
    end generate;
    q_o <= ffd_q;
end contBCD_est_arch;