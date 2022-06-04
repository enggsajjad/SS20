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
	.globl	_array
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
	.section	.rodata
	.align 2
.LC0:
	.string	"Array:"
	.align 2
.LC1:
	.string	"\r\n"
	.align 2
.LC2:
	.string	" "
.text
	.align 2
	.globl	_printArray
	.type	_printArray, @function
_printArray:
;  Function 'printArray'; 44 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-84	; alloc local storage
	addi	r6,r0,#1
	sw	-4(r4),r6
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r6,r0,#0
	sw	-8(r4),r6
	jp	.L2
.L3:
	lw	r6,-8(r4)
	nop
	andi	r7,r6,#7
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L4
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_u_print
.L4:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	addi	r7,r4,#-40
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_intToStr
	addi	r6,r4,#-40
	add	r8,r0,r6
	jpl	_u_print
	addi	r6,r4,#-40
	add	r8,r0,r6
	jpl	_t_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_u_print
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	jpl	_t_print
	lw	r7,-8(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r6,r7
	brz	r6,.L6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#-1
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r8,(r6)
	nop
	lw	r6,-8(r4)
	nop
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	addi	r7,r0,#0
	sw	-44(r4),r7
	elt	r6,r6,r8
	brnz	r6,.L8
	addi	r6,r0,#1
	sw	-44(r4),r6
.L8:
	lw	r6,-4(r4)
	nop
	lw	r7,-44(r4)
	nop
	and	r6,r6,r7
	sw	-4(r4),r6
.L6:
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
.L2:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#19
	elt	r6,r7,r6
	brz	r6,.L3
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_u_print
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	jpl	_t_print
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_printArray, .-_printArray
	.align 2
	.globl	_bubbleSort
	.type	_bubbleSort, @function
_bubbleSort:
;  Function 'bubbleSort'; 28 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-36	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,12(r4)
	nop
	llsi	r6,r6,#2
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	add	r6,r6,r7
	sw	-20(r4),r6
	lw	r6,8(r4)
	nop
	sw	-16(r4),r6
	jp	.L12
.L13:
	lw	r6,8(r4)
	nop
	llsi	r6,r6,#2
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	add	r6,r6,r7
	sw	-28(r4),r6
	lw	r6,-28(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r6,-28(r4)
	nop
	sw	-24(r4),r6
	jp	.L14
.L15:
	lw	r6,-24(r4)
	nop
	addi	r6,r6,#4
	sw	-24(r4),r6
	lw	r6,-24(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-8(r4)
	nop
	eltu	r6,r7,r6
	brz	r6,.L16
	lw	r7,-28(r4)
	nop
	lw	r6,-4(r4)
	nop
	sw	(r7),r6
	lw	r7,-24(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	sw	-12(r4),r6
	lw	r6,-4(r4)
	nop
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	sw	-4(r4),r6
.L16:
	lw	r6,-24(r4)
	nop
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	sw	-8(r4),r6
.L14:
	lw	r6,-28(r4)
	nop
	lw	r7,-20(r4)
	nop
	eltu	r6,r6,r7
	brnz	r6,.L15
	lw	r6,-20(r4)
	nop
	addi	r6,r6,#-4
	sw	-20(r4),r6
	lw	r6,-16(r4)
	nop
	addi	r6,r6,#1
	sw	-16(r4),r6
.L12:
	lw	r6,-16(r4)
	nop
	lw	r7,12(r4)
	nop
	eltu	r6,r6,r7
	brnz	r6,.L13
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_bubbleSort, .-_bubbleSort
	.section	.rodata
	.align 2
.LC3:
	.string	"\r\n\r\n  Initialise array...\r\n"
	.align 2
.LC4:
	.string	"  Array:\r\n"
	.align 2
.LC5:
	.string	"  45 75 342 54 7 86 92 235\r\n"
	.align 2
.LC6:
	.string	"  4 42 99 78 63 352 21 634\r\n"
	.align 2
.LC7:
	.string	"  6 77 346 23 \r\n"
	.align 2
.LC8:
	.string	"\r\n  BubbleSort: sorting...\r\n"
	.align 2
.LC9:
	.string	"\r\n  Array:\r\n"
	.align 2
.LC10:
	.string	"  4 6 7 21 23 42 45 54 \r\n"
	.align 2
.LC11:
	.string	"  63 75 77 78 86 92 99 235\r\n"
	.align 2
.LC12:
	.string	"  342 346 352 634 \r\n"
	.align 2
.LC13:
	.string	"  Array Sorted: YES\r\n"
	.align 2
.LC14:
	.string	"  Number of cycles needed: 621400\r\n"
	.align 2
.LC15:
	.string	"  Initialise array..."
	.align 2
.LC16:
	.string	"  Array:"
	.align 2
.LC17:
	.string	"  45 75 342 54 7 86 92 235"
	.align 2
.LC18:
	.string	"  4 42 99 78 63 352 21 634"
	.align 2
.LC19:
	.string	"  6 77 346 23"
	.align 2
.LC20:
	.string	"  BubbleSort: sorting..."
	.align 2
.LC21:
	.string	"  4 6 7 21 23 42 45 54"
	.align 2
.LC22:
	.string	"  63 75 77 78 86 92 99 235"
	.align 2
.LC23:
	.string	"  342 346 352 634"
	.align 2
.LC24:
	.string	"  Array Sorted: YES"
	.align 2
.LC25:
	.string	"  Number of cycles needed: 621400"
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
	jpl	_d_clear
	addi	r8,r0,%hi(.LC3)
	lsoi	r8,r8,%lo(.LC3)
	jpl	_u_print
	addi	r8,r0,%hi(.LC4)
	lsoi	r8,r8,%lo(.LC4)
	jpl	_u_print
	addi	r8,r0,%hi(.LC5)
	lsoi	r8,r8,%lo(.LC5)
	jpl	_u_print
	addi	r8,r0,%hi(.LC6)
	lsoi	r8,r8,%lo(.LC6)
	jpl	_u_print
	addi	r8,r0,%hi(.LC7)
	lsoi	r8,r8,%lo(.LC7)
	jpl	_u_print
	addi	r8,r0,%hi(.LC8)
	lsoi	r8,r8,%lo(.LC8)
	jpl	_u_print
	addi	r8,r0,%hi(.LC9)
	lsoi	r8,r8,%lo(.LC9)
	jpl	_u_print
	addi	r8,r0,%hi(.LC10)
	lsoi	r8,r8,%lo(.LC10)
	jpl	_u_print
	addi	r8,r0,%hi(.LC11)
	lsoi	r8,r8,%lo(.LC11)
	jpl	_u_print
	addi	r8,r0,%hi(.LC12)
	lsoi	r8,r8,%lo(.LC12)
	jpl	_u_print
	addi	r8,r0,%hi(.LC13)
	lsoi	r8,r8,%lo(.LC13)
	jpl	_u_print
	addi	r8,r0,%hi(.LC14)
	lsoi	r8,r8,%lo(.LC14)
	jpl	_u_print
	addi	r8,r0,#0
	addi	r9,r0,#0
	addi	r10,r0,#309
	addi	r11,r0,#239
	jpl	_g_drawrect
	addi	r8,r0,%hi(.LC15)
	lsoi	r8,r8,%lo(.LC15)
	addi	r9,r0,#25
	addi	r10,r0,#10
	jpl	_g_print
	addi	r8,r0,%hi(.LC16)
	lsoi	r8,r8,%lo(.LC16)
	addi	r9,r0,#25
	addi	r10,r0,#30
	jpl	_g_print
	addi	r8,r0,%hi(.LC17)
	lsoi	r8,r8,%lo(.LC17)
	addi	r9,r0,#25
	addi	r10,r0,#50
	jpl	_g_print
	addi	r8,r0,%hi(.LC18)
	lsoi	r8,r8,%lo(.LC18)
	addi	r9,r0,#25
	addi	r10,r0,#70
	jpl	_g_print
	addi	r8,r0,%hi(.LC19)
	lsoi	r8,r8,%lo(.LC19)
	addi	r9,r0,#25
	addi	r10,r0,#90
	jpl	_g_print
	addi	r8,r0,%hi(.LC20)
	lsoi	r8,r8,%lo(.LC20)
	addi	r9,r0,#25
	addi	r10,r0,#110
	jpl	_g_print
	addi	r8,r0,%hi(.LC16)
	lsoi	r8,r8,%lo(.LC16)
	addi	r9,r0,#25
	addi	r10,r0,#130
	jpl	_g_print
	addi	r8,r0,%hi(.LC21)
	lsoi	r8,r8,%lo(.LC21)
	addi	r9,r0,#25
	addi	r10,r0,#150
	jpl	_g_print
	addi	r8,r0,%hi(.LC22)
	lsoi	r8,r8,%lo(.LC22)
	addi	r9,r0,#25
	addi	r10,r0,#170
	jpl	_g_print
	addi	r8,r0,%hi(.LC23)
	lsoi	r8,r8,%lo(.LC23)
	addi	r9,r0,#25
	addi	r10,r0,#190
	jpl	_g_print
	addi	r8,r0,%hi(.LC24)
	lsoi	r8,r8,%lo(.LC24)
	addi	r9,r0,#25
	addi	r10,r0,#210
	jpl	_g_print
	addi	r8,r0,%hi(.LC25)
	lsoi	r8,r8,%lo(.LC25)
	addi	r9,r0,#25
	addi	r10,r0,#230
	jpl	_g_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
