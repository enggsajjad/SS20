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
;  Function 'storeShort'; 28 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-36	; alloc local storage
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
	brnz	r6,.L4
	addi	r6,r0,#-1
	lsoi	r6,r6,#0
	sw	-28(r4),r6
	jp	.L6
.L4:
	lsoi	r6,r0,#65535
	sw	-28(r4),r6
.L6:
	lw	r6,-28(r4)
	nop
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r6,r6,#2
	sw	-24(r4),r6
	lw	r6,-24(r4)
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
	.align 2
	.globl	_loadByteUnsigned
	.type	_loadByteUnsigned, @function
_loadByteUnsigned:
;  Function 'loadByteUnsigned'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
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
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,-4(r4)
	nop
	ars	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	andi	r6,r6,#255
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_loadByteUnsigned, .-_loadByteUnsigned
	.align 2
	.globl	_loadByteSigned
	.type	_loadByteSigned, @function
_loadByteSigned:
;  Function 'loadByteSigned'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
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
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,-4(r4)
	nop
	ars	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	andi	r6,r6,#255
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	llsi	r6,r6,#24
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	arsi	r6,r6,#24
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_loadByteSigned, .-_loadByteSigned
	.ident	"GCC: (GNU) 4.2.2"