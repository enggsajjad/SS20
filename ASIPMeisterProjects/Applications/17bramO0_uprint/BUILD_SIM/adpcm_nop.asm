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
	.globl	_clockAddress
.data
	.align 2
	.type	_clockAddress, @object
	.size	_clockAddress, 4
_clockAddress:
	.long	50331648
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
	brz	r6,.L_adpcm_nop_4
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
	jp	.L_adpcm_nop_8
.L_adpcm_nop_4:
	lw	r6,8(r4)
	nop
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L_adpcm_nop_8
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
	jp	.L_adpcm_nop_8
.L_adpcm_nop_9:
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
.L_adpcm_nop_8:
	lw	r6,8(r4)
	nop
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,.L_adpcm_nop_9
	jp	.L_adpcm_nop_11
.L_adpcm_nop_12:
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
.L_adpcm_nop_11:
	lw	r6,-8(r4)
	nop
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,.L_adpcm_nop_12
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
	jp	.L_adpcm_nop_16
.L_adpcm_nop_17:
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
.L_adpcm_nop_16:
	lw	r6,8(r4)
	nop
	nop
	lb	r6,(r6)
	nop
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L_adpcm_nop_17
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
	.string	"Start\r\n"
	.align 2
.LC1:
	.string	" Cycles\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	addi	r6,r0,%hi(_clockAddress)
	lsoi	r6,r6,%lo(_clockAddress)
	lw	r7,(r6)
	nop
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	nop
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r6,r0,%hi(_clockAddress)
	lsoi	r6,r6,%lo(_clockAddress)
	lw	r6,(r6)
	nop
	nop
	lw	r6,(r6)
	nop
	nop
	sw	-4(r4),r6
	nop
	lw	r8,-4(r4)
	nop
	nop
	jpl	_u_printInt
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"