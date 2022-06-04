; options passed:  -auxbase-strip -O0
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall
	.globl	_audioAddressR
	.section	.rodata
	.align 2
	.type	_audioAddressR, @object
	.size	_audioAddressR, 4
_audioAddressR:
	.long	40000004
	.globl	_audioAddressL
	.align 2
	.type	_audioAddressL, @object
	.size	_audioAddressL, 4
_audioAddressL:
	.long	40000008
	.globl	_clockAddress
.data
	.align 2
	.type	_clockAddress, @object
	.size	_clockAddress, 4
_clockAddress:
	.long	50331648
	.align 2
	.type	_indexTable, @object
	.size	_indexTable, 64
_indexTable:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	4
	.long	6
	.long	8
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	4
	.long	6
	.long	8
	.align 2
	.type	_stepsizeTable, @object
	.size	_stepsizeTable, 356
_stepsizeTable:
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	16
	.long	17
	.long	19
	.long	21
	.long	23
	.long	25
	.long	28
	.long	31
	.long	34
	.long	37
	.long	41
	.long	45
	.long	50
	.long	55
	.long	60
	.long	66
	.long	73
	.long	80
	.long	88
	.long	97
	.long	107
	.long	118
	.long	130
	.long	143
	.long	157
	.long	173
	.long	190
	.long	209
	.long	230
	.long	253
	.long	279
	.long	307
	.long	337
	.long	371
	.long	408
	.long	449
	.long	494
	.long	544
	.long	598
	.long	658
	.long	724
	.long	796
	.long	876
	.long	963
	.long	1060
	.long	1166
	.long	1282
	.long	1411
	.long	1552
	.long	1707
	.long	1878
	.long	2066
	.long	2272
	.long	2499
	.long	2749
	.long	3024
	.long	3327
	.long	3660
	.long	4026
	.long	4428
	.long	4871
	.long	5358
	.long	5894
	.long	6484
	.long	7132
	.long	7845
	.long	8630
	.long	9493
	.long	10442
	.long	11487
	.long	12635
	.long	13899
	.long	15289
	.long	16818
	.long	18500
	.long	20350
	.long	22385
	.long	24623
	.long	27086
	.long	29794
	.long	32767
.text
	.align 2
	.globl	_adpcm_decoder
	.type	_adpcm_decoder, @function
_adpcm_decoder:
;  Function 'adpcm_decoder'; 40 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	sw	-24(r4),r6
	addi	r6,r0,#0
	sw	-16(r4),r6
	addi	r6,r0,#0
	sw	-12(r4),r6
	addi	r6,r0,#0
	sw	-8(r4),r6
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	addi	r7,r0,%hi(_stepsizeTable)
	lsoi	r7,r7,%lo(_stepsizeTable)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	sw	-28(r4),r6
	jp	.L2
.L3:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,.L4
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#15
	sw	-32(r4),r6
	jp	.L6
.L4:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-12(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,-12(r4)
	nop
	arsi	r6,r6,#4
	andi	r6,r6,#15
	sw	-32(r4),r6
.L6:
	addi	r6,r0,#0
	sw	-40(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L7
	addi	r8,r0,#1
	sw	-40(r4),r8
.L7:
	lw	r6,-40(r4)
	nop
	sw	-8(r4),r6
	lw	r6,-32(r4)
	nop
	addi	r7,r0,%hi(_indexTable)
	lsoi	r7,r7,%lo(_indexTable)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r7,(r6)
	nop
	lw	r6,-16(r4)
	nop
	add	r6,r6,r7
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,.L8
	addi	r6,r0,#0
	sw	-16(r4),r6
.L8:
	lw	r6,-16(r4)
	nop
	addi	r7,r0,#88
	elt	r6,r7,r6
	brz	r6,.L10
	addi	r6,r0,#88
	sw	-16(r4),r6
.L10:
	lw	r6,-32(r4)
	nop
	andi	r6,r6,#8
	sw	-36(r4),r6
	lw	r6,-32(r4)
	nop
	andi	r6,r6,#7
	sw	-32(r4),r6
	lw	r6,-28(r4)
	nop
	arsi	r6,r6,#3
	sw	-20(r4),r6
	lw	r6,-32(r4)
	nop
	andi	r7,r6,#4
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L12
	lw	r6,-20(r4)
	nop
	lw	r7,-28(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L12:
	lw	r6,-32(r4)
	nop
	andi	r7,r6,#2
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L14
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#1
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L14:
	lw	r6,-32(r4)
	nop
	andi	r6,r6,#1
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L16
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#2
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L16:
	lw	r6,-36(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,.L18
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	sub	r6,r6,r7
	sw	-24(r4),r6
	jp	.L20
.L18:
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	add	r6,r6,r7
	sw	-24(r4),r6
.L20:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#32767
	elt	r6,r7,r6
	brz	r6,.L21
	addi	r6,r0,#32767
	sw	-24(r4),r6
	jp	.L23
.L21:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#-32768
	elt	r6,r6,r7
	brz	r6,.L23
	addi	r6,r0,#-32768
	sw	-24(r4),r6
.L23:
	lw	r6,-16(r4)
	nop
	addi	r7,r0,%hi(_stepsizeTable)
	lsoi	r7,r7,%lo(_stepsizeTable)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	andi	r6,r6,#1
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L25
	addi	r6,r0,%hi(_audioAddressL)
	lsoi	r6,r6,%lo(_audioAddressL)
	lw	r7,(r6)
	nop
	lw	r6,-24(r4)
	nop
	lsoi	r8,r0,#32768
	add	r6,r6,r8
	andi	r6,r6,#65535
	sw	(r7),r6
	jp	.L27
.L25:
	addi	r6,r0,%hi(_audioAddressR)
	lsoi	r6,r6,%lo(_audioAddressR)
	lw	r7,(r6)
	nop
	lw	r6,-24(r4)
	nop
	lsoi	r8,r0,#32768
	add	r6,r6,r8
	andi	r6,r6,#65535
	sw	(r7),r6
.L27:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#-1
	sw	12(r4),r6
.L2:
	lw	r6,12(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,.L3
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_adpcm_decoder, .-_adpcm_decoder
	.globl	_adpcmData
.data
	.align 2
	.type	_adpcmData, @object
	.size	_adpcmData, 650
_adpcmData:
	.byte	59
	.byte	9
	.byte	8
	.byte	89
	.byte	74
	.byte	27
	.byte	-118
	.byte	24
	.byte	40
	.byte	10
	.byte	63
	.byte	77
	.byte	75
	.byte	58
	.byte	17
	.byte	-109
	.byte	-95
	.byte	-116
	.byte	63
	.byte	59
	.byte	59
	.byte	44
	.byte	42
	.byte	33
	.byte	4
	.byte	-111
	.byte	-103
	.byte	-110
	.byte	-94
	.byte	63
	.byte	79
	.byte	42
	.byte	25
	.byte	26
	.byte	58
	.byte	33
	.byte	-74
	.byte	-88
	.byte	29
	.byte	75
	.byte	32
	.byte	-109
	.byte	-78
	.byte	-102
	.byte	78
	.byte	75
	.byte	57
	.byte	0
	.byte	-95
	.byte	9
	.byte	73
	.byte	25
	.byte	-117
	.byte	29
	.byte	91
	.byte	90
	.byte	60
	.byte	43
	.byte	16
	.byte	8
	.byte	44
	.byte	59
	.byte	2
	.byte	-92
	.byte	-88
	.byte	12
	.byte	42
	.byte	74
	.byte	123
	.byte	75
	.byte	-126
	.byte	-61
	.byte	-112
	.byte	75
	.byte	76
	.byte	26
	.byte	8
	.byte	17
	.byte	-111
	.byte	-102
	.byte	61
	.byte	73
	.byte	1
	.byte	-79
	.byte	10
	.byte	122
	.byte	91
	.byte	43
	.byte	24
	.byte	-127
	.byte	-88
	.byte	-115
	.byte	122
	.byte	89
	.byte	43
	.byte	45
	.byte	0
	.byte	-108
	.byte	-77
	.byte	-112
	.byte	9
	.byte	41
	.byte	43
	.byte	76
	.byte	32
	.byte	-110
	.byte	-54
	.byte	47
	.byte	75
	.byte	72
	.byte	0
	.byte	-104
	.byte	10
	.byte	40
	.byte	1
	.byte	-112
	.byte	9
	.byte	11
	.byte	12
	.byte	41
	.byte	65
	.byte	16
	.byte	-84
	.byte	11
	.byte	121
	.byte	74
	.byte	45
	.byte	27
	.byte	57
	.byte	56
	.byte	-126
	.byte	-45
	.byte	-112
	.byte	93
	.byte	77
	.byte	42
	.byte	8
	.byte	0
	.byte	41
	.byte	59
	.byte	75
	.byte	61
	.byte	61
	.byte	59
	.byte	73
	.byte	0
	.byte	-112
	.byte	-95
	.byte	-76
	.byte	-92
	.byte	-120
	.byte	46
	.byte	44
	.byte	42
	.byte	18
	.byte	3
	.byte	12
	.byte	47
	.byte	9
	.byte	-125
	.byte	-126
	.byte	62
	.byte	44
	.byte	26
	.byte	24
	.byte	59
	.byte	91
	.byte	42
	.byte	24
	.byte	41
	.byte	91
	.byte	76
	.byte	25
	.byte	8
	.byte	10
	.byte	63
	.byte	60
	.byte	73
	.byte	32
	.byte	-111
	.byte	-63
	.byte	-112
	.byte	10
	.byte	44
	.byte	75
	.byte	73
	.byte	58
	.byte	44
	.byte	27
	.byte	62
	.byte	74
	.byte	57
	.byte	-127
	.byte	-79
	.byte	-116
	.byte	123
	.byte	74
	.byte	24
	.byte	-120
	.byte	-120
	.byte	16
	.byte	32
	.byte	27
	.byte	63
	.byte	43
	.byte	33
	.byte	-91
	.byte	-78
	.byte	-79
	.byte	-104
	.byte	25
	.byte	1
	.byte	-110
	.byte	29
	.byte	93
	.byte	42
	.byte	24
	.byte	28
	.byte	77
	.byte	41
	.byte	-125
	.byte	-92
	.byte	-119
	.byte	62
	.byte	43
	.byte	42
	.byte	42
	.byte	48
	.byte	-111
	.byte	-101
	.byte	44
	.byte	82
	.byte	-107
	.byte	-86
	.byte	63
	.byte	62
	.byte	58
	.byte	59
	.byte	59
	.byte	17
	.byte	-59
	.byte	-62
	.byte	-118
	.byte	74
	.byte	40
	.byte	-127
	.byte	-96
	.byte	9
	.byte	58
	.byte	42
	.byte	27
	.byte	60
	.byte	106
	.byte	43
	.byte	45
	.byte	42
	.byte	25
	.byte	75
	.byte	107
	.byte	74
	.byte	0
	.byte	-95
	.byte	-127
	.byte	24
	.byte	26
	.byte	29
	.byte	92
	.byte	58
	.byte	24
	.byte	-112
	.byte	58
	.byte	90
	.byte	-118
	.byte	-84
	.byte	74
	.byte	80
	.byte	-109
	.byte	-16
	.byte	-112
	.byte	57
	.byte	57
	.byte	-116
	.byte	11
	.byte	64
	.byte	3
	.byte	-88
	.byte	30
	.byte	91
	.byte	59
	.byte	25
	.byte	-92
	.byte	-91
	.byte	-119
	.byte	45
	.byte	25
	.byte	17
	.byte	-119
	.byte	63
	.byte	74
	.byte	32
	.byte	8
	.byte	-102
	.byte	12
	.byte	58
	.byte	59
	.byte	59
	.byte	35
	.byte	-57
	.byte	-112
	.byte	28
	.byte	61
	.byte	24
	.byte	-110
	.byte	-128
	.byte	92
	.byte	75
	.byte	26
	.byte	0
	.byte	8
	.byte	43
	.byte	76
	.byte	41
	.byte	24
	.byte	26
	.byte	46
	.byte	58
	.byte	34
	.byte	-109
	.byte	-102
	.byte	47
	.byte	29
	.byte	42
	.byte	57
	.byte	40
	.byte	-128
	.byte	-119
	.byte	92
	.byte	59
	.byte	24
	.byte	8
	.byte	90
	.byte	89
	.byte	11
	.byte	31
	.byte	61
	.byte	57
	.byte	24
	.byte	9
	.byte	27
	.byte	41
	.byte	18
	.byte	24
	.byte	77
	.byte	60
	.byte	26
	.byte	-119
	.byte	42
	.byte	123
	.byte	75
	.byte	8
	.byte	-94
	.byte	-110
	.byte	57
	.byte	74
	.byte	45
	.byte	63
	.byte	77
	.byte	58
	.byte	16
	.byte	-127
	.byte	-104
	.byte	29
	.byte	26
	.byte	17
	.byte	-124
	.byte	-120
	.byte	63
	.byte	42
	.byte	16
	.byte	-111
	.byte	-102
	.byte	46
	.byte	75
	.byte	57
	.byte	41
	.byte	42
	.byte	41
	.byte	0
	.byte	-119
	.byte	77
	.byte	61
	.byte	41
	.byte	-127
	.byte	-128
	.byte	44
	.byte	59
	.byte	58
	.byte	58
	.byte	10
	.byte	27
	.byte	122
	.byte	90
	.byte	26
	.byte	45
	.byte	75
	.byte	57
	.byte	-126
	.byte	-94
	.byte	-101
	.byte	30
	.byte	91
	.byte	105
	.byte	1
	.byte	-62
	.byte	-87
	.byte	75
	.byte	64
	.byte	-91
	.byte	-62
	.byte	-87
	.byte	43
	.byte	106
	.byte	58
	.byte	8
	.byte	-112
	.byte	8
	.byte	40
	.byte	8
	.byte	-86
	.byte	63
	.byte	74
	.byte	16
	.byte	9
	.byte	63
	.byte	59
	.byte	1
	.byte	-110
	.byte	10
	.byte	109
	.byte	60
	.byte	59
	.byte	40
	.byte	-109
	.byte	-96
	.byte	60
	.byte	75
	.byte	0
	.byte	-110
	.byte	1
	.byte	0
	.byte	-71
	.byte	63
	.byte	77
	.byte	58
	.byte	8
	.byte	8
	.byte	2
	.byte	-109
	.byte	29
	.byte	93
	.byte	24
	.byte	-127
	.byte	10
	.byte	77
	.byte	24
	.byte	-109
	.byte	-104
	.byte	27
	.byte	18
	.byte	-89
	.byte	-112
	.byte	30
	.byte	42
	.byte	40
	.byte	0
	.byte	-119
	.byte	9
	.byte	59
	.byte	75
	.byte	61
	.byte	76
	.byte	75
	.byte	42
	.byte	24
	.byte	0
	.byte	-104
	.byte	-88
	.byte	17
	.byte	120
	.byte	44
	.byte	45
	.byte	42
	.byte	32
	.byte	-126
	.byte	-119
	.byte	46
	.byte	44
	.byte	25
	.byte	58
	.byte	74
	.byte	26
	.byte	30
	.byte	59
	.byte	48
	.byte	-126
	.byte	11
	.byte	122
	.byte	40
	.byte	-79
	.byte	-56
	.byte	58
	.byte	121
	.byte	26
	.byte	10
	.byte	43
	.byte	122
	.byte	43
	.byte	26
	.byte	0
	.byte	74
	.byte	58
	.byte	-109
	.byte	-60
	.byte	9
	.byte	63
	.byte	28
	.byte	59
	.byte	57
	.byte	0
	.byte	-128
	.byte	108
	.byte	91
	.byte	25
	.byte	-112
	.byte	-128
	.byte	40
	.byte	56
	.byte	9
	.byte	-87
	.byte	-78
	.byte	24
	.byte	124
	.byte	107
	.byte	25
	.byte	0
	.byte	44
	.byte	61
	.byte	24
	.byte	24
	.byte	59
	.byte	60
	.byte	61
	.byte	75
	.byte	58
	.byte	0
	.byte	8
	.byte	62
	.byte	44
	.byte	43
	.byte	75
	.byte	90
	.byte	24
	.byte	-109
	.byte	-61
	.byte	-79
	.byte	29
	.byte	108
	.byte	58
	.byte	24
	.byte	-110
	.byte	-120
	.byte	44
	.byte	42
	.byte	0
	.byte	8
	.byte	44
	.byte	26
	.byte	24
	.byte	41
	.byte	91
	.byte	41
	.byte	-90
	.byte	-60
	.byte	-95
	.byte	27
	.byte	77
	.byte	42
	.byte	-110
	.byte	-76
	.byte	-111
	.byte	41
	.byte	58
	.byte	30
	.byte	63
	.byte	59
	.byte	58
	.byte	41
	.byte	9
	.byte	16
	.byte	-108
	.byte	-95
	.byte	-118
	.byte	41
	.byte	2
	.byte	-119
	.byte	59
	.byte	73
	.byte	26
	.byte	31
	.byte	31
	.byte	43
	.byte	91
	.byte	91
	.byte	58
	.byte	24
	.byte	-128
	.byte	9
	.byte	43
	.byte	1
	.byte	-110
	.byte	91
	.byte	123
	.byte	24
	.byte	-78
	.byte	-56
	.byte	62
	.byte	72
	.byte	3
	.byte	-78
	.byte	-115
	.byte	61
	.byte	40
	.byte	-128
	.byte	-112
	.byte	-128
	.byte	17
	.byte	27
	.byte	94
	.byte	74
	.byte	40
	.byte	-112
	.byte	-87
	.byte	24
	.byte	35
	.byte	-95
	.byte	-113
	.byte	94
	.byte	57
	.byte	1
	.byte	-77
	.section	.rodata
	.align 2
.LC0:
	.string	"\r\nADPCM Decode: Start"
	.align 2
.LC1:
	.string	"\r\nADPCM Decode: Decoding Done."
	.align 2
.LC2:
	.string	"\r\nRequired time for decoding: "
	.align 2
.LC3:
	.string	" cycles\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 40 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-80	; alloc local storage
	addi	r6,r0,#1300
	sw	-8(r4),r6
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_t_print
	addi	r6,r0,%hi(_clockAddress)
	lsoi	r6,r6,%lo(_clockAddress)
	lw	r6,(r6)
	nop
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	addi	r8,r0,%hi(_adpcmData)
	lsoi	r8,r8,%lo(_adpcmData)
	lw	r9,-8(r4)
	nop
	jpl	_adpcm_decoder
	addi	r6,r0,%hi(_clockAddress)
	lsoi	r6,r6,%lo(_clockAddress)
	lw	r6,(r6)
	nop
	lw	r7,(r6)
	nop
	lw	r6,-4(r4)
	nop
	sub	r6,r7,r6
	sw	-4(r4),r6
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_t_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_t_print
	addi	r6,r4,#-40
	lw	r8,-4(r4)
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-40
	add	r8,r0,r6
	jpl	_t_print
	addi	r8,r0,%hi(.LC3)
	lsoi	r8,r8,%lo(.LC3)
	jpl	_t_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
