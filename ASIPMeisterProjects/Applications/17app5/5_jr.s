	.section	.text
	.addressing	Word

_main:	ADDI	R21, R0, $(5)
	ADDI	R22, R0, $(9)
	ADDI	R23, R0, $(2)	; 0 <= r3 <= 5

	ADDI	R24, R0,  $(_label1 / 0x10000)
	LSOI	R24, R24, $(_label1 % 0x10000)

	LLSI	R23, R23, $(3)
	ADD	R24, R24, R23
	JPR	R24
	NOP


_label1:
	JP	_mark0
	NOP
	JP	_mark1
	NOP
	JP	_mark2
	NOP
	JP	_mark3
	NOP
	JP	_mark4
	NOP
	JP	_mark5
	NOP

_mark0:	
	AND	R25, R21, R22
	JP	_label2
	NOP
	
_mark1:	
	OR	R25, R21, R22
	JP	_label2
	NOP
	
_mark2:	
	XOR	R25, R21, R22
	JP	_label2
	NOP
	
_mark3:	
	ADD	R25, R21, R22
	JP	_label2
	NOP
	
_mark4:	
	SUB	R25, R21, R22
	JP	_label2
	NOP
	
_mark5:	
	ELT	R25, R21, R22
	JP	_label2
	NOP

_label2:

	TRAP #0