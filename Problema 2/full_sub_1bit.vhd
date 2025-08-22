library ieee;
use ieee.std_logic_1164.all;

entity full_sub_1bit is
  port(
    A, B, Bin : in  std_logic;
    D, Bout   : out std_logic
  );
end entity;

architecture rtl of full_sub_1bit is
begin
  D    <= A xor B xor Bin;						-- Logica resta
  Bout <= ( (not A) and (B or Bin) ) or (B and Bin);	--Logica prestamos
end architecture;
