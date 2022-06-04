--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2020/06/18 17:57:25 
--
-- Module     : Sign Extender
-- Feature    : extend sign
-- References : Started from scratch.
-- Author     : Tak. Tokihisa
-- Version : 1.0  : 2002/01/14

-- Functionality : synthesis level
--  port
--   data_in  : data extended
--   data_out : extended data 
--   mode     : 0  zero extension
--            : 1  sign extension

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_extender_w8 is
  port (data_in  : in std_logic_vector(7 downto 0);
        mode     : in std_logic;
        data_out : out std_logic_vector(31 downto 0));
end fhm_extender_w8;

architecture synthesis of fhm_extender_w8 is
begin
  data_out(7 downto 0) <= data_in;
    sign_ext : for i in 31 downto 8 generate
     data_out(i) <= data_in(7) when mode = '1' else '0';
  end generate sign_ext;

end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
