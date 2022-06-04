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
	.globl	_a
.data
	.align 2
	.type	_a, @object
	.size	_a, 4
_a:
	.long	45
	.globl	_b
	.align 2
	.type	_b, @object
	.size	_b, 4
_b:
	.long	46
	.globl	_res
	.section	.bss,"aw",@nobits
	.align 2
	.type	_res, @object
	.size	_res, 8
_res:
	.zero	8
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
	addi	r6,r0,%hi(_res)
	lsoi	r6,r6,%lo(_res)
	sw	-4(r4),r6
	addi	r6,r0,%hi(_a)
	lsoi	r6,r6,%lo(_a)
	lw	r7,(r6)
	nop
	lw	r6,-4(r4)
	nop
;#APP
	 sw    #0x4(r6),r7        

;#NO_APP
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
