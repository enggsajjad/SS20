;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Simple test program for brownie std 32 v.0.97c
;   Copyright 2008 ASIP Solutions, Inc. All rights reserved.

	.addr_space	32	; address space is 2^32
	.addressing	Byte	; byte addressing          (default)
	.bits_per_byte	8	; 1 byte consists of 8 bit (default)
	.endian		Big	; Big endian (default)
	.section	.data
	.align		4
data:
	.data.32	0x12345678
	.data.32	0x98765432
	.data.8		0xAA
	.data.8		0xFF
	.data.16	0x0000
_start:


	.section	.text
	.org	0x00000000
main:

	
	ADDI	%GPR11, %GPR0, $(-5)
	ADDI	%GPR12, %GPR0, $(16)

	ADDU	%GPR13, %GPR11, %GPR12
	SW	0(%GPR6), %GPR13
	ADDUI	%GPR13, %GPR11, $(20)
	SW	4(%GPR6), %GPR13
	SUBU	%GPR13, %GPR11, %GPR12
	SW	8(%GPR6), %GPR13
	SUBUI	%GPR13, %GPR11, $(20)
	SW	12(%GPR6), %GPR13
	ELT	%GPR13, %GPR11, %GPR12
	SW	16(%GPR6), %GPR13
	ELTU	%GPR13, %GPR11, %GPR12
	SW	20(%GPR6), %GPR13
	ELTI	%GPR13, %GPR11, $(20)
	SW	24(%GPR6), %GPR13
	ELE	%GPR13, %GPR11, %GPR12
	SW	28(%GPR6), %GPR13
	ELEU	%GPR13, %GPR11, %GPR12
	SW	32(%GPR6), %GPR13
	ELEI	%GPR13, %GPR11, $(20)
	SW	36(%GPR6), %GPR13

	EGT	%GPR13, %GPR11, %GPR12
	SW	40(%GPR6), %GPR13
	EGTU	%GPR13, %GPR11, %GPR12
	SW	44(%GPR6), %GPR13
	EGTI	%GPR13, %GPR11, $(20)
	SW	48(%GPR6), %GPR13

	EGE	%GPR13, %GPR11, %GPR12
	SW	52(%GPR6), %GPR13
	EGEU	%GPR13, %GPR11, %GPR12
	SW	56(%GPR6), %GPR13
	EGEI	%GPR13, %GPR11, $(20)
	SW	60(%GPR6), %GPR13

	EEQ	%GPR13, %GPR11, %GPR12
	SW	64(%GPR6), %GPR13
	EEQI	%GPR13, %GPR11, $(20)
	SW	68(%GPR6), %GPR13

	ENEQ	%GPR13, %GPR11, %GPR12
	SW	72(%GPR6), %GPR13
	ENEQI	%GPR13, %GPR11, $(20)
	SW	76(%GPR6), %GPR13

finish_up_main:
	; finish
	LSOI	%GPR10,	%GPR10,	$(end / 0x10000)
	LSOI	%GPR10,	%GPR10,	$(end % 0x10000)
	JPR	%GPR10


	.org	0x3000
reset:	; reset interrupt handler
	; GPR6 is all 1 register
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)

	; GPR5 is used as ID, in trap_dump
	; also, is used as a flag that stands for the program was aborted or not
	XOR	%GPR5,	%GPR5,	%GPR5

	; GPR6 is dumping pointer
	LSOI	%GPR6,	%GPR6,	$(_start / 0x10000)
	LSOI	%GPR6,	%GPR6,	$(_start % 0x10000)

	; GPR7 is reserved now 
	XOR	%GPR7,	%GPR7,	%GPR7

	; GPR8 is reserved now
	XOR	%GPR8,	%GPR8,	%GPR8

	; GPR9 is used by system
	XOR	%GPR9,	%GPR9,	%GPR9

	; goto main (interrupt will be permitted)
	LSOI	%GPR2,	%GPR2,	$(main / 0x10000)
	LSOI	%GPR2,	%GPR2,	$(main % 0x10000)
	RETI


	.org	0x3800
trap_base:

	.org	0x3F00
end:
	NOP
	NOP
	NOP
	NOP

