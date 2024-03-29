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
.text
	.align 2
	.globl	_bubbleSort
	.type	_bubbleSort, @function
_bubbleSort:
;  Function 'bubbleSort'; 4 bytes of locals, 1 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-20	; alloc local storage
	sw	0(r5),r16	; save r(r16)
	sw	8(r4),r8
	sw	12(r4),r9
	addi	r6,r0,%hi(_array)
	lsoi	r6,r6,%lo(_array)
	sw	-4(r4),r6
	lw	r16,8(r4)
	nop
	lw	r9,12(r4)
	nop
	lw	r8,-4(r4)
	nop
;#APP
	bgeu	r16,r9,L_bubble_11     	
	;eltu	r6,r16,r9     	
	;brz	r6,L_bubble_11 	
	llsi	r6,r9,#2     	
	add	r7,r0,r8     	
	;addi	r7,r0,r8     	
	;lsoi	r7,r0,r8     	
	add	r15,r0,r16     	
	add	r14,r6,r7     	
	llsi	r7,r16,#2     	
	add	r6,r0,r8     	
	;addi	r6,r0,r8     	
	;lsoi	r6,r6,r8     	
	add	r7,r7,r6     	
L_bubble_4:     			
	lw	r12,(r7)     	
	nop     		
	bgeu	r7,r14,L_bubble_5     	
	;eltu	r6,r7,r14     	
	;brz	r6,L_bubble_5     	
	add	r11,r0,r7     	
	add	r13,r0,r7     	
L_bubble_7:     			
	addi	r11,r11,#4     	
	lw	r10,(r11)     	
	nop     		
	;bgeu	r10,r12,L_bubble_8; gives errors    	
	eltu	r6,r10,r12     	
	brz	r6,L_bubble_8     	
	sw	(r13),r10     	
	sw	(r11),r12     	
	add	r10,r0,r12     	
L_bubble_8:     			
	add	r12,r0,r10     	
	add	r13,r0,r11     	
	;bgeu	r14,r11,L_bubble_7; gives errors    	
	eltu	r6,r11,r14     	
	brnz	r6,L_bubble_7     	
L_bubble_5:     			
	addi	r15,r15,#1     	
	;bgeu	r15,r9,L_bubble_11; gives errors, unlimited loop    	
	eltu	r6,r15,r9     	
	brz	r6,L_bubble_11     	
	addi	r14,r14,#-4     
	jp	L_bubble_4     	
L_bubble_11:     			
	nop     		
	
;#NO_APP
	lw	r16,0(r5)	; restore r(r16).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_bubbleSort, .-_bubbleSort
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-40	; alloc local storage
	addi	r8,r0,#0
	addi	r9,r0,#19
	jpl	_bubbleSort
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
