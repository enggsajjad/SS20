
# Shell commands
RM='/bin/rm'
LS='/bin/ls'
MKDIR='/bin/mkdir'
MV='/bin/mv'
CAT='/bin/cat'
ECHO='/bin/echo'
CP='/bin/cp'
SCP='/usr/bin/scp'
DOS2UNIX='/usr/bin/dos2unix'
SED='/bin/sed'
AWK='/bin/awk'
GAWK='/bin/gawk'
PWD='/bin/pwd'
GREP='/bin/grep -v'
BASENAME='/bin/basename'
GETCONF='/usr/bin/getconf'

source ../../env_settings

echo $FPGA_DIR


# Application name for dlxsim and bitstream
#PWD := $(shell pwd)
#APPLICATION_NAME=$(lastword $(subst /, ,$(PWD)) )
CURRENT=`pwd`
APPLICATION_NAME=`basename "$CURRENT"`
echo $APPLICATION_NAME
fn=$(${LS} *.s)
echo "filnename: "$fn
fn=${fn%.*}
echo "filnename: "$fn


MEM_FILE=$FPGA_DIR/${APPLICATION_NAME}.mem
BLOCKRAM_FILE="$ISE_DIR"/blockram_bd.bmm
BITSTREAM_IN=$ISE_DIR/dlx_toplevel.bit
BITSTREAM_OUT=$FPGA_DIR/${APPLICATION_NAME}.bit
echo $ISE_DIR
echo ${MEM_FILE}
echo ${BLOCKRAM_FILE}
echo ${BITSTREAM_IN}

echo ${BITSTREAM_OUT}
# Parameters that are passed to the tools/scripts that are called by this Makefile
DLXSIM_PARAM='-da0 -pf1'
GCC_PARAMS='-O0'


STACK_START=$STACK_START_FPGA
COMPILER_TEMP_DIR=$SIM_DIR

echo $STACK_START
echo $COMPILER_TEMP_DIR

 

  ######################################################################
  #
  # Compile.
  #
  echo "Prcossing for dlxsim"
  cd ${COMPILER_TEMP_DIR}


  ${SED} '/.glob/s/^/;/; /.align/s/^/;/; /.type/s/^/;/; /.size/s/^/;/; /.ident/s/^/;/; /.zero/s/^/;/; s/.long/.data.32/; /%hi(/ s/)/\/0x10000)/; /%lo(/ s/)/\%0x10000)/; /%hi(/ s/%hi(/(/;/%lo(/ s/%lo(/(/' $fn.s  > $fn.1s

  ${MKIMG_DIR}/renameLabels.pl $fn.1s '$fn' > $fn.2s
  ${MKIMG_DIR}/renameLC.pl     $fn.2s '$fn' > $fn.3s

  #${CP} ${COMPILER_TEMP_DIR}/$fn.4s ${COMPILER_TEMP_DIR}/$fn.asm

  #${ECHO} -e "\n_exit: \n\ttrap #0 \n"  | ${CAT}  $fn.3s >  $fn.4s
  ${ECHO} -e "$(${CAT}  $fn.3s) \n\n_exit: \n\ttrap #0 \n"  >  $fn.4s

  ${AWK} -v RS='.data.*.text' -v ORS= '1;NR==1{printf ".text"}' $fn.4s > $fn.5s
  ${AWK} '/.data/{flag=1} /.text/{flag=0} flag' $fn.4s >> $fn.5s

  ${SED} '/^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/' $fn.5s > $fn.6s

  ${SED} s/REPLACE/${STACK_START}/ $MKIMG_DIR/startup_dlx2.s > startup_dlx2.s

  ${SED} "/.section\t.text/ r startup_dlx2.s" $fn.6s > ${APPLICATION_NAME}.dlxsim

  cd ..

$DLXSIM_DIR/dlxsim -f$SIM_DIR/$APPLICATION_NAME.dlxsim $DLXSIM_PARAM

