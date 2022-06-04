----------------------------------------------------------------------
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2020/07/04 03:27:00 
----------------------------------------------------------------------

-----------------------------------------------------------
-- Entity Name: rtg_mux4to1_w32
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity rtg_mux4to1_w32 is
  port (
    SEL : in std_logic_vector(1 downto 0);
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DIN2 : in std_logic_vector(31 downto 0);
    DIN3 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
end entity rtg_mux4to1_w32;

architecture RTL of rtg_mux4to1_w32 is


begin
  DOUT <= 
	DIN0 when SEL = "00" else 
	DIN1 when SEL = "01" else 
	DIN2 when SEL = "10" else 
	DIN3 when SEL = "11" else 
	"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
