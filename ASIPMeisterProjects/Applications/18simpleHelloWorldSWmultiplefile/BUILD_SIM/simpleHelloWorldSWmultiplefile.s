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
LC_app_0:
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
	addi	r8,r0,%hi(LC_app_0)
	lsoi	r8,r8,%lo(LC_app_0)
	jpl	_t_print
	addi	r8,r0,%hi(LC_app_0)
	lsoi	r8,r8,%lo(LC_app_0)
	jpl	_u_print
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_t_print
	.type	_t_print, @function
_t_print:
;  Function 't_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	addi	r9,r0,#0
	eeq	r6,r7,r9
	brnz	r6,L_lib_lcd_dlxsim_2
	addi	r10,r0,#512
	lsoi	r10,r10,#0
L_lib_lcd_dlxsim_5:
	sw	(r10),r7
	addi	r8,r8,#1
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r9
	brnz	r6,L_lib_lcd_dlxsim_5
L_lib_lcd_dlxsim_2:
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_print, .-_t_print
	.align 2
	.globl	_checkbuffer
	.type	_checkbuffer, @function
_checkbuffer:
;  Function 'checkbuffer'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
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
;  Function 'getbytes'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
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
;  Function 'sendcommand'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_sendcommand, .-_sendcommand
	.align 2
	.globl	_t_cursor
	.type	_t_cursor, @function
_t_cursor:
;  Function 't_cursor'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 't_enable'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_enable, .-_t_enable
	.align 2
	.globl	_g_print
	.type	_g_print, @function
_g_print:
;  Function 'g_print'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 'g_drawrect'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 'g_drawline'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_drawline, .-_g_drawline
	.align 2
	.globl	_g_makebar
	.type	_g_makebar, @function
_g_makebar:
;  Function 'g_makebar'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
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
;  Function 'g_setbar'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 'g_makeswitch'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 'g_makemenubutton'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
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
;  Function 'g_makeradiogroup'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_g_makeradiogroup, .-_g_makeradiogroup
	.align 2
	.globl	_d_clear
	.type	_d_clear, @function
_d_clear:
;  Function 'd_clear'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#0
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_d_clear, .-_d_clear
	.align 2
	.globl	_t_printInt
	.type	_t_printInt, @function
_t_printInt:
;  Function 't_printInt'; 20 bytes of locals, 1 regs to save, 32 byte of out. args. size.
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
	brnz	r6,L_lib_lcd_dlxsim_37
	add	r9,r0,r16
	addi	r10,r0,#512
	lsoi	r10,r10,#0
L_lib_lcd_dlxsim_39:
	sw	(r10),r7
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r8
	brnz	r6,L_lib_lcd_dlxsim_39
L_lib_lcd_dlxsim_37:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printInt, .-_t_printInt
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
LC_lib_lcd_dlxsim_0:
	.string	"0x"
.text
	.align 2
	.globl	_t_printHex
	.type	_t_printHex, @function
_t_printHex:
;  Function 't_printHex'; 12 bytes of locals, 1 regs to save, 32 byte of out. args. size.
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
	addi	r7,r0,%hi(LC_lib_lcd_dlxsim_0)
	lsoi	r7,r7,%lo(LC_lib_lcd_dlxsim_0)
	addi	r6,r0,#48
	addi	r9,r0,#512
	lsoi	r9,r9,#0
	addi	r10,r0,#0
L_lib_lcd_dlxsim_43:
	sw	(r9),r6
	addi	r7,r7,#1
	lb	r6,(r7)
	nop
	andi	r6,r6,#0x00ff
	eneq	r8,r6,r10
	brnz	r8,L_lib_lcd_dlxsim_43
	lb	r7,-10(r4)
	nop
	andi	r7,r7,#0x00ff
	eeq	r6,r7,r10
	brnz	r6,L_lib_lcd_dlxsim_45
	add	r9,r0,r16
	addi	r10,r0,#512
	lsoi	r10,r10,#0
L_lib_lcd_dlxsim_47:
	sw	(r10),r7
	addi	r9,r9,#1
	lb	r7,(r9)
	nop
	andi	r7,r7,#0x00ff
	eneq	r6,r7,r8
	brnz	r6,L_lib_lcd_dlxsim_47
L_lib_lcd_dlxsim_45:
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_t_printHex, .-_t_printHex
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_storeByte
	.type	_storeByte, @function
_storeByte:
;  Function 'storeByte'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#-4
	and	r11,r8,r6
	lw	r10,(r11)
	nop
	sub	r6,r0,r8
	subi	r6,r6,#1
	andi	r6,r6,#3
	llsi	r7,r6,#3
	addi	r6,r0,#255
	lls	r6,r6,r7
	sub	r6,r0,r6
	subi	r6,r6,#1
	and	r7,r6,r10
	andi	r6,r8,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r6,r6,#3
	lls	r6,r9,r6
	or	r6,r7,r6
	sw	(r11),r6
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
;  Function 'storeShort'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r0,#-4
	and	r10,r8,r6
	lw	r7,(r10)
	nop
	andi	r6,r8,#1
	brnz	r6,L_loadStoreByte_4
	lsoi	r6,r0,#65535
	jp	L_loadStoreByte_6
L_loadStoreByte_4:
	addi	r6,r0,#-1
	lsoi	r6,r6,#0
L_loadStoreByte_6:
	and	r7,r6,r7
	andi	r6,r8,#2
	arsi	r6,r6,#1
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r6,r6,#4
	ars	r6,r9,r6
	or	r6,r7,r6
	sw	(r10),r6
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
;  Function 'loadByteUnsigned'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	add	r7,r0,r8
	addi	r8,r0,#-4
	and	r6,r7,r8
	lw	r8,(r6)
	nop
	andi	r6,r7,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r6,r6,#3
	ars	r6,r8,r6
	andi	r6,r6,#0x00ff
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
;  Function 'loadByteSigned'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	add	r7,r0,r8
	addi	r8,r0,#-4
	and	r6,r7,r8
	lw	r8,(r6)
	nop
	andi	r6,r7,#3
	sub	r6,r0,r6
	subi	r6,r6,#1
	llsi	r6,r6,#3
	ars	r6,r8,r6
	exbw	r6,r6
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_loadByteSigned, .-_loadByteSigned
	.ident	"GCC: (GNU) 4.2.2"
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
	.globl	_strlen
	.type	_strlen, @function
_strlen:
;  Function 'strlen'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	lb	r6,(r8)
	nop
	andi	r6,r6,#0x00ff
	addi	r7,r0,#0
	eneq	r6,r6,r7
	brz	r6,L_string_4
	add	r9,r0,r7
L_string_5:
	addi	r7,r7,#1
	add	r6,r8,r7
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	eneq	r6,r6,r9
	brnz	r6,L_string_5
L_string_4:
	add	r6,r0,r7
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strlen, .-_strlen
	.align 2
	.globl	_strcmp
	.type	_strcmp, @function
_strcmp:
;  Function 'strcmp'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	lb	r10,(r9)
	nop
	andi	r10,r10,#0x00ff
	lb	r7,(r8)
	nop
	andi	r7,r7,#0x00ff
	addi	r11,r0,#0
	eeq	r6,r7,r11
	brnz	r6,L_string_10
	eeq	r6,r10,r11
	brnz	r6,L_string_12
	elt	r6,r7,r10
	brnz	r6,L_string_14
	elt	r6,r10,r7
	brnz	r6,L_string_12
	addi	r8,r8,#1
	addi	r9,r9,#1
	jp	L_string_17
L_string_24:
	eneq	r6,r10,r11
	brz	r6,L_string_12
	elt	r6,r7,r10
	brnz	r6,L_string_14
	elt	r6,r10,r7
	brnz	r6,L_string_12
L_string_17:
	lb	r6,(r8)
	nop
	andi	r6,r6,#0x00ff
	addi	r8,r8,#1
	lb	r10,(r9)
	nop
	andi	r10,r10,#0x00ff
	addi	r9,r9,#1
	add	r7,r0,r6
	eeq	r6,r6,r11
	brz	r6,L_string_24
L_string_10:
	addi	r7,r0,#0
	eneq	r6,r10,r7
	brnz	r6,L_string_14
	add	r6,r0,r7
	jp	L_string_22
L_string_12:
	addi	r6,r0,#1
	jp	L_string_22
L_string_14:
	addi	r6,r0,#-1
L_string_22:
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
;  Function 'strncmp'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	lb	r13,(r9)
	nop
	lb	r8,(r8)
	nop
	andi	r8,r8,#0x00ff
	addi	r11,r0,#0
	eeq	r6,r8,r11
	brz	r6,L_string_41
L_string_26:
	addi	r6,r0,#0
L_string_31:
	eeq	r9,r6,r10
	brnz	r9,L_string_36
	eeq	r6,r8,r9
	brz	r6,L_string_42
	andi	r6,r13,#0x00ff
	eeq	r6,r6,r9
	brz	r6,L_string_32
L_string_36:
	addi	r6,r0,#0
	jp	L_string_35
L_string_41:
	andi	r7,r13,#0x00ff
	eeq	r6,r7,r11
	brnz	r6,L_string_26
	addi	r12,r0,#1
	elt	r6,r12,r10
	brz	r6,L_string_43
	elt	r6,r8,r7
	brnz	r6,L_string_32
	add	r9,r0,r11
	elt	r6,r7,r8
	brz	r6,L_string_34
	add	r9,r0,r12
L_string_34:
	add	r6,r0,r9
	jp	L_string_35
L_string_42:
	addi	r6,r0,#1
	jp	L_string_35
L_string_32:
	addi	r6,r0,#-1
	jp	L_string_35
L_string_43:
	add	r6,r0,r12
	jp	L_string_31
L_string_35:
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
;  Function 'tolower'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r8,#-65
	addi	r7,r0,#25
	eltu	r6,r7,r6
	brnz	r6,L_string_45
	addi	r8,r8,#32
L_string_45:
	add	r6,r0,r8
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
;  Function 'toupper'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r6,r8,#-97
	addi	r7,r0,#25
	eltu	r6,r7,r6
	brnz	r6,L_string_49
	addi	r8,r8,#-32
L_string_49:
	add	r6,r0,r8
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
;  Function 'isdigit'; 0 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-8	; alloc local storage
	addi	r9,r0,#0
	addi	r6,r8,#-48
	addi	r7,r0,#9
	eltu	r6,r7,r6
	brnz	r6,L_string_53
	addi	r9,r0,#1
L_string_53:
	add	r6,r0,r9
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_isdigit, .-_isdigit
	.align 2
	.globl	_strncpy
	.type	_strncpy, @function
_strncpy:
;  Function 'strncpy'; 0 bytes of locals, 5 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-64	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	sw	44(r5),r19	; save r(r19)
	sw	48(r5),r20	; save r(r20)
	add	r20,r0,r8
	add	r19,r0,r10
	lb	r18,(r9)
	nop
	andi	r18,r18,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r18,r6
	brnz	r6,L_string_56
	addi	r7,r0,#1
	elt	r6,r7,r10
	brz	r6,L_string_56
	add	r16,r0,r7
	jp	L_string_59
L_string_63:
	add	r8,r0,r17
L_string_59:
	addi	r17,r8,#1
	add	r9,r0,r18
	jpl	_storeByte
	addi	r16,r16,#1
	eeq	r6,r16,r19
	brz	r6,L_string_63
	add	r6,r20,r19
	addi	r20,r6,#-1
L_string_56:
	add	r8,r0,r20
	addi	r9,r0,#0
	jpl	_storeByte
	add	r6,r0,r20
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	lw	r19,44(r5)	; restore r(r19).
	lw	r20,48(r5)	; restore r(r20).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncpy, .-_strncpy
	.align 2
	.globl	_strcpy
	.type	_strcpy, @function
_strcpy:
;  Function 'strcpy'; 0 bytes of locals, 3 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-56	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	add	r17,r0,r8
	lb	r18,(r9)
	nop
	andi	r18,r18,#0x00ff
	addi	r9,r0,#0
	eeq	r6,r18,r9
	brnz	r6,L_string_65
L_string_68:
	addi	r16,r17,#1
	add	r8,r0,r17
	add	r9,r0,r18
	jpl	_storeByte
	add	r17,r0,r16
	addi	r16,r17,#1
	add	r8,r0,r17
	add	r9,r0,r18
	jpl	_storeByte
	add	r17,r0,r16
	jp	L_string_68
L_string_65:
	jpl	_storeByte
	add	r6,r0,r17
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcpy, .-_strcpy
	.align 2
	.globl	_strncat
	.type	_strncat, @function
_strncat:
;  Function 'strncat'; 0 bytes of locals, 5 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-64	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	sw	44(r5),r19	; save r(r19)
	sw	48(r5),r20	; save r(r20)
	add	r20,r0,r10
	addi	r16,r8,#1
	lb	r6,(r8)
	nop
	andi	r6,r6,#0x00ff
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_70
L_string_79:
	lb	r6,(r16)
	nop
	andi	r6,r6,#0x00ff
	addi	r16,r16,#1
	eneq	r6,r6,r7
	brnz	r6,L_string_79
L_string_70:
	lb	r19,(r9)
	nop
	andi	r19,r19,#0x00ff
	addi	r6,r0,#0
	eeq	r6,r19,r6
	brnz	r6,L_string_72
	addi	r7,r0,#1
	elt	r6,r7,r20
	brz	r6,L_string_72
	add	r8,r0,r16
	add	r17,r0,r7
	jp	L_string_75
L_string_81:
	add	r8,r0,r18
L_string_75:
	addi	r18,r8,#1
	add	r9,r0,r19
	jpl	_storeByte
	addi	r17,r17,#1
	eeq	r6,r17,r20
	brz	r6,L_string_81
	add	r6,r16,r20
	addi	r16,r6,#-1
L_string_72:
	add	r8,r0,r16
	addi	r9,r0,#0
	jpl	_storeByte
	add	r6,r0,r16
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	lw	r19,44(r5)	; restore r(r19).
	lw	r20,48(r5)	; restore r(r20).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strncat, .-_strncat
	.align 2
	.globl	_strcat
	.type	_strcat, @function
_strcat:
;  Function 'strcat'; 0 bytes of locals, 2 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-48	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	add	r6,r0,r8
	addi	r8,r8,#1
	lb	r6,(r6)
	nop
	andi	r6,r6,#0x00ff
	addi	r7,r0,#0
	eeq	r6,r6,r7
	brnz	r6,L_string_83
L_string_88:
	lb	r6,(r8)
	nop
	andi	r6,r6,#0x00ff
	addi	r8,r8,#1
	eneq	r6,r6,r7
	brnz	r6,L_string_88
L_string_83:
	lb	r17,(r9)
	nop
	andi	r17,r17,#0x00ff
	addi	r9,r0,#0
	eeq	r6,r17,r9
	brnz	r6,L_string_85
L_string_90:
	addi	r16,r8,#1
	add	r9,r0,r17
	jpl	_storeByte
	add	r8,r0,r16
	addi	r16,r8,#1
	add	r9,r0,r17
	jpl	_storeByte
	add	r8,r0,r16
	jp	L_string_90
L_string_85:
	jpl	_storeByte
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_strcat, .-_strcat
	.align 2
	.globl	_intToHexStr
	.type	_intToHexStr, @function
_intToHexStr:
;  Function 'intToHexStr'; 12 bytes of locals, 5 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-76	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	sw	44(r5),r19	; save r(r19)
	sw	48(r5),r20	; save r(r20)
	add	r16,r0,r8
	add	r20,r0,r9
	add	r17,r0,r10
	addi	r7,r0,#0
	eeq	r6,r8,r7
	brz	r6,L_string_190
	eneq	r6,r10,r7
	brz	r6,L_string_167
	elt	r6,r7,r10
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_95:
	addi	r18,r4,#-10
	add	r8,r0,r18
	jpl	_storeByte
L_string_96:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_191
	eneq	r6,r17,r7
	brz	r6,L_string_192
	addi	r7,r0,#1
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_106:
	addi	r8,r4,#-9
	jpl	_storeByte
L_string_107:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_193
	eneq	r6,r17,r7
	brz	r6,L_string_194
	addi	r7,r0,#2
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_116:
	addi	r8,r4,#-8
	jpl	_storeByte
L_string_117:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_195
	eneq	r6,r17,r7
	brz	r6,L_string_196
	addi	r7,r0,#3
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_126:
	addi	r8,r4,#-7
	jpl	_storeByte
L_string_127:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_197
	eneq	r6,r17,r7
	brz	r6,L_string_198
	addi	r7,r0,#4
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_136:
	addi	r8,r4,#-6
	jpl	_storeByte
L_string_137:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_199
	eneq	r6,r17,r7
	brz	r6,L_string_200
	addi	r7,r0,#5
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_146:
	addi	r8,r4,#-5
	jpl	_storeByte
L_string_147:
	arsi	r16,r16,#4
	addi	r7,r0,#0
	eeq	r6,r16,r7
	brz	r6,L_string_201
	eneq	r6,r17,r7
	brz	r6,L_string_202
	addi	r7,r0,#6
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_156:
	addi	r8,r4,#-4
	jpl	_storeByte
L_string_157:
	arsi	r8,r16,#4
	addi	r7,r0,#0
	eneq	r6,r8,r7
	brnz	r6,L_string_163
	eneq	r6,r17,r7
	brz	r6,L_string_203
	addi	r7,r0,#7
	elt	r6,r7,r17
	brz	r6,L_string_167
	addi	r9,r0,#48
L_string_169:
	addi	r8,r4,#-3
	jpl	_storeByte
L_string_172:
	addi	r19,r0,#8
	addi	r8,r0,#7
L_string_173:
	add	r16,r18,r8
	add	r17,r0,r20
	addi	r18,r4,#-11
L_string_176:
	add	r8,r0,r17
	lb	r9,(r16)
	nop
	andi	r9,r9,#0x00ff
	jpl	_storeByte
	addi	r16,r16,#-1
	addi	r17,r17,#1
	eneq	r6,r16,r18
	brnz	r6,L_string_176
	add	r6,r0,r19
	jp	L_string_175
L_string_190:
	andi	r9,r8,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_97
	addi	r9,r9,#48
	jp	L_string_95
L_string_191:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_108
	addi	r9,r9,#48
	jp	L_string_106
L_string_193:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_118
	addi	r9,r9,#48
	jp	L_string_116
L_string_195:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_128
	addi	r9,r9,#48
	jp	L_string_126
L_string_197:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_138
	addi	r9,r9,#48
	jp	L_string_136
L_string_199:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_148
	addi	r9,r9,#48
	jp	L_string_146
L_string_201:
	andi	r9,r16,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_158
	addi	r9,r9,#48
	jp	L_string_156
L_string_163:
	andi	r9,r8,#15
	addi	r6,r0,#9
	elt	r6,r6,r9
	brnz	r6,L_string_170
	addi	r9,r9,#48
	jp	L_string_169
L_string_97:
	addi	r18,r4,#-10
	add	r8,r0,r18
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_96
L_string_167:
	add	r19,r0,r7
L_string_101:
	addi	r8,r19,#-1
	addi	r7,r0,#0
	elt	r6,r8,r7
	brnz	r6,L_string_204
	addi	r18,r4,#-10
	jp	L_string_173
L_string_108:
	addi	r8,r4,#-9
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_107
L_string_118:
	addi	r8,r4,#-8
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_117
L_string_128:
	addi	r8,r4,#-7
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_127
L_string_138:
	addi	r8,r4,#-6
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_137
L_string_148:
	addi	r8,r4,#-5
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_147
L_string_158:
	addi	r8,r4,#-4
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_157
L_string_170:
	addi	r8,r4,#-3
	addi	r9,r9,#55
	jpl	_storeByte
	jp	L_string_172
L_string_204:
	add	r6,r0,r7
	jp	L_string_175
L_string_194:
	addi	r19,r0,#2
	jp	L_string_101
L_string_192:
	addi	r19,r0,#1
	jp	L_string_101
L_string_198:
	addi	r19,r0,#4
	jp	L_string_101
L_string_196:
	addi	r19,r0,#3
	jp	L_string_101
L_string_202:
	addi	r19,r0,#6
	jp	L_string_101
L_string_200:
	addi	r19,r0,#5
	jp	L_string_101
L_string_203:
	addi	r19,r0,#7
	jp	L_string_101
L_string_175:
	add	r8,r20,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	lw	r19,44(r5)	; restore r(r19).
	lw	r20,48(r5)	; restore r(r20).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToHexStr, .-_intToHexStr
	.align 2
	.globl	_intToStr
	.type	_intToStr, @function
_intToStr:
;  Function 'intToStr'; 32 bytes of locals, 7 regs to save, 32 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-104	; alloc local storage
	sw	32(r5),r16	; save r(r16)
	sw	36(r5),r17	; save r(r17)
	sw	40(r5),r18	; save r(r18)
	sw	44(r5),r19	; save r(r19)
	sw	48(r5),r20	; save r(r20)
	sw	52(r5),r21	; save r(r21)
	sw	56(r5),r22	; save r(r22)
	add	r16,r0,r8
	add	r22,r0,r9
	addi	r7,r0,#0
	elt	r6,r8,r7
	brnz	r6,L_string_221
	eeq	r6,r8,r7
	brnz	r6,L_string_209
	add	r21,r0,r7
L_string_208:
	addi	r17,r0,#0
	addi	r20,r4,#-32
	addi	r18,r0,#10
	add	r19,r0,r17
L_string_211:
	mod	r6,r16,r18
	add	r8,r20,r17
	addi	r9,r6,#48
	jpl	_storeByte
	div	r16,r16,r18
	addi	r17,r17,#1
	eneq	r6,r16,r19
	brnz	r6,L_string_211
	addi	r19,r17,#-1
	add	r16,r20,r19
	add	r17,r22,r21
	addi	r18,r4,#-33
L_string_214:
	add	r8,r0,r17
	lb	r9,(r16)
	nop
	andi	r9,r9,#0x00ff
	jpl	_storeByte
	addi	r16,r16,#-1
	addi	r17,r17,#1
	eneq	r6,r16,r18
	brnz	r6,L_string_214
	addi	r6,r21,#1
	add	r6,r6,r19
	jp	L_string_212
L_string_209:
	add	r8,r0,r9
	addi	r9,r0,#48
	jpl	_storeByte
	addi	r6,r0,#1
	jp	L_string_212
L_string_221:
	sub	r16,r0,r8
	add	r8,r0,r9
	addi	r9,r0,#45
	jpl	_storeByte
	addi	r21,r0,#1
	jp	L_string_208
L_string_212:
	add	r8,r22,r6
	addi	r9,r0,#0
	jpl	_storeByte
	addi	r6,r0,#0
	lw	r16,32(r5)	; restore r(r16).
	lw	r17,36(r5)	; restore r(r17).
	lw	r18,40(r5)	; restore r(r18).
	lw	r19,44(r5)	; restore r(r19).
	lw	r20,48(r5)	; restore r(r20).
	lw	r21,52(r5)	; restore r(r21).
	lw	r22,56(r5)	; restore r(r22).
	nop
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	.size	_intToStr, .-_intToStr
	.ident	"GCC: (GNU) 4.2.2"