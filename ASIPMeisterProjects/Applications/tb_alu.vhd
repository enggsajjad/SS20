
library STD, IEEE;
use STD.textio.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_textio.all;
use WORK.all;
use MemoryMapperTypes.all;
use Helper.all;


entity TEST is
end TEST;


--architecture tb of tb_BrownieSTD32 is

architecture TestBench of TEST is
  
  component fhm_alu_w32
  port (
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    cin : in std_logic;
    mode : in std_logic_vector(4 downto 0);
    result : out std_logic_vector(31 downto 0);
    flag : out std_logic_vector(3 downto 0)
  );
  end component fhm_alu_w32;


  signal a:	std_logic_vector(31 downto 0);
  signal b:	std_logic_vector(31 downto 0);
  signal cin:	std_logic;
  signal result:	std_logic_vector(31 downto 0);
  signal flag:	std_logic_vector(3 downto 0);
  signal mode:	std_logic_vector(4 downto 0);

  
begin  -- Architecture Body

 
  DUT: fhm_alu_w32
  port map (
    a => a,
    b => b,
    cin => cin,
    mode => mode,
    result => result,
    flag  => flag
  );


  process
  begin
  --cin
  cin <= '0';
  --compare unsigned
  mode <= "00010";
  a <= x"00000005";
  b <= x"00000010";
  wait for  5 ns;
  
  a <= x"00000010";
  b <= x"00000005";  
  wait for  5 ns;


  a <= x"FFFFFFFB";
  b <= x"00000010";
  wait for  5 ns;

  a <= x"00000010";
  b <= x"FFFFFFFB";  
  wait for  5 ns;

  a <= x"FFFFFFF7";
  b <= x"FFFFFFFB";  
  wait for  5 ns;


  a <= x"FFFFFFFB";
  b <= x"FFFFFFF7";  
  wait for  5 ns;


  a <= x"00000010";
  b <= x"00000010";
  wait for  5 ns;

  a <= x"FFFFFFFB";
  b <= x"FFFFFFFB";  
  wait for  50 ns;
  --compare signed
  mode <= "01010";
  a <= x"00000005";
  b <= x"00000010";
  wait for  5 ns;

  a <= x"00000010";
  b <= x"00000005";  
  wait for  5 ns;

  a <= x"FFFFFFFB";
  b <= x"00000010";
  wait for  5 ns;

  a <= x"00000010";
  b <= x"FFFFFFFB";  
  wait for  5 ns;


  a <= x"FFFFFFF7";
  b <= x"FFFFFFFB";  
  wait for  5 ns;


  a <= x"FFFFFFFB";
  b <= x"FFFFFFF7";  
  wait for  5 ns;

  
  a <= x"00000010";
  b <= x"00000010";
  wait for  5 ns;

  a <= x"FFFFFFFB";
  b <= x"FFFFFFFB";  
  wait for  50 ns;
  



--cin
cin <= '1';
--compare unsigned
mode <= "00010";
a <= x"00000005";
b <= x"00000010";
wait for  5 ns;

a <= x"00000010";
b <= x"00000005";  
wait for  5 ns;


a <= x"FFFFFFFB";
b <= x"00000010";
wait for  5 ns;

a <= x"00000010";
b <= x"FFFFFFFB";  
wait for  5 ns;

a <= x"FFFFFFF7";
b <= x"FFFFFFFB";  
wait for  5 ns;


a <= x"FFFFFFFB";
b <= x"FFFFFFF7";  
wait for  5 ns;


a <= x"00000010";
b <= x"00000010";
wait for  5 ns;

a <= x"FFFFFFFB";
b <= x"FFFFFFFB";  
wait for  50 ns;
--compare signed
mode <= "01010";
a <= x"00000005";
b <= x"00000010";
wait for  5 ns;

a <= x"00000010";
b <= x"00000005";  
wait for  5 ns;

a <= x"FFFFFFFB";
b <= x"00000010";
wait for  5 ns;

a <= x"00000010";
b <= x"FFFFFFFB";  
wait for  5 ns;


a <= x"FFFFFFF7";
b <= x"FFFFFFFB";  
wait for  5 ns;


a <= x"FFFFFFFB";
b <= x"FFFFFFF7";  
wait for  5 ns;


a <= x"00000010";
b <= x"00000010";
wait for  5 ns;

a <= x"FFFFFFFB";
b <= x"FFFFFFFB";  
wait for  50 ns;



  end process;
    
 
  
end TestBench;

configuration CFG of TEST is
  for TestBench
  end for;
end;

-----------------------------------
-----------------------------------

