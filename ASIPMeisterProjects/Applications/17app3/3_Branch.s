	.section	.text
	.addressing	Word

_main:	
	ADDI	R21, R0, $(5)
	ADDI	R22, R0, $(9)

	ELT	R23, R21, R22
	BRZ	R23, _label1
	NOP
	ADD	R24, R0, R22
	JP	_label2
	NOP

_label1:
	ADD	R24, R0, R21

_label2:
	NOP	; ... compute anything with the result in r4 ...

	TRAP #0