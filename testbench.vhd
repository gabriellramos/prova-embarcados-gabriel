-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component or_gate is
port(
  a: in std_logic;
  b: in std_logic;
  x: out std_logic);
end component;

signal a_in, b_in, x_out: std_logic;

begin

  -- Connect DUT
  DUT: or_gate port map(a_in, b_in, x_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
    assert(q_out='1') report "Fail 0/1" severity error;
  end process;
end tb;
