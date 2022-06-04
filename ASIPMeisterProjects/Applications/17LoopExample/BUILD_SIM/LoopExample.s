	.section	.text
	.addressing	Word

_main:	
	LW	R27, _C(R0)
	ADDI	R21, R0, $(10)
	ADDI	R27, R27, $(5)

_loop:	
	LW	R26, _B(R24)
	SUBI	R21, R21, $(1)
	ADD	R26, R26, R27
	SW	_A(R24), R26
	ADDI	R24, R24, $4
	BRNZ	R21, _loop
	NOP


	.section	.data
	.addressing	Word

_A:	
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0

_B:	
	.data.32	1
	.data.32	2
	.data.32	3
	.data.32	4
	.data.32	5
	.data.32	6
	.data.32	7
	.data.32	8
	.data.32	9
	.data.32	10

_C:	
	.data.32	48

