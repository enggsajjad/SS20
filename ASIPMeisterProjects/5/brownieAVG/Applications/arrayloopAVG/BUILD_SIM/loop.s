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
	.globl	_input1
.data
	.align 2
	.type	_input1, @object
	.size	_input1, 80
_input1:
	.long	321
	.long	51
	.long	890345
	.long	75
	.long	78
	.long	7
	.long	34478651
	.long	2342
	.long	568
	.long	7894578
	.long	7
	.long	3461
	.long	1235
	.long	3467753
	.long	75
	.long	685
	.long	79
	.long	45568564
	.long	35
	.long	7625
	.globl	_input2
	.align 2
	.type	_input2, @object
	.size	_input2, 80
_input2:
	.long	45
	.long	765
	.long	12
	.long	78
	.long	74
	.long	42
	.long	1253
	.long	236377
	.long	5683
	.long	79
	.long	86
	.long	643
	.long	52314576
	.long	3461
	.long	57
	.long	785
	.long	79
	.long	47
	.long	3461
	.long	2513
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	.L2
.L3:
	lw	r9,-4(r4)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,%hi(_input1)
	lsoi	r7,r7,%lo(_input1)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r8,(r6)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,%hi(_input2)
	lsoi	r7,r7,%lo(_input2)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
;#APP
	avg r7, r8, r6

;#NO_APP
	add	r8,r0,r7
	addi	r7,r0,%hi(_resultAvg)
	lsoi	r7,r7,%lo(_resultAvg)
	llsi	r6,r9,#2
	add	r6,r6,r7
	sw	(r6),r8
	lw	r9,-4(r4)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,%hi(_input1)
	lsoi	r7,r7,%lo(_input1)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
;#APP
	swap r8, r6

;#NO_APP
	addi	r7,r0,%hi(_resultSwap)
	lsoi	r7,r7,%lo(_resultSwap)
	llsi	r6,r9,#2
	add	r6,r6,r7
	sw	(r6),r8
	lw	r10,-4(r4)
	nop
	lw	r11,-4(r4)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,%hi(_input1)
	lsoi	r7,r7,%lo(_input1)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r7,(r6)
	nop
	lw	r6,-4(r4)
	nop
	addi	r8,r0,%hi(_input2)
	lsoi	r8,r8,%lo(_input2)
	llsi	r6,r6,#2
	add	r6,r6,r8
	lw	r6,(r6)
	nop
;#APP
	minmax r8, r9, r7, r6
	
;#NO_APP
	addi	r7,r0,%hi(_resultMin)
	lsoi	r7,r7,%lo(_resultMin)
	llsi	r6,r10,#2
	add	r6,r6,r7
	sw	(r6),r8
	addi	r7,r0,%hi(_resultMax)
	lsoi	r7,r7,%lo(_resultMax)
	llsi	r6,r11,#2
	add	r6,r6,r7
	sw	(r6),r9
	lw	r9,-4(r4)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,%hi(_input1)
	lsoi	r7,r7,%lo(_input1)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
;#APP
	rot r8, r6, #4

;#NO_APP
	addi	r7,r0,%hi(_resultRor)
	lsoi	r7,r7,%lo(_resultRor)
	llsi	r6,r9,#2
	add	r6,r6,r7
	sw	(r6),r8
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
.L2:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#19
	elt	r6,r7,r6
	brz	r6,.L3
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.comm	_resultAvg,80,4
	.comm	_resultSwap,80,4
	.comm	_resultMax,80,4
	.comm	_resultMin,80,4
	.comm	_resultRor,80,4
	.ident	"GCC: (GNU) 4.2.2"
