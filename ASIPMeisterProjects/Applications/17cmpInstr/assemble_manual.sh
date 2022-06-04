#!/bin/bash

#export MKIMG_DIR=/home/asip04/SS17/mkimg

${ASIPmeister_HOME}/bin/pas -des ../../meister/browstd32.des  -src instr.asm >  instr.out 

${MKIMG_DIR}/pasout2img instr.out || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }


cp -r TestData.* ../../ModelSim/.
