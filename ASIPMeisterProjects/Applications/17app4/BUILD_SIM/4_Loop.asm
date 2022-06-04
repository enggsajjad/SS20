	.section	.text
	.addressing	Word

_main:	
	ADDI	R21, R0, $(5)
	ADDI	R22, R0, $(9)
	ADD	R23, R0, R0

_loop:	
	ANDI	R24, R21, $(1)
	BRZ	R24, $(_skipAdd)
	NOP
	ADD	R23, R23, R22

_skipAdd:
	ARSI	R21, R21, $(1)
	LLSI	R22, R22, $(1)
	BRNZ	R21, _loop
	NOP
	
	TRAP #0