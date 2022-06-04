; options passed:  -iprefix -auxbase-strip -O0
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall
	.globl	_uartAddress
	.section	.rodata
	.align 2
	.type	_uartAddress, @object
	.size	_uartAddress, 4
_uartAddress:
	.long	16777216
	.globl	_audioAddressR
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
	brz	r6,.L4
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
	jp	.L8
.L4:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L8
	lw	r8,12(r4)
	nop
	addi	r9,r0,#48
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	jp	.L8
.L9:
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
.L8:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L9
	jp	.L11
.L12:
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
.L11:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,.L12
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
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	jp	.L16
.L17:
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
.L16:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L17
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_print, .-_u_print
.data
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
	jp	.L21
.L22:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,.L23
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#15
	sw	-32(r4),r6
	jp	.L25
.L23:
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
.L25:
	addi	r6,r0,#0
	sw	-40(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L26
	addi	r8,r0,#1
	sw	-40(r4),r8
.L26:
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
	brz	r6,.L27
	addi	r6,r0,#0
	sw	-16(r4),r6
.L27:
	lw	r6,-16(r4)
	nop
	addi	r7,r0,#88
	elt	r6,r7,r6
	brz	r6,.L29
	addi	r6,r0,#88
	sw	-16(r4),r6
.L29:
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
	brnz	r6,.L31
	lw	r6,-20(r4)
	nop
	lw	r7,-28(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L31:
	lw	r6,-32(r4)
	nop
	andi	r7,r6,#2
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L33
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#1
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L33:
	lw	r6,-32(r4)
	nop
	andi	r6,r6,#1
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L35
	lw	r6,-28(r4)
	nop
	arsi	r7,r6,#2
	lw	r6,-20(r4)
	nop
	add	r6,r6,r7
	sw	-20(r4),r6
.L35:
	lw	r6,-36(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,.L37
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	sub	r6,r6,r7
	sw	-24(r4),r6
	jp	.L39
.L37:
	lw	r6,-24(r4)
	nop
	lw	r7,-20(r4)
	nop
	add	r6,r6,r7
	sw	-24(r4),r6
.L39:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#32767
	elt	r6,r7,r6
	brz	r6,.L40
	addi	r6,r0,#32767
	sw	-24(r4),r6
	jp	.L42
.L40:
	lw	r6,-24(r4)
	nop
	addi	r7,r0,#-32768
	elt	r6,r6,r7
	brz	r6,.L42
	addi	r6,r0,#-32768
	sw	-24(r4),r6
.L42:
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
	brnz	r6,.L44
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
	jp	.L46
.L44:
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
.L46:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#-1
	sw	12(r4),r6
.L21:
	lw	r6,12(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,.L22
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
	.size	_adpcmData, 10
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
	.section	.rodata
	.align 2
.LC0:
	.string	" cycles\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	addi	r6,r0,#20
	sw	-4(r4),r6
	addi	r8,r0,%hi(_adpcmData)
	lsoi	r8,r8,%lo(_adpcmData)
	lw	r9,-4(r4)
	nop
	jpl	_adpcm_decoder
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
