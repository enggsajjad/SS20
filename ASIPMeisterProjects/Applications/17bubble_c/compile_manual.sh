#!/bin/bash

RM='/bin/rm'
AWK='/bin/awk'
CP='/bin/cp'
PWD='/bin/pwd'
ECHO='/bin/echo'

export MKIMG_DIR=/home/asip04/WS17/mkimg
export COMPILER_DIR=~/WS17/Session4b/ASIPMeisterProjects/brownie/meister/browstd32.swgen/bin
export ISE_DIR=/home/asip04/WS17/Session7b/ASIPMeisterProjects/brownie/ISE_Framework



#${COMPILER_DIR}/brownie32-elf-gcc  --help
#${COMPILER_DIR}/brownie32-elf-as   --help
#${COMPILER_DIR}/brownie32-elf-ld   --help



${COMPILER_DIR}/brownie32-elf-gcc -S -O0 app.c -o app.s || {
      echo
      echo "ERROR in Compilation"
      echo
      exit 1
  }


${AWK} '1;/\tlw\t|\tsw\t|\tlb\t|\tsb\t|\tlh\t|\tsh\t/{print "\tnop";}' app.s > app_nop.s || {
      echo
      echo "ERROR in Adding NOPS"
      echo
      exit 1
  }

${COMPILER_DIR}/brownie32-elf-as -o startup.o startup.s;
${COMPILER_DIR}/brownie32-elf-as -o handler.o handler.s;
${COMPILER_DIR}/brownie32-elf-as -o app.o app.s;
#${COMPILER_DIR}/brownie32-elf-as -o app.o app_nop.s;

${COMPILER_DIR}/brownie32-elf-ld -o app -T browtb.x app.o startup.o handler.o  || {
      echo
      echo "ERROR in linking"
      echo
      exit 1
  }

#${COMPILER_DIR}/brownie32-elf-objdump -s app

${MKIMG_DIR}/gccout2img app || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }


${CP} -r TestData.* ../../ModelSim/.

${RM} -f ./BUILD_FPGA/*.bit
${RM} -f ./BUILD_FPGA/*.mem

${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > bubble_c.mem
${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM
${MKIMG_DIR}/image2mif.pl IM.coe DM.coe

${CP} -r *.mif *.coe *.DM ${ISE_DIR}/.

${CP} -r bubble_c.mem ./BUILD_FPGA/.

