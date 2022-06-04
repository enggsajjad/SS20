--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2020/06/18 17:57:21 
--
-- Module    : 32-bit data 5-bit address forwarding unit
-- Reference : Start from scratch
-- Author    : Designed by M.Itoh (c) 2000
--             Modified by K.Ueda (c) 2005
-- Version   : 1.1:

-- Functionality : behavior
-- port
--  data0     : input data from storage unit
--  data1     : forwarding data from stage 1
--  data2     : forwarding data from stage 2
--  num0      :  address of data to be read
--  num1      : address of forwarding data from stage 1
--  num2      : address of forwarding data from stage 2
--  fw1       : valid flag from stage 1
--  fw2       : valid flag from stage 2
--  data_out  : output data

library IEEE;
use IEEE.std_logic_1164.all;

entity fhm_fwu_w32 is

  port (
    data0    : in  std_logic_vector(31 downto 0);
    data1    : in  std_logic_vector(31 downto 0);
    data2    : in  std_logic_vector(31 downto 0);
    num0     : in  std_logic_vector(4 downto 0);
    num1     : in  std_logic_vector(4 downto 0);
    num2     : in  std_logic_vector(4 downto 0);
    fw1      : in  std_logic;
    fw2      : in  std_logic;
    data_out : out std_logic_vector(31 downto 0));

end fhm_fwu_w32;

architecture behavior of fhm_fwu_w32 is
  
begin  -- behavior

  process (data0, data1, data2, 
           num0, num1, num2, 
           fw1, fw2)
    variable tmp : std_logic_vector(31 downto 0);
  begin
    if (fw1 = '1') and (num0 = num1) then
      tmp := data1;
    elsif (fw2 = '1') and (num0 = num2) then
      tmp := data2;
    else
      tmp := data0;
    end if;
    data_out <= tmp;
  end process;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
