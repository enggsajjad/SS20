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
	.data.32	0x54657374
	.data.8		0x69
	.data.8		0x6E
	.data.16	0x672E
	.data.32	0x2E2E0D0A
_start:


	.section	.text
	.org	0x00000000

main:

	ADDI	%GPR23,	%GPR0,	$(256)
	LSOI	%GPR23,	%GPR23,	$(0)

	
	LB	%GPR11,  0(%GPR6)
	LB	%GPR12,  1(%GPR6)
	LB	%GPR13,  2(%GPR6)
	LB	%GPR14,  3(%GPR6)
	LB	%GPR15,  4(%GPR6)
	LB	%GPR16,  5(%GPR6)
	LB	%GPR17,  6(%GPR6)
	LB	%GPR18,  7(%GPR6)
	LB	%GPR19,  8(%GPR6)
	LB	%GPR20,  9(%GPR6)
	LB	%GPR21,  10(%GPR6)
	LB	%GPR22,  11(%GPR6)

	SW	0(%GPR23), %GPR11
	SW	0(%GPR23), %GPR12
	SW	0(%GPR23), %GPR13
	SW	0(%GPR23), %GPR14
	SW	0(%GPR23), %GPR15
	SW	0(%GPR23), %GPR16
	SW	0(%GPR23), %GPR17
	SW	0(%GPR23), %GPR18
	SW	0(%GPR23), %GPR19
	SW	0(%GPR23), %GPR20
	SW	0(%GPR23), %GPR21
	SW	0(%GPR23), %GPR22
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

