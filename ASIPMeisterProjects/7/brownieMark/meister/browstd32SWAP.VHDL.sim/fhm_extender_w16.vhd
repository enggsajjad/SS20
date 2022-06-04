--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2021/03/03 22:09:23 
--
-- Module     : Sign Extender
-- Feature    : extend sign
-- References : Started from scratch.
-- Author     : Tak. Tokihisa
-- Version : 1.0  : 2002/01/14

-- Functionality : behavior level
--  port
--   data_in  : data extended
--   data_out : extended data 
--   mode     : 0  zero extension
--            : 1  sign extension

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_extender_w16 is
  port (data_in  : in std_logic_vector(15 downto 0);
        mode     : in std_logic;
        data_out : out std_logic_vector(31 downto 0));
end fhm_extender_w16;

architecture behavior of fhm_extender_w16 is
begin
  process (data_in, mode)
    begin
      data_out(15 downto 0) <= data_in;
      if (mode = '0') then
	data_out(31 downto 16) <= (others => '0');

      else
        for i in 31 downto 16 loop
          data_out(i) <= data_in(15);
        end loop;
      end if;
  end process;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
