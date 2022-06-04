.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
	ADDI	R21, R0, #15
	ADDI	R22, R0, #9

	ELT	R23, R21, R22
	BRZ	R23, _labL_3_Branch_1
;FIRST NOP
	;NOP
	ADD	R24, R0, R22
	JP	_labL_3_Branch_2
;SECOND NOP
	;NOP

_labL_3_Branch_1:
	ADD	R24, R0, R21

_labL_3_Branch_2:
	NOP	; ... compute anything with the result in r4 ...



	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"


