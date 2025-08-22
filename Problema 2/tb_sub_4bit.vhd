library ieee;
use ieee.std_logic_1164.all;

entity tb_sub_4bit is end;
architecture sim of tb_sub_4bit is
  signal A,B : std_logic_vector(3 downto 0);
  signal Bin : std_logic := '0';
  signal D   : std_logic_vector(3 downto 0);
  signal Bout: std_logic;
begin
  dut: entity work.sub_4bit
    port map(A=>A, B=>B, Bin=>Bin, D=>D, Bout=>Bout);

  process
  begin
    -- 1) 9 - 3 = 6
    A<="1001"; B<="0011"; wait for 10 ns;
    -- 2) 5 - 6 = (underflow) => D=1111 , Bout=1
    A<="0101"; B<="0110"; wait for 10 ns;
    -- 3) 15 - 15 = 0
    A<="1111"; B<="1111"; wait for 10 ns;
    -- 4) 8 - 1 con Bin=1  (equivale a 8 - 2)
    A<="1000"; B<="0001"; Bin<='1'; wait for 10 ns; Bin<='0';
    wait;
  end process;
end architecture;
