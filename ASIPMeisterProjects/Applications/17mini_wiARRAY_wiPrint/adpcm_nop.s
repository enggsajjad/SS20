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
	.globl	_intToHexStr
	.type	_intToHexStr, @function
_intToHexStr:
;  Function 'intToHexStr'; 12 bytes of locals, 7 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-52	; alloc local storage
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
	sw	20(r5),r21	; save r(r21)
	nop
	sw	24(r5),r22	; save r(r22)
	nop
	addi	r7,r0,#0
	add	r14,r0,r10
	add	r13,r0,r8
	add	r18,r0,r9
	eeq	r6,r10,r7
	brnz	r6,.L22
	eneq	r6,r8,r7
	brnz	r6,.L24
	elt	r6,r7,r10
	brz	r6,.L113
	addi	r12,r0,#48
.L29:
	addi	r15,r4,#-10
	addi	r7,r0,#-4
	and	r11,r15,r7
.L107:
	sub	r6,r0,r15
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r8,r7,#3
	lls	r7,r6,r8
	lw	r6,(r11)
	nop
	nop
	sub	r9,r0,r7
	subi	r9,r9,#1
	andi	r7,r15,#3
	and	r10,r9,r6
	sub	r6,r0,r7
	subi	r6,r6,#1
	llsi	r8,r6,#3
	lls	r7,r12,r8
	or	r6,r7,r10
	sw	(r11),r6
	nop
	arsi	r13,r13,#4
	addi	r6,r0,#0
	eneq	r7,r13,r6
	brnz	r7,.L33
	addi	r7,r0,#1
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r10,r0,#48
.L37:
	addi	r9,r4,#-9
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#-4
	llsi	r8,r7,#3
	and	r11,r9,r6
	lls	r12,r10,r8
.L108:
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r10,(r11)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r12,r6
	sw	(r11),r7
	nop
	addi	r6,r0,#0
	arsi	r11,r13,#4
	eneq	r7,r11,r6
	brnz	r7,.L41
	addi	r7,r0,#2
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r6,r0,#48
.L45:
	llsi	r10,r6,#-8
	addi	r7,r0,#-4
	addi	r6,r4,#-8
	addi	r8,r0,#255
	lsoi	r8,r8,#65535
	and	r9,r6,r7
	lw	r7,(r9)
	nop
	nop
	and	r6,r7,r8
	or	r8,r10,r6
	sw	(r9),r8
	nop
	arsi	r13,r11,#4
	addi	r6,r0,#0
	eneq	r7,r13,r6
	brnz	r7,.L49
.L117:
	addi	r7,r0,#3
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r10,r0,#48
.L53:
	addi	r9,r4,#-7
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	addi	r7,r0,#-4
	lls	r12,r10,r8
	and	r11,r9,r7
.L109:
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r10,(r11)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r12,r6
	sw	(r11),r7
	nop
	arsi	r13,r13,#4
	addi	r6,r0,#0
	eneq	r7,r13,r6
	brnz	r7,.L57
	addi	r7,r0,#4
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r10,r0,#48
.L61:
	addi	r9,r4,#-6
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#-4
	llsi	r8,r7,#3
	and	r11,r9,r6
	lls	r12,r10,r8
.L110:
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r10,(r11)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r12,r6
	sw	(r11),r7
	nop
	arsi	r13,r13,#4
	addi	r6,r0,#0
	eneq	r7,r13,r6
	brnz	r7,.L65
	addi	r7,r0,#5
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r10,r0,#48
.L69:
	addi	r9,r4,#-5
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	lls	r12,r10,r8
	addi	r8,r0,#-4
	and	r11,r9,r8
.L111:
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r10,(r11)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r12,r6
	sw	(r11),r7
	nop
	addi	r6,r0,#0
	arsi	r11,r13,#4
	eneq	r7,r11,r6
	brnz	r7,.L73
	addi	r7,r0,#6
	elt	r6,r7,r14
	brz	r6,.L113
	addi	r6,r0,#48
.L77:
	llsi	r10,r6,#-8
	addi	r7,r0,#-4
	addi	r6,r4,#-4
	addi	r8,r0,#255
	lsoi	r8,r8,#65535
	and	r9,r6,r7
	lw	r7,(r9)
	nop
	nop
	and	r6,r7,r8
	or	r8,r10,r6
	sw	(r9),r8
	nop
	addi	r6,r0,#0
	arsi	r8,r11,#4
	eeq	r7,r8,r6
	brz	r7,.L114
.L81:
	addi	r6,r0,#7
	elt	r7,r6,r14
	brz	r7,.L115
	addi	r10,r0,#48
.L84:
	addi	r9,r4,#-3
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#-4
	llsi	r8,r7,#3
	and	r11,r9,r6
	lls	r12,r10,r8
.L112:
	sub	r6,r0,r9
	subi	r6,r6,#1
	andi	r7,r6,#3
	addi	r6,r0,#255
	llsi	r9,r7,#3
	lls	r7,r6,r9
	lw	r10,(r11)
	nop
	nop
	sub	r8,r0,r7
	subi	r8,r8,#1
	and	r6,r8,r10
	or	r7,r6,r12
	sw	(r11),r7
	nop
.L85:
	addi	r17,r0,#8
	addi	r7,r0,#7
.L95:
	add	r14,r15,r7
	add	r13,r0,r18
	addi	r16,r4,#-11
	addi	r15,r0,#255
.L98:
	addi	r7,r0,#-4
	sub	r6,r0,r13
	subi	r6,r6,#1
	and	r11,r13,r7
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
	brnz	r6,.L98
	add	r6,r0,r17
	jp	.L97
.L24:
	andi	r12,r8,#15
	addi	r6,r0,#9
	elt	r7,r6,r12
	brnz	r7,.L116
	addi	r12,r12,#48
	jp	.L29
.L116:
	addi	r15,r4,#-10
	addi	r6,r0,#-4
	addi	r12,r12,#55
	and	r11,r15,r6
	jp	.L107
.L33:
	andi	r10,r13,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L38
	addi	r9,r4,#-9
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	addi	r10,r10,#55
	lls	r12,r10,r8
	addi	r8,r0,#-4
	and	r11,r9,r8
	jp	.L108
.L41:
	andi	r10,r11,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L46
	addi	r8,r0,#-4
	addi	r6,r10,#55
	addi	r7,r4,#-8
	and	r9,r7,r8
	addi	r8,r0,#255
	lsoi	r8,r8,#65535
	llsi	r10,r6,#-8
	lw	r6,(r9)
	nop
	nop
	and	r7,r6,r8
	or	r8,r7,r10
	sw	(r9),r8
	nop
	arsi	r13,r11,#4
	addi	r6,r0,#0
	eneq	r7,r13,r6
	brz	r7,.L117
.L49:
	andi	r10,r13,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L54
	addi	r9,r4,#-7
	andi	r6,r9,#3
	addi	r10,r10,#55
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r6,r0,#-4
	llsi	r8,r7,#3
	and	r11,r9,r6
	lls	r12,r10,r8
	jp	.L109
.L57:
	andi	r10,r13,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L62
	addi	r9,r4,#-6
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	addi	r10,r10,#55
	lls	r12,r10,r8
	addi	r8,r0,#-4
	and	r11,r9,r8
	jp	.L110
.L65:
	andi	r10,r13,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L70
	addi	r9,r4,#-5
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r10,r10,#55
	llsi	r8,r7,#3
	addi	r7,r0,#-4
	lls	r12,r10,r8
	and	r11,r9,r7
	jp	.L111
.L73:
	andi	r10,r11,#15
	addi	r6,r0,#9
	elt	r7,r6,r10
	brz	r7,.L78
	addi	r6,r10,#55
	addi	r7,r4,#-4
	llsi	r10,r6,#-8
	addi	r8,r0,#255
	lsoi	r8,r8,#65535
	addi	r6,r0,#-4
	and	r9,r7,r6
	lw	r6,(r9)
	nop
	nop
	and	r7,r6,r8
	or	r8,r7,r10
	sw	(r9),r8
	nop
	addi	r6,r0,#0
	arsi	r8,r11,#4
	eeq	r7,r8,r6
	brnz	r7,.L81
.L114:
	andi	r8,r8,#15
	addi	r6,r0,#9
	elt	r7,r6,r8
	brnz	r7,.L86
	addi	r10,r8,#48
	jp	.L84
.L38:
	addi	r10,r10,#48
	jp	.L37
.L46:
	addi	r6,r10,#48
	jp	.L45
.L54:
	addi	r10,r10,#48
	jp	.L53
.L62:
	addi	r10,r10,#48
	jp	.L61
.L70:
	addi	r10,r10,#48
	jp	.L69
.L78:
	addi	r6,r10,#48
	jp	.L77
.L86:
	addi	r9,r4,#-3
	andi	r6,r9,#3
	sub	r7,r0,r6
	subi	r7,r7,#1
	addi	r10,r8,#55
	llsi	r8,r7,#3
	addi	r7,r0,#-4
	lls	r12,r10,r8
	and	r11,r9,r7
	jp	.L112
.L113:
	add	r17,r0,r7
.L28:
	addi	r7,r17,#-1
	addi	r8,r0,#0
	elt	r6,r7,r8
	brnz	r6,.L118
	addi	r15,r4,#-10
	jp	.L95
.L118:
	add	r6,r0,r8
	jp	.L97
.L115:
	addi	r17,r0,#7
	jp	.L28
.L22:
	addi	r15,r4,#-10
	add	r17,r0,r7
	add	r19,r0,r7
	add	r12,r0,r15
	addi	r20,r0,#9
	addi	r21,r0,#255
	addi	r22,r0,#8
.L89:
	eeq	r6,r13,r19
	brnz	r6,.L28
	andi	r6,r13,#15
	addi	r16,r6,#48
	addi	r14,r6,#55
	elt	r7,r20,r6
	brnz	r7,.L91
	addi	r8,r0,#-4
	sub	r6,r0,r12
	subi	r6,r6,#1
	andi	r7,r6,#3
	and	r11,r12,r8
	llsi	r8,r7,#3
	lw	r7,(r11)
	nop
	nop
	lls	r6,r21,r8
	sub	r9,r0,r6
	subi	r9,r9,#1
	andi	r6,r12,#3
	and	r10,r9,r7
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	lls	r6,r16,r8
	or	r7,r10,r6
	sw	(r11),r7
	nop
.L93:
	addi	r17,r17,#1
	addi	r12,r12,#1
	arsi	r13,r13,#4
	eeq	r6,r17,r22
	brz	r6,.L89
	jp	.L85
.L91:
	addi	r6,r0,#-4
	and	r11,r12,r6
	sub	r6,r0,r12
	subi	r6,r6,#1
	andi	r7,r6,#3
	llsi	r8,r7,#3
	lw	r7,(r11)
	nop
	nop
	lls	r6,r21,r8
	sub	r9,r0,r6
	subi	r9,r9,#1
	andi	r6,r12,#3
	and	r10,r9,r7
	sub	r7,r0,r6
	subi	r7,r7,#1
	llsi	r8,r7,#3
	lls	r6,r14,r8
	or	r7,r10,r6
	sw	(r11),r7
	nop
	jp	.L93
.L97:
	add	r8,r18,r6
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
	lw	r21,20(r5)	; restore r(r21).
	nop
	lw	r22,24(r5)	; restore r(r22).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_intToHexStr, .-_intToHexStr
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
	brnz	r6,.L120
	add	r10,r0,r9
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L123:
	sw	(r9),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L123
.L120:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.align 2
	.globl	_u_printInt
	.type	_u_printInt, @function
_u_printInt:
;  Function 'u_printInt'; 20 bytes of locals, 1 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-68	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	nop
	addi	r16,r4,#-20
	add	r9,r0,r16
	jpl	_intToStr
	lb	r7,-20(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	addi	r8,r0,#0
	eeq	r6,r7,r8
	brnz	r6,.L126
	add	r10,r0,r8
	add	r9,r0,r16
	addi	r8,r0,#256
	lsoi	r8,r8,#0
.L128:
	sw	(r8),r7
	nop
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L128
.L126:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_printInt, .-_u_printInt
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"0x"
.text
	.align 2
	.globl	_u_printHex
	.type	_u_printHex, @function
_u_printHex:
;  Function 'u_printHex'; 12 bytes of locals, 1 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	nop
	add	r10,r0,r9
	addi	r16,r4,#-10
	add	r9,r0,r16
	jpl	_intToHexStr
	addi	r7,r0,%hi(.LC0)
	lsoi	r7,r7,%lo(.LC0)
	addi	r6,r0,#48
	addi	r9,r0,#256
	lsoi	r9,r9,#0
	addi	r10,r0,#0
.L132:
	sw	(r9),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r8,r6,r10
	brnz	r8,.L132
	lb	r7,-10(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r10
	brnz	r6,.L134
	add	r10,r0,r8
	add	r9,r0,r16
	addi	r8,r0,#256
	lsoi	r8,r8,#0
.L136:
	sw	(r8),r7
	nop
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L136
.L134:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_u_printHex, .-_u_printHex
	.section	.rodata.str1.4
	.align 2
.LC1:
	.string	"unsigned short audioData[] = {\r\n"
	.align 2
.LC2:
	.string	""
	.align 2
.LC3:
	.string	",\r\n"
	.align 2
.LC4:
	.string	", "
	.align 2
.LC5:
	.string	"};\r\n\n"
.text
	.align 2
	.globl	_adpcm_decoder
	.type	_adpcm_decoder, @function
_adpcm_decoder:
;  Function 'adpcm_decoder'; 12 bytes of locals, 16 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-116	; alloc local storage
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
	sw	84(r5),r29	; save r(r29)
	nop
	sw	88(r5),r30	; save r(r30)
	nop
	sw	92(r5),r31	; save r(r31)
	nop
	add	r20,r0,r9
	add	r24,r0,r8
	addi	r9,r0,%hi(.LC1)
	lsoi	r9,r9,%lo(.LC1)
	addi	r7,r0,#117
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r6,r0,#0
.L142:
	sw	(r10),r7
	nop
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r8,r7,r6
	brnz	r8,.L142
	elt	r6,r6,r20
	brz	r6,.L144
	add	r23,r0,r8
	add	r16,r0,r8
	add	r18,r0,r8
	addi	r10,r0,#7
	add	r19,r0,r8
	add	r27,r0,r8
	add	r22,r0,r8
	addi	r11,r0,%hi(.LC2)
	lsoi	r11,r11,%lo(.LC2)
	addi	r25,r4,#-10
	addi	r29,r0,#88
	addi	r26,r0,#32767
	addi	r28,r0,#-32768
	addi	r17,r0,#256
	lsoi	r17,r17,#0
	addi	r30,r0,%hi(.LC0)
	lsoi	r30,r30,%lo(.LC0)
	addi	r31,r0,#48
	eeq	r6,r23,r16
	brnz	r6,.L147
.L196:
	andi	r9,r27,#15
.L149:
	llsi	r6,r9,#2
	addi	r8,r0,%hi(_indexTable)
	lsoi	r8,r8,%lo(_indexTable)
	add	r7,r6,r8
	lw	r8,(r7)
	nop
	nop
	add	r19,r19,r8
	elt	r6,r19,r16
	brnz	r6,.L194
	elt	r6,r29,r19
	brz	r6,.L153
	add	r21,r0,r26
	add	r19,r0,r29
.L152:
	andi	r6,r9,#4
	arsi	r8,r10,#3
	eeq	r7,r6,r16
	brnz	r7,.L155
	add	r8,r8,r10
.L155:
	andi	r6,r9,#2
	eeq	r7,r6,r16
	brnz	r7,.L157
	arsi	r6,r10,#1
	add	r8,r8,r6
.L157:
	andi	r6,r9,#1
	eeq	r7,r6,r16
	brnz	r7,.L159
	arsi	r6,r10,#2
	add	r8,r8,r6
.L159:
	andi	r6,r9,#8
	eeq	r7,r6,r16
	brnz	r7,.L161
	sub	r6,r18,r8
.L163:
	add	r7,r0,r6
	elt	r6,r6,r28
	brz	r6,.L164
	add	r7,r0,r28
.L164:
	add	r18,r0,r7
	elt	r6,r26,r7
	brz	r6,.L165
	add	r18,r0,r26
.L165:
	lb	r7,(r11)
	nop
	nop
	andi	r7,r7,#0x00ff
	add	r8,r0,r11
	eeq	r6,r7,r16
	brnz	r6,.L191
.L184:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L184
.L191:
	lsoi	r7,r0,#32768
	add	r6,r18,r7
	add	r9,r0,r25
	andi	r8,r6,#0xffff
	addi	r10,r0,#4
	jpl	_intToHexStr
	add	r8,r0,r30
	add	r7,r0,r31
.L170:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L170
	lb	r7,-10(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r16
	brnz	r6,.L172
	add	r8,r0,r25
.L174:
	sw	(r17),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r16
	brnz	r6,.L174
.L172:
	addi	r8,r0,#10
	mod	r6,r22,r8
	addi	r8,r0,#9
	eneq	r7,r6,r8
	brz	r7,.L195
	addi	r20,r20,#-1
	addi	r11,r0,%hi(.LC4)
	lsoi	r11,r11,%lo(.LC4)
	eeq	r6,r20,r16
	brnz	r6,.L144
.L197:
	add	r7,r0,r16
	eneq	r6,r23,r16
	brnz	r6,.L179
	addi	r7,r0,#1
.L179:
	add	r23,r0,r7
	addi	r22,r22,#1
	add	r10,r0,r21
	eeq	r6,r23,r16
	brz	r6,.L196
.L147:
	lb	r27,(r24)
	nop
	nop
	andi	r27,r27,#0x00ff
	addi	r24,r24,#1
	lrsi	r9,r27,#4
	jp	.L149
.L161:
	add	r6,r8,r18
	jp	.L163
.L153:
	llsi	r6,r19,#2
	addi	r8,r0,%hi(_stepsizeTable)
	lsoi	r8,r8,%lo(_stepsizeTable)
	add	r7,r6,r8
	lw	r21,(r7)
	nop
	nop
	jp	.L152
.L195:
	addi	r20,r20,#-1
	addi	r11,r0,%hi(.LC3)
	lsoi	r11,r11,%lo(.LC3)
	eeq	r6,r20,r16
	brz	r6,.L197
.L144:
	addi	r8,r0,%hi(.LC5)
	lsoi	r8,r8,%lo(.LC5)
	addi	r7,r0,#125
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L180:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L180
	jp	.L198
.L194:
	addi	r21,r0,#7
	add	r19,r0,r16
	jp	.L152
.L198:
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
	lw	r29,84(r5)	; restore r(r29).
	nop
	lw	r30,88(r5)	; restore r(r30).
	nop
	lw	r31,92(r5)	; restore r(r31).
	nop
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	nop
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	nop
	jpr	r3		; return
	.size	_adpcm_decoder, .-_adpcm_decoder
	.section	.rodata.str1.4
	.align 2
.LC6:
	.string	"\r\nADPCM Decode: Start"
	.align 2
.LC7:
	.string	"\r\nRequired time for decoding: "
	.align 2
.LC8:
	.string	" cycles\r\n"
	.align 2
.LC9:
	.string	"\r\nADPCM Decode: Decoding Done."
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 20 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	nop
	sw	-8(r5),r4	; push FrameRegister(r4)
	nop
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	addi	r7,r0,%hi(.LC6)
	lsoi	r7,r7,%lo(.LC6)
	addi	r6,r0,#13
	addi	r9,r0,#256
	lsoi	r9,r9,#0
	addi	r8,r0,#0
.L200:
	sw	(r9),r6
	nop
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r17,r6,r8
	brnz	r17,.L200
	addi	r16,r0,%hi(_clockAddress)
	lsoi	r16,r16,%lo(_clockAddress)
	lw	r6,(r16)
	nop
	nop
	addi	r8,r0,%hi(_adpcmData)
	lsoi	r8,r8,%lo(_adpcmData)
	sw	(r6),r17
	nop
	addi	r9,r0,#1300
	jpl	_adpcm_decoder
	lw	r7,(r16)
	nop
	nop
	add	r12,r0,r17
	lw	r8,(r7)
	nop
	nop
	addi	r10,r0,%hi(.LC9)
	lsoi	r10,r10,%lo(.LC9)
	addi	r6,r0,#13
	addi	r11,r0,#256
	lsoi	r11,r11,#0
.L202:
	sw	(r11),r6
	nop
	addi	r10,r10,#1
	lb	r6,(r10)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r9,r6,r12
	brnz	r9,.L202
	add	r17,r0,r9
	addi	r6,r0,#13
	addi	r9,r0,%hi(.LC7)
	lsoi	r9,r9,%lo(.LC7)
	addi	r10,r0,#256
	lsoi	r10,r10,#0
.L204:
	sw	(r10),r6
	nop
	addi	r9,r9,#1
	lb	r6,(r9)
	nop
	nop
	andi	r6,r6,#0x00ff
	eneq	r16,r6,r17
	brnz	r16,.L204
	addi	r18,r4,#-20
	add	r9,r0,r18
	jpl	_intToStr
	lb	r7,-20(r4)
	nop
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r17
	brnz	r6,.L206
	add	r9,r0,r18
	add	r10,r0,r16
	addi	r8,r0,#256
	lsoi	r8,r8,#0
.L208:
	sw	(r8),r7
	nop
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L208
.L206:
	addi	r8,r0,%hi(.LC8)
	lsoi	r8,r8,%lo(.LC8)
	addi	r7,r0,#32
	addi	r10,r0,#256
	lsoi	r10,r10,#0
	addi	r9,r0,#0
.L209:
	sw	(r10),r7
	nop
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,.L209
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
	.globl	_audioAddressR
	.align 2
	.type	_audioAddressR, @object
	.size	_audioAddressR, 4
_audioAddressR:
	.long	40000004
	.globl	_audioAddressL
	.align 2
	.type	_audioAddressL, @object
	.size	_audioAddressL, 4
_audioAddressL:
	.long	40000008
	.globl	_clockAddress
.data
	.align 2
	.type	_clockAddress, @object
	.size	_clockAddress, 4
_clockAddress:
	.long	50331648
	.globl	_adpcmData
	.align 2
	.type	_adpcmData, @object
	.size	_adpcmData, 650
_adpcmData:
	.byte	59
	.byte	9
	.byte	8
	.byte	89
	.byte	74
	.byte	27
	.byte	-118
	.byte	24
	.byte	40
	.byte	10
	.byte	63
	.byte	77
	.byte	75
	.byte	58
	.byte	17
	.byte	-109
	.byte	-95
	.byte	-116
	.byte	63
	.byte	59
	.byte	59
	.byte	44
	.byte	42
	.byte	33
	.byte	4
	.byte	-111
	.byte	-103
	.byte	-110
	.byte	-94
	.byte	63
	.byte	79
	.byte	42
	.byte	25
	.byte	26
	.byte	58
	.byte	33
	.byte	-74
	.byte	-88
	.byte	29
	.byte	75
	.byte	32
	.byte	-109
	.byte	-78
	.byte	-102
	.byte	78
	.byte	75
	.byte	57
	.byte	0
	.byte	-95
	.byte	9
	.byte	73
	.byte	25
	.byte	-117
	.byte	29
	.byte	91
	.byte	90
	.byte	60
	.byte	43
	.byte	16
	.byte	8
	.byte	44
	.byte	59
	.byte	2
	.byte	-92
	.byte	-88
	.byte	12
	.byte	42
	.byte	74
	.byte	123
	.byte	75
	.byte	-126
	.byte	-61
	.byte	-112
	.byte	75
	.byte	76
	.byte	26
	.byte	8
	.byte	17
	.byte	-111
	.byte	-102
	.byte	61
	.byte	73
	.byte	1
	.byte	-79
	.byte	10
	.byte	122
	.byte	91
	.byte	43
	.byte	24
	.byte	-127
	.byte	-88
	.byte	-115
	.byte	122
	.byte	89
	.byte	43
	.byte	45
	.byte	0
	.byte	-108
	.byte	-77
	.byte	-112
	.byte	9
	.byte	41
	.byte	43
	.byte	76
	.byte	32
	.byte	-110
	.byte	-54
	.byte	47
	.byte	75
	.byte	72
	.byte	0
	.byte	-104
	.byte	10
	.byte	40
	.byte	1
	.byte	-112
	.byte	9
	.byte	11
	.byte	12
	.byte	41
	.byte	65
	.byte	16
	.byte	-84
	.byte	11
	.byte	121
	.byte	74
	.byte	45
	.byte	27
	.byte	57
	.byte	56
	.byte	-126
	.byte	-45
	.byte	-112
	.byte	93
	.byte	77
	.byte	42
	.byte	8
	.byte	0
	.byte	41
	.byte	59
	.byte	75
	.byte	61
	.byte	61
	.byte	59
	.byte	73
	.byte	0
	.byte	-112
	.byte	-95
	.byte	-76
	.byte	-92
	.byte	-120
	.byte	46
	.byte	44
	.byte	42
	.byte	18
	.byte	3
	.byte	12
	.byte	47
	.byte	9
	.byte	-125
	.byte	-126
	.byte	62
	.byte	44
	.byte	26
	.byte	24
	.byte	59
	.byte	91
	.byte	42
	.byte	24
	.byte	41
	.byte	91
	.byte	76
	.byte	25
	.byte	8
	.byte	10
	.byte	63
	.byte	60
	.byte	73
	.byte	32
	.byte	-111
	.byte	-63
	.byte	-112
	.byte	10
	.byte	44
	.byte	75
	.byte	73
	.byte	58
	.byte	44
	.byte	27
	.byte	62
	.byte	74
	.byte	57
	.byte	-127
	.byte	-79
	.byte	-116
	.byte	123
	.byte	74
	.byte	24
	.byte	-120
	.byte	-120
	.byte	16
	.byte	32
	.byte	27
	.byte	63
	.byte	43
	.byte	33
	.byte	-91
	.byte	-78
	.byte	-79
	.byte	-104
	.byte	25
	.byte	1
	.byte	-110
	.byte	29
	.byte	93
	.byte	42
	.byte	24
	.byte	28
	.byte	77
	.byte	41
	.byte	-125
	.byte	-92
	.byte	-119
	.byte	62
	.byte	43
	.byte	42
	.byte	42
	.byte	48
	.byte	-111
	.byte	-101
	.byte	44
	.byte	82
	.byte	-107
	.byte	-86
	.byte	63
	.byte	62
	.byte	58
	.byte	59
	.byte	59
	.byte	17
	.byte	-59
	.byte	-62
	.byte	-118
	.byte	74
	.byte	40
	.byte	-127
	.byte	-96
	.byte	9
	.byte	58
	.byte	42
	.byte	27
	.byte	60
	.byte	106
	.byte	43
	.byte	45
	.byte	42
	.byte	25
	.byte	75
	.byte	107
	.byte	74
	.byte	0
	.byte	-95
	.byte	-127
	.byte	24
	.byte	26
	.byte	29
	.byte	92
	.byte	58
	.byte	24
	.byte	-112
	.byte	58
	.byte	90
	.byte	-118
	.byte	-84
	.byte	74
	.byte	80
	.byte	-109
	.byte	-16
	.byte	-112
	.byte	57
	.byte	57
	.byte	-116
	.byte	11
	.byte	64
	.byte	3
	.byte	-88
	.byte	30
	.byte	91
	.byte	59
	.byte	25
	.byte	-92
	.byte	-91
	.byte	-119
	.byte	45
	.byte	25
	.byte	17
	.byte	-119
	.byte	63
	.byte	74
	.byte	32
	.byte	8
	.byte	-102
	.byte	12
	.byte	58
	.byte	59
	.byte	59
	.byte	35
	.byte	-57
	.byte	-112
	.byte	28
	.byte	61
	.byte	24
	.byte	-110
	.byte	-128
	.byte	92
	.byte	75
	.byte	26
	.byte	0
	.byte	8
	.byte	43
	.byte	76
	.byte	41
	.byte	24
	.byte	26
	.byte	46
	.byte	58
	.byte	34
	.byte	-109
	.byte	-102
	.byte	47
	.byte	29
	.byte	42
	.byte	57
	.byte	40
	.byte	-128
	.byte	-119
	.byte	92
	.byte	59
	.byte	24
	.byte	8
	.byte	90
	.byte	89
	.byte	11
	.byte	31
	.byte	61
	.byte	57
	.byte	24
	.byte	9
	.byte	27
	.byte	41
	.byte	18
	.byte	24
	.byte	77
	.byte	60
	.byte	26
	.byte	-119
	.byte	42
	.byte	123
	.byte	75
	.byte	8
	.byte	-94
	.byte	-110
	.byte	57
	.byte	74
	.byte	45
	.byte	63
	.byte	77
	.byte	58
	.byte	16
	.byte	-127
	.byte	-104
	.byte	29
	.byte	26
	.byte	17
	.byte	-124
	.byte	-120
	.byte	63
	.byte	42
	.byte	16
	.byte	-111
	.byte	-102
	.byte	46
	.byte	75
	.byte	57
	.byte	41
	.byte	42
	.byte	41
	.byte	0
	.byte	-119
	.byte	77
	.byte	61
	.byte	41
	.byte	-127
	.byte	-128
	.byte	44
	.byte	59
	.byte	58
	.byte	58
	.byte	10
	.byte	27
	.byte	122
	.byte	90
	.byte	26
	.byte	45
	.byte	75
	.byte	57
	.byte	-126
	.byte	-94
	.byte	-101
	.byte	30
	.byte	91
	.byte	105
	.byte	1
	.byte	-62
	.byte	-87
	.byte	75
	.byte	64
	.byte	-91
	.byte	-62
	.byte	-87
	.byte	43
	.byte	106
	.byte	58
	.byte	8
	.byte	-112
	.byte	8
	.byte	40
	.byte	8
	.byte	-86
	.byte	63
	.byte	74
	.byte	16
	.byte	9
	.byte	63
	.byte	59
	.byte	1
	.byte	-110
	.byte	10
	.byte	109
	.byte	60
	.byte	59
	.byte	40
	.byte	-109
	.byte	-96
	.byte	60
	.byte	75
	.byte	0
	.byte	-110
	.byte	1
	.byte	0
	.byte	-71
	.byte	63
	.byte	77
	.byte	58
	.byte	8
	.byte	8
	.byte	2
	.byte	-109
	.byte	29
	.byte	93
	.byte	24
	.byte	-127
	.byte	10
	.byte	77
	.byte	24
	.byte	-109
	.byte	-104
	.byte	27
	.byte	18
	.byte	-89
	.byte	-112
	.byte	30
	.byte	42
	.byte	40
	.byte	0
	.byte	-119
	.byte	9
	.byte	59
	.byte	75
	.byte	61
	.byte	76
	.byte	75
	.byte	42
	.byte	24
	.byte	0
	.byte	-104
	.byte	-88
	.byte	17
	.byte	120
	.byte	44
	.byte	45
	.byte	42
	.byte	32
	.byte	-126
	.byte	-119
	.byte	46
	.byte	44
	.byte	25
	.byte	58
	.byte	74
	.byte	26
	.byte	30
	.byte	59
	.byte	48
	.byte	-126
	.byte	11
	.byte	122
	.byte	40
	.byte	-79
	.byte	-56
	.byte	58
	.byte	121
	.byte	26
	.byte	10
	.byte	43
	.byte	122
	.byte	43
	.byte	26
	.byte	0
	.byte	74
	.byte	58
	.byte	-109
	.byte	-60
	.byte	9
	.byte	63
	.byte	28
	.byte	59
	.byte	57
	.byte	0
	.byte	-128
	.byte	108
	.byte	91
	.byte	25
	.byte	-112
	.byte	-128
	.byte	40
	.byte	56
	.byte	9
	.byte	-87
	.byte	-78
	.byte	24
	.byte	124
	.byte	107
	.byte	25
	.byte	0
	.byte	44
	.byte	61
	.byte	24
	.byte	24
	.byte	59
	.byte	60
	.byte	61
	.byte	75
	.byte	58
	.byte	0
	.byte	8
	.byte	62
	.byte	44
	.byte	43
	.byte	75
	.byte	90
	.byte	24
	.byte	-109
	.byte	-61
	.byte	-79
	.byte	29
	.byte	108
	.byte	58
	.byte	24
	.byte	-110
	.byte	-120
	.byte	44
	.byte	42
	.byte	0
	.byte	8
	.byte	44
	.byte	26
	.byte	24
	.byte	41
	.byte	91
	.byte	41
	.byte	-90
	.byte	-60
	.byte	-95
	.byte	27
	.byte	77
	.byte	42
	.byte	-110
	.byte	-76
	.byte	-111
	.byte	41
	.byte	58
	.byte	30
	.byte	63
	.byte	59
	.byte	58
	.byte	41
	.byte	9
	.byte	16
	.byte	-108
	.byte	-95
	.byte	-118
	.byte	41
	.byte	2
	.byte	-119
	.byte	59
	.byte	73
	.byte	26
	.byte	31
	.byte	31
	.byte	43
	.byte	91
	.byte	91
	.byte	58
	.byte	24
	.byte	-128
	.byte	9
	.byte	43
	.byte	1
	.byte	-110
	.byte	91
	.byte	123
	.byte	24
	.byte	-78
	.byte	-56
	.byte	62
	.byte	72
	.byte	3
	.byte	-78
	.byte	-115
	.byte	61
	.byte	40
	.byte	-128
	.byte	-112
	.byte	-128
	.byte	17
	.byte	27
	.byte	94
	.byte	74
	.byte	40
	.byte	-112
	.byte	-87
	.byte	24
	.byte	35
	.byte	-95
	.byte	-113
	.byte	94
	.byte	57
	.byte	1
	.byte	-77
	.section	.rodata
	.align 2
	.type	_stepsizeTable, @object
	.size	_stepsizeTable, 356
_stepsizeTable:
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	16
	.long	17
	.long	19
	.long	21
	.long	23
	.long	25
	.long	28
	.long	31
	.long	34
	.long	37
	.long	41
	.long	45
	.long	50
	.long	55
	.long	60
	.long	66
	.long	73
	.long	80
	.long	88
	.long	97
	.long	107
	.long	118
	.long	130
	.long	143
	.long	157
	.long	173
	.long	190
	.long	209
	.long	230
	.long	253
	.long	279
	.long	307
	.long	337
	.long	371
	.long	408
	.long	449
	.long	494
	.long	544
	.long	598
	.long	658
	.long	724
	.long	796
	.long	876
	.long	963
	.long	1060
	.long	1166
	.long	1282
	.long	1411
	.long	1552
	.long	1707
	.long	1878
	.long	2066
	.long	2272
	.long	2499
	.long	2749
	.long	3024
	.long	3327
	.long	3660
	.long	4026
	.long	4428
	.long	4871
	.long	5358
	.long	5894
	.long	6484
	.long	7132
	.long	7845
	.long	8630
	.long	9493
	.long	10442
	.long	11487
	.long	12635
	.long	13899
	.long	15289
	.long	16818
	.long	18500
	.long	20350
	.long	22385
	.long	24623
	.long	27086
	.long	29794
	.long	32767
	.align 2
	.type	_indexTable, @object
	.size	_indexTable, 64
_indexTable:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	4
	.long	6
	.long	8
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	4
	.long	6
	.long	8
	.ident	"GCC: (GNU) 4.2.2"
