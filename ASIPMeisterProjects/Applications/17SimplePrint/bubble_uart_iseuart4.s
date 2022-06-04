; options passed:  -auxbase-strip -O3
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
	.globl	_u_print
	.type	_u_print, @function
_u_print:
;  Function 'u_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r9,r0,#0
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r9
	brnz	r6,.L2
	add	r10,r0,r9
	addi	r9,r0,#256
	lsoi	r9,r9,#0
.L5:
	sw	(r9),r7
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L5
.L2:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_u_print, .-_u_print
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Testing...\r\n"
.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
;  Function 'main'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	addi	r7,r0,#84
	addi	r11,r0,#256
	lsoi	r11,r11,#0
	addi	r10,r0,#0
.L9:
	sw	(r11),r7
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r10
	brnz	r6,.L9
	addi	r6,r0,#6788
	elt	r7,r6,r6
	brnz	r7,.L11
	addi	r6,r0,#65
	sw	(r11),r6
	jp	.L13
.L11:
	addi	r7,r0,#66
	sw	(r11),r7
.L13:
	addi	r6,r0,#256
	lsoi	r6,r6,#0
	addi	r7,r0,#48
	sw	(r6),r7
	addi	r7,r0,#49
	sw	(r6),r7
	addi	r7,r0,#50
	sw	(r6),r7
	addi	r7,r0,#54
	sw	(r6),r7
	addi	r7,r0,#55
	sw	(r6),r7
	addi	r7,r0,#56
	sw	(r6),r7
	addi	r7,r0,#65
	sw	(r6),r7
	addi	r7,r0,#66
	sw	(r6),r7
	addi	r7,r0,#67
	sw	(r6),r7
	addi	r7,r0,#49
	sw	(r6),r7
	addi	r7,r0,#50
	sw	(r6),r7
	addi	r7,r0,#51
	sw	(r6),r7
	addi	r7,r0,#13
	sw	(r6),r7
	addi	r7,r0,#10
	sw	(r6),r7
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
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
	.ident	"GCC: (GNU) 4.2.2"
