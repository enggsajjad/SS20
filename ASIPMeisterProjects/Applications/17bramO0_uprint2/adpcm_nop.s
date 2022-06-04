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
	.globl	_clockAddress
.data
	.align 2
	.type	_clockAddress, @object
	.size	_clockAddress, 4
_clockAddress:
	.long	50331648
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
