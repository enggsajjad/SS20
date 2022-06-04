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
	.section	.rodata
	.align 2
LC_app_0:
	.string	"Testing Multiple LCD HW...\r\n"
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
	addi	r8,r0,%hi(LC_app_0)
	lsoi	r8,r8,%lo(LC_app_0)
	jpl	_t_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_wait
	.type	_wait, @function
_wait:
;  Function 'wait'; 8 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-16	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	sw	-4(r4),r6
L_lib_lcd_320_2:
	addi	r6,r0,#0x0
	sb	-5(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r7,8(r4)
	nop
	eeq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_3
	addi	r6,r0,#0x1
	sb	-5(r4),r6
L_lib_lcd_320_3:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lb	r7,-5(r4)
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_2
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#-1
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_wait, .-_wait
	.align 2
	.globl	_getack
	.type	_getack, @function
_getack:
;  Function 'getack'; 12 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-20	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,8(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	addi	r6,r0,#15
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_7
	addi	r6,r0,#1
	sw	-12(r4),r6
	jp	L_lib_lcd_320_9
L_lib_lcd_320_7:
	addi	r6,r0,#0
	sw	-12(r4),r6
L_lib_lcd_320_9:
	lw	r6,-12(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_getack, .-_getack
	.align 2
	.globl	_checkbuffer
	.type	_checkbuffer, @function
_checkbuffer:
;  Function 'checkbuffer'; 36 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	addi	r6,r0,#0
	sw	-32(r4),r6
	addi	r6,r0,#0
	sw	-24(r4),r6
	addi	r6,r0,#0
	sw	-20(r4),r6
	addi	r6,r0,#0
	sw	-16(r4),r6
	addi	r6,r0,#0
	sw	-12(r4),r6
	addi	r6,r0,#222
	sw	-8(r4),r6
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#4
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#18
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#73
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#92
	sw	(r7),r6
	addi	r6,r0,#-1
	sw	-28(r4),r6
	jp	L_lib_lcd_320_12
L_lib_lcd_320_13:
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	addi	r7,r6,#1
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#6
	sw	(r7),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-32(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-32(r4),r6
	lw	r6,-32(r4)
	nop
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-24(r4),r6
	lw	r7,-28(r4)
	nop
	lw	r6,-24(r4)
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-20(r4),r6
	lw	r7,-28(r4)
	nop
	lw	r6,-20(r4)
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-16(r4),r6
	lw	r7,-28(r4)
	nop
	lw	r6,-16(r4)
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-12(r4),r6
	lw	r6,-28(r4)
	nop
	addi	r7,r0,#-32768
	lsoi	r7,r7,#255
	and	r7,r6,r7
	sw	-36(r4),r7
	addi	r6,r0,#0
	lw	r7,-36(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_lib_lcd_320_14
	lw	r6,-36(r4)
	nop
	addi	r6,r6,#-1
	sw	-36(r4),r6
	lw	r7,-36(r4)
	nop
	addi	r6,r0,#-256
	or	r7,r7,r6
	sw	-36(r4),r7
	lw	r7,-36(r4)
	nop
	addi	r7,r7,#1
	sw	-36(r4),r7
L_lib_lcd_320_14:
	lw	r6,-36(r4)
	nop
	sw	-28(r4),r6
	lw	r6,-28(r4)
	nop
	lw	r7,-12(r4)
	nop
	eeq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_12
	addi	r6,r0,#-1
	sw	-28(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#4
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#18
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#82
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#101
	sw	(r7),r6
L_lib_lcd_320_12:
	lw	r6,-28(r4)
	nop
	addi	r7,r0,#-1
	eeq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_13
	lw	r6,-20(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_checkbuffer, .-_checkbuffer
	.align 2
	.globl	_getbytes
	.type	_getbytes, @function
_getbytes:
;  Function 'getbytes'; 28 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-68	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	sw	-28(r4),r6
	addi	r6,r0,#0
	sw	-16(r4),r6
	addi	r6,r0,#0
	sw	-12(r4),r6
	addi	r6,r0,#222
	sw	-8(r4),r6
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#4
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#18
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#83
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#102
	sw	(r7),r6
	addi	r6,r0,#-1
	sw	-20(r4),r6
	jp	L_lib_lcd_320_19
L_lib_lcd_320_20:
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#0
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	addi	r7,r6,#1
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r6,12(r4)
	nop
	addi	r7,r6,#4
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-24(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-24(r4),r6
	lw	r6,-24(r4)
	nop
	sw	-20(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-16(r4),r6
	lw	r7,-20(r4)
	nop
	lw	r6,-16(r4)
	nop
	add	r6,r7,r6
	sw	-20(r4),r6
	jp	L_lib_lcd_320_21
L_lib_lcd_320_22:
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-24(r4),r6
	lw	r6,-28(r4)
	nop
	add	r7,r0,r6
	lw	r6,8(r4)
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	lw	r9,-24(r4)
	nop
	jpl	_storeByte
	lw	r6,-28(r4)
	nop
	addi	r6,r6,#1
	sw	-28(r4),r6
	lw	r7,-20(r4)
	nop
	lw	r6,-24(r4)
	nop
	add	r6,r7,r6
	sw	-20(r4),r6
L_lib_lcd_320_21:
	lw	r6,-28(r4)
	nop
	lw	r7,12(r4)
	nop
	eneq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_22
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-12(r4),r6
	lw	r6,-20(r4)
	nop
	andi	r6,r6,#255
	sw	-20(r4),r6
	lw	r7,-20(r4)
	nop
	lw	r6,-12(r4)
	nop
	eeq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_19
	addi	r6,r0,#-1
	sw	-20(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#4
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#18
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#1
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#82
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#101
	sw	(r7),r6
L_lib_lcd_320_19:
	lw	r6,-20(r4)
	nop
	addi	r7,r0,#-1
	eeq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_20
	lw	r6,-28(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_getbytes, .-_getbytes
	.align 2
	.globl	_sendcommand
	.type	_sendcommand, @function
_sendcommand:
;  Function 'sendcommand'; 32 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-72	; alloc local storage
	sb	8(r4),r8
	sb	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	addi	r6,r0,#512
	lsoi	r6,r6,#0
	sw	-4(r4),r6
L_lib_lcd_320_28:
	lw	r6,16(r4)
	nop
	sw	-20(r4),r6
	lw	r6,20(r4)
	nop
	sw	-16(r4),r6
	lw	r6,24(r4)
	nop
	sw	-12(r4),r6
	lw	r6,28(r4)
	nop
	sw	-8(r4),r6
	lw	r7,24(r4)
	nop
	lw	r6,28(r4)
	nop
	add	r6,r7,r6
	addi	r7,r6,#6
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r7,-4(r4)
	nop
	lw	r6,32(r4)
	nop
	sw	(r7),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#17
	sw	(r7),r6
	lw	r7,24(r4)
	nop
	lw	r6,28(r4)
	nop
	add	r6,r7,r6
	addi	r7,r6,#3
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#27
	sw	(r7),r6
	lb	r7,8(r4)
	nop
	andi	r7,r7,#0x00ff
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lb	r7,12(r4)
	nop
	andi	r7,r7,#0x00ff
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r7,24(r4)
	nop
	lw	r6,28(r4)
	nop
	add	r6,r7,r6
	addi	r7,r6,#47
	lb	r6,8(r4)
	nop
	andi	r6,r6,#0x00ff
	add	r7,r7,r6
	lb	r6,12(r4)
	nop
	andi	r6,r6,#0x00ff
	add	r6,r7,r6
	sw	-28(r4),r6
	jp	L_lib_lcd_320_29
L_lib_lcd_320_30:
	lw	r6,-20(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-24(r4),r6
	lw	r6,-20(r4)
	nop
	addi	r6,r6,#4
	sw	-20(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-24(r4)
	nop
	sw	(r7),r6
	lw	r7,-28(r4)
	nop
	lw	r6,-24(r4)
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
L_lib_lcd_320_29:
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	addi	r6,r0,#-1
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_30
	jp	L_lib_lcd_320_32
L_lib_lcd_320_33:
	lw	r6,-16(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-24(r4),r6
	lw	r6,-16(r4)
	nop
	addi	r6,r6,#1
	sw	-16(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,-24(r4)
	nop
	sw	(r7),r6
	lw	r7,-28(r4)
	nop
	lw	r6,-24(r4)
	nop
	add	r6,r7,r6
	sw	-28(r4),r6
L_lib_lcd_320_32:
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#-1
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	addi	r6,r0,#-1
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_33
	lw	r6,-28(r4)
	nop
	addi	r7,r0,#-32768
	lsoi	r7,r7,#255
	and	r7,r6,r7
	sw	-32(r4),r7
	addi	r6,r0,#0
	lw	r7,-32(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_lib_lcd_320_35
	lw	r6,-32(r4)
	nop
	addi	r6,r6,#-1
	sw	-32(r4),r6
	lw	r7,-32(r4)
	nop
	addi	r6,r0,#-256
	or	r7,r7,r6
	sw	-32(r4),r7
	lw	r7,-32(r4)
	nop
	addi	r7,r7,#1
	sw	-32(r4),r7
L_lib_lcd_320_35:
	lw	r7,-32(r4)
	nop
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	addi	r8,r0,#10000
	jpl	_wait
	lw	r8,32(r4)
	nop
	jpl	_getack
	add	r7,r0,r6
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_28
	addi	r8,r0,#10000
	jpl	_wait
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_sendcommand, .-_sendcommand
	.align 2
	.globl	_g_print
	.type	_g_print, @function
_g_print:
;  Function 'g_print'; 16 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-56	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	lw	r6,12(r4)
	nop
	sw	-16(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-12(r4),r6
	lw	r6,16(r4)
	nop
	sw	-8(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-4(r4),r6
	lw	r8,8(r4)
	nop
	jpl	_strlen
	addi	r7,r6,#1
	addi	r6,r4,#-16
	addi	r8,r0,#0x5a
	addi	r9,r0,#0x4c
	add	r10,r0,r6
	lw	r11,8(r4)
	nop
	addi	r12,r0,#4
	add	r13,r0,r7
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_print, .-_g_print
	.align 2
	.globl	_g_drawrect
	.type	_g_drawrect, @function
_g_drawrect:
;  Function 'g_drawrect'; 32 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-72	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	lw	r6,8(r4)
	nop
	sw	-32(r4),r6
	lw	r6,8(r4)
	nop
	arsi	r6,r6,#8
	sw	-28(r4),r6
	lw	r6,12(r4)
	nop
	sw	-24(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-20(r4),r6
	lw	r6,16(r4)
	nop
	sw	-16(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-12(r4),r6
	lw	r6,20(r4)
	nop
	sw	-8(r4),r6
	lw	r6,20(r4)
	nop
	arsi	r6,r6,#8
	sw	-4(r4),r6
	addi	r6,r4,#-32
	addi	r8,r0,#0x47
	addi	r9,r0,#0x52
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#8
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_drawrect, .-_g_drawrect
	.align 2
	.globl	_g_drawline
	.type	_g_drawline, @function
_g_drawline:
;  Function 'g_drawline'; 32 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-72	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	lw	r6,8(r4)
	nop
	sw	-32(r4),r6
	lw	r6,8(r4)
	nop
	arsi	r6,r6,#8
	sw	-28(r4),r6
	lw	r6,12(r4)
	nop
	sw	-24(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-20(r4),r6
	lw	r6,16(r4)
	nop
	sw	-16(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-12(r4),r6
	lw	r6,20(r4)
	nop
	sw	-8(r4),r6
	lw	r6,20(r4)
	nop
	arsi	r6,r6,#8
	sw	-4(r4),r6
	addi	r6,r4,#-32
	addi	r8,r0,#0x47
	addi	r9,r0,#0x44
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#8
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_drawline, .-_g_drawline
.data
	.align 2
	.type	_barcounter1675, @object
	.size	_barcounter1675, 4
_barcounter1675:
	.long	1
.text
	.align 2
	.globl	_g_makebar
	.type	_g_makebar, @function
_g_makebar:
;  Function 'g_makebar'; 56 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-96	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	sw	36(r4),r15
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	lw	r7,(r6)
	nop
	addi	r6,r0,#31
	elt	r6,r6,r7
	brnz	r6,L_lib_lcd_320_45
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	lw	r6,(r6)
	nop
	sw	-52(r4),r6
	lw	r6,8(r4)
	nop
	sw	-48(r4),r6
	lw	r6,8(r4)
	nop
	arsi	r6,r6,#8
	sw	-44(r4),r6
	lw	r6,12(r4)
	nop
	sw	-40(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-36(r4),r6
	lw	r6,16(r4)
	nop
	sw	-32(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-28(r4),r6
	lw	r6,20(r4)
	nop
	sw	-24(r4),r6
	lw	r6,20(r4)
	nop
	arsi	r6,r6,#8
	sw	-20(r4),r6
	lw	r6,24(r4)
	nop
	sw	-16(r4),r6
	lw	r6,28(r4)
	nop
	sw	-12(r4),r6
	lw	r6,36(r4)
	nop
	sw	-8(r4),r6
	lw	r6,40(r4)
	nop
	sw	-4(r4),r6
	addi	r6,r4,#-52
	addi	r8,r0,#0x42
	addi	r9,r0,#0x52
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#13
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	lw	r7,44(r4)
	nop
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,L_lib_lcd_320_47
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	lw	r6,(r6)
	nop
	sw	-52(r4),r6
	addi	r6,r4,#-52
	addi	r8,r0,#0x41
	addi	r9,r0,#0x42
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
L_lib_lcd_320_47:
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	lw	r6,(r6)
	nop
	sw	-52(r4),r6
	addi	r7,r6,#1
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	sw	(r6),r7
	lw	r6,32(r4)
	nop
	sw	-48(r4),r6
	addi	r6,r4,#-52
	addi	r8,r0,#0x42
	addi	r9,r0,#0x41
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#2
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,%hi(_barcounter1675)
	lsoi	r6,r6,%lo(_barcounter1675)
	lw	r6,(r6)
	nop
	addi	r6,r6,#-1
	sw	-56(r4),r6
	jp	L_lib_lcd_320_49
L_lib_lcd_320_45:
	addi	r6,r0,#-1
	sw	-56(r4),r6
L_lib_lcd_320_49:
	lw	r6,-56(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makebar, .-_g_makebar
	.align 2
	.globl	_g_setbar
	.type	_g_setbar, @function
_g_setbar:
;  Function 'g_setbar'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	sw	-4(r4),r6
	addi	r6,r4,#-8
	addi	r8,r0,#0x42
	addi	r9,r0,#0x41
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#2
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_setbar, .-_g_setbar
	.align 2
	.globl	_g_makeswitch
	.type	_g_makeswitch, @function
_g_makeswitch:
;  Function 'g_makeswitch'; 40 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-80	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	lw	r6,12(r4)
	nop
	sw	-40(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-36(r4),r6
	lw	r6,16(r4)
	nop
	sw	-32(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-28(r4),r6
	lw	r6,20(r4)
	nop
	sw	-24(r4),r6
	lw	r6,20(r4)
	nop
	arsi	r6,r6,#8
	sw	-20(r4),r6
	lw	r6,24(r4)
	nop
	sw	-16(r4),r6
	lw	r6,24(r4)
	nop
	arsi	r6,r6,#8
	sw	-12(r4),r6
	lw	r6,28(r4)
	nop
	sw	-8(r4),r6
	lw	r6,32(r4)
	nop
	sw	-4(r4),r6
	lw	r8,8(r4)
	nop
	jpl	_strlen
	addi	r7,r6,#1
	addi	r6,r4,#-40
	addi	r8,r0,#0x41
	addi	r9,r0,#0x4b
	add	r10,r0,r6
	lw	r11,8(r4)
	nop
	addi	r12,r0,#10
	add	r13,r0,r7
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makeswitch, .-_g_makeswitch
	.align 2
	.globl	_g_makemenubutton
	.type	_g_makemenubutton, @function
_g_makemenubutton:
;  Function 'g_makemenubutton'; 44 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-84	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	sw	20(r4),r11
	sw	24(r4),r12
	sw	28(r4),r13
	sw	32(r4),r14
	sw	36(r4),r15
	lw	r6,12(r4)
	nop
	sw	-44(r4),r6
	lw	r6,12(r4)
	nop
	arsi	r6,r6,#8
	sw	-40(r4),r6
	lw	r6,16(r4)
	nop
	sw	-36(r4),r6
	lw	r6,16(r4)
	nop
	arsi	r6,r6,#8
	sw	-32(r4),r6
	lw	r6,20(r4)
	nop
	sw	-28(r4),r6
	lw	r6,20(r4)
	nop
	arsi	r6,r6,#8
	sw	-24(r4),r6
	lw	r6,24(r4)
	nop
	sw	-20(r4),r6
	lw	r6,24(r4)
	nop
	arsi	r6,r6,#8
	sw	-16(r4),r6
	lw	r6,28(r4)
	nop
	sw	-12(r4),r6
	lw	r6,32(r4)
	nop
	sw	-8(r4),r6
	lw	r6,36(r4)
	nop
	sw	-4(r4),r6
	lw	r8,8(r4)
	nop
	jpl	_strlen
	addi	r7,r6,#1
	addi	r6,r4,#-44
	addi	r8,r0,#0x41
	addi	r9,r0,#0x4d
	add	r10,r0,r6
	lw	r11,8(r4)
	nop
	addi	r12,r0,#11
	add	r13,r0,r7
	addi	r14,r0,#222
	jpl	_sendcommand
	lw	r7,40(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r6,r7
	brz	r6,L_lib_lcd_320_56
	addi	r6,r4,#40
	addi	r8,r0,#0x4e
	addi	r9,r0,#0x59
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#111
	jpl	_sendcommand
L_lib_lcd_320_56:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makemenubutton, .-_g_makemenubutton
	.align 2
	.globl	_g_makeradiogroup
	.type	_g_makeradiogroup, @function
_g_makeradiogroup:
;  Function 'g_makeradiogroup'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	addi	r8,r0,#0x41
	addi	r9,r0,#0x52
	addi	r6,r4,#8
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makeradiogroup, .-_g_makeradiogroup
	.align 2
	.globl	_t_print
	.type	_t_print, @function
_t_print:
;  Function 't_print'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	lw	r8,8(r4)
	nop
	jpl	_strlen
	addi	r8,r0,#0x5a
	addi	r9,r0,#0x54
	addi	r10,r0,#0
	lw	r11,8(r4)
	nop
	addi	r12,r0,#0
	add	r13,r0,r6
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r8,r0,#8000
	jpl	_wait
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_print, .-_t_print
	.align 2
	.globl	_t_printInt
	.type	_t_printInt, @function
_t_printInt:
;  Function 't_printInt'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	8(r4),r8
	addi	r6,r4,#-20
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_t_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printInt, .-_t_printInt
	.section	.rodata
	.align 2
LC_lib_lcd_320_0:
	.string	"0x"
.text
	.align 2
	.globl	_t_printHex
	.type	_t_printHex, @function
_t_printHex:
;  Function 't_printHex'; 12 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-52	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r4,#-10
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	lw	r10,12(r4)
	nop
	jpl	_intToHexStr
	addi	r8,r0,%hi(LC_lib_lcd_320_0)
	lsoi	r8,r8,%lo(LC_lib_lcd_320_0)
	jpl	_t_print
	addi	r6,r4,#-10
	add	r8,r0,r6
	jpl	_t_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printHex, .-_t_printHex
	.align 2
	.globl	_t_cursor
	.type	_t_cursor, @function
_t_cursor:
;  Function 't_cursor'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	addi	r8,r0,#0x54
	addi	r9,r0,#0x43
	addi	r6,r4,#8
	add	r10,r0,r6
	addi	r11,r0,#0
	addi	r12,r0,#1
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_cursor, .-_t_cursor
	.align 2
	.globl	_t_enable
	.type	_t_enable, @function
_t_enable:
;  Function 't_enable'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_lib_lcd_320_70
	addi	r8,r0,#0x54
	addi	r9,r0,#0x45
	addi	r10,r0,#0
	addi	r11,r0,#0
	addi	r12,r0,#0
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	jp	L_lib_lcd_320_72
L_lib_lcd_320_70:
	addi	r8,r0,#0x54
	addi	r9,r0,#0x41
	addi	r10,r0,#0
	addi	r11,r0,#0
	addi	r12,r0,#0
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
L_lib_lcd_320_72:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_enable, .-_t_enable
	.align 2
	.globl	_t_saveCursorPosition
	.type	_t_saveCursorPosition, @function
_t_saveCursorPosition:
;  Function 't_saveCursorPosition'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#0x54
	addi	r9,r0,#0x53
	addi	r10,r0,#0
	addi	r11,r0,#0
	addi	r12,r0,#0
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_saveCursorPosition, .-_t_saveCursorPosition
	.align 2
	.globl	_t_restoreLastSavedCursorPosition
	.type	_t_restoreLastSavedCursorPosition, @function
_t_restoreLastSavedCursorPosition:
;  Function 't_restoreLastSavedCursorPosition'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#0x54
	addi	r9,r0,#0x52
	addi	r10,r0,#0
	addi	r11,r0,#0
	addi	r12,r0,#0
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_restoreLastSavedCursorPosition, .-_t_restoreLastSavedCursorPosition
	.align 2
	.globl	_d_clear
	.type	_d_clear, @function
_d_clear:
;  Function 'd_clear'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#0x44
	addi	r9,r0,#0x4c
	addi	r10,r0,#0
	addi	r11,r0,#0
	addi	r12,r0,#0
	addi	r13,r0,#0
	addi	r14,r0,#222
	jpl	_sendcommand
	addi	r8,r0,#38
	lsoi	r8,r8,#9632
	jpl	_wait
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_d_clear, .-_d_clear
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	jp	L_lib_uart_2
L_lib_uart_3:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	lw	r6,-4(r4)
	nop
	sw	(r6),r7
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_lib_uart_2:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r7,r6,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_lib_uart_3
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.align 2
	.globl	_u_printInt
	.type	_u_printInt, @function
_u_printInt:
;  Function 'u_printInt'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	8(r4),r8
	addi	r6,r4,#-20
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	jpl	_intToStr
	addi	r6,r4,#-20
	add	r8,r0,r6
	jpl	_u_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_printInt, .-_u_printInt
	.section	.rodata
	.align 2
LC_lib_uart_0:
	.string	"0x"
.text
	.align 2
	.globl	_u_printHex
	.type	_u_printHex, @function
_u_printHex:
;  Function 'u_printHex'; 12 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-52	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r4,#-10
	lw	r8,8(r4)
	nop
	add	r9,r0,r6
	lw	r10,12(r4)
	nop
	jpl	_intToHexStr
	addi	r8,r0,%hi(LC_lib_uart_0)
	lsoi	r8,r8,%lo(LC_lib_uart_0)
	jpl	_u_print
	addi	r6,r4,#-10
	add	r8,r0,r6
	jpl	_u_print
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_printHex, .-_u_printHex
	.align 2
	.globl	_u_getbytes
	.type	_u_getbytes, @function
_u_getbytes:
;  Function 'u_getbytes'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	sw	-4(r4),r6
	addi	r6,r0,#0
	sw	-8(r4),r6
	jp	L_lib_uart_11
L_lib_uart_12:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	add	r8,r0,r7
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
L_lib_uart_11:
	lw	r6,-8(r4)
	nop
	lw	r7,12(r4)
	nop
	elt	r6,r6,r7
	brnz	r6,L_lib_uart_12
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_getbytes, .-_u_getbytes
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_storeByte
	.type	_storeByte, @function
_storeByte:
;  Function 'storeByte'; 20 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-28	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#-4
	sw	-20(r4),r6
	lw	r6,8(r4)
	nop
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	lw	r6,-20(r4)
	nop
	and	r6,r7,r6
	sw	-12(r4),r6
	lw	r6,-12(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r6,-16(r4)
	nop
	sub	r6,r0,r6
	subi	r6,r6,#1
	andi	r6,r6,#3
	llsi	r7,r6,#3
	addi	r6,r0,#255
	lls	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,12(r4)
	nop
	lls	r6,r6,r7
	sw	12(r4),r6
	lw	r6,-4(r4)
	nop
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r6,-8(r4)
	nop
	and	r6,r6,r7
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	lw	r6,12(r4)
	nop
	or	r6,r7,r6
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_storeByte, .-_storeByte
	.align 2
	.globl	_storeShort
	.type	_storeShort, @function
_storeShort:
;  Function 'storeShort'; 28 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-36	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#-4
	sw	-20(r4),r6
	lw	r6,8(r4)
	nop
	sw	-16(r4),r6
	lw	r7,-16(r4)
	nop
	lw	r6,-20(r4)
	nop
	and	r6,r7,r6
	sw	-12(r4),r6
	lw	r6,-12(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-8(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r7,r6,#1
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_loadStoreByte_4
	addi	r6,r0,#-1
	lsoi	r6,r6,#0
	sw	-28(r4),r6
	jp	L_loadStoreByte_6
L_loadStoreByte_4:
	lsoi	r6,r0,#65535
	sw	-28(r4),r6
L_loadStoreByte_6:
	lw	r6,-28(r4)
	nop
	sw	-4(r4),r6
	lw	r6,-16(r4)
	nop
	andi	r6,r6,#2
	sw	-24(r4),r6
	lw	r6,-24(r4)
	nop
	arsi	r6,r6,#1
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#4
	lw	r6,12(r4)
	nop
	ars	r6,r6,r7
	sw	12(r4),r6
	lw	r6,-4(r4)
	nop
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r6,-8(r4)
	nop
	and	r6,r6,r7
	sw	-8(r4),r6
	lw	r7,-8(r4)
	nop
	lw	r6,12(r4)
	nop
	or	r6,r7,r6
	sw	-8(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-8(r4)
	nop
	sw	(r7),r6
	lw	r6,-8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_storeShort, .-_storeShort
	.align 2
	.globl	_loadByteUnsigned
	.type	_loadByteUnsigned, @function
_loadByteUnsigned:
;  Function 'loadByteUnsigned'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#-4
	sw	-16(r4),r6
	lw	r6,8(r4)
	nop
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-16(r4)
	nop
	and	r6,r7,r6
	sw	-8(r4),r6
	lw	r6,-8(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,-4(r4)
	nop
	ars	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	andi	r6,r6,#255
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_loadByteUnsigned, .-_loadByteUnsigned
	.align 2
	.globl	_loadByteSigned
	.type	_loadByteSigned, @function
_loadByteSigned:
;  Function 'loadByteSigned'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#-4
	sw	-16(r4),r6
	lw	r6,8(r4)
	nop
	sw	-12(r4),r6
	lw	r7,-12(r4)
	nop
	lw	r6,-16(r4)
	nop
	and	r6,r7,r6
	sw	-8(r4),r6
	lw	r6,-8(r4)
	nop
	lw	r6,(r6)
	nop
	sw	-4(r4),r6
	lw	r6,-12(r4)
	nop
	andi	r6,r6,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r7,r6,#3
	lw	r6,-4(r4)
	nop
	ars	r6,r6,r7
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	andi	r6,r6,#255
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	llsi	r6,r6,#24
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	arsi	r6,r6,#24
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_loadByteSigned, .-_loadByteSigned
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_intToStr
	.type	_intToStr, @function
_intToStr:
;  Function 'intToStr'; 40 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-80	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,#0
	sw	-8(r4),r6
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r7,8(r4)
	nop
	addi	r6,r0,#0
	elt	r6,r7,r6
	brz	r6,L_string_2
	lw	r6,8(r4)
	nop
	sub	r6,r0,r6
	sw	8(r4),r6
	lw	r8,12(r4)
	nop
	addi	r9,r0,#45
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	jp	L_string_6
L_string_2:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_6
	lw	r8,12(r4)
	nop
	addi	r9,r0,#48
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	jp	L_string_6
L_string_7:
	lw	r6,-8(r4)
	nop
	addi	r7,r4,#-40
	add	r7,r7,r6
	lw	r8,8(r4)
	nop
	addi	r6,r0,#10
	mod	r6,r8,r6
	addi	r6,r6,#48
	add	r8,r0,r7
	add	r9,r0,r6
	jpl	_storeByte
	lw	r7,8(r4)
	nop
	addi	r6,r0,#10
	div	r6,r7,r6
	sw	8(r4),r6
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
L_string_6:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_7
	jp	L_string_9
L_string_10:
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#-1
	sw	-8(r4),r6
	lw	r6,-4(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r8,r7,r6
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-40
	add	r6,r6,r7
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
L_string_9:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r7,r6
	brnz	r6,L_string_10
	lw	r6,-4(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToStr, .-_intToStr
	.align 2
	.globl	_intToHexStr
	.type	_intToHexStr, @function
_intToHexStr:
;  Function 'intToHexStr'; 24 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-64	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-12(r4),r6
	jp	L_string_14
L_string_15:
	lw	r6,8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_16
	lw	r6,16(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_18
	lw	r6,-12(r4)
	nop
	lw	r7,16(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_18
L_string_16:
	lw	r6,8(r4)
	nop
	andi	r6,r6,#15
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	addi	r6,r0,#9
	elt	r6,r6,r7
	brnz	r6,L_string_20
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lw	r7,-4(r4)
	nop
	addi	r7,r7,#48
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_storeByte
	jp	L_string_22
L_string_20:
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lw	r7,-4(r4)
	nop
	addi	r7,r7,#55
	add	r8,r0,r6
	add	r9,r0,r7
	jpl	_storeByte
L_string_22:
	lw	r6,8(r4)
	nop
	arsi	r6,r6,#4
	sw	8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#1
	sw	-12(r4),r6
L_string_14:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#7
	elt	r6,r7,r6
	brz	r6,L_string_15
L_string_18:
	addi	r6,r0,#0
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
	jp	L_string_23
L_string_24:
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r8,r7,r6
	lw	r6,-12(r4)
	nop
	add	r7,r0,r6
	addi	r6,r4,#-22
	add	r6,r6,r7
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	add	r9,r0,r6
	jpl	_storeByte
	lw	r6,-8(r4)
	nop
	addi	r6,r6,#1
	sw	-8(r4),r6
	lw	r6,-12(r4)
	nop
	addi	r6,r6,#-1
	sw	-12(r4),r6
L_string_23:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	elt	r6,r6,r7
	brz	r6,L_string_24
	lw	r6,-8(r4)
	nop
	add	r7,r0,r6
	lw	r6,12(r4)
	nop
	add	r6,r7,r6
	add	r8,r0,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToHexStr, .-_intToHexStr
	.align 2
	.globl	_strlen
	.type	_strlen, @function
_strlen:
;  Function 'strlen'; 8 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-16	; alloc local storage
	sw	8(r4),r8
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	L_string_28
L_string_29:
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
L_string_28:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	sb	-5(r4),r6
	lb	r7,-5(r4)
	nop
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r7,r6
	brnz	r6,L_string_30
	addi	r6,r0,#0x1
	sb	-5(r4),r6
L_string_30:
	lb	r7,-5(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	andi	r7,r7,#0x00ff
	addi	r6,r0,#0
	eneq	r6,r7,r6
	brnz	r6,L_string_29
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strlen, .-_strlen
	.align 2
	.globl	_strcat
	.type	_strcat, @function
_strcat:
;  Function 'strcat'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	jp	L_string_34
L_string_35:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_string_34:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_35
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_37
L_string_38:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-4(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_37:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_38
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcat, .-_strcat
	.align 2
	.globl	_strncat
	.type	_strncat, @function
_strncat:
;  Function 'strncat'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	jp	L_string_42
L_string_43:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
L_string_42:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_43
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_45
L_string_46:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-8(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_45:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_47
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_46
L_string_47:
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncat, .-_strncat
	.align 2
	.globl	_strcpy
	.type	_strcpy, @function
_strcpy:
;  Function 'strcpy'; 4 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-44	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_51
L_string_52:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-4(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_51:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_52
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcpy, .-_strcpy
	.align 2
	.globl	_strncpy
	.type	_strncpy, @function
_strncpy:
;  Function 'strncpy'; 8 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_56
L_string_57:
	lw	r7,8(r4)
	nop
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	add	r8,r0,r7
	lw	r9,-8(r4)
	nop
	jpl	_storeByte
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_56:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_58
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_57
L_string_58:
	lw	r8,8(r4)
	nop
	addi	r9,r0,#0
	jpl	_storeByte
	lw	r6,8(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncpy, .-_strncpy
	.align 2
	.globl	_strcmp
	.type	_strcmp, @function
_strcmp:
;  Function 'strcmp'; 12 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-20	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_62
L_string_63:
	lw	r6,-8(r4)
	nop
	lw	r7,-4(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_64
	addi	r6,r0,#-1
	sw	-12(r4),r6
	jp	L_string_66
L_string_64:
	lw	r6,-8(r4)
	nop
	lw	r7,-4(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_string_67
	addi	r6,r0,#1
	sw	-12(r4),r6
	jp	L_string_66
L_string_67:
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-4(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
L_string_62:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_69
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brnz	r6,L_string_63
L_string_69:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_71
	addi	r6,r0,#1
	sw	-12(r4),r6
	jp	L_string_66
L_string_71:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_73
	addi	r6,r0,#-1
	sw	-12(r4),r6
	jp	L_string_66
L_string_73:
	addi	r6,r0,#0
	sw	-12(r4),r6
L_string_66:
	lw	r6,-12(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcmp, .-_strcmp
	.align 2
	.globl	_strncmp
	.type	_strncmp, @function
_strncmp:
;  Function 'strncmp'; 16 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-24	; alloc local storage
	sw	8(r4),r8
	sw	12(r4),r9
	sw	16(r4),r10
	addi	r6,r0,#0
	sw	-4(r4),r6
	lw	r6,8(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-12(r4),r6
	lw	r6,8(r4)
	nop
	addi	r6,r6,#1
	sw	8(r4),r6
	lw	r6,12(r4)
	nop
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	sw	-8(r4),r6
	lw	r6,12(r4)
	nop
	addi	r6,r6,#1
	sw	12(r4),r6
	jp	L_string_77
L_string_78:
	lw	r6,-12(r4)
	nop
	lw	r7,-8(r4)
	nop
	elt	r6,r6,r7
	brz	r6,L_string_79
	addi	r6,r0,#-1
	sw	-16(r4),r6
	jp	L_string_81
L_string_79:
	lw	r6,-12(r4)
	nop
	lw	r7,-8(r4)
	nop
	elt	r6,r7,r6
	brz	r6,L_string_77
	addi	r6,r0,#1
	sw	-16(r4),r6
	jp	L_string_81
L_string_77:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_83
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_83
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
	lw	r7,-4(r4)
	nop
	lw	r6,16(r4)
	nop
	elt	r6,r7,r6
	brnz	r6,L_string_78
L_string_83:
	lw	r6,-4(r4)
	nop
	lw	r7,16(r4)
	nop
	eneq	r6,r6,r7
	brnz	r6,L_string_86
	addi	r6,r0,#0
	sw	-16(r4),r6
	jp	L_string_81
L_string_86:
	lw	r6,-12(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_88
	addi	r6,r0,#1
	sw	-16(r4),r6
	jp	L_string_81
L_string_88:
	lw	r6,-8(r4)
	nop
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_90
	addi	r6,r0,#-1
	sw	-16(r4),r6
	jp	L_string_81
L_string_90:
	addi	r6,r0,#0
	sw	-16(r4),r6
L_string_81:
	lw	r6,-16(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncmp, .-_strncmp
	.align 2
	.globl	_tolower
	.type	_tolower, @function
_tolower:
;  Function 'tolower'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#64
	elt	r6,r7,r6
	brz	r6,L_string_94
	lw	r6,8(r4)
	nop
	addi	r7,r0,#90
	elt	r6,r7,r6
	brnz	r6,L_string_94
	lw	r6,8(r4)
	nop
	addi	r6,r6,#32
	sw	-4(r4),r6
	jp	L_string_97
L_string_94:
	lw	r6,8(r4)
	nop
	sw	-4(r4),r6
L_string_97:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_tolower, .-_tolower
	.align 2
	.globl	_toupper
	.type	_toupper, @function
_toupper:
;  Function 'toupper'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#96
	elt	r6,r7,r6
	brz	r6,L_string_100
	lw	r6,8(r4)
	nop
	addi	r7,r0,#122
	elt	r6,r7,r6
	brnz	r6,L_string_100
	lw	r6,8(r4)
	nop
	addi	r6,r6,#-32
	sw	-4(r4),r6
	jp	L_string_103
L_string_100:
	lw	r6,8(r4)
	nop
	sw	-4(r4),r6
L_string_103:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_toupper, .-_toupper
	.align 2
	.globl	_isdigit
	.type	_isdigit, @function
_isdigit:
;  Function 'isdigit'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	sw	8(r4),r8
	lw	r6,8(r4)
	nop
	addi	r7,r0,#47
	elt	r6,r7,r6
	brz	r6,L_string_106
	lw	r6,8(r4)
	nop
	addi	r7,r0,#57
	elt	r6,r7,r6
	brnz	r6,L_string_106
	addi	r6,r0,#1
	sw	-4(r4),r6
	jp	L_string_109
L_string_106:
	addi	r6,r0,#0
	sw	-4(r4),r6
L_string_109:
	lw	r6,-4(r4)
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_isdigit, .-_isdigit
	.ident	"GCC: (GNU) 4.2.2"