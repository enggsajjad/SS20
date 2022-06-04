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
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 36 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	sw	-36(r4),r6
	lw	r7,-36(r4)
	nop
	addi	r6,r0,#17
	sw	(r7),r6
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-32(r4),r6
	lw	r7,-32(r4)
	nop
	addi	r6,r0,#34
	sw	(r7),r6
	addi	r6,r0,#768
	lsoi	r6,r6,#0
	sw	-28(r4),r6
	lw	r7,-28(r4)
	nop
	addi	r6,r0,#51
	sw	(r7),r6
	addi	r6,r0,#1024
	lsoi	r6,r6,#0
	sw	-24(r4),r6
	addi	r6,r0,#610
	lsoi	r6,r6,#23040
	sw	-20(r4),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#187
	sw	(r7),r6
	addi	r6,r0,#610
	lsoi	r6,r6,#23044
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	addi	r6,r0,#204
	sw	(r7),r6
	addi	r6,r0,#610
	lsoi	r6,r6,#23048
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#221
	sw	(r7),r6
	addi	r6,r0,#610
	lsoi	r6,r6,#23040
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	addi	r6,r0,#238
	sw	(r7),r6
	addi	r6,r0,#610
	lsoi	r6,r6,#23044
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#255
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#2
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#3
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#4
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#5
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#6
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#7
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	lw	r7,-20(r4)
	nop
	addi	r6,r0,#9
	sw	(r7),r6
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
