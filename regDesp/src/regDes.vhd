library IEEE;
use IEEE.std_logic_1164.all;

entity regDes is
    --Parte Declarativa
    --Generic
    generic(
    N: natural :=8
    );
    --port    
    port(
        clk_i   : in std_logic;
        rst_i   : in std_logic;
        d_i     : in std_logic;
        d_o     : out std_logic
    );
end; --regDes

architecture regDes_arch of regDes is
    --Parte Declarativa
    --Generic
    --port    
    component ffd is
        port(
            clk_i   : in std_logic;
            rst_i   : in std_logic;
            ena_i   : in std_logic;
            d_i     : in std_logic;
            q_o     : out std_logic    
            );
        end component;
    --signal
    signal word: std_logic_vector(0 to N);
begin
    --Parte Descriptiva
    word(0) <= d_i;
    regDes_inst: for i in 0 to N-1 generate
        ffd_inst: ffd port map(
            clk_i => clk_i,
            rst_i => rst_i,
            ena_i => '1',
            d_i   => word(i),
            q_o   => word(i+1)    
        );
    end generate;
    d_o <= word(N);
end;-- regDes_arch ;