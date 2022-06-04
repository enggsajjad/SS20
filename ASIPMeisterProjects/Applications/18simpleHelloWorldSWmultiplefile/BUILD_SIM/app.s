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
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Hello World!...\r\n"
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
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_t_print
	addi	r8,r0,%hi(.LC0)
	lsoi	r8,r8,%lo(.LC0)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
