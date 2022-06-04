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
_mydata:
	.data.32	0x30313233
	.data.8		0x41
	.data.8		0x42
	.data.16	0x4344
_start:


	.section	.text
	.org	0x00000000

main:

	ADDI	%GPR11,	%GPR0, $(84)
	ADDI	%GPR12,	%GPR0, $(101)
	ADDI	%GPR13,	%GPR0, $(115)
	ADDI	%GPR14,	%GPR0, $(116)
	ADDI	%GPR15,	%GPR0, $(105)
	ADDI	%GPR16,	%GPR0, $(110)
	ADDI	%GPR17,	%GPR0, $(103)
	ADDI	%GPR18,	%GPR0, $(46)
	ADDI	%GPR19,	%GPR0, $(46)
	ADDI	%GPR20,	%GPR0, $(46)
	ADDI	%GPR21,	%GPR0, $(13)
	ADDI	%GPR22,	%GPR0, $(10)

	SB	8(%GPR6), %GPR11
	SB	9(%GPR6), %GPR12
	SB	10(%GPR6), %GPR13
	SB	11(%GPR6), %GPR14
	SB	12(%GPR6), %GPR15
	SB	13(%GPR6), %GPR16
	SB	14(%GPR6), %GPR17
	SB	15(%GPR6), %GPR18
	SB	16(%GPR6), %GPR19
	SB	17(%GPR6), %GPR20
	SB	18(%GPR6), %GPR21
	SB	19(%GPR6), %GPR22


	ADDI	%GPR23,	%GPR0,	$(256)
	LSOI	%GPR23,	%GPR23,	$(0)

	
	LB	%GPR11,  8(%GPR6)
	LB	%GPR12,  9(%GPR6)
	LB	%GPR13,  10(%GPR6)
	LB	%GPR14,  11(%GPR6)
	LB	%GPR15,  12(%GPR6)
	LB	%GPR16,  13(%GPR6)
	LB	%GPR17,  14(%GPR6)
	LB	%GPR18,  15(%GPR6)
	LB	%GPR19,  16(%GPR6)
	LB	%GPR20,  17(%GPR6)
	LB	%GPR21,  18(%GPR6)
	LB	%GPR22,  19(%GPR6)

	SB	0(%GPR23), %GPR11
	SB	0(%GPR23), %GPR12
	SB	0(%GPR23), %GPR13
	SB	0(%GPR23), %GPR14
	SB	0(%GPR23), %GPR15
	SB	0(%GPR23), %GPR16
	SB	0(%GPR23), %GPR17
	SB	0(%GPR23), %GPR18
	SB	0(%GPR23), %GPR19
	SB	0(%GPR23), %GPR20
	SB	0(%GPR23), %GPR21
	SB	0(%GPR23), %GPR22
	NOP

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
	LSOI	%GPR6,	%GPR6,	$(_mydata / 0x10000)
	LSOI	%GPR6,	%GPR6,	$(_mydata % 0x10000)

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

