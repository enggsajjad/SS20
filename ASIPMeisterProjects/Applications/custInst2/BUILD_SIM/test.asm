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
	.globl	_array
.data
	.align 2
	.type	_array, @object
	.size	_array, 40
_array:
	.long	45
	.long	75
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	4
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,%hi(_array+20)
	lsoi	r6,r6,%lo(_array+20)
	add	r8,r0,r6
	addi	r6,r0,%hi(_array+24)
	lsoi	r6,r6,%lo(_array+24)
	add	r9,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
	MINMAX r8 , r9 , r7 , r6 
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"