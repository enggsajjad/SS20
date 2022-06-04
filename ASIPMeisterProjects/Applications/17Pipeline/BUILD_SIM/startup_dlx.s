	.section	.text
	.addressing	Word
	
	XOR	R4, R4, R4
	XOR	R5, R5, R5
	XOR	R6, R6, R6
	ADDI	R4, R0, $(0xFFFFC / 0x10000)
	ADDI	R5, R0, $(0xFFFFC / 0x10000)

	LSOI	R4, R4, $(0xFFFFC % 0x10000)
	LSOI	R5, R5, $(0xFFFFC % 0x10000)

	SW	-4(R5), R4
	SW	-8(R5), R3
	ADDI	R5, R4, $(-8)

	JPL	_main	
	SW	0(R5), R21
	JPL	_exit