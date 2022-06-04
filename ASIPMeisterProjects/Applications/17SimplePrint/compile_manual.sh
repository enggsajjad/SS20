#!/bin/bash

RM='/bin/rm'
AWK='/bin/awk'
CP='/bin/cp'
PWD='/bin/pwd'
ECHO='/bin/echo'


export MKIMG_DIR=/home/asip04/WS17/mkimg
export COMPILER_DIR=/home/asip04/WS17/Session5b/ASIPMeisterProjects/brownie/meister/browstd32.swgen/bin
export ISE_DIR=/home/asip04/WS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5f

#${COMPILER_DIR}/brownie32-elf-gcc -S -combine  -O0 bubble_uart.c -o bubble_uart.s || {
#${COMPILER_DIR}/brownie32-elf-gcc -S -combine  -O1 bubble_uart.c -o bubble_uart.s || {
#${COMPILER_DIR}/brownie32-elf-gcc -S -combine  -O2 bubble_uart.c -o bubble_uart.s || {
${COMPILER_DIR}/brownie32-elf-gcc -S -combine  -O3 bubble_uart.c -o bubble_uart.s || {
      echo
      echo "ERROR in Compilation"
      echo
      exit 1
  }

${AWK} '1;/\tlw\t|\tsw\t|\tlb\t|\tsb\t|\tlh\t|\tsh\t/{print "\tnop";}' bubble_uart.s > bubble_uart_nop.s || {
      echo
      echo "ERROR in Adding NOPS"
      echo
      exit 1
  }

${COMPILER_DIR}/brownie32-elf-as -o startup.o startup.s;
${COMPILER_DIR}/brownie32-elf-as -o handler.o handler.s;
#${COMPILER_DIR}/brownie32-elf-as -o bubble_uart.o bubble_uart_nop.s;
${COMPILER_DIR}/brownie32-elf-as -o bubble_uart.o bubble_uart.s;

${COMPILER_DIR}/brownie32-elf-ld -o bubble_uart -T browtb.x bubble_uart.o startup.o handler.o || {
      echo
      echo "ERROR in linking TestData.*"
      echo
      exit 1
  }

#${COMPILER_DIR}/brownie32-elf-gcc  --help
#${COMPILER_DIR}/brownie32-elf-as   --help
#${COMPILER_DIR}/brownie32-elf-ld   --help

#${COMPILER_DIR}/brownie32-elf-objdump -s bubble_uart

${MKIMG_DIR}/gccout2img bubble_uart || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }

${CP} -r TestData.* ../../ModelSim/.

${RM} -f ./BUILD_FPGA/*.bit
${RM} -f ./BUILD_FPGA/*.mem

${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > SimplePrint.mem
${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM
${MKIMG_DIR}/image2mif.pl IM.coe DM.coe

${CP} -r *.mif *.coe *.DM ${ISE_DIR}/.

${CP} -r SimplePrint.mem ./BUILD_FPGA/.

