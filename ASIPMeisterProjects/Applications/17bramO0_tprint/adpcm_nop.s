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
	.globl	_clockAddress
.data
	.align 2
	.type	_clockAddress, @object
	.size	_clockAddress, 4
_clockAddress:
	.long	50331648
	.globl	_lcdAddress
	.section	.rodata
	.align 2
	.type	_lcdAddress, @object
	.size	_lcdAddress, 4
_lcdAddress:
	.long	33554432
.text
	.align 2
	.globl	_storeByte
	.type	_storeByte, @function
_storeByte:
;  Function 'storeByte'; 20 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-28	; alloc local storage
	sw	8(r4),r8
	nop
	sw	12(r4),r9
	nop
	addi	r6,r0,#-4
	sw	-20(r4),r6
	nop
	lw	r6,8(r4)
	nop
	nop
	sw	-16(r4),r6
	nop
	lw	r7,-16(r4)
	nop
	nop
	lw	r6,-20(r4)
	nop
	nop
	and	r6,r7,r6
	sw	-12(r4),r6
	nop
	lw	r6,-12(r4)
	nop
	nop
	lw	r6,(r6)
	nop
	nop
	sw	-8(r4),r6
	nop
	lw	r6,-16(r4)
	nop
	nop
	sub	r6,r0,r6
	subi	r6,r6,#1
	andi	r6,r6,#3
	llsi	r7,r6,#3
	addi	r6,r0,#255
	lls	r6,r6,r7
	sw	-4(r4),r6
	nop
	lw	r6,-16(r4)
	nop
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,12(r4)
	nop
	nop
	lls	r6,r6,r7
	sw	12(r4),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r6,-8(r4)
	nop
	nop
	and	r6,r6,r7
	sw	-8(r4),r6
	nop
	lw	r7,-8(r4)
	nop
	nop
	lw	r6,12(r4)
	nop
	nop
	or	r6,r7,r6
	sw	-8(r4),r6
	nop
	lw	r7,-12(r4)
	nop
	nop
	lw	r6,-8(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r6,-8(r4)
	nop
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_storeByte, .-_storeByte
	.align 2
	.globl	_strlen
	.type	_strlen, @function
_strlen:
;  Function 'strlen'; 8 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-16	; alloc local storage
	sw	8(r4),r8
	nop
	addi	r6,r0,#0
	sw	-4(r4),r6
	nop
	jp	.L4
.L5:
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
.L4:
	lw	r6,8(r4)
	nop
	nop
	lb	r6,(r6)
	nop
	nop
	sb	-5(r4),r6
	nop
	lb	r7,-5(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,.L6
	addi	r6,r0,#0x1
	sb	-5(r4),r6
	nop
.L6:
	lb	r7,-5(r4)
	nop
	nop
	lw	r6,8(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L5
	lw	r6,-4(r4)
	nop
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_strlen, .-_strlen
	.align 2
	.globl	_intToStr
	.type	_intToStr, @function
_intToStr:
;  Function 'intToStr'; 40 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-80	; alloc local storage
	sw	8(r4),r8
	nop
	sw	12(r4),r9
	nop
	addi	r6,r0,#0
	sw	-8(r4),r6
	nop
	addi	r6,r0,#0
	sw	-4(r4),r6
	nop
	lw	r7,8(r4)
	nop
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,.L10
	lw	r6,8(r4)
	nop
	nop
	sub	r6,r0,r6
	sw	8(r4),r6
	nop
	lw	r8,12(r4)
	nop
	nop
	addi	r9,r0,#45
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
	jp	.L14
.L10:
	lw	r6,8(r4)
	nop
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L14
	lw	r8,12(r4)
	nop
	nop
	addi	r9,r0,#48
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
	jp	.L14
.L15:
	lw	r6,-8(r4)
	nop
	nop
	addi	r7,r4,#-40
	add	r7,r7,r6
	lw	r8,8(r4)
	nop
	nop
	addi	r6,r0,#10
	mod	r6,r8,r6
	addi	r6,r6,#48
	add	r8,r0,r7
	add	r9,r0,r6
	jpl	_storeByte
	lw	r7,8(r4)
	nop
	nop
	addi	r6,r0,#10
	div	r6,r7,r6
	sw	8(r4),r6
	nop
	lw	r6,-8(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	nop
.L14:
	lw	r6,8(r4)
	nop
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L15
	jp	.L17
.L18:
	lw	r6,-8(r4)
	nop
	nop
	addi	r6,r6,#-1
	sw	-8(r4),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	nop
	add	r8,r7,r6
	lw	r6,-8(r4)
	nop
	nop
	add	r7,r0,r6
	addi	r6,r4,#-40
	add	r6,r6,r7
	lb	r6,(r6)
	nop
	nop
	andi	r6,r6,#0x00ff
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
.L17:
	lw	r6,-8(r4)
	nop
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,.L18
	lw	r6,-4(r4)
	nop
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_intToStr, .-_intToStr
	.align 2
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	nop
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	nop
	jp	.L22
.L23:
	lw	r6,8(r4)
	nop
	nop
	lb	r6,(r6)
	nop
	nop
	andi	r7,r6,#0x00ff
	lw	r6,-4(r4)
	nop
	nop
	sw	(r6),r7
	nop
	lw	r6,8(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	nop
.L22:
	lw	r6,8(r4)
	nop
	nop
	lb	r6,(r6)
	nop
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L23
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.align 2
	.globl	_wait
	.type	_wait, @function
_wait:
;  Function 'wait'; 8 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-16	; alloc local storage
	sw	8(r4),r8
	nop
	addi	r6,r0,#0
	sw	-4(r4),r6
	nop
.L27:
	addi	r6,r0,#0x0
	sb	-5(r4),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	lw	r7,8(r4)
	nop
	nop
	eeq	r6,r6,r7
	brnz	r6,.L28
	addi	r6,r0,#0x1
	sb	-5(r4),r6
	nop
.L28:
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
	lb	r7,-5(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L27
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#-1
	sw	-4(r4),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_wait, .-_wait
	.align 2
	.globl	_getack
	.type	_getack, @function
_getack:
;  Function 'getack'; 12 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-20	; alloc local storage
	sw	8(r4),r8
	nop
	lw	r6,8(r4)
	nop
	nop
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	-8(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-8(r4)
	nop
	nop
	sw	(r7),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r6,(r6)
	nop
	nop
	lw	r6,(r6)
	nop
	nop
	sw	-8(r4),r6
	nop
	lw	r7,-8(r4)
	nop
	nop
	addi	r6,r0,#15
	eneq	r6,r7,r6
	brnz	r6,.L32
	addi	r6,r0,#1
	sw	-12(r4),r6
	nop
	jp	.L34
.L32:
	addi	r6,r0,#0
	sw	-12(r4),r6
	nop
.L34:
	lw	r6,-12(r4)
	nop
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_getack, .-_getack
	.align 2
	.globl	_sendcommand
	.type	_sendcommand, @function
_sendcommand:
;  Function 'sendcommand'; 28 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-68	; alloc local storage
	sb	8(r4),r8
	nop
	sb	12(r4),r9
	nop
	sw	16(r4),r10
	nop
	sw	20(r4),r11
	nop
	sw	24(r4),r12
	nop
	sw	28(r4),r13
	nop
	sw	32(r4),r14
	nop
	lw	r6,16(r4)
	nop
	nop
	sw	-24(r4),r6
	nop
	lw	r6,20(r4)
	nop
	nop
	sw	-20(r4),r6
	nop
	addi	r6,r0,#3
	sw	-8(r4),r6
	nop
	lw	r6,32(r4)
	nop
	nop
	add	r6,r6,r6
	sw	32(r4),r6
	nop
.L37:
	lw	r6,24(r4)
	nop
	nop
	sw	-16(r4),r6
	nop
	lw	r6,28(r4)
	nop
	nop
	sw	-12(r4),r6
	nop
	lw	r7,24(r4)
	nop
	nop
	lw	r6,28(r4)
	nop
	nop
	add	r7,r7,r6
	lw	r6,-8(r4)
	nop
	nop
	add	r6,r7,r6
	addi	r6,r6,#3
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r6,32(r4)
	nop
	nop
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	addi	r6,r0,#17
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	addi	r6,r0,#17
	sw	-28(r4),r6
	nop
	lw	r7,24(r4)
	nop
	nop
	lw	r6,28(r4)
	nop
	nop
	add	r7,r7,r6
	lw	r6,-8(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
	addi	r6,r0,#27
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
	lb	r6,8(r4)
	nop
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
	lb	r6,12(r4)
	nop
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
	jp	.L38
.L39:
	lw	r6,-24(r4)
	nop
	nop
	lw	r6,(r6)
	nop
	nop
	sw	-4(r4),r6
	nop
	lw	r6,-24(r4)
	nop
	nop
	addi	r6,r6,#4
	sw	-24(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
.L38:
	lw	r6,-16(r4)
	nop
	nop
	addi	r6,r6,#-1
	sw	-16(r4),r6
	nop
	lw	r7,-16(r4)
	nop
	nop
	addi	r6,r0,#-1
	eneq	r6,r7,r6
	brnz	r6,.L39
	jp	.L41
.L42:
	lw	r6,-20(r4)
	nop
	nop
	lb	r6,(r6)
	nop
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	nop
	lw	r6,-20(r4)
	nop
	nop
	addi	r6,r6,#1
	sw	-20(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r7,-28(r4)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	nop
.L41:
	lw	r6,-12(r4)
	nop
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	nop
	lw	r7,-12(r4)
	nop
	nop
	addi	r6,r0,#-1
	eneq	r6,r7,r6
	brnz	r6,.L42
	lw	r6,-28(r4)
	nop
	nop
	sw	-4(r4),r6
	nop
	addi	r6,r0,%hi(_lcdAddress)
	lsoi	r6,r6,%lo(_lcdAddress)
	lw	r7,(r6)
	nop
	nop
	lw	r6,-4(r4)
	nop
	nop
	sw	(r7),r6
	nop
	lw	r8,32(r4)
	nop
	nop
	jpl	_getack
	add	r7,r0,r6
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L37
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_sendcommand, .-_sendcommand
	.align 2
	.globl	_t_print
	.type	_t_print, @function
_t_print:
;  Function 't_print'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	nop
	lw	r8,8(r4)
	nop
	nop
	jpl	_strlen
	addi	r8,r0,#0x5a
	addi	r9,r0,#0x54
	addi	r10,r0,#0
	lw	r11,8(r4)
	nop
	nop
	addi	r12,r0,#0
	add	r13,r0,r6
	addi	r14,r0,#111
	jpl	_sendcommand
	addi	r8,r0,#10000
	jpl	_wait
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_t_print, .-_t_print
	.align 2
	.globl	_u_printInt
	.type	_u_printInt, @function
_u_printInt:
;  Function 'u_printInt'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	8(r4),r8
	nop
	addi	r6,r4,#-20
	lw	r8,8(r4)
	nop
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_u_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_printInt, .-_u_printInt
	.section	.rodata
	.align 2
.LC0:
	.string	"UStart\r\n"
	.align 2
.LC1:
	.string	"Starting LCD...\r\n"
	.align 2
.LC2:
	.string	"Hello World!\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#1
	lsoi	r8,r8,#34464
	jpl	_wait
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_t_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_t_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
