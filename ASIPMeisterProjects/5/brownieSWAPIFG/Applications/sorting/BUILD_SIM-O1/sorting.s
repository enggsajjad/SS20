; options passed:  -auxbase-strip -O1
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fcprop-registers -fdefer-pop -fdelayed-branch -fearly-inlining
; -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
; -fmove-loop-invariants -fpeephole -fpeephole2 -freg-struct-return
; -fsched-interblock -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-ccp
; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-lrs -ftree-salias
; -ftree-sink -ftree-sra -ftree-ter -ftree-vect-loop-version
; -funit-at-a-time -fzero-initialized-in-bss -mquickcall
.text
	.align 2
	.globl	_bubbleSort
	.type	_bubbleSort, @function
_bubbleSort:
;  Function 'bubbleSort'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	eltu	r6,r8,r9
	brz	r6,L_bubble_11
	llsi	r6,r9,#2
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	add	r13,r6,r7
	llsi	r6,r8,#2
	add	r14,r6,r7
L_bubble_4:
	lw	r11,(r14)
	nop
	eltu	r6,r14,r13
	brz	r6,L_bubble_5
	add	r10,r0,r14
	add	r12,r0,r14
L_bubble_7:
	addi	r10,r10,#4
	lw	r7,(r10)
	nop
	eltu	r6,r7,r11
	brz	r6,L_bubble_8
	sw	(r12),r7
	sw	(r10),r11
	add	r7,r0,r11
L_bubble_8:
	add	r11,r0,r7
	add	r12,r0,r10
	eltu	r6,r10,r13
	brnz	r6,L_bubble_7
L_bubble_5:
	addi	r8,r8,#1
	eltu	r6,r8,r9
	brz	r6,L_bubble_11
	addi	r13,r13,#-4
	jp	L_bubble_4
L_bubble_11:
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_bubbleSort, .-_bubbleSort
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#0
	addi	r9,r0,#19
	jpl	_bubbleSort
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.globl	_array
.data
	.align 2
	.type	_array, @object
	.size	_array, 80
_array:
	.long	45
	.long	75
	.long	342
	.long	54
	.long	7
	.long	86
	.long	92
	.long	235
	.long	4
	.long	42
	.long	99
	.long	78
	.long	63
	.long	352
	.long	21
	.long	634
	.long	6
	.long	77
	.long	346
	.long	23
	.ident	"GCC: (GNU) 4.2.2"
