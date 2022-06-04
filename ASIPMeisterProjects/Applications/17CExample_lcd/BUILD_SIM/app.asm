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
.LC_app_0:
	.string	"Array:"
	.align 2
.LC_app_1:
	.string	"\r\n"
	.align 2
.LC_app_2:
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
	addi	r8,r0,%hi(.LC_app_0)
	lsoi	r8,r8,%lo(.LC_app_0)
	jpl	_u_print
	addi	r6,r0,#0
	sw	-8(r4),r6
	jp	.L_app_2
.L_app_3:
	lw	r6,-8(r4)
	nop
	andi	r7,r6,#7
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,.L_app_4
	addi	r8,r0,%hi(.LC_app_1)
	lsoi	r8,r8,%lo(.LC_app_1)
	jpl	_u_print
.L_app_4:
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
	addi	r8,r0,%hi(.LC_app_2)
	lsoi	r8,r8,%lo(.LC_app_2)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_2)
	lsoi	r8,r8,%lo(.LC_app_2)
	jpl	_t_print
	lw	r7,-8(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r6,r7
	brz	r6,.L_app_6
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
	brnz	r6,.L_app_8
	addi	r6,r0,#1
	sw	-44(r4),r6
.L_app_8:
	lw	r6,-4(r4)
	nop
	lw	r7,-44(r4)
	nop
	and	r6,r6,r7
	sw	-4(r4),r6
.L_app_6:
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
.L_app_2:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#19
	elt	r6,r7,r6
	brz	r6,.L_app_3
	addi	r8,r0,%hi(.LC_app_1)
	lsoi	r8,r8,%lo(.LC_app_1)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_1)
	lsoi	r8,r8,%lo(.LC_app_1)
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
	jp	.L_app_12
.L_app_13:
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
	jp	.L_app_14
.L_app_15:
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
	brz	r6,.L_app_16
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
.L_app_16:
	lw	r6,-24(r4)
	nop
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	sw	-8(r4),r6
.L_app_14:
	lw	r6,-28(r4)
	nop
	lw	r7,-20(r4)
	nop
	eltu	r6,r6,r7
	brnz	r6,.L_app_15
	lw	r6,-20(r4)
	nop
	addi	r6,r6,#-4
	sw	-20(r4),r6
	lw	r6,-16(r4)
	nop
	addi	r6,r6,#1
	sw	-16(r4),r6
.L_app_12:
	lw	r6,-16(r4)
	nop
	lw	r7,12(r4)
	nop
	eltu	r6,r6,r7
	brnz	r6,.L_app_13
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_bubbleSort, .-_bubbleSort
	.section	.rodata
	.align 2
.LC_app_3:
	.string	"\r\n\r\n  Initialise array...\r\n"
	.align 2
.LC_app_4:
	.string	"  Array:\r\n"
	.align 2
.LC_app_5:
	.string	"  45 75 342 54 7 86 92 235\r\n"
	.align 2
.LC_app_6:
	.string	"  4 42 99 78 63 352 21 634\r\n"
	.align 2
.LC_app_7:
	.string	"  6 77 346 23 \r\n"
	.align 2
.LC_app_8:
	.string	"\r\n  BubbleSort: sorting...\r\n"
	.align 2
.LC_app_9:
	.string	"\r\n  Array:\r\n"
	.align 2
.LC_app_10:
	.string	"  4 6 7 21 23 42 45 54 \r\n"
	.align 2
.LC_app_11:
	.string	"  63 75 77 78 86 92 99 235\r\n"
	.align 2
.LC_app_12:
	.string	"  342 346 352 634 \r\n"
	.align 2
.LC_app_13:
	.string	"  Array Sorted: YES\r\n"
	.align 2
.LC_app_14:
	.string	"  Number of cycles needed: 621400\r\n"
	.align 2
.LC_app_15:
	.string	"  Initialise array..."
	.align 2
.LC_app_16:
	.string	"  Array:"
	.align 2
.LC_app_17:
	.string	"  45 75 342 54 7 86 92 235"
	.align 2
.LC_app_18:
	.string	"  4 42 99 78 63 352 21 634"
	.align 2
.LC_app_19:
	.string	"  6 77 346 23"
	.align 2
.LC_app_20:
	.string	"  BubbleSort: sorting..."
	.align 2
.LC_app_21:
	.string	"  4 6 7 21 23 42 45 54"
	.align 2
.LC_app_22:
	.string	"  63 75 77 78 86 92 99 235"
	.align 2
.LC_app_23:
	.string	"  342 346 352 634"
	.align 2
.LC_app_24:
	.string	"  Array Sorted: YES"
	.align 2
.LC_app_25:
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
	addi	r8,r0,%hi(.LC_app_3)
	lsoi	r8,r8,%lo(.LC_app_3)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_4)
	lsoi	r8,r8,%lo(.LC_app_4)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_5)
	lsoi	r8,r8,%lo(.LC_app_5)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_6)
	lsoi	r8,r8,%lo(.LC_app_6)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_7)
	lsoi	r8,r8,%lo(.LC_app_7)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_8)
	lsoi	r8,r8,%lo(.LC_app_8)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_9)
	lsoi	r8,r8,%lo(.LC_app_9)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_10)
	lsoi	r8,r8,%lo(.LC_app_10)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_11)
	lsoi	r8,r8,%lo(.LC_app_11)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_12)
	lsoi	r8,r8,%lo(.LC_app_12)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_13)
	lsoi	r8,r8,%lo(.LC_app_13)
	jpl	_u_print
	addi	r8,r0,%hi(.LC_app_14)
	lsoi	r8,r8,%lo(.LC_app_14)
	jpl	_u_print
	addi	r8,r0,#0
	addi	r9,r0,#0
	addi	r10,r0,#309
	addi	r11,r0,#239
	jpl	_g_drawrect
	addi	r8,r0,%hi(.LC_app_15)
	lsoi	r8,r8,%lo(.LC_app_15)
	addi	r9,r0,#25
	addi	r10,r0,#10
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_16)
	lsoi	r8,r8,%lo(.LC_app_16)
	addi	r9,r0,#25
	addi	r10,r0,#30
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_17)
	lsoi	r8,r8,%lo(.LC_app_17)
	addi	r9,r0,#25
	addi	r10,r0,#50
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_18)
	lsoi	r8,r8,%lo(.LC_app_18)
	addi	r9,r0,#25
	addi	r10,r0,#70
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_19)
	lsoi	r8,r8,%lo(.LC_app_19)
	addi	r9,r0,#25
	addi	r10,r0,#90
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_20)
	lsoi	r8,r8,%lo(.LC_app_20)
	addi	r9,r0,#25
	addi	r10,r0,#110
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_16)
	lsoi	r8,r8,%lo(.LC_app_16)
	addi	r9,r0,#25
	addi	r10,r0,#130
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_21)
	lsoi	r8,r8,%lo(.LC_app_21)
	addi	r9,r0,#25
	addi	r10,r0,#150
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_22)
	lsoi	r8,r8,%lo(.LC_app_22)
	addi	r9,r0,#25
	addi	r10,r0,#170
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_23)
	lsoi	r8,r8,%lo(.LC_app_23)
	addi	r9,r0,#25
	addi	r10,r0,#190
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_24)
	lsoi	r8,r8,%lo(.LC_app_24)
	addi	r9,r0,#25
	addi	r10,r0,#210
	jpl	_g_print
	addi	r8,r0,%hi(.LC_app_25)
	lsoi	r8,r8,%lo(.LC_app_25)
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
