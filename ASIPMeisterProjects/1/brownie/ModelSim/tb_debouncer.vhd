LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL code for button debouncing on FPGA 
-- Testbench VHDL code for button debouncing
ENTITY tb_debouncer IS
END tb_debouncer;
 
ARCHITECTURE behavior OF tb_debouncer IS
    -- Component Declaration for VHDL code for button debouncing
    COMPONENT debouncer
    PORT(
         pbutton : IN  std_logic;
         clk : IN  std_logic;
     rst : IN  std_logic;
         pb_deb : OUT  std_logic
        );
    END COMPONENT;
   signal pbutton : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal pb_deb : std_logic;
   constant clk_period : time := 10 ns;
BEGIN
 -- Instantiate VHDL code for button debouncing
   uut: debouncer PORT MAP (
          pbutton => pbutton,
          clk => clk,
          rst => rst,
          pb_deb => pb_deb
        );
   clk_process :process
   begin
  clk <= '0';
  wait for clk_period;
  clk <= '1';
  wait for clk_period;
   end process;
   -- Stimulus process
   stim_proc: process
   begin  
      -- hold reset state for 100 ns.
      wait for 100 ns; 

      wait for clk_period*10;
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 20 ns; 
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 30 ns; 
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 40 ns; 
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 30 ns;  
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 400 ns;  
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 20 ns; 
  pbutton <= '0';
  wait for 10 ns; 
  pbutton <= '1';
  wait for 30 ns; 
  pbutton <= '0';
      wait;
   end process;

END;
