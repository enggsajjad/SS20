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
	.globl	_sinusLUT
.data
	.align 2
	.type	_sinusLUT, @object
	.size	_sinusLUT, 80
_sinusLUT:
	.long	0
	.long	1144
	.long	2287
	.long	3430
	.long	4572
	.long	5712
	.long	6850
	.long	7987
	.long	9121
	.long	10252
	.long	11380
	.long	12505
	.long	13626
	.long	14742
	.long	15855
	.long	16962
	.long	18064
	.long	19161
	.long	20252
	.long	21336
	.globl	_cosinusLUT
	.align 2
	.type	_cosinusLUT, @object
	.size	_cosinusLUT, 80
_cosinusLUT:
	.long	65536
	.long	65526
	.long	65496
	.long	65446
	.long	65376
	.long	65287
	.long	65177
	.long	65048
	.long	64898
	.long	64729
	.long	64540
	.long	64332
	.long	64104
	.long	63856
	.long	63589
	.long	63303
	.long	62997
	.long	62672
	.long	62328
	.long	61966
.text
	.align 2
	.globl	_sin
	.type	_sin, @function
_sin:
;  Function 'sin'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r6,r7
	brnz	r6,.L_app_2
	lw	r6,8(r4)
	nop
	addi	r7,r0,#80
	eltu	r6,r7,r6
	brz	r6,.L_app_4
.L_app_2:
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	.L_app_5
.L_app_4:
	lw	r6,8(r4)
	nop
	addi	r7,r0,%hi(_sinusLUT)
	lsoi	r7,r7,%lo(_sinusLUT)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
.L_app_5:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_sin, .-_sin
	.align 2
	.globl	_cos
	.type	_cos, @function
_cos:
;  Function 'cos'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r6,r7
	brnz	r6,.L_app_8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#80
	eltu	r6,r7,r6
	brz	r6,.L_app_10
.L_app_8:
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	.L_app_11
.L_app_10:
	lw	r6,8(r4)
	nop
	addi	r7,r0,%hi(_cosinusLUT)
	lsoi	r7,r7,%lo(_cosinusLUT)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
.L_app_11:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_cos, .-_cos
	.local	_resultPoint1568
	.comm	_resultPoint1568,12,4
	.align 2
	.globl	_rotate
	.type	_rotate, @function
_rotate:
;  Function 'rotate'; 44 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-84	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	lw	r6,12(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r6,(r6)
	nop
	sub	r6,r7,r6
	sw	-24(r4),r6
	lw	r6,12(r4)
	nop
	lw	r7,4(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r6,4(r6)
	nop
	sub	r6,r7,r6
	sw	-20(r4),r6
	lw	r8,16(r4)
	nop
	jpl	_sin
	sw	-16(r4),r6
	lw	r8,16(r4)
	nop
	jpl	_cos
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-24(r4)
	nop
	mul	r8,r7,r6
	lw	r7,-16(r4)
	nop
	lw	r6,-20(r4)
	nop
	mul	r6,r7,r6
	sub	r7,r8,r6
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r6,(r6)
	nop
	arsi	r7,r6,#16
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r6,(r6)
	nop
	add	r7,r7,r6
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,(r6)
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,.L_app_14
	addi	r7,r0,%hi(_resultPoint1568)
	lsoi	r7,r7,%lo(_resultPoint1568)
	addi	r6,r0,#0
	sw	(r7),r6
.L_app_14:
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,(r6)
	nop
	addi	r6,r0,#320
	elt	r6,r6,r7
	brz	r6,.L_app_16
	addi	r7,r0,%hi(_resultPoint1568)
	lsoi	r7,r7,%lo(_resultPoint1568)
	addi	r6,r0,#320
	sw	(r7),r6
.L_app_16:
	lw	r7,-16(r4)
	nop
	lw	r6,-24(r4)
	nop
	mul	r6,r7,r6
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-20(r4)
	nop
	mul	r6,r7,r6
	sw	-4(r4),r6
	lw	r7,-8(r4)
	nop
	lw	r6,-4(r4)
	nop
	add	r7,r7,r6
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	4(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r6,4(r6)
	nop
	arsi	r7,r6,#16
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	4(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,4(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r6,4(r6)
	nop
	add	r7,r7,r6
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	sw	4(r6),r7
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,4(r6)
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,.L_app_18
	addi	r7,r0,%hi(_resultPoint1568)
	lsoi	r7,r7,%lo(_resultPoint1568)
	addi	r6,r0,#0
	sw	4(r7),r6
.L_app_18:
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	lw	r7,4(r6)
	nop
	addi	r6,r0,#240
	elt	r6,r6,r7
	brz	r6,.L_app_20
	addi	r7,r0,%hi(_resultPoint1568)
	lsoi	r7,r7,%lo(_resultPoint1568)
	addi	r6,r0,#240
	sw	4(r7),r6
.L_app_20:
	addi	r7,r0,%hi(_resultPoint1568)
	lsoi	r7,r7,%lo(_resultPoint1568)
	addi	r6,r0,#1
	sw	8(r7),r6
	addi	r6,r0,%hi(_resultPoint1568)
	lsoi	r6,r6,%lo(_resultPoint1568)
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_rotate, .-_rotate
	.section	.rodata
	.align 2
.LC_app_0:
	.string	"("
	.align 2
.LC_app_1:
	.string	","
	.align 2
.LC_app_2:
	.string	")"
.text
	.align 2
	.globl	_printCoordinates
	.type	_printCoordinates, @function
_printCoordinates:
;  Function 'printCoordinates'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	8(r4),r8
	addi	r8,r0,%hi(.LC_app_0)
	lsoi	r8,r8,%lo(.LC_app_0)
	jpl	_t_print
	lw	r6,8(r4)
	nop
	lw	r6,(r6)
	nop
	addi	r7,r4,#-20
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_t_print
	addi	r8,r0,%hi(.LC_app_1)
	lsoi	r8,r8,%lo(.LC_app_1)
	jpl	_t_print
	lw	r6,8(r4)
	nop
	lw	r6,4(r6)
	nop
	addi	r7,r4,#-20
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_t_print
	addi	r8,r0,%hi(.LC_app_2)
	lsoi	r8,r8,%lo(.LC_app_2)
	jpl	_t_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_printCoordinates, .-_printCoordinates
	.align 2
	.globl	_drawRectangle
	.type	_drawRectangle, @function
_drawRectangle:
;  Function 'drawRectangle'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	lw	r6,8(r4)
	nop
	lw	r8,(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r9,4(r6)
	nop
	lw	r6,12(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,12(r4)
	nop
	lw	r6,4(r6)
	nop
	add	r10,r0,r7
	add	r11,r0,r6
	jpl	_g_drawline
	lw	r6,12(r4)
	nop
	lw	r8,(r6)
	nop
	lw	r6,12(r4)
	nop
	lw	r9,4(r6)
	nop
	lw	r6,16(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,16(r4)
	nop
	lw	r6,4(r6)
	nop
	add	r10,r0,r7
	add	r11,r0,r6
	jpl	_g_drawline
	lw	r6,16(r4)
	nop
	lw	r8,(r6)
	nop
	lw	r6,16(r4)
	nop
	lw	r9,4(r6)
	nop
	lw	r6,20(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,20(r4)
	nop
	lw	r6,4(r6)
	nop
	add	r10,r0,r7
	add	r11,r0,r6
	jpl	_g_drawline
	lw	r6,20(r4)
	nop
	lw	r8,(r6)
	nop
	lw	r6,20(r4)
	nop
	lw	r9,4(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,8(r4)
	nop
	lw	r6,4(r6)
	nop
	add	r10,r0,r7
	add	r11,r0,r6
	jpl	_g_drawline
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_drawRectangle, .-_drawRectangle
	.align 2
	.globl	_copyPoint
	.type	_copyPoint, @function
_copyPoint:
;  Function 'copyPoint'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	lw	r7,(r6)
	nop
	lw	r6,12(r4)
	nop
	sw	(r6),r7
	lw	r6,8(r4)
	nop
	lw	r7,4(r6)
	nop
	lw	r6,12(r4)
	nop
	sw	4(r6),r7
	lw	r6,8(r4)
	nop
	lw	r7,8(r6)
	nop
	lw	r6,12(r4)
	nop
	sw	8(r6),r7
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_copyPoint, .-_copyPoint
	.align 2
	.globl	_overwriteRectangle
	.type	_overwriteRectangle, @function
_overwriteRectangle:
;  Function 'overwriteRectangle'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	addi	r6,r0,#2
	sw	-4(r4),r6
	addi	r6,r4,#-4
	addi	r8,r0,#0x47
	addi	r9,r0,#0x56
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#512
	lsoi	r14,r14,#0
	jpl	_sendcommand
	lw	r8,8(r4)
	nop
	lw	r9,12(r4)
	nop
	lw	r10,16(r4)
	nop
	lw	r11,20(r4)
	nop
	jpl	_drawRectangle
	addi	r6,r0,#1
	sw	-4(r4),r6
	addi	r6,r4,#-4
	addi	r8,r0,#0x47
	addi	r9,r0,#0x56
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#512
	lsoi	r14,r14,#0
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_overwriteRectangle, .-_overwriteRectangle
	.align 2
	.globl	_delete
	.type	_delete, @function
_delete:
;  Function 'delete'; 32 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-72	; alloc local storage
	addi	r6,r0,#0
	sw	-32(r4),r6
	addi	r6,r0,#30
	sw	-28(r4),r6
	addi	r6,r0,#0
	sw	-24(r4),r6
	addi	r6,r0,#30
	sw	-20(r4),r6
	addi	r6,r0,#0
	sw	-16(r4),r6
	addi	r6,r0,#120
	sw	-12(r4),r6
	addi	r6,r0,#0
	sw	-8(r4),r6
	addi	r6,r0,#120
	sw	-4(r4),r6
	addi	r6,r4,#-32
	addi	r8,r0,#0x52
	addi	r9,r0,#0x4c
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#8
	addi	r13,r0,#0
	addi	r14,r0,#512
	lsoi	r14,r14,#0
	jpl	_sendcommand
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_delete, .-_delete
	.section	.rodata
	.align 2
.LC_app_3:
	.string	"A"
	.align 2
.LC_app_4:
	.string	"N"
	.align 2
.LC_app_5:
	.string	"B"
.text
	.align 2
	.globl	_pollDisplay
	.type	_pollDisplay, @function
_pollDisplay:
;  Function 'pollDisplay'; 44 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-84	; alloc local storage
	addi	r6,r0,#0
	sw	-8(r4),r6
	addi	r6,r0,#0
	sw	-4(r4),r6
	jpl	_checkbuffer
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	addi	r6,r0,#3
	elt	r6,r6,r7
	brz	r6,.L_app_34
	addi	r6,r4,#-26
	add	r8,r0,r6
	lw	r9,-16(r4)
	nop
	jpl	_getbytes
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-16(r4)
	nop
	eeq	r6,r7,r6
	brnz	r6,.L_app_39
	lw	r6,-12(r4)
	nop
	sw	-40(r4),r6
	jp	.L_app_38
.L_app_40:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#27
	eeq	r6,r7,r6
	brnz	r6,.L_app_41
	addi	r7,r0,#1
	sw	-40(r4),r7
	jp	.L_app_38
.L_app_41:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-65
	sw	-44(r4),r6
	addi	r6,r0,#19
	lw	r7,-44(r4)
	nop
	eltu	r6,r6,r7
	brnz	r6,.L_app_43
	lw	r7,-44(r4)
	nop
	llsi	r6,r7,#2
	addi	r7,r0,%hi(.L_app_49)
	lsoi	r7,r7,%lo(.L_app_49)
	add	r6,r6,r7
	lw	r6,(r6)
	nop
	jpr	r6
	.section	.rodata
	.align 2
	.align 2
.L_app_49:
	.word .L_app_44
	.word .L_app_45
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_52
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_47
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_43
	.word .L_app_52
.text
.L_app_44:
	addi	r8,r0,%hi(.LC_app_3)
	lsoi	r8,r8,%lo(.LC_app_3)
	addi	r9,r0,#0
	addi	r10,r0,#120
	jpl	_g_print
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#1
	eeq	r6,r7,r6
	brnz	r6,.L_app_50
	addi	r6,r0,#3
	sw	-40(r4),r6
	jp	.L_app_38
.L_app_50:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	jp	.L_app_52
.L_app_47:
	addi	r8,r0,%hi(.LC_app_4)
	lsoi	r8,r8,%lo(.LC_app_4)
	addi	r9,r0,#0
	addi	r10,r0,#120
	jpl	_g_print
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#1
	eeq	r6,r7,r6
	brnz	r6,.L_app_53
	addi	r7,r0,#3
	sw	-40(r4),r7
	jp	.L_app_38
.L_app_53:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	jp	.L_app_52
.L_app_45:
	addi	r8,r0,%hi(.LC_app_5)
	lsoi	r8,r8,%lo(.LC_app_5)
	addi	r9,r0,#0
	addi	r10,r0,#120
	jpl	_g_print
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#2
	eeq	r6,r7,r6
	brnz	r6,.L_app_55
	addi	r6,r0,#3
	sw	-40(r4),r6
	jp	.L_app_38
.L_app_55:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-26
	add	r6,r6,r7
	add	r8,r0,r6
	jpl	_loadByteUnsigned
	add	r7,r0,r6
	addi	r6,r0,%hi(_bargraphValue)
	lsoi	r6,r6,%lo(_bargraphValue)
	sw	(r6),r7
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	jp	.L_app_52
.L_app_43:
	addi	r7,r0,#2
	sw	-40(r4),r7
	jp	.L_app_38
.L_app_52:
	lw	r6,-16(r4)
	nop
	addi	r7,r6,#1
	lw	r6,-8(r4)
	nop
	elt	r6,r7,r6
	brz	r6,.L_app_39
	addi	r6,r0,#5
	sw	-40(r4),r6
	jp	.L_app_38
.L_app_39:
	lw	r6,-8(r4)
	nop
	lw	r7,-16(r4)
	nop
	elt	r6,r6,r7
	brnz	r6,.L_app_40
	addi	r6,r0,#0
	sw	-8(r4),r6
.L_app_34:
	addi	r7,r0,#0
	sw	-40(r4),r7
.L_app_38:
	lw	r6,-40(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_pollDisplay, .-_pollDisplay
	.section	.rodata
	.align 2
.LC_app_6:
	.string	"Start1...\r\n"
	.align 2
.LC_app_7:
	.string	"Start2...\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 132 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-172	; alloc local storage
	addi	r8,r0,%hi(.LC_app_6)
	lsoi	r8,r8,%lo(.LC_app_6)
	jpl	_u_print
	addi	r6,r0,#80
	sw	-24(r4),r6
	addi	r6,r0,#80
	sw	-20(r4),r6
	addi	r6,r0,#1
	sw	-16(r4),r6
	addi	r6,r0,#130
	sw	-36(r4),r6
	addi	r6,r0,#80
	sw	-32(r4),r6
	addi	r6,r0,#1
	sw	-28(r4),r6
	addi	r6,r0,#130
	sw	-48(r4),r6
	addi	r6,r0,#130
	sw	-44(r4),r6
	addi	r6,r0,#1
	sw	-40(r4),r6
	addi	r6,r0,#80
	sw	-60(r4),r6
	addi	r6,r0,#130
	sw	-56(r4),r6
	addi	r6,r0,#1
	sw	-52(r4),r6
	lw	r7,-24(r4)
	nop
	lw	r6,-36(r4)
	nop
	add	r7,r7,r6
	lw	r6,-48(r4)
	nop
	add	r7,r7,r6
	lw	r6,-60(r4)
	nop
	add	r6,r7,r6
	arsi	r6,r6,#2
	sw	-72(r4),r6
	lw	r7,-20(r4)
	nop
	lw	r6,-32(r4)
	nop
	add	r7,r7,r6
	lw	r6,-44(r4)
	nop
	add	r7,r7,r6
	lw	r6,-56(r4)
	nop
	add	r6,r7,r6
	arsi	r6,r6,#2
	sw	-68(r4),r6
	addi	r6,r0,#1
	sw	-64(r4),r6
	addi	r6,r0,#160
	sw	-84(r4),r6
	addi	r6,r0,#120
	sw	-80(r4),r6
	addi	r6,r0,#1
	sw	-76(r4),r6
	addi	r6,r0,#15
	sw	-8(r4),r6
	jpl	_d_clear
	addi	r6,r4,#-24
	addi	r7,r4,#-36
	addi	r10,r4,#-48
	addi	r11,r4,#-60
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_drawRectangle
	addi	r8,r0,%hi(.LC_app_7)
	lsoi	r8,r8,%lo(.LC_app_7)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.comm	_bargraphValue,4,4
	.ident	"GCC: (GNU) 4.2.2"
