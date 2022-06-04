; options passed:  -auxbase-strip -O4
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
; -fsched-stalled-insns-dep -fshow-column -fsplit-ivs-in-unroller
; -fstrict-aliasing -fstrict-overflow -fthread-jumps -ftoplevel-reorder
; -ftrapping-math -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
; -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-lrs -ftree-pre
; -ftree-salias -ftree-sink -ftree-sra -ftree-store-ccp
; -ftree-store-copy-prop -ftree-ter -ftree-vect-loop-version -ftree-vrp
; -funit-at-a-time -funswitch-loops -fzero-initialized-in-bss -mquickcall
.text
	.align 2
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	addi	r9,r0,#0
	eeq	r6,r7,r9
	brnz	r6,L_lib_uart_2
	addi	r10,r0,#256
	lsoi	r10,r10,#0
L_lib_uart_5:
	sw	(r10),r7
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,L_lib_uart_5
L_lib_uart_2:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.align 2
	.globl	_u_getbytes
	.type	_u_getbytes, @function
_u_getbytes:
;  Function 'u_getbytes'; 0 bytes of locals, 4 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-56	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	sw	44(r5),r19	; save r(r19)
	add	r19,r0,r9
	addi	r7,r0,#0
	elt	r6,r7,r9
	brz	r6,L_lib_uart_9
	add	r16,r0,r7
	addi	r18,r0,#256
	lsoi	r18,r18,#0
	jp	L_lib_uart_11
L_lib_uart_14:
	add	r8,r0,r17
L_lib_uart_11:
	addi	r17,r8,#1
	lw	r6,(r18)
	nop
	add	r9,r0,r6
	jpl	_storeByte
	addi	r16,r16,#1
	eeq	r6,r16,r19
	brz	r6,L_lib_uart_14
L_lib_uart_9:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	lw	r19,44(r5)	; restore r(r19).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_getbytes, .-_u_getbytes
	.align 2
	.globl	_u_printInt
	.type	_u_printInt, @function
_u_printInt:
;  Function 'u_printInt'; 20 bytes of locals, 1 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-68	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	addi	r16,r4,#-20
	add	r9,r0,r16
	jpl	_intToStr
	lb	r7,-20(r4)
	nop
	andi	r7,r7,#0x00ff
	addi	r8,r0,#0
	eeq	r6,r7,r8
	brnz	r6,L_lib_uart_16
	add	r9,r0,r16
	addi	r10,r0,#256
	lsoi	r10,r10,#0
L_lib_uart_18:
	sw	(r10),r7
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r8
	brnz	r6,L_lib_uart_18
L_lib_uart_16:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_printInt, .-_u_printInt
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
LC_lib_uart_0:
	.string	"0x"
.text
	.align 2
	.globl	_u_printHex
	.type	_u_printHex, @function
_u_printHex:
;  Function 'u_printHex'; 12 bytes of locals, 1 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-60	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	add	r6,r0,r9
	addi	r16,r4,#-10
	add	r9,r0,r16
	add	r10,r0,r6
	jpl	_intToHexStr
	addi	r7,r0,%hi(LC_lib_uart_0)
	lsoi	r7,r7,%lo(LC_lib_uart_0)
	addi	r6,r0,#48
	addi	r9,r0,#256
	lsoi	r9,r9,#0
	addi	r10,r0,#0
L_lib_uart_22:
	sw	(r9),r6
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	andi	r6,r6,#0x00ff
	eneq	r8,r6,r10
	brnz	r8,L_lib_uart_22
	lb	r7,-10(r4)
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r10
	brnz	r6,L_lib_uart_24
	add	r9,r0,r16
	addi	r10,r0,#256
	lsoi	r10,r10,#0
L_lib_uart_26:
	sw	(r10),r7
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r8
	brnz	r6,L_lib_uart_26
L_lib_uart_24:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_printHex, .-_u_printHex
	.ident	"GCC: (GNU) 4.2.2"
