	.section	.text
	.addressing	Word

_main:	
	ADDI	R21, R0, $(5)
	ADDI	R22, R0, $(9)

	OR	R23, R21, R22
	AND	R24, R21, R22
	SUB	R25, R21, R22
	MUL	R26, R21, R22
	LLS	R27, R21, R22
	TRAP #0