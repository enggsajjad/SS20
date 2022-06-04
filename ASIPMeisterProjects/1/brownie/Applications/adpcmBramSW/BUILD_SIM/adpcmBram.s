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
	jp	L_adpcm_2
L_adpcm_3:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_adpcm_4
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#15
	sw	-32(r4),r6
	jp	L_adpcm_6
L_adpcm_4:
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
L_adpcm_6:
	addi	r6,r0,#0
	sw	-40(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_adpcm_7
	addi	r8,r0,#1
	sw	-40(r4),r8
L_adpcm_7:
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
	brz	r6,L_adpcm_8
	addi	r6,r0,#0
	sw	-16(r4),r6
L_adpcm_8:
	lw	r6,-16(r4)
	nop
	addi	r7,r0,#88
	elt	r6,r7,r6
	brz	r6,L_adpcm_10
	addi	r6,r0,#88
	sw	-16(r4),r6
L_adpcm_10:
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
	brnz	r6,L_adpcm_12
	lw	r6,-20(r4)
	nop
	lw	r7,-28(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
L_adpcm_12:
	lw	r6,-32(r4)
	nop
	andi	r7,r6,#2
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,L_adpcm_14
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#1
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
L_adpcm_14:
	lw	r6,-32(r4)
	nop
	andi	r6,r6,#1
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,L_adpcm_16
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#2
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
L_adpcm_16:
	lw	r6,-36(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_adpcm_18
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	sub	r6,r6,r7
	sw	-24(r4),r6
	jp	L_adpcm_20
L_adpcm_18:
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	add	r6,r6,r7
	sw	-24(r4),r6
L_adpcm_20:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#32767
	elt	r6,r7,r6
	brz	r6,L_adpcm_21
	addi	r6,r0,#32767
	sw	-24(r4),r6
	jp	L_adpcm_23
L_adpcm_21:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#-32768
	elt	r6,r6,r7
	brz	r6,L_adpcm_23
	addi	r6,r0,#-32768
	sw	-24(r4),r6
L_adpcm_23:
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
	brnz	r6,L_adpcm_25
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
	jp	L_adpcm_27
L_adpcm_25:
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
L_adpcm_27:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#-1
	sw	12(r4),r6
L_adpcm_2:
	lw	r6,12(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,L_adpcm_3
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
LC_adpcm_0:
	.string	"\r\nADPCM Decode: Start"
	.align 2
LC_adpcm_1:
	.string	"\r\nADPCM Decode: Decoding Done."
	.align 2
LC_adpcm_2:
	.string	"\r\nRequired time for decoding: "
	.align 2
LC_adpcm_3:
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
	addi	r8,r0,%hi(LC_adpcm_0)
	lsoi	r8,r8,%lo(LC_adpcm_0)
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
	addi	r8,r0,%hi(LC_adpcm_1)
	lsoi	r8,r8,%lo(LC_adpcm_1)
	jpl	_t_print
	addi	r8,r0,%hi(LC_adpcm_2)
	lsoi	r8,r8,%lo(LC_adpcm_2)
	jpl	_t_print
	addi	r6,r4,#-40
	lw	r8,-4(r4)
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-40
	add	r8,r0,r6
	jpl	_t_print
	addi	r8,r0,%hi(LC_adpcm_3)
	lsoi	r8,r8,%lo(LC_adpcm_3)
	jpl	_t_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
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
.text
	.align 2
	.globl	_t_print
	.type	_t_print, @function
_t_print:
;  Function 't_print'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	jp	L_lib_lcd_dlxsim_2
L_lib_lcd_dlxsim_3:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_lib_lcd_dlxsim_2:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_dlxsim_3
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_print, .-_t_print
	.align 2
	.globl	_t_printInt
	.type	_t_printInt, @function
_t_printInt:
;  Function 't_printInt'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	8(r4),r8
	addi	r6,r4,#-20
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_t_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printInt, .-_t_printInt
	.section	.rodata
	.align 2
LC_lib_lcd_dlxsim_0:
	.string	"0x"
.text
	.align 2
	.globl	_t_printHex
	.type	_t_printHex, @function
_t_printHex:
;  Function 't_printHex'; 12 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-52	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r4,#-10
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	lw	r10,12(r4)
	nop
	jpl	_intToHexStr
	addi	r8,r0,%hi(LC_lib_lcd_dlxsim_0)
	lsoi	r8,r8,%lo(LC_lib_lcd_dlxsim_0)
	jpl	_t_print
	addi	r6,r4,#-10
	add	r8,r0,r6
	jpl	_t_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printHex, .-_t_printHex
	.align 2
	.globl	_checkbuffer
	.type	_checkbuffer, @function
_checkbuffer:
;  Function 'checkbuffer'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_checkbuffer, .-_checkbuffer
	.align 2
	.globl	_getbytes
	.type	_getbytes, @function
_getbytes:
;  Function 'getbytes'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_getbytes, .-_getbytes
	.align 2
	.globl	_sendcommand
	.type	_sendcommand, @function
_sendcommand:
;  Function 'sendcommand'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sb	8(r4),r8
	sb	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_sendcommand, .-_sendcommand
	.align 2
	.globl	_t_cursor
	.type	_t_cursor, @function
_t_cursor:
;  Function 't_cursor'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_cursor, .-_t_cursor
	.align 2
	.globl	_t_enable
	.type	_t_enable, @function
_t_enable:
;  Function 't_enable'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_enable, .-_t_enable
	.align 2
	.globl	_g_print
	.type	_g_print, @function
_g_print:
;  Function 'g_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_print, .-_g_print
	.align 2
	.globl	_g_drawrect
	.type	_g_drawrect, @function
_g_drawrect:
;  Function 'g_drawrect'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_drawrect, .-_g_drawrect
	.align 2
	.globl	_g_drawline
	.type	_g_drawline, @function
_g_drawline:
;  Function 'g_drawline'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_drawline, .-_g_drawline
	.align 2
	.globl	_g_makebar
	.type	_g_makebar, @function
_g_makebar:
;  Function 'g_makebar'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	sw	36(r4),r15
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makebar, .-_g_makebar
	.align 2
	.globl	_g_setbar
	.type	_g_setbar, @function
_g_setbar:
;  Function 'g_setbar'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_setbar, .-_g_setbar
	.align 2
	.globl	_g_makeswitch
	.type	_g_makeswitch, @function
_g_makeswitch:
;  Function 'g_makeswitch'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makeswitch, .-_g_makeswitch
	.align 2
	.globl	_g_makemenubutton
	.type	_g_makemenubutton, @function
_g_makemenubutton:
;  Function 'g_makemenubutton'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	sw	36(r4),r15
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makemenubutton, .-_g_makemenubutton
	.align 2
	.globl	_g_makeradiogroup
	.type	_g_makeradiogroup, @function
_g_makeradiogroup:
;  Function 'g_makeradiogroup'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makeradiogroup, .-_g_makeradiogroup
	.align 2
	.globl	_d_clear
	.type	_d_clear, @function
_d_clear:
;  Function 'd_clear'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_d_clear, .-_d_clear
	.ident	"GCC: (GNU) 4.2.2"
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
.text
	.align 2
	.globl	_storeByte
	.type	_storeByte, @function
_storeByte:
;  Function 'storeByte'; 20 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-28	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#-4
	sw	-20(r4),r6
	lw	r6,8(r4)
	nop
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	lw	r6,-20(r4)
	nop
	and	r6,r7,r6
	sw	-12(r4),r6
	lw	r6,-12(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r6,-16(r4)
	nop
	sub	r6,r0,r6
	subi	r6,r6,#1
	andi	r6,r6,#3
	llsi	r7,r6,#3
	addi	r6,r0,#255
	lls	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,12(r4)
	nop
	lls	r6,r6,r7
	sw	12(r4),r6
	lw	r6,-4(r4)
	nop
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r6,-8(r4)
	nop
	and	r6,r6,r7
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	lw	r6,12(r4)
	nop
	or	r6,r7,r6
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_storeByte, .-_storeByte
	.align 2
	.globl	_storeShort
	.type	_storeShort, @function
_storeShort:
;  Function 'storeShort'; 24 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-32	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#-4
	sw	-20(r4),r6
	lw	r6,8(r4)
	nop
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	lw	r6,-20(r4)
	nop
	and	r6,r7,r6
	sw	-12(r4),r6
	lw	r6,-12(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r7,r6,#1
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_loadStoreByte_4
	addi	r6,r0,#-1
	lsoi	r6,r6,#0
	sw	-24(r4),r6
	jp	L_loadStoreByte_6
L_loadStoreByte_4:
	lsoi	r6,r0,#65535
	sw	-24(r4),r6
L_loadStoreByte_6:
	lw	r6,-24(r4)
	nop
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r7,r6,#2
	addi	r6,r0,%hi(_temp)
	lsoi	r6,r6,%lo(_temp)
	sw	(r6),r7
	addi	r6,r0,%hi(_temp)
	lsoi	r6,r6,%lo(_temp)
	lw	r6,(r6)
	nop
	arsi	r6,r6,#1
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#4
	lw	r6,12(r4)
	nop
	ars	r6,r6,r7
	sw	12(r4),r6
	lw	r6,-4(r4)
	nop
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r6,-8(r4)
	nop
	and	r6,r6,r7
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	lw	r6,12(r4)
	nop
	or	r6,r7,r6
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_storeShort, .-_storeShort
	.comm	_temp,4,4
	.ident	"GCC: (GNU) 4.2.2"
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
.text
	.align 2
	.globl	_intToStr
	.type	_intToStr, @function
_intToStr:
;  Function 'intToStr'; 40 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-80	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	sw	-8(r4),r6
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r7,8(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,L_string_2
	lw	r6,8(r4)
	nop
	sub	r6,r0,r6
	sw	8(r4),r6
	lw	r8,12(r4)
	nop
	addi	r9,r0,#45
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	jp	L_string_6
L_string_2:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_6
	lw	r8,12(r4)
	nop
	addi	r9,r0,#48
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	jp	L_string_6
L_string_7:
	lw	r6,-8(r4)
	nop
	addi	r7,r4,#-40
	add	r7,r7,r6
	lw	r8,8(r4)
	nop
	addi	r6,r0,#10
	mod	r6,r8,r6
	addi	r6,r6,#48
	add	r8,r0,r7
	add	r9,r0,r6
	jpl	_storeByte
	lw	r7,8(r4)
	nop
	addi	r6,r0,#10
	div	r6,r7,r6
	sw	8(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
L_string_6:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_7
	jp	L_string_9
L_string_10:
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#-1
	sw	-8(r4),r6
	lw	r6,-4(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r8,r7,r6
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-40
	add	r6,r6,r7
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
L_string_9:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,L_string_10
	lw	r6,-4(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToStr, .-_intToStr
	.align 2
	.globl	_intToHexStr
	.type	_intToHexStr, @function
_intToHexStr:
;  Function 'intToHexStr'; 24 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-64	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-12(r4),r6
	jp	L_string_14
L_string_15:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_16
	lw	r6,16(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_18
	lw	r6,-12(r4)
	nop
	lw	r7,16(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_18
L_string_16:
	lw	r6,8(r4)
	nop
	andi	r6,r6,#15
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#9
	elt	r6,r6,r7
	brnz	r6,L_string_20
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lw	r7,-4(r4)
	nop
	addi	r7,r7,#48
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_storeByte
	jp	L_string_22
L_string_20:
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lw	r7,-4(r4)
	nop
	addi	r7,r7,#55
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_storeByte
L_string_22:
	lw	r6,8(r4)
	nop
	arsi	r6,r6,#4
	sw	8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#1
	sw	-12(r4),r6
L_string_14:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#7
	elt	r6,r7,r6
	brz	r6,L_string_15
L_string_18:
	addi	r6,r0,#0
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	jp	L_string_23
L_string_24:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r8,r7,r6
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
L_string_23:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r6,r7
	brz	r6,L_string_24
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToHexStr, .-_intToHexStr
	.align 2
	.globl	_strlen
	.type	_strlen, @function
_strlen:
;  Function 'strlen'; 8 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-16	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	L_string_28
L_string_29:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
L_string_28:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	sb	-5(r4),r6
	lb	r7,-5(r4)
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,L_string_30
	addi	r6,r0,#0x1
	sb	-5(r4),r6
L_string_30:
	lb	r7,-5(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_string_29
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strlen, .-_strlen
	.align 2
	.globl	_strcat
	.type	_strcat, @function
_strcat:
;  Function 'strcat'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	jp	L_string_34
L_string_35:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_string_34:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_35
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_37
L_string_38:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-4(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_37:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_38
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcat, .-_strcat
	.align 2
	.globl	_strncat
	.type	_strncat, @function
_strncat:
;  Function 'strncat'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	jp	L_string_42
L_string_43:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_string_42:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_43
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_45
L_string_46:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-8(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_45:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_47
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_46
L_string_47:
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncat, .-_strncat
	.align 2
	.globl	_strcpy
	.type	_strcpy, @function
_strcpy:
;  Function 'strcpy'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_51
L_string_52:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-4(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_51:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_52
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcpy, .-_strcpy
	.align 2
	.globl	_strncpy
	.type	_strncpy, @function
_strncpy:
;  Function 'strncpy'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_56
L_string_57:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-8(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_56:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_58
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_57
L_string_58:
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncpy, .-_strncpy
	.align 2
	.globl	_strcmp
	.type	_strcmp, @function
_strcmp:
;  Function 'strcmp'; 12 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-20	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_62
L_string_63:
	lw	r6,-8(r4)
	nop
	lw	r7,-4(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_64
	addi	r6,r0,#-1
	sw	-12(r4),r6
	jp	L_string_66
L_string_64:
	lw	r6,-8(r4)
	nop
	lw	r7,-4(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_string_67
	addi	r6,r0,#1
	sw	-12(r4),r6
	jp	L_string_66
L_string_67:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_62:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_69
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_63
L_string_69:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_71
	addi	r6,r0,#1
	sw	-12(r4),r6
	jp	L_string_66
L_string_71:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_73
	addi	r6,r0,#-1
	sw	-12(r4),r6
	jp	L_string_66
L_string_73:
	addi	r6,r0,#0
	sw	-12(r4),r6
L_string_66:
	lw	r6,-12(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcmp, .-_strcmp
	.align 2
	.globl	_strncmp
	.type	_strncmp, @function
_strncmp:
;  Function 'strncmp'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
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
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_77
L_string_78:
	lw	r6,-12(r4)
	nop
	lw	r7,-8(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_79
	addi	r6,r0,#-1
	sw	-16(r4),r6
	jp	L_string_81
L_string_79:
	lw	r6,-12(r4)
	nop
	lw	r7,-8(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_string_77
	addi	r6,r0,#1
	sw	-16(r4),r6
	jp	L_string_81
L_string_77:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_83
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_83
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_78
L_string_83:
	lw	r6,-4(r4)
	nop
	lw	r7,16(r4)
	nop
	eneq	r6,r6,r7
	brnz	r6,L_string_86
	addi	r6,r0,#0
	sw	-16(r4),r6
	jp	L_string_81
L_string_86:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_88
	addi	r6,r0,#1
	sw	-16(r4),r6
	jp	L_string_81
L_string_88:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_90
	addi	r6,r0,#-1
	sw	-16(r4),r6
	jp	L_string_81
L_string_90:
	addi	r6,r0,#0
	sw	-16(r4),r6
L_string_81:
	lw	r6,-16(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncmp, .-_strncmp
	.align 2
	.globl	_tolower
	.type	_tolower, @function
_tolower:
;  Function 'tolower'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#64
	elt	r6,r7,r6
	brz	r6,L_string_94
	lw	r6,8(r4)
	nop
	addi	r7,r0,#90
	elt	r6,r7,r6
	brnz	r6,L_string_94
	lw	r6,8(r4)
	nop
	addi	r6,r6,#32
	sw	-4(r4),r6
	jp	L_string_97
L_string_94:
	lw	r6,8(r4)
	nop
	sw	-4(r4),r6
L_string_97:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_tolower, .-_tolower
	.align 2
	.globl	_toupper
	.type	_toupper, @function
_toupper:
;  Function 'toupper'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#96
	elt	r6,r7,r6
	brz	r6,L_string_100
	lw	r6,8(r4)
	nop
	addi	r7,r0,#122
	elt	r6,r7,r6
	brnz	r6,L_string_100
	lw	r6,8(r4)
	nop
	addi	r6,r6,#-32
	sw	-4(r4),r6
	jp	L_string_103
L_string_100:
	lw	r6,8(r4)
	nop
	sw	-4(r4),r6
L_string_103:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_toupper, .-_toupper
	.align 2
	.globl	_isdigit
	.type	_isdigit, @function
_isdigit:
;  Function 'isdigit'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#47
	elt	r6,r7,r6
	brz	r6,L_string_106
	lw	r6,8(r4)
	nop
	addi	r7,r0,#57
	elt	r6,r7,r6
	brnz	r6,L_string_106
	addi	r6,r0,#1
	sw	-4(r4),r6
	jp	L_string_109
L_string_106:
	addi	r6,r0,#0
	sw	-4(r4),r6
L_string_109:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_isdigit, .-_isdigit
	.ident	"GCC: (GNU) 4.2.2"