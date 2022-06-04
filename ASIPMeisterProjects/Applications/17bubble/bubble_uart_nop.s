; options passed:  -iprefix -auxbase-strip -O3
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcaller-saves -fcommon -fcprop-registers -fcrossjumping
; -fcse-follow-jumps -fcse-skip-blocks -fdefer-pop -fdelayed-branch
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations -ffunction-cse
; -fgcse -fgcse-after-reload -fgcse-lm -fguess-branch-probability -fident
; -fif-conversion -fif-conversion2 -finline-functions
; -finline-functions-called-once -fipa-pure-const -fipa-reference
; -fipa-type-escape -fivopts -fkeep-static-consts -fleading-underscore
; -fmath-errno -fmerge-constants -fmove-loop-invariants
; -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
; -freg-struct-return -fregmove -freorder-blocks -freorder-functions
; -frerun-cse-after-loop -fsched-interblock -fsched-spec
; -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
; -fshow-column -fsplit-ivs-in-unroller -fstrict-aliasing -fstrict-overflow
; -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-ccp -ftree-ch
; -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
; -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
; -ftree-loop-optimize -ftree-lrs -ftree-pre -ftree-salias -ftree-sink
; -ftree-sra -ftree-store-ccp -ftree-store-copy-prop -ftree-ter
; -ftree-vect-loop-version -ftree-vrp -funit-at-a-time -funswitch-loops
; -fzero-initialized-in-bss -mquickcall
.text
	.align 2
	.globl	_storeByte
	.type	_storeByte, @function
_storeByte:
;  Function 'storeByte'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	andi	r6,r8,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#-4
	add	r10,r0,r8
	and	r11,r10,r6
	sub	r6,r0,r10
	subi	r6,r6,#1
	llsi	r8,r7,#3
	andi	r7,r6,#3
	addi	r6,r0,#255
	lls	r12,r9,r8
	lw	r10,(r11)
	nop
	nop
	llsi	r9,r7,#3
	lls	r7,r6,r9
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r6,r12
	sw	(r11),r7
	nop
	add	r6,r0,r7
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_storeByte, .-_storeByte
	.align 2
	.globl	_intToStr
	.type	_intToStr, @function
_intToStr:
;  Function 'intToStr'; 32 bytes of locals, 5 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-64	; alloc local storage
	sw	0(r5),r16	; save r(r16)
	nop
	sw	4(r5),r17	; save r(r17)
	nop
	sw	8(r5),r18	; save r(r18)
	nop
	sw	12(r5),r19	; save r(r19)
	nop
	sw	16(r5),r20	; save r(r20)
	nop
	addi	r7,r0,#0
	add	r13,r0,r8
	add	r19,r0,r9
	elt	r6,r8,r7
	brnz	r6,.L20
	eeq	r6,r8,r7
	brnz	r6,.L7
	add	r20,r0,r7
.L6:
	addi	r12,r0,#0
	addi	r17,r4,#-32
	addi	r14,r0,#10
	addi	r16,r0,#255
	add	r15,r0,r12
.L9:
	add	r8,r12,r17
	andi	r6,r8,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	mod	r6,r13,r14
	llsi	r9,r7,#3
	addi	r7,r6,#48
	addi	r6,r0,#-4
	and	r10,r8,r6
	sub	r6,r0,r8
	subi	r6,r6,#1
	lls	r11,r7,r9
	andi	r7,r6,#3
	llsi	r8,r7,#3
	lls	r6,r16,r8
	lw	r7,(r10)
	nop
	nop
	sub	r9,r0,r6
	subi	r9,r9,#1
	and	r6,r9,r7
	or	r8,r6,r11
	sw	(r10),r8
	nop
	div	r13,r13,r14
	addi	r12,r12,#1
	eneq	r6,r13,r15
	brnz	r6,.L9
	addi	r18,r12,#-1
	add	r13,r19,r20
	add	r14,r17,r18
	addi	r16,r4,#-33
	addi	r15,r0,#255
.L12:
	addi	r6,r0,#-4
	and	r11,r13,r6
	sub	r6,r0,r13
	subi	r6,r6,#1
	andi	r7,r6,#3
	llsi	r8,r7,#3
	lls	r6,r15,r8
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r10,(r11)
	nop
	nop
	andi	r6,r13,#3
	and	r9,r7,r10
	sub	r7,r0,r6
	subi	r7,r7,#1
	lb	r12,(r14)
	nop
	nop
	andi	r12,r12,#0x00ff
	llsi	r8,r7,#3
	lls	r6,r12,r8
	or	r7,r9,r6
	sw	(r11),r7
	nop
	addi	r14,r14,#-1
	addi	r13,r13,#1
	eneq	r6,r14,r16
	brnz	r6,.L12
	addi	r6,r20,#1
	add	r6,r6,r18
	jp	.L10
.L7:
	addi	r6,r0,#-4
	and	r12,r9,r6
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	andi	r6,r19,#3
	sub	r8,r0,r7
	subi	r8,r8,#1
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#48
	lw	r10,(r12)
	nop
	nop
	llsi	r9,r7,#3
	and	r11,r8,r10
	lls	r7,r6,r9
	addi	r6,r0,#1
	or	r8,r11,r7
	sw	(r12),r8
	nop
	jp	.L10
.L20:
	addi	r6,r0,#-4
	and	r12,r9,r6
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	sub	r13,r0,r8
	andi	r6,r19,#3
	sub	r8,r0,r7
	subi	r8,r8,#1
	sub	r7,r0,r6
	subi	r7,r7,#1
	lw	r10,(r12)
	nop
	nop
	llsi	r9,r7,#3
	and	r11,r8,r10
	addi	r6,r0,#45
	addi	r20,r0,#1
	lls	r7,r6,r9
	or	r8,r11,r7
	sw	(r12),r8
	nop
	jp	.L6
.L10:
	add	r8,r6,r19
	sub	r6,r0,r8
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#-4
	and	r10,r8,r6
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r6,(r10)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r7,r8,r6
	addi	r6,r0,#0
	sw	(r10),r7
	nop
	lw	r16,0(r5)	; restore r(r16).
	nop
	lw	r17,4(r5)	; restore r(r17).
	nop
	lw	r18,8(r5)	; restore r(r18).
	nop
	lw	r19,12(r5)	; restore r(r19).
	nop
	lw	r20,16(r5)	; restore r(r20).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_intToStr, .-_intToStr
	.align 2
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r9,r0,#0
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r9
	brnz	r6,.L22
	add	r10,r0,r9
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L25:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L25
.L22:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.section	.rodata.str1.4,"aMS",@progbits,1
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
;  Function 'printArray'; 32 bytes of locals, 13 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-128	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	nop
	sw	36(r5),r17	; save r(r17)
	nop
	sw	40(r5),r18	; save r(r18)
	nop
	sw	44(r5),r19	; save r(r19)
	nop
	sw	48(r5),r20	; save r(r20)
	nop
	sw	52(r5),r21	; save r(r21)
	nop
	sw	56(r5),r22	; save r(r22)
	nop
	sw	60(r5),r23	; save r(r23)
	nop
	sw	64(r5),r24	; save r(r24)
	nop
	sw	68(r5),r25	; save r(r25)
	nop
	sw	72(r5),r26	; save r(r26)
	nop
	sw	76(r5),r27	; save r(r27)
	nop
	sw	80(r5),r28	; save r(r28)
	nop
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	addi	r7,r0,#65
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L28:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L28
	addi	r22,r0,#1
	add	r19,r0,r6
	addi	r18,r0,%hi(_array)
	lsoi	r18,r18,%lo(_array)
	add	r20,r0,r22
	addi	r21,r4,#-32
	add	r16,r0,r6
	addi	r25,r0,%hi(.LC1)
	lsoi	r25,r25,%lo(.LC1)
	addi	r26,r0,#13
	addi	r17,r0,#256
	lsoi	r17,r17,#0
	addi	r24,r0,%hi(.LC2)
	lsoi	r24,r24,%lo(.LC2)
	addi	r23,r0,#32
	addi	r27,r0,#19
	add	r28,r0,r22
.L30:
	andi	r6,r19,#7
	eneq	r7,r6,r16
	brnz	r7,.L32
	add	r8,r0,r25
	add	r7,r0,r26
.L34:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L34
.L32:
	lw	r8,(r18)
	nop
	nop
	add	r9,r0,r21
	jpl	_intToStr
	lb	r7,-32(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r16
	brnz	r6,.L35
	add	r8,r0,r21
.L37:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L37
.L35:
	add	r7,r0,r24
	add	r6,r0,r23
.L38:
	sw	(r17),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r9,r6,r16
	brnz	r9,.L38
	eeq	r6,r19,r16
	brnz	r6,.L31
	lw	r6,-4(r18)
	nop
	nop
	lw	r7,(r18)
	nop
	nop
	elt	r8,r7,r6
	add	r6,r0,r16
	brnz	r8,.L41
	add	r6,r0,r28
.L41:
	and	r22,r22,r6
	elt	r6,r27,r20
	brnz	r6,.L54
.L31:
	addi	r19,r19,#1
	addi	r20,r20,#1
	addi	r18,r18,#4
	jp	.L30
.L54:
	add	r10,r0,r9
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	addi	r7,r0,#13
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L43:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L43
	add	r6,r0,r22
	lw	r16,32(r5)	; restore r(r16).
	nop
	lw	r17,36(r5)	; restore r(r17).
	nop
	lw	r18,40(r5)	; restore r(r18).
	nop
	lw	r19,44(r5)	; restore r(r19).
	nop
	lw	r20,48(r5)	; restore r(r20).
	nop
	lw	r21,52(r5)	; restore r(r21).
	nop
	lw	r22,56(r5)	; restore r(r22).
	nop
	lw	r23,60(r5)	; restore r(r23).
	nop
	lw	r24,64(r5)	; restore r(r24).
	nop
	lw	r25,68(r5)	; restore r(r25).
	nop
	lw	r26,72(r5)	; restore r(r26).
	nop
	lw	r27,76(r5)	; restore r(r27).
	nop
	lw	r28,80(r5)	; restore r(r28).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_printArray, .-_printArray
	.align 2
	.globl	_bubbleSort
	.type	_bubbleSort, @function
_bubbleSort:
;  Function 'bubbleSort'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	eltu	r6,r8,r9
	brz	r6,.L65
	llsi	r6,r9,#2
	addi	r7,r0,%hi(_array)
	lsoi	r7,r7,%lo(_array)
	add	r15,r0,r8
	add	r14,r6,r7
	llsi	r7,r8,#2
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	add	r7,r7,r6
.L58:
	lw	r12,(r7)
	nop
	nop
	eltu	r6,r7,r14
	brz	r6,.L59
	add	r11,r0,r7
	add	r13,r0,r7
.L61:
	addi	r11,r11,#4
	lw	r10,(r11)
	nop
	nop
	eltu	r6,r10,r12
	brz	r6,.L62
	sw	(r13),r10
	nop
	sw	(r11),r12
	nop
	add	r10,r0,r12
.L62:
	add	r12,r0,r10
	add	r13,r0,r11
	eltu	r6,r11,r14
	brnz	r6,.L61
.L59:
	addi	r15,r15,#1
	eltu	r6,r15,r9
	brz	r6,.L65
	addi	r14,r14,#-4
	jp	.L58
.L65:
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_bubbleSort, .-_bubbleSort
	.section	.rodata.str1.4
	.align 2
.LC3:
	.string	"BubbleSort: sorting...\r\n"
	.align 2
.LC4:
	.string	"Array Sorted: "
	.align 2
.LC5:
	.string	"NO!!   ERROR!!"
	.align 2
.LC6:
	.string	"YES"
	.align 2
.LC7:
	.string	"\r\nNumber of cycles needed: "
	.align 2
.LC8:
	.string	"Testing...\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 64 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-104	; alloc local storage
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	addi	r7,r0,#65
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L68:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L68
	add	r18,r0,r6
	addi	r19,r0,%hi(_array)
	lsoi	r19,r19,%lo(_array)
	addi	r21,r4,#-64
	add	r16,r0,r6
	addi	r25,r0,%hi(.LC1)
	lsoi	r25,r25,%lo(.LC1)
	addi	r24,r0,#13
	addi	r17,r0,#256
	lsoi	r17,r17,#0
	addi	r22,r0,%hi(.LC2)
	lsoi	r22,r22,%lo(.LC2)
	addi	r23,r0,#32
	addi	r20,r0,#20
.L70:
	andi	r6,r18,#7
	eneq	r7,r6,r16
	brnz	r7,.L71
	add	r8,r0,r25
	add	r7,r0,r24
.L73:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L73
.L71:
	lw	r8,(r19)
	nop
	nop
	add	r9,r0,r21
	jpl	_intToStr
	lb	r7,-64(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r16
	brnz	r6,.L74
	add	r8,r0,r21
.L76:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L76
.L74:
	add	r7,r0,r22
	add	r6,r0,r23
.L77:
	sw	(r17),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r8,r6,r16
	brnz	r8,.L77
	addi	r18,r18,#1
	addi	r19,r19,#4
	eneq	r6,r18,r20
	brnz	r6,.L70
	add	r10,r0,r8
	addi	r7,r0,#13
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L80:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L80
	add	r10,r0,r6
	addi	r8,r0,%hi(.LC3)
	lsoi	r8,r8,%lo(.LC3)
	addi	r7,r0,#66
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L82:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L82
	addi	r14,r0,%hi(_array)
	lsoi	r14,r14,%lo(_array)
	addi	r6,r0,%hi(_clockAddress)
	lsoi	r6,r6,%lo(_clockAddress)
	addi	r12,r0,%hi(_array+76)
	lsoi	r12,r12,%lo(_array+76)
	lw	r8,(r6)
	nop
	nop
	addi	r15,r14,#4
	lw	r29,(r8)
	nop
	nop
	add	r13,r0,r14
.L84:
	lw	r10,(r14)
	nop
	nop
	eltu	r6,r14,r12
	brz	r6,.L85
	add	r11,r0,r13
	add	r9,r0,r13
	jp	.L87
.L170:
	add	r10,r0,r7
	eltu	r6,r9,r12
	brz	r6,.L85
.L171:
	add	r11,r0,r9
.L87:
	addi	r9,r9,#4
	lw	r7,(r9)
	nop
	nop
	eltu	r6,r7,r10
	brz	r6,.L170
	sw	(r11),r7
	nop
	sw	(r9),r10
	nop
	eltu	r6,r9,r12
	brnz	r6,.L171
.L85:
	add	r18,r0,r13
	eeq	r6,r12,r15
	brnz	r6,.L92
	addi	r12,r12,#-4
	jp	.L84
.L92:
	lw	r30,(r8)
	nop
	nop
	addi	r7,r0,#65
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L94:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L94
	addi	r22,r0,#1
	add	r19,r0,r6
	add	r16,r0,r6
	add	r20,r0,r22
	addi	r25,r0,%hi(.LC1)
	lsoi	r25,r25,%lo(.LC1)
	addi	r26,r0,#13
	addi	r17,r0,#256
	lsoi	r17,r17,#0
	addi	r24,r0,%hi(.LC2)
	lsoi	r24,r24,%lo(.LC2)
	addi	r23,r0,#32
	addi	r27,r0,#19
	add	r28,r0,r22
.L96:
	andi	r6,r19,#7
	eneq	r7,r6,r16
	brnz	r7,.L98
	add	r8,r0,r25
	add	r7,r0,r26
.L100:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L100
.L98:
	lw	r8,(r18)
	nop
	nop
	add	r9,r0,r21
	jpl	_intToStr
	lb	r7,-64(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r16
	brnz	r6,.L101
	add	r8,r0,r21
.L103:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L103
.L101:
	add	r7,r0,r24
	add	r6,r0,r23
.L104:
	sw	(r17),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r9,r6,r16
	brnz	r9,.L104
	eeq	r6,r19,r16
	brnz	r6,.L97
	lw	r6,-4(r18)
	nop
	nop
	lw	r7,(r18)
	nop
	nop
	elt	r8,r7,r6
	add	r6,r0,r16
	brnz	r8,.L107
	add	r6,r0,r28
.L107:
	and	r22,r22,r6
	elt	r6,r27,r20
	brnz	r6,.L172
.L97:
	addi	r19,r19,#1
	addi	r20,r20,#1
	addi	r18,r18,#4
	jp	.L96
.L172:
	add	r10,r0,r9
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	addi	r7,r0,#13
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L109:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L109
	addi	r9,r0,%hi(.LC4)
	lsoi	r9,r9,%lo(.LC4)
	addi	r8,r0,#65
	addi	r10,r0,#256
	lsoi	r10,r10,#0
.L111:
	sw	(r10),r8
	nop
	addi	r9,r9,#1
	lb	r8,(r9)
	nop
	nop
	andi	r8,r8,#0x00ff
	eneq	r7,r8,r6
	brnz	r7,.L111
	eneq	r6,r22,r6
	brnz	r6,.L113
	add	r10,r0,r7
	addi	r8,r0,%hi(.LC5)
	lsoi	r8,r8,%lo(.LC5)
	addi	r7,r0,#78
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L115:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L115
.L116:
	addi	r7,r0,%hi(.LC7)
	lsoi	r7,r7,%lo(.LC7)
	addi	r6,r0,#13
	addi	r8,r0,#256
	lsoi	r8,r8,#0
	addi	r17,r0,#0
.L118:
	sw	(r8),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r16,r6,r17
	brnz	r16,.L118
	sub	r8,r30,r29
	addi	r18,r4,#-32
	add	r9,r0,r18
	jpl	_intToStr
	lb	r7,-32(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r17
	brnz	r6,.L120
	add	r10,r0,r16
	add	r8,r0,r18
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L122:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L122
.L120:
	addi	r8,r0,%hi(.LC1)
	lsoi	r8,r8,%lo(.LC1)
	addi	r7,r0,#13
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L123:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L123
	add	r10,r0,r6
	addi	r8,r0,%hi(.LC8)
	lsoi	r8,r8,%lo(.LC8)
	addi	r7,r0,#84
	addi	r11,r0,#256
	lsoi	r11,r11,#0
.L125:
	sw	(r11),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L125
	addi	r6,r0,#6788
	elt	r7,r6,r16
	brnz	r7,.L127
	addi	r6,r0,#65
	sw	(r11),r6
	nop
.L129:
	addi	r8,r0,#6789
	add	r9,r0,r18
	jpl	_intToStr
	lb	r7,-32(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	addi	r8,r0,#0
	eeq	r6,r7,r8
	brnz	r6,.L130
	add	r10,r0,r8
	add	r9,r0,r18
	addi	r8,r0,#256
	lsoi	r8,r8,#0
.L132:
	sw	(r8),r7
	nop
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L132
.L130:
	addi	r8,r0,%hi(.LC2)
	lsoi	r8,r8,%lo(.LC2)
	addi	r7,r0,#32
	addi	r9,r0,#256
	lsoi	r9,r9,#0
	addi	r10,r0,#0
.L133:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L133
	jp	.L174
.L127:
	addi	r7,r0,#66
	sw	(r11),r7
	nop
	jp	.L129
.L113:
	add	r10,r0,r7
	addi	r8,r0,%hi(.LC6)
	lsoi	r8,r8,%lo(.LC6)
	addi	r7,r0,#89
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L117:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L117
	jp	.L116
.L174:
	addi	r7,r0,#48
	sw	(r9),r7
	nop
	addi	r7,r0,#49
	sw	(r9),r7
	nop
	addi	r7,r0,#50
	sw	(r9),r7
	nop
	addi	r7,r0,#54
	sw	(r9),r7
	nop
	addi	r7,r0,#55
	sw	(r9),r7
	nop
	addi	r7,r0,#56
	sw	(r9),r7
	nop
	addi	r7,r0,#65
	sw	(r9),r7
	nop
	addi	r7,r0,#66
	sw	(r9),r7
	nop
	addi	r7,r0,#67
	sw	(r9),r7
	nop
	addi	r7,r0,#49
	sw	(r9),r7
	nop
	addi	r7,r0,#50
	sw	(r9),r7
	nop
	addi	r7,r0,#51
	sw	(r9),r7
	nop
	addi	r7,r0,#13
	sw	(r9),r7
	nop
	addi	r7,r0,#10
	sw	(r9),r7
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_main, .-_main
	.globl	_uartAddress
	.section	.rodata
	.align 2
	.type	_uartAddress, @object
	.size	_uartAddress, 4
_uartAddress:
	.long	16777216
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
	.ident	"GCC: (GNU) 4.2.2"
