	.section	.text
	.addressing	Word

_main:	
	ADDI	R21, R0, $(5)
	ADDI	R22, R0, $(9)

	ELT	R23, R21, R22
	BRZ	R23, $(_labeL_3_Branch_1)
	NOP
	ADD	R24, R0, R22
	JP	$(_labeL_3_Branch_2)
	NOP

_labeL_3_Branch_1:
	ADD	R24, R0, R21

_labeL_3_Branch_2:
	NOP	; ... compute anything with the result in r4 ...

	TRAP #0