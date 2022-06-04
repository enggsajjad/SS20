; options passed:  -auxbase-strip -O2
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcaller-saves -fcommon -fcprop-registers -fcrossjumping
; -fcse-follow-jumps -fcse-skip-blocks -fdefer-pop -fdelayed-branch
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations -ffunction-cse
; -fgcse -fgcse-lm -fguess-branch-probability -fident -fif-conversion
; -fif-conversion2 -finline-functions-called-once -fipa-pure-const
; -fipa-reference -fipa-type-escape -fivopts -fkeep-static-consts
; -fleading-underscore -fmath-errno -fmerge-constants
; -fmove-loop-invariants -foptimize-register-move -foptimize-sibling-calls
; -fpeephole -fpeephole2 -freg-struct-return -fregmove -freorder-blocks
; -freorder-functions -frerun-cse-after-loop -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
; -fshow-column -fsplit-ivs-in-unroller -fstrict-aliasing -fstrict-overflow
; -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-ccp -ftree-ch
; -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
; -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
; -ftree-loop-optimize -ftree-lrs -ftree-pre -ftree-salias -ftree-sink
; -ftree-sra -ftree-store-ccp -ftree-store-copy-prop -ftree-ter
; -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
; -fzero-initialized-in-bss -mquickcall
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
	brz	r6,.L11
	llsi	r6,r9,#2
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	add	r15,r0,r8
	add	r14,r6,r7
	llsi	r7,r8,#2
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	add	r7,r7,r6
.L4:
	lw	r12,(r7)
	nop
	eltu	r6,r7,r14
	brz	r6,.L5
	add	r11,r0,r7
	add	r13,r0,r7
.L7:
	addi	r11,r11,#4
	lw	r10,(r11)
	nop
	eltu	r6,r10,r12
	brz	r6,.L8
	sw	(r13),r10
	sw	(r11),r12
	add	r10,r0,r12
.L8:
	add	r12,r0,r10
	add	r13,r0,r11
	eltu	r6,r11,r14
	brnz	r6,.L7
.L5:
	addi	r15,r15,#1
	eltu	r6,r15,r9
	brz	r6,.L11
	addi	r14,r14,#-4
	jp	.L4
.L11:
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