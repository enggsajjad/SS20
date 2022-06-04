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
	.globl	_reset
	.type	_reset, @function
_reset:
;  Function 'reset'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	addi	r6,r0,#610
	lsoi	r6,r6,#23040
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_reset, .-_reset
	.section	.rodata
	.align 2
.LC0:
	.string	"Hello World 1!...\r\n"
	.align 2
.LC1:
	.string	"Hello World 2!...\r\n"
	.align 2
.LC2:
	.string	"Hello World 3!...\r\n"
	.align 2
.LC3:
	.string	"Hello World 4!...\r\n"
	.align 2
.LC4:
	.string	"Hello World 5!...\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	jpl	_reset
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_t_print
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_t_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_t_print
	addi	r8,r0,%hi(.LC3)
	lsoi	r8,r8,%lo(.LC3)
	jpl	_t_print
	addi	r8,r0,%hi(.LC4)
	lsoi	r8,r8,%lo(.LC4)
	jpl	_t_print
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_u_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_u_print
	addi	r8,r0,%hi(.LC3)
	lsoi	r8,r8,%lo(.LC3)
	jpl	_u_print
	addi	r8,r0,%hi(.LC4)
	lsoi	r8,r8,%lo(.LC4)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
