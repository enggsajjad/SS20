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
;  Function 'main'; 20 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-28	; alloc local storage
	addi	r6,r0,#12
	sw	-16(r4),r6
	addi	r6,r0,#32
	sw	-20(r4),r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	-12(r4),r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	addi	r7,r6,#10
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	4(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r7,(r6)
	nop
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
	add	r7,r7,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	8(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
	NXOR r6 , r7 , r6 
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	12(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
	AVG r6 , r7 , r6 
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	16(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	SWAP r6 , r6 
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	20(r6),r7
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,(r6)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	lw	r6,4(r6)
	nop
	NXOR r6 , r7 , r6 
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	24(r6),r7
	addi	r9,r4,#-16
	addi	r8,r4,#-20
	addi	r7,r0,#33
	addi	r6,r0,#55
	MINMAX r9 , r8 , r7 , r6 
	lw	r6,-16(r4)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	28(r6),r7
	lw	r6,-20(r4)
	nop
	add	r7,r0,r6
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	32(r6),r7
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
