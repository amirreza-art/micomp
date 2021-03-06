library ieee;
use ieee.std_logic_1164.all;

entity mux2_1_16b is
  port (
    i0: in std_logic_vector(15 downto 0);
    i1: in std_logic_vector(15 downto 0);
    s: in bit;
    o: out std_logic_vector(15 downto 0)
  );
end entity mux2_1_16b;

architecture behav of mux2_1_16b is
  begin

    b_mux: process(i0,i1,s)
    begin
    case s is
      when '0' => o <= i0;
      when '1' => o <= i1;
    end case;
  end process b_mux;
end architecture behav;
