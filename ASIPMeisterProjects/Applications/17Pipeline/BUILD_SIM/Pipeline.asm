	.addr_space	32	; address space is 2^32 
	.addressing	Byte	; byte addressing          (default) 
	.bits_per_byte	8	; 1 byte consists of 8 bit (default) 
	.endian		Big	; Big endian (default) 
	.section	.text 
	.org 0x00000000 

_main:
	; Call BubbleSort
	SUBI	%GPR5, %GPR5, $8		; create place for the parameters
	SW	0(%GPR5), %GPR0		; "const unsigned int startIndex"
	ADDI	%GPR21, %GPR0, $19
	SW	4(%GPR5), %GPR21		; "const unsigned int endIndex"
line14:	JPL $(_bubbleSort-line14-4)
		ADDI	%GPR5, %GPR5, $8		; clean up place for parameters

	LW	%GPR4, 0(%GPR5)		; %GPRestore frame pointer
	LW	%GPR3, 4(%GPR5)		; %GPRestore return address
	LW	%GPR21,  8(%GPR5)		; %GPRestore r1
	ADD	%GPR5, %GPR0, %GPR4		; %GPRestore stack pointer

line22:	JPL $(_exit-line22-4)
	NOP


_bubbleSort:
	ADD	%GPR4, %GPR0, %GPR5		; Establish new frame pointer 
	SUBI	%GPR5, %GPR5, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+%GPRET and x*4 for saved %GPRegisters
	SW	0(%GPR5), %GPR4		; Save the frame pointer 
	SW	4(%GPR5), %GPR3		; Save the return address 

	; Save %GPRegisters 
	SW	 8(%GPR5), %GPR21		; r1 is used for comparing-results and for temporary stuff.
	SW	12(%GPR5), %GPR22		; r2 is the parameter value "startIndex".
	SW	16(%GPR5), %GPR23		; r3 is the parameter value "endIndex".
	SW	20(%GPR5), %GPR24		; r4 is the loop-variable "i".
	SW	24(%GPR5), %GPR25		; r5 is the loop-variable "j".
	SW	28(%GPR5), %GPR26		; r6 is the loop-end "innerLoopEnd".
	SW	32(%GPR5), %GPR27		; r7 is "next_j".
	SW	36(%GPR5), %GPR28		; r8 is "value_j".
	SW	40(%GPR5), %GPR29		; r9 is "value_next_j".
	SW	44(%GPR5), %GPR20		; r10 is the start address of 'array'.


	; Load Parameters
	LW	%GPR22, 0(%GPR4)
	LW	%GPR23, 4(%GPR4)

	; Initialize start address of 'array'
	ADDI	%GPR20, %GPR0, $(_array / 0x10000)
	LSOI	%GPR20, %GPR20, $(_array % 0x10000)

;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
;;;;;;;;;;;;;;;;;;;;;;;;
	; innerLoopEnd = array+endIndex
	LLSI %GPR21, %GPR23, $2
	ADD %GPR26, %GPR20, %GPR21
	; i = startIndex;
	ADD %GPR24, %GPR0, %GPR22
outer_loop_begin:
	; while (i < endIndex) {
line63:	BGEU %GPR24, %GPR23, $(outer_loop_end-line63-4)
		;   j = array+startIndex;
	LLSI %GPR21, %GPR22, $2
	ADD %GPR25, %GPR20, %GPR21
	;   value_j = *j;
	LW %GPR28, 0(%GPR25)
	;   next_j = j;
	ADD %GPR27, %GPR0, %GPR25
	;   while (j < innerLoopEnd) {
inner_loop_begin:
line73:	BGEU %GPR25, %GPR26, $(inner_loop_end-line73-4)
		;     next_j++;
	ADDI %GPR27, %GPR27, $4
	;     value_next_j = *next_j;
	LW %GPR29, 0(%GPR27)
NOP
	;     if (value_next_j < value_j) {
line80:	BGEU %GPR29, %GPR28, $(endif-line80-4)
	NOP
	;       *j = value_next_j;
	SW 0(%GPR25), %GPR29
	;       *next_j = value_j;
	SW 0(%GPR27), %GPR28
	;       tmp = value_j;
	ADD %GPR21, %GPR0, %GPR28
	;       value_j = value_next_j;
	ADD %GPR28, %GPR0, %GPR29
	;       value_next_j = tmp;
	ADD %GPR29, %GPR0, %GPR21
	;     }
endif:
	;     j = next_j;
	ADD %GPR25, %GPR0, %GPR27
	;     value_j = value_next_j;  
	ADD %GPR28, %GPR0, %GPR29
	;   }
line99:	JP $(inner_loop_begin-line99-4)
	inner_loop_end:
	;   innerLoopEnd--;
	SUBI %GPR26, %GPR26, $4
	;   i++;
	ADDI %GPR24, %GPR24, $1
	; }
line106:	JP $(outer_loop_begin-line106-4)
	outer_loop_end:


;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
;;;;;;;;;;;;;;;;;;;;;;;;



	LW	%GPR4, 0(%GPR5)		; %GPRestore frame pointer
	LW	%GPR3, 4(%GPR5)		; %GPRestore return address

	; %GPRestore the saved registers
	LW	%GPR21, 8(%GPR5)
	LW	%GPR22, 12(%GPR5)
	LW	%GPR23, 16(%GPR5)
	LW	%GPR24, 20(%GPR5)
	LW	%GPR25, 24(%GPR5)
	LW	%GPR26, 28(%GPR5)
	LW	%GPR27, 32(%GPR5)
	LW	%GPR28, 36(%GPR5)
	LW	%GPR29, 40(%GPR5)
	LW	%GPR20,48(%GPR5)

	ADD	%GPR5, %GPR0, %GPR4		; %GPRestore stack pointer

	; %GPReturn
	JPR	%GPR3

finish:
		LSOI	%GPR10,	%GPR10,	$(_exit / 0x10000) 
		LSOI	%GPR10,	%GPR10,	$(_exit % 0x10000) 
		JPR	%GPR10 

		.org	0x3000 
	reset:	; reset interrupt handler 
		; GPR6 is all 1 register 
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) 
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) 

		; goto main (interrupt will be permitted) 
		LSOI	%GPR2,	%GPR2,	$(_main / 0x10000) 
		LSOI	%GPR2,	%GPR2,	$(_main % 0x10000) 
RETI

		.org	0x3F00 
_exit:
NOP
NOP
NOP

		.section        .data 
		.align  4 

_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23

