library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contBCD is
    --Parte Declarativa
    --Generic
    --port    
    port(
        clk_i   : in std_logic;
        rst_i   : in std_logic;
        en_i    : in std_logic;
        cnt_o   : out std_logic_vector (N-1 downto 0);
        max_o   : out std_logic
    );
    --signal 
end contBCD;

architecture contBCD_arch of contBCD is
--Parte Declarativa
--Generic
--port    
    component reg is
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
    end component;--reg
    --signal 
    signal salReg: std_logic_vector (N-1 downto 0);
    signal salSum: std_logic_vector (N-1 downto 0);
    signal salOr    : std_logic;
    signal salAnd    : std_logic;


begin
--Parte Descriptiva
    reg_inst: reg
    generic map(
        N=>N;
    )
    port  map(
        clk_i => clk_i;
        rst_i => salOr;
        ena_i => ena_i;
        d_i   => salSum;
        d_o   => salReg;
    ) 
    salSum <= std_logic_vector(to_unsigned((to_integer(unsigned(salReg)) + 1),N)); 
    salComp <= salReg
end;-- contBCD_arch ; -- arch