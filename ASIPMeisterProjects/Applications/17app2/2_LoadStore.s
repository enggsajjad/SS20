	.section	.text
	.addressing	Word

_main:	
	ADDI	R21, R0,  $(_data / 0x10000)
	LSOI	R21, R21, $(_data % 0x10000)


	LW	R22, 0(R21)
	LW	R23, 4(R21)

	ADD	R24, R22, R23

	ADDI	R25, R0,  $(_result / 0x10000)
	LSOI	R25, R25, $(_result % 0x10000)

	SW	0(R25), R24

	TRAP #0

	.section	.data
	.addressing	Word


_data:	
	.data.32	42
	.data.32	23
_result:
	.data.32	0
