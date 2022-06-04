
#!/bin/bash

RM='/bin/rm'
AWK='/bin/awk'
CP='/bin/cp'
PWD='/bin/pwd'
ECHO='/bin/echo'

APPLICATION=bgte
#APPLICATION=bgeu
#APPLICATION=bgeun
export CPU_NAME=browstd32SWAP
export PROJECT_NAME=brownieSWAPIFG
export MKIMG_DIR=${HOME}/SS20/mkimg

#export ISE_DIR=/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISE_Framework
export ISE_NAME=ISE_Framework

export ASIPMEISTER_PROJECTS_DIR=${HOME}/SS20/ASIPMeisterProjects/5

export PROJECT_DIR=${ASIPMEISTER_PROJECTS_DIR}/${PROJECT_NAME}

export MEISTER_DIR=${PROJECT_DIR}/meister

export MODELSIM_DIR=${PROJECT_DIR}/ModelSim

export ISE_DIR=${PROJECT_DIR}/${ISE_NAME}

${ASIPmeister_HOME}/bin/pas -des ../../meister/${CPU_NAME}.des  -src ${APPLICATION}.asm >  ${APPLICATION}.out 

${MKIMG_DIR}/pasout2img ${APPLICATION}.out || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }

${CP} -r TestData.* ../../ModelSim/.


${RM} -f ./BUILD_SIM/*.bit
${RM} -f ./BUILD_SIM/*.mem

${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > ${APPLICATION}.mem
${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM
${MKIMG_DIR}/image2mif.pl IM.coe DM.coe

${CP} -r *.mif *.coe *.DM ${ISE_DIR}/.

${CP} -r ${APPLICATION}.mem ./BUILD_SIM/.

