library ieee;
use ieee.std_logic_1164.all;

entity top_restador is
  port(
    SW   : in  std_logic_vector(9 downto 0);    -- switches de la placa
    LEDR : out std_logic_vector(9 downto 0);    -- leds rojos
    HEX0 : out std_logic_vector(6 downto 0)     -- display de 7 segmentos (activo en bajo)
  );
end entity;

architecture struct of top_restador is
  signal A, B : std_logic_vector(3 downto 0);
  signal Bin  : std_logic;
  signal D    : std_logic_vector(3 downto 0);
  signal Bout : std_logic;
begin
  -- Mapeo de switches
  A   <= SW(7 downto 4);
  B   <= SW(3 downto 0);
  Bin <= SW(8);

  -- Restador de 4 bits 
  U_SUB: entity work.sub_4bit
    port map(A=>A, B=>B, Bin=>Bin, D=>D, Bout=>Bout);

  -- Mostrar resultado en HEX0
  U_HEX: entity work.hex7seg
    port map(x=>D, seg=>HEX0);

  -- Indicaciones en LEDs
  LEDR(3 downto 0) <= D;     -- opcional: ver nibble en leds
  LEDR(9)          <= Bout;  -- underflow (préstamo final)
  LEDR(8 downto 4) <= (others => '0'); -- resto apagados
end architecture;
