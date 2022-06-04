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
;  Function 'storeByte'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#-4
	sw	-16(r4),r6
	lw	r6,8(r4)
	nop
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-16(r4)
	nop
	and	r6,r7,r6
	sw	-8(r4),r6
	lw	r6,-8(r4)
	nop
	lw	r7,(r6)
	nop
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	sw	(r6),r7
	lw	r6,-12(r4)
	nop
	sub	r6,r0,r6
	subi	r6,r6,#1
	andi	r6,r6,#3
	llsi	r7,r6,#3
	addi	r6,r0,#255
	lls	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-12(r4)
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
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	lw	r6,(r6)
	nop
	and	r7,r7,r6
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	sw	(r6),r7
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	lw	r7,(r6)
	nop
	lw	r6,12(r4)
	nop
	or	r7,r7,r6
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	sw	(r6),r7
	addi	r6,r0,%hi(_wordValue)
	lsoi	r6,r6,%lo(_wordValue)
	lw	r7,(r6)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r6),r7
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_storeByte, .-_storeByte
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
	jp	.L4
.L5:
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
.L4:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L5
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.section	.rodata
	.align 2
.LC0:
	.string	"\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 36 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-76	; alloc local storage
	addi	r6,r0,#6789
	sw	-4(r4),r6
	addi	r6,r4,#-36
	add	r8,r0,r6
	addi	r9,r0,#54
	jpl	_storeByte
	addi	r6,r4,#-36
	addi	r6,r6,#1
	add	r8,r0,r6
	addi	r9,r0,#55
	jpl	_storeByte
	addi	r6,r4,#-36
	addi	r6,r6,#2
	add	r8,r0,r6
	addi	r9,r0,#56
	jpl	_storeByte
	addi	r6,r4,#-36
	addi	r6,r6,#3
	add	r8,r0,r6
	addi	r9,r0,#57
	jpl	_storeByte
	addi	r6,r4,#-36
	addi	r6,r6,#4
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r4,#-36
	add	r8,r0,r6
	jpl	_u_print
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.comm	_wordValue,4,4
	.ident	"GCC: (GNU) 4.2.2"
