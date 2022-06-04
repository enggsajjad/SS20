
#!/bin/bash

RM='/bin/rm'
AWK='/bin/awk'
CP='/bin/cp'
PWD='/bin/pwd'
ECHO='/bin/echo'

export MKIMG_DIR=/home/asip04/WS17/mkimg
export ISE_DIR=/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISE_Framework

${ASIPmeister_HOME}/bin/pas -des ../../meister/browstd32.des  -src bgeu.asm >  bgeu.out 

${MKIMG_DIR}/pasout2img bgeu.out || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }

${CP} -r TestData.* ../../ModelSim/.


${RM} -f ./BUILD_FPGA/*.bit
${RM} -f ./BUILD_FPGA/*.mem

${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > bgeu.mem
${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM
${MKIMG_DIR}/image2mif.pl IM.coe DM.coe

${CP} -r *.mif *.coe *.DM ${ISE_DIR}/.

${CP} -r bgeu.mem ./BUILD_FPGA/.

