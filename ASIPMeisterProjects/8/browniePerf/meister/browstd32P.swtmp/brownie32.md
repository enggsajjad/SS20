

























































;;
;; Brownie32.md
;;
;; Aaron Sawdey
;;
;; 1994-1995
;;
;; Brownie32 Machine Description 
;; (C)Copyright 2005, 2006 Upwind Technology, Inc.
;; (C)Copyright 2007 SRA
;;
;; Possible improvements:
;;  * add define_splits for common multi-instruction sequences
;;  * add peephole optimizations
;;  * add functional unit descriptions and scheduling information
;;
;; Since parts of this come from mips.md:
;;
;; This file is part of GNU CC.
;;
;; GNU CC is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; GNU CC is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU CC; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
;;
;;

(define_constants
  [
   (B32_FP_REGNUM 4)	    ; Register 4 contains the frame pointer
   (B32_SP_REGNUM 5)	    ; Register 5 contains the stack pointer
   (B32_RV_REGNUM 6)	    ; Register 6 or 7 contains the return value
   (B32_A_REGNUM 6)	    ; Register 6 for work
   (B32_RP_FROM_REGNUM 8)	  ; Register 8 to 15 for the register passing.
   (B32_RP_TO_REGNUM 15)
  ]
)


;; Instruction types. Keep it simple for now; these categories
;; correspond (roughly) with the things on the back cover of H&P.
;;
;;
;; unknown
;; load         mem load
;; store        mem store
;; move         reg-reg move
;; alu          alu ops or int compares
;; branch       conditional branch
;; jump         unconditional branch
;; fp           floating point op or fp compare
;; multi        multiple different types
;;

(define_attr "type" 
  "unknown,load,store,move,alu,branch,jump,fp,multi" 
;;  "unknown,load,store,move,alu,branch,jump,multi" 
  (const_string "unknown"))

;
; Define a memory unit that can process one load at a time
; and does not come back for 2 cycles. 
; (define_function_unit "memory" 1 1 (or (eq_attr "type" "load")
; 				       (eq_attr "type" "store")) 2 0)
;


(define_attr "mode" "unknown,none,QI,HI,SI,DI,SF,DF" 
             (const_string "unknown"))


;; # instructions (4 bytes each)
(define_attr "length" "" (const_int 1))

(define_delay (eq_attr "type" "branch,jump")
              [(and (eq_attr "type" "!branch,jump")
                    (eq_attr "length" "200")) (nil) (nil)])


;; Include predicate definitions

(include "predicates.md")


; 
; ** AO_Comment ** 
;(define_insn "addsf3"
;  [(set (match_operand:SF 0 "register_operand" "=f,f,f")
;        (plus:SF (match_operand:SF 1 "register_operand" "%f,f,f")
;                 (match_operand:SF 2 "register_operand" "f,I,L")))]
;  ""
;  "@
;   SFADD\\t%0,%1,%2
;   SFADD\\t%0,%1,%G2
;   SFADD\\t%0,%1,%U2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "SF")])
;
;(define_insn "addsf3"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (plus:SF (match_operand:SF 1 "register_operand" "%f")
;                 (match_operand:SF 2 "register_operand" "f")))]
;  ""
;  "ADDI\\tR6,R6,#12\\n\\tSW\\t4(R6),%1\\n\\tSW\\t8(R6),%2\\n\\tJPL\\t___addsf3\\n\\tADDI\\tR6,R6,#-12\\n\\tADD\\t%0,R0,R4"
;
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "SF")])
;
;
;
;
; ** AO_Comment ** 
;(define_insn "adddf3"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (plus:DF (match_operand:DF 1 "register_operand" "%f")
;                (match_operand:DF 2 "register_operand" "f")))]
;  ""
;  "addd\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "DF")])


;
; ** AO_Comment ** 
;(define_insn "subsf3"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (minus:SF (match_operand:SF 1 "register_operand" "f")
;                (match_operand:SF 2 "register_operand" "f")))]
;  ""
;    "sub\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;  (set_attr "mode"     "SF")])


;
; ** AO_Comment ** 
;(define_insn "subdf3"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (minus:DF (match_operand:DF 1 "register_operand" "f")
;                 (match_operand:DF 2 "register_operand" "f")))]
;  ""
;  "subd\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "DF")])


;
; ** AO_Comment ** 
;(define_insn "mulsf3"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (mult:SF (match_operand:SF 1 "register_operand" "%f")
;                 (match_operand:SF 2 "register_operand" "f")))]
;  ""
;  "mul\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "SF")])


;
; ** AO_Comment ** 
;(define_insn "muldf3"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (mult:DF (match_operand:DF 1 "register_operand" "%f")
;                 (match_operand:DF 2 "register_operand" "f")))]
;  ""
;  "mul\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "DF")])


;
; ** AO_Comment ** 
;(define_insn "divsf3"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (div:SF (match_operand:SF 1 "register_operand" "f")
;                 (match_operand:SF 2 "register_operand" "f")))]
;  ""
;  "div\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "SF")])


;
; ** AO_Comment ** 
;(define_insn "divdf3"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (div:DF (match_operand:DF 1 "register_operand" "f")
;                 (match_operand:DF 2 "register_operand" "f")))]
;  ""
;  "div\\t%0,%1,%2"
;  [(set_attr "type"     "fp")
;   (set_attr "mode"     "DF")])


;
; ** AO_Comment ** 
(define_insn "addsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (plus:SI (match_operand:SI 1 "register_operand" "%d,d")
                 (match_operand:SI 2 "nonmemory_operand" "d,I")))]
  ""
  "@
   add\\t%0,%1,%2
   addi\\t%0,%1,%G2"
  [(set_attr "type"     "alu")
   (set_attr "mode"     "SI")])
;
; ** AO_Comment ** 
(define_insn "subsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d,d")
        (minus:SI (match_operand:SI 1 "register_operand" "d,d,d")
                 (match_operand:SI 2 "nonmemory_operand" "d,I,L")))]
  ""
;;  "@
;;   sub\\t%0,%1,%2
;;   subi\\t%0,%1,%G2
;;   subui\\t%0,%1,%U2"
  "@
   sub\\t%0,%1,%2
   subi\\t%0,%1,%G2
   subi\\t%0,%1,%U2"
  [(set_attr "type"     "alu")
   (set_attr "mode"     "SI")])

(define_insn "andsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (and:SI (match_operand:SI 1 "register_operand" "%d,d")
                (match_operand:SI 2 "nonmemory_operand" "d,L")))]
  ""
  "@
   and\\t%0,%1,%2
   andi\\t%0,%1,%U2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])

(define_insn "iorsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (ior:SI (match_operand:SI 1 "register_operand" "%d,d")
                (match_operand:SI 2 "nonmemory_operand" "d,L")))]
  ""
  "@
   or\\t%0,%1,%2
   ori\\t%0,%1,%U2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


(define_insn "xorsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (xor:SI (match_operand:SI 1 "register_operand" "%d,d")
                (match_operand:SI 2 "nonmemory_operand" "d,L")))]
  ""
  "@
   xor\\t%0,%1,%2
   xori\\t%0,%1,%U2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;;
(define_insn "nandsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (not:SI (and:SI (match_operand:SI 1 "register_operand" "%d")
	                (match_operand:SI 2 "register_operand" "d"))))]
  ""
  "nand\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")
   (set_attr "length" "1")])

;;
(define_insn "norsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (not:SI (ior:SI (match_operand:SI 1 "register_operand" "%d")
	                (match_operand:SI 2 "register_operand" "d"))))]
  ""
  "nor\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")
   (set_attr "length" "1")])




;;
;; -x = 0-x
;; This is ok for integers.
;;


(define_insn "negsi2"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (neg:SI (match_operand:SI 1 "register_operand" "d")))]
  ""
  "sub\\t%0,r0,%1"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;;
;; -x = 0-x
;; Alarm bells should be going off because this isn't
;; true for floating point numbers! Unfortunately DLX
;; doesn't have a "neg" instruction and the only better
;; solution is to multiply by -1 which is very painful.
;;
;
; ** AO_Comment ** 
;(define_insn "negsf2"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (neg:SF (match_operand:SF 1 "register_operand" "f")))
;   (clobber (match_scratch:SF 2 "=&f"))]
;  ""
;  "movi2fp\\t%2,r0\\n\\tcvti2f\\t%2,%2\\n\\tsubf\\t%0,%2,%1"
;  [(set_attr "type" "alu")
;   (set_attr "mode" "SF")
;   (set_attr "length" "3")])

;

;(define_insn "negdf2"
;  [(set (match_operand:DF 0 "register_operand" "=r")
;        (neg:DF (match_operand:DF 1 "register_operand" "r")))
;    (clobber (match_scratch:DF 2 "=&r"))]
;  ""
;{
;     return "addi\\t%2,r0,#-32768\\n\\tlsoi\\t%2,%2,#0\\n\\txor\\t%0,%1,%2";
;}
;  [(set_attr "type" "alu")
;   (set_attr "mode" "DF")
;   (set_attr "length" "6")])

(define_insn "one_cmplqi2"
  [(set (match_operand:QI 0 "register_operand" "=d")
        (not:QI (match_operand:QI 1 "register_operand" "d")))]
  ""
  "xori\\t%0,%1,#0x00ff"
  [(set_attr "type" "alu")
   (set_attr "mode" "QI")
   (set_attr "length" "1")])

(define_insn "one_cmplhi2"
  [(set (match_operand:HI 0 "register_operand" "=d")
        (not:HI (match_operand:HI 1 "register_operand" "d")))]
  ""
  "xori\\t%0,%1,#0xffff"
  [(set_attr "type" "alu")
   (set_attr "mode" "HI")])


(define_insn "one_cmplsi2"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (not:SI (match_operand:SI 1 "register_operand" "d")))]
  ""
  "sub\\t%0,r0,%1\\n\\tsubi\\t%0,%0,#1"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")
   (set_attr "length" "2")])


(define_insn "ashlsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (ashift:SI (match_operand:SI 1 "register_operand" "d,d")
                   (match_operand:SI 2 "nonmemory_operand" "d,I")))]
  ""
;  "@
;   sll\\t%0,%1,%2
;   slli\\t%0,%1,%2"
  "@
  lls\\t%0,%1,%2
  llsi\\t%0,%1,%G2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])

;(define_insn "lshlsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d,d")
;        (lshift:SI (match_operand:SI 1 "register_operand" "d,d")
;                   (match_operand:SI 2 "nonmemory_operand" "d,I")))]
;  ""
;  "@
;   sll\\t%0,%1,%2
;   slli\\t%0,%1,%2"
;  "@
;  lls\\t%0,%1,%2
;  llsi\\t%0,%1,%G2"
;  [(set_attr "type" "alu")
;   (set_attr "mode" "SI")])


;
; ** AO_Comment ** 
(define_insn "ashrsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (ashiftrt:SI (match_operand:SI 1 "register_operand" "d,d")
                     (match_operand:SI 2 "nonmemory_operand" "d,I")))]
  ""
;  "@
;   sra\\t%0,%1,%2
;   srai\\t%0,%1,%2"
   "@
    ars\\t%0,%1,%2
    arsi\\t%0,%1,%G2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;
; ** AO_Comment ** 
(define_insn "lshrsi3"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (lshiftrt:SI (match_operand:SI 1 "register_operand" "d,d")
                     (match_operand:SI 2 "nonmemory_operand" "d,I")))]
  ""
;  "@
;   srl\\t%0,%1,%2
;   srli\\t%0,%1,%2"
   "@
   lrs\\t%0,%1,%2
   lrsi\\t%0,%1,%G2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;
; ** AO_Comment ** 
;(define_insn "mulsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (mult:SI (match_operand:SI 1 "register_operand" "d")
;                 (match_operand:SI 2 "register_operand" "d")))
;  (clobber (match_scratch:SF 3 "=&f"))
;   (clobber (match_scratch:SF 4 "=&f"))]
;  ""
;  "movi2fp\\t%3,%1\\n\\
;\\tmovi2fp\\t%4,%2\\n\\
;\\tmult\\t%3,%3,%4\\n\\
;\\tmovfp2i\\t%0,%3"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SI")
;   (set_attr "length" "4")])
;
(define_insn "mulsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (mult:SI (match_operand:SI 1 "register_operand" "d")
                 (match_operand:SI 2 "register_operand" "d")))]
  ""
  "mul\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;
; ** AO_Comment ** 
;(define_insn "divsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (div:SI (match_operand:SI 1 "register_operand" "d")
;                 (match_operand:SI 2 "register_operand" "d")))
;   (clobber (match_scratch:SF 3 "=&f"))
;   (clobber (match_scratch:SF 4 "=&f"))]
;  ""
;  "movi2fp\\t%3,%1\\n\\
;\\tmovi2fp\\t%4,%2\\n\\
;\\tdiv\\t%3,%3,%4\\n\\
;\\tmovfp2i\\t%0,%3"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SI")
;   (set_attr "length" "4")])
;
;(define_insn "udivsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (udiv:SI (match_operand:SI 1 "register_operand" "d")
;                 (match_operand:SI 2 "register_operand" "d")))]
;  ""
;  "div\\t%0,%1,%2\\n\\tnop"
;  [(set_attr "type" "alu")
;   (set_attr "mode" "SI")])



(define_insn "divsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (div:SI (match_operand:SI 1 "register_operand" "d")
                 (match_operand:SI 2 "register_operand" "d")))]
  ""
  "div\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


(define_insn "udivsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (udiv:SI (match_operand:SI 1 "register_operand" "d")
                 (match_operand:SI 2 "register_operand" "d")))]
  ""
  "divu\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;
;(define_insn "udivsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (udiv:SI (match_operand:SI 1 "register_operand" "d")
;                 (match_operand:SI 2 "register_operand" "d")))
;   (clobber (match_scratch:SF 3 "=&f"))
;   (clobber (match_scratch:SF 4 "=&f"))]
;  ""
;  "movi2fp\\t%3,%1\\n\\
;\\tmovi2fp\\t%4,%2\\n\\
;\\tdivu\\t%3,%3,%4\\n\\
;\\tmovfp2i\\t%0,%3"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SI")
;   (set_attr "length" "4")])
;


(define_insn "modsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (mod:SI (match_operand:SI 1 "register_operand" "d")
                 (match_operand:SI 2 "register_operand" "d")))]
  ""
  "mod\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])

(define_insn "umodsi3"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (umod:SI (match_operand:SI 1 "register_operand" "d")
                 (match_operand:SI 2 "register_operand" "d")))]
  ""
  "modu\\t%0,%1,%2"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])

;(define_insn "umodsi3"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (umod:SI (match_operand:SI 1 "register_operand" "d")
;                 (match_operand:SI 2 "register_operand" "d")))]
;  ""
;  "mod\\t%0,%1,%2"
;  [(set_attr "type" "alu")
;   (set_attr "mode" "SI")])


;;
;; Conversion patterns
;;

;
; ** AO_Comment ** 0525
;;(define_insn "floatsisf2"
;x(define_insn "floatsisf"
;x  [(set (match_operand:SF 0 "register_operand" "=f")
;x        (float:SF (match_operand:SI 1 "register_operand" "d")))]
;x  ""
;x;;  "movi2fp\\t%0,%1\\n\\tcvti2f\\t%0,%0"
;x  "add\\t%0,r1,%1\\n\\tadd\\t%0,r2,%0"
;x  [(set_attr "type" "fp")
;x   (set_attr "mode" "SF")
;x   (set_attr "length" "2")])
;

;
; ** AO_Comment ** 
;;(define_insn "floatsidf2"
;(define_insn "floatsidf2"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (float:DF (match_operand:SI 1 "register_operand" "d")))]
;  ""
;;  "movi2fp\\t%0,%1\\n\\tcvti2d\\t%0,%0"
;  "add\\t%0,r3,%1\\n\\tadd\\t%0,r4,%0"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "DF")
;   (set_attr "length" "2")])


;
; ** AO_Comment ** 
;(define_insn "fix_truncsfsi2"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (fix:SI (match_operand:SF 1 "register_operand" "+f"))
;	(clobber (match_scratch:SF 2 "=&f"))]
;  ""
;  "cvtf2i\\t%2,%1\\n\\tmovfp2i\\t%0,%2\\n"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")
;   (set_attr "length" "2")])


;
; ** AO_Comment ** 
;(define_insn "fix_truncdfsi2"
;  [(set (match_operand:SI 0 "register_operand" "=d")
;        (fix:SI (match_operand:DF 1 "register_operand" "+f")))
;   (clobber (match_scratch:DF 2 "=&f"))]
;  ""
;  "cvtd2i\\t%2,%1\\n\\tmovfp2i\\t%0,%2\\n"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "DF")
;   (set_attr "length" "2")])


;
; ** AO_Comment ** 
;(define_insn "truncdfsf2"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (float_truncate:SF (match_operand:DF 1 "register_operand" "f")))]
;  ""
;  "cvtd2f\\t%0,%1"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")])
;(define_insn "truncdfsf2"
;  [(set (match_operand:SF 0 "register_operand" "=f")
;        (float_truncate:SF (match_operand:DF 1 "register_operand" "f")))]
;  ""
;  "ADD\\t%0,r0,%1"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")])
;

(define_insn "truncsihi2"
  [(set (match_operand:HI 0 "general_operand" "=d,m")
        (truncate:HI (match_operand:SI 1 "register_operand" "d,d")))]
  ""
  "@
   andi\\t%0,%1,#0xffff
   sh\\t%0,%1"
  [(set_attr "type" "alu,store")
   (set_attr "mode" "HI")
   (set_attr "length" "2")])

(define_insn "truncsiqi2"
  [(set (match_operand:QI 0 "general_operand" "=d,m")
        (truncate:QI (match_operand:SI 1 "register_operand" "d,d")))]
  ""
  "@
   andi\\t%0,%1,#0x00ff
   sb\\t%0,%1"
  [(set_attr "type" "alu,store")
   (set_attr "mode" "QI")])

(define_insn "trunchiqi2"
  [(set (match_operand:QI 0 "general_operand" "=d,m")
        (truncate:QI (match_operand:HI 1 "register_operand" "d,d")))]
  ""
  "@
   andi\\t%0,%1,#0x00ff
   sb\\t%0,%1"
  [(set_attr "type" "alu,store")
   (set_attr "mode" "QI")])

;
; ** AO_Comment ** 
(define_insn "zero_extendqihi2"
  [(set (match_operand:HI 0 "register_operand" "=d,d")
        (zero_extend:HI (match_operand:QI 1 "general_operand" "d,m")))]
  ""
;;  "@
;;   andi\\t%0,%1,#0x00ff
;;   lbu\\t%0,%1"
;
;;  "@
;;   andi\\t%0,%1,#0x00ff
;;   lb\\t%0,%1"
  "@
   andi\\t%0,%1,#0x00ff
   lb\\t%0,%1\\n\\tnop\\n\\tandi\\t%0,%0,#0x00ff"
;
  [(set_attr "type" "alu,load")
   (set_attr "mode" "HI")
   (set_attr "length" "1,2")])

;
; ** AO_Comment ** 
(define_insn "zero_extendhisi2"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (zero_extend:SI (match_operand:HI 1 "general_operand" "d,m")))]
  ""
;;  "@
;;   andi\\t%0,%1,#0xffff
;;   lhu\\t%0,%1"
;
;;  "@
;;   andi\\t%0,%1,#0xffff
;;   lh\\t%0,%1"
;
  "@
   andi\\t%0,%1,#0xffff
   lh\\t%0,%1\\n\\tnop\\n\\tandi\\t%0,%0,#0xffff"
;
  [(set_attr "type" "alu,load")
   (set_attr "mode" "SI")
   (set_attr "length" "1,2")])

;
; ** AO_Comment ** 
(define_insn "zero_extendqisi2"
  [(set (match_operand:SI 0 "register_operand" "=d,d")
        (zero_extend:SI (match_operand:QI 1 "general_operand" "d,m")))]
  ""
;;  "@
;;   andi\\t%0,%1,#0x00ff
;;   lbu\\t%0,%1"
;
;;  "@
;;   andi\\t%0,%1,#0x00ff
;;  lb\\t%0,%1"
;
  "@
   andi\\t%0,%1,#0x00ff
   lb\\t%0,%1\\n\\tnop\\n\\tandi\\t%0,%0,#0x00ff"
;
  [(set_attr "type" "alu,load")
   (set_attr "mode" "SI,SI")
   (set_attr "length" "1,2")])

;;;
(define_insn "extendqisi2"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (sign_extend:SI (match_operand:QI 1 "register_operand" "d")))]
  ""
  "exbw\\t%0,%1"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")
   (set_attr "length" "2")])

;;;
(define_insn "extendhisi2"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (sign_extend:SI (match_operand:HI 1 "register_operand" "d")))]
  ""
  "exhw\\t%0,%1"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")
   (set_attr "length" "2")])


;
; ** AO_Comment ** 
(define_insn "extendqihi2"
  [(set (match_operand:HI 0 "register_operand" "=d")
        (sign_extend:HI (match_operand:QI 1 "register_operand" "d")))]
  ""
;;  "slli\\t%0,%1,#24\\n\\tsrai\\t%0,%0,#24\\n\\tandi\\t%0,%0,#0xffff"
;;00  "llsi\\t%0,%1,#24\\n\\tlrsi\\t%0,%0,#24\\n\\tandi\\t%0,%0,#0xffff"
   "llsi\\t%0,%1,#24\;arsi\\t%0,%0,#24\;andi\\t%0,%0,#0xffff"
;
  [(set_attr "type" "alu")
   (set_attr "mode" "HI")
   (set_attr "length" "3")])


;
; ** AO_Comment ** 
;(define_insn "extendsfdf2"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (float_extend:DF (match_operand:SF 1 "register_operand" "f")))]
;  ""
;  "cvtf2d\\t%0,%1"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "DF")])
;
;(define_insn "extendsfdf2"
;  [(set (match_operand:DF 0 "register_operand" "=f")
;        (float_extend:DF (match_operand:SF 1 "register_operand" "f")))]
;  ""
;  "ADD\\t%0,r0,%1"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "DF")])


;;
;; move instructions:
;; mem-reg, reg-mem, imm-reg
;;
;; The standard "movsi" pattern for RTL generation. It
;; makes sure one of the operands is in a register, but 
;; avoids trying to do this later during compilation when
;; the register allocation is complete.
;;
;; This pattern was lifted almost verbatim from the MIPS machine
;; description.
;;

(define_expand "movsi"
  [(set (match_operand:SI 0 "nonimmediate_operand" "")
        (match_operand:SI 1 "general_operand" ""))]
  ""
  "
{
/*
   rtx x = operands[1];
     addi    r8,r0,%hi(_siopcb_table-20)
       lsoi    r8,r8,%lo(_siopcb_table-20)
 ->
       addi    r7,r0,%hi(_siopcb_table)
       lsoi    r7,r7,%lo(_siopcb_table)
       addi    r7,r7,#-20 
   if (((reload_in_progress | reload_completed) == 0)
           && GET_CODE (x) == CONST
           && GET_CODE (XEXP (x, 0)) == PLUS
          && GET_CODE (XEXP (XEXP (x, 0), 1)) == CONST_INT
          && ! CONSTANT_ADDRESS_P (XEXP (XEXP (x, 0), 1)))
    {
      rtx temp = force_reg (SImode, XEXP (XEXP (x, 0), 0));
      rtx y =force_reg (SImode,
         gen_rtx_PLUS (SImode, temp, XEXP (XEXP (x, 0), 1)));
      temp = emit_move_insn (operands[0], y);
      DONE;
    }
*/
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], SImode)
      && !register_operand (operands[1], SImode))
    {
      rtx temp = force_reg (SImode, operands[1]);
      temp = emit_move_insn (operands[0], temp);
      DONE;
    }
}")

;;
;; This is used to match against RTL during assembly code
;; generation. It knows how to move floats in and out of 
;; integer registers.
;;
;; We have to be sure to set the length correctly. Otherwise,
;; the delay slot filler will try to move something into a delay
;; slot that produces more than one DLX instruction, which would 
;; produce incorrect code. So when we generate an addui/lhi sequence
;; to load a constant, we have to make sure the length is set to 2.
;;

;
;AO_Change
(define_insn "movsi_general"
  [(set (match_operand:SI 0 "general_operand" "=d,d,d,d,m,d")
        (match_operand:SI 1 "general_operand" "I,L,i,m,d,d"))]
  ""
  "*
{ 
  switch(which_alternative)
   {
     case 0:
       return \"addi\\t%0,r0,%G1\";
     case 1:
       return \"lsoi\\t%0,r0,%U1\";
     case 2:
       if(GET_CODE(operands[1]) == CONST_INT)
        {
           return \"addi\\t%0,r0,%H1\\n\\tlsoi\\t%0,%0,%L1\";
        }
       else
        {
           return \"addi\\t%0,r0,%%hi(%1)\\n\\tlsoi\\t%0,%0,%%lo(%1)\";
        }
     case 3:
        return \"lw\\t%0,%1\\n\\tnop\";
     case 4:
        return \"sw\\t%0,%1\";
     case 5:
        return \"add\\t%0,r0,%1\";
     default:
        return \"nOp\";
   }
}"
  [(set_attr "type" "move,move,move,load,store,move")
   (set_attr "mode" "SI")
   (set_attr "length" "1,1,3,2,1,1")])

;;
;; Move half words.
;;
(define_expand "movhi"
  [(set (match_operand:HI 0 "nonimmediate_operand" "")
        (match_operand:HI 1 "general_operand" ""))]
  ""
  "
{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], HImode)
      && !register_operand (operands[1], HImode))
    {
      rtx temp = force_reg (HImode, operands[1]);
      temp = emit_move_insn (operands[0], temp);
      DONE;
    }
}")

(define_insn "movhi_general"
  [(set (match_operand:HI 0 "general_operand" "=d,d,m,d")
        (match_operand:HI 1 "general_operand"  "i,m,d,d"))]
  ""
  "*
{ 
  switch(which_alternative)
   {
     case 0:
        return \"addi\\t%0,r0,%G1\";
     case 1:
        return \"lh\\t%0,%1\\n\\tnop\";
     case 2:
        return \"sh\\t%0,%1\";
     case 3:
        return \"add\\t%0,r0,%1\";
   }

}"
  [(set_attr "type" "move,load,store,move")
   (set_attr "mode" "HI")
   (set_attr "length" "1,2,1,1")])
;;
;; move bytes.
;;
(define_expand "movqi"
  [(set (match_operand:QI 0 "nonimmediate_operand" "")
        (match_operand:QI 1 "general_operand" ""))]
  ""
  "
{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], QImode)
      && !register_operand (operands[1], QImode))
    {
      rtx temp = force_reg (QImode, operands[1]);
      temp = emit_move_insn (operands[0], temp);
      DONE;
    }
}")

(define_insn "movqi_general"
  [(set (match_operand:QI 0 "general_operand" "=d,d,m,d")
        (match_operand:QI 1 "general_operand"  "i,m,d,d"))]
  ""
  "*
{ 
  switch(which_alternative)
   {
     case 0:
        return \"addi\\t%0,r0,%1\";
     case 1:
         return \"lb\\t%0,%1\\n\\tnop\";
      case 2:
        return \"sb\\t%0,%1\";
     case 3:
        return \"add\\t%0,r0,%1\";
   }

}"
  [(set_attr "type" "move,load,store,move")
   (set_attr "mode" "QI")
   (set_attr "length" "1,2,1,1")])

;;
;; Move floats.
;;
;
;
; ** AO_Comment ** 
(define_expand "movsf"
  [(set (match_operand:SF 0 "general_operand" "")
        (match_operand:SF 1 "general_operand" ""))]
  ""
  "
{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], SFmode)
      && !register_operand (operands[1], SFmode))
    {
      rtx temp = force_reg (SFmode, operands[1]);
      temp = emit_move_insn (operands[0], temp);
      DONE;
    }
}")


;;
;; This pattern has to handle the strange special case of
;; moving a float value into r1 to return it. This is required
;; to be compatible with Peter Dahl's C-Regs C Compiler.
;;  alter [0, 7]
;
; ** AO_Comment ** 
(define_insn "movsf_general"
  [(set (match_operand:SF 0 "general_operand" "=d,m,d,d,d,d,d")
        (match_operand:SF 1 "general_operand"  "m,d,d,i,E,F,I"))]
  ""
  "*
{ 
  switch(which_alternative)
   {
     case 0:
        return \"lw\\t%0,%1\\n\\tnop\";
     case 1:
         return \"sw\\t%0,%1\";
     case 2:
         return \"add\\t%0,r0,%1\";
     case 3:
       if(GET_CODE(operands[1]) == CONST_INT)
        {
         return \"lh\\t%0,%H1\\n\\tnop\\n\\taddi\\t%0,%0,%L1\";
        }
       else
        {
           return \"addi\\t%0,r0,%U1\\n\\taddi\\t%0,%0,%U1\";
        }
     case 4:
        return \"lw\\t%0,%1\\n\\tnop\";
     case 5:
        return \"lw\\t%0,%1\\n\\tnop\";
     case 6:
        return \"lw\\t%0,%1\\n\\tnop\";
     default:
	abort();

   }
}"
  [(set_attr "type" "load,store,move,move,move,move,move")
   (set_attr "mode" "SF")
   (set_attr "length" "2,1,1,3,3,3,3")])


;
; ** AO_Comment ** 
;(define_split 
;  [(set (match_operand:DF 0 "general_operand" "")
;	(match_operand:DF 1 "general_operand" ""))]
;  "1"
;  [(const_int 1)]
;{
;  mips_split_64bit_move (operands[0], operands[1]);
;  DONE;
;})
;
;(define_expand "movdf"
; [(set (match_operand:DF 0 "general_operand" "")
;       (match_operand:DF 1 "general_operand" ""))]
; ""
; "
;{
;  if ((reload_in_progress | reload_completed) == 0
;      && !register_operand (operands[0], DFmode)
;      && !register_operand (operands[1], DFmode))
;    {
;      rtx temp = force_reg (DFmode, operands[1]);
;      temp = emit_move_insn (operands[0], temp);
;      DONE;
;    }
;}")
;;;
;;; ** AO_Comment ** 
;(define_expand "movdf"
;  [(set (match_operand:DF 0 "general_operand" "")
;        (match_operand:DF 1 "general_operand" ""))]
;  ""
;  "")
;  [(set (match_operand:DF 0 "general_operand" "=f,o,r,=r,o,=d")
;        (match_operand:DF 1 "general_operand"  "o,f,r,o,r,o"))]
;(define_insn "movdf"
;  [(set (match_operand:DF 0 "general_operand" "=f,m,=r,=r,m,=d")
;        (match_operand:DF 1 "general_operand"  "m,f,r,m,r,m"))]
;  ""
(define_insn "movdf_general"
  [(set (match_operand:DI 0 "general_operand" "")
        (match_operand:DI 1 "general_operand" ""))
        (clobber (match_scratch:SI 2 "=&r"))]
  ""
{ 
  return output_move_double (operands);
})
;   [(set_attr "type" "load,store,move,load,store,load")
;    (set_attr "mode" "DF")
;    (set_attr "length" "6,4,4,6,4,6")])
;(define_insn ""
;  [(set (match_operand:DF 0 "general_operand" "=f,m")
;        (match_operand:DF 1 "general_operand"  "m,f"))]
;  ""
;{ 
;  switch(which_alternative)
;   {
;     case 0:
;       rtx xoperands[2];
;       xoperands[0] = gen_rtx_REG (SFmode, REGNO (operands[0]) + 1);
;        output_asm_insn ("lw %0,%@", xoperands);
;        output_asm_insn ("lw %0,%-", operands);
;        return \"nop\";
;     case 1:
;        rtx xoperands[2];
;        xoperands[0] = gen_rtx_REG (SFmode, REGNO (operands[0]) + 1);
;        output_asm_insn ("sw %@,%0", xoperands);
;        output_asm_insn ("sw %-,%0", operands);
;        return \"nop\";
;   }
;})
;  [(set_attr "type" "load,store,move,move,move,move,move,move,move,move,move")
;   (set_attr "mode" "DF")
;   (set_attr "length" "2,1,1,3,3,3,3,1,1,1,1")])

;
;
;;
;; define_split for splitting addui/lhi pairs.
;;
;
; These don't work all the time.
;

;;  (define_split 
;;    [(set (match_operand:SI 0 "register_operand" "=&d")
;;          (match_operand:SI 1 "immediate_operand" "i"))]
;;    "!(GET_CODE(operands[1])==CONST_INT && SMALL_INT(operands[1]))"
;;    [(set (match_dup 0) (zero_extract:SI (match_dup 1) 
;;                         (const_int 16) (const_int 0)))
;;     (set (match_dup 0) (ior:SI (zero_extract:SI (match_dup 0)
;;                                 (const_int 16) (const_int 0))
;;                                (zero_extract:SI (match_dup 1)
;;                                 (const_int 16) (const_int 16))))]
;;    "")
;;  
;;  (define_insn "addui_split"
;;    [(set (match_operand:SI 0 "register_operand" "=d") 
;;          (zero_extract:SI (match_operand:SI 1 "" "") 
;;                           (const_int 16) (const_int 0)))]
;;    ""
;;    "*
;;  {
;;     if(GET_CODE(operands[1]) == CONST_INT)
;;       return \"addui\\t%0,r0,%L1\\t; split\";
;;     else
;;       return \"addui\\t%0,r0,(%1)&0xffff\\t; split\";  }"
;;    [(set_attr "type" "alu")
;;     (set_attr "mode" "SI")
;;     (set_attr "length" "1")])
;;  
;;  (define_insn "lhi_split"
;;    [(set (match_operand:SI 0 "register_operand" "=&d") 
;;          (ior:SI (zero_extract:SI (match_dup 0) (const_int 16) (const_int 0))
;;                 (zero_extract:SI (match_operand:SI 1 "immediate_operand" "i")
;;                                 (const_int 16) (const_int 16))))]
;;    ""
;;    "*
;;  {
;;     if(GET_CODE(operands[1]) == CONST_INT)
;;       return \"lhi\\t%0,%H1\\t; split\";
;;     else
;;       return \"lhi\\t%0,((%1)>>16)&0xffff\\t; split\";  }"
;;    [(set_attr "type" "alu")
;;     (set_attr "mode" "SI")
;;     (set_attr "length" "1")])

;;
;; No-Op
;;

(define_insn "nop"
  [(const_int 0)]
  ""
  "nop"
  [(set_attr "type"     "alu")
   (set_attr "mode"     "none")
   (set_attr "length"   "1")])

;;
;; unconditional branches and such.
;;

;
; ** AO_Comment ** 
(define_insn "indirect_jump"
  [(set (pc) (match_operand:SI 0 "register_operand" "d"))]
  ""
  "jpr\\t%0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])

;
; ** AO_Comment ** 
(define_insn "jump"
  [(set (pc)
        (label_ref (match_operand 0 "" "")))]
  ""
;  "*
;{
;  if (GET_CODE (operands[0]) == REG)
;   return \"jr\\t%0%(\";
;  else
;    return \"j\\t%0%(\";
;}"
  "*
{
  if (GET_CODE (operands[0]) == REG)
   return \"jpr\\t%0%(\";
  else
   return \"jp\\t%0%(\";
}"
  [(set_attr "type"     "jump")
   (set_attr "mode"     "none")])

;;
;; calls
;;

;
; ** AO_Comment ** 
  (define_insn "call_value"
    [(parallel [(set (match_operand 0 "register_operand" "=d")
                     (call (match_operand 1 "sym_ref_mem_operand" "")
                          (match_operand 2 "" "i")))
                (clobber (reg:SI 3))])]
    ""
    "jpl\\t%S1%("
    [(set_attr "type" "jump")
     (set_attr "mode" "none")])

;    "jpl\\t%S1%(\\n\\tadd\\tr8,r0,r4"

;
; ** AO_Comment ** 
(define_insn "call"
[(parallel [(call (match_operand 0 "sym_ref_mem_operand" "")
                  (match_operand 1 "" "i"))
              (clobber (reg:SI 3))])]
  ""
  "jpl\\t%S0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])
   
;
; ** AO_Comment ** 
(define_insn "call_value_indirect"
  [(parallel [(set (match_operand 0 "register_operand" "=d")
                   (call (mem:QI (match_operand 1 "register_operand" "d"))
                         (match_operand 2 "" "i")))
              (clobber (reg:SI 3))])]
  ""
  "jprl\\t%1%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])

;
; ** AO_Comment ** 
(define_insn "call_indirect"
[(parallel [(call (mem:QI (match_operand 0 "register_operand" "d"))
                  (match_operand 1 "" "i"))
              (clobber (reg:SI 3))])]
  ""
  "jprl\\t%0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])
;;
;; RTL for this is generated by the define_expand for call_value.
;;

;;
;; calls that return int in r1
;;
;
; ** AO_Comment ** 
(define_insn "call_val_internal_return_r4"
[(parallel [(set (reg:SI 1)
                  (call (match_operand 0 "sym_ref_mem_operand" "")
                        (match_operand 1 "" "i")))
	    (clobber (reg:SI 3))])]
  ""
  "jpl\\t%S0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])

;
; ** AO_Comment ** 
(define_insn "call_val_internal_return_r4_halfword"
[(parallel [(set (reg:HI 1)
                  (call (match_operand 0 "sym_ref_mem_operand" "")
                        (match_operand 1 "" "i")))
	    (clobber (reg:SI 3))])]
  ""
  "jpl\\t%S0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])

;
; ** AO_Comment ** 
(define_insn "call_val_internal_return_r4_quarterword"
[(parallel [(set (reg:QI 1)
                  (call (match_operand 0 "sym_ref_mem_operand" "")
                        (match_operand 1 "" "i")))
	    (clobber (reg:SI 3))])]
  ""
  "jpl\\t%S0%("
  [(set_attr "type" "jump")
   (set_attr "mode" "none")])
;;
;; calls that return float in f0
;;
;
; ** AO_Comment ** 
;(define_insn "call_val_internal_return_f0_float"
;[(parallel [(set (reg:SF 32)
;                  (call (match_operand 0 "sym_ref_mem_operand" "")
;                        (match_operand 1 "" "i")))
;	    (clobber (reg:SI 31))])]
;  ""
;  "jpl\\t%S0%("
;  [(set_attr "type" "jump")
;   (set_attr "mode" "none")])
;
;
;;
;; calls that return double in f0/f1
;;
;
; ** AO_Comment ** 
;(define_insn "call_val_internal_return_f0f1"
;[(parallel [(set (reg:DF 32)
;                   (call (match_operand 0 "sym_ref_mem_operand" "")
;                         (match_operand 1 "" "i")))
;	    (clobber (reg:SI 31))])]
;  ""
;  "jpl\\t%S0%(\\n"
;  [(set_attr "type" "jump")
;   (set_attr "mode" "none")])
;
;;
;; calls that don't return a value.
;;
;
; ** AO_Comment ** 
(define_insn "call_val_internal_no_return"
  [(call (match_operand 0 "sym_ref_mem_operand" "")
         (match_operand 1 "" "i"))]
  ""
  "jpl\\t%S0%("
;;;"addi\\tr6,r6,#-4\\n\\tsw\\t(r6),r3\\n\\tjpl\\t%S0%(\\n\\tlw\\tr3,(r6)\\n\\taddi\\tr6,r6,#4"

  [(set_attr "type" "jump")
   (set_attr "mode" "none")])

;;
;; tablejump insn; used in generating code for switches.
;;
;
; ** AO_Comment ** 
(define_insn "tablejump"
  [(set (pc)
        (match_operand:SI 0 "register_operand" "d"))
   (use (label_ref (match_operand 1 "" "")))]
  ""
  "jpr\\t%0%("
;
  [(set_attr "type"     "jump")
   (set_attr "mode"     "none")
   (set_attr "length"   "1")])

;;
;; Comparisons and branches.
;;

(define_expand "cmpsi"
  [(set (cc0)
        (compare:CC (match_operand:SI 0 "register_operand" "d")
                    (match_operand:SI 1 "nonmemory_operand" "dI")))]
  ""
  "
{
      dlx_compare_op0 = operands[0];
      dlx_compare_op1 = operands[1];
      dlx_compare_mode = SImode;
      DONE;
}")


(define_expand "tstsi"
  [(set (cc0)
        (match_operand:SI 0 "register_operand" "d"))]
  ""
  "
{
      dlx_compare_op0 = operands[0];
      dlx_compare_op1 = const0_rtx;
      dlx_compare_mode = SImode;
      DONE;
}")

;
; ** AO_Comment ** 
;(define_expand "cmpdf"
; [(set (cc0)
;        (compare:CC (match_operand:DF 0 "register_operand" "f")
;                       (match_operand:DF 1 "register_operand" "f")))]
;  ""
;  "
;{
;      dlx_compare_op0 = operands[0];
;      dlx_compare_op1 = operands[1];
;      dlx_compare_mode = DFmode;
;      DONE;
;}")

;
; ** AO_Comment ** 
;(define_expand "cmpsf"
;  [(set (cc0)
;        (compare:CC (match_operand:SF 0 "register_operand" "f")
;                       (match_operand:SF 1 "register_operand" "f")))]
;  ""
;  "
;{
;      dlx_compare_op0 = operands[0];
;      dlx_compare_op1 = operands[1];
;      dlx_compare_mode = SFmode;
;      DONE;
;}")


;;
;; Branches.
;; These have to be written out individually because they
;; are called by name during code generation.
;;


(define_expand "beq"
  [(set (pc) (if_then_else (eq (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, EQ); DONE; }")

(define_expand "bne"
  [(set (pc) (if_then_else (ne (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, NE); DONE; }")
;
; ** AO_Comment ** 
(define_expand "blt"
  [(set (pc) (if_then_else (lt (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, LT); DONE; }")
;
(define_expand "bgt"
  [(set (pc) (if_then_else (gt (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, GT); DONE; }")
;
(define_expand "ble"
  [(set (pc) (if_then_else (le (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, LE); DONE; }")
;
(define_expand "bge"
  [(set (pc) (if_then_else (ge (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, GE); DONE; }")
;
(define_expand "bltu"
  [(set (pc) (if_then_else (ltu (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, LTU); DONE; }")
;
(define_expand "bgtu"
  [(set (pc) (if_then_else (gtu (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, GTU); DONE; }")
;
(define_expand "bleu"
  [(set (pc) (if_then_else (leu (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, LEU); DONE; }")
;
(define_expand "bgeu"
  [(set (pc) (if_then_else (geu (cc0) (const_int 0))
     (label_ref (match_operand 0 "" "")) (pc)))]
  "" "{ gen_conditional_branch(operands, GEU); DONE; }")

;
; Set instructions.
;

;
; ** AO_Comment ** 
;(define_expand "seq"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(eq:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
(define_expand "eeq"
  [(set (match_operand:SI 0 "register_operand" "=d") 
	(eq:SI (match_dup 1) (match_dup 2)))]
  ""
  " if(dlx_compare_mode != SImode) FAIL;
    operands[1] = dlx_compare_op0;
    operands[2] = dlx_compare_op1;
  ")


;
; ** AO_Comment ** 
;(define_expand "sne"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(ne:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
(define_expand "eneq"
  [(set (match_operand:SI 0 "register_operand" "=d") 
	(ne:SI (match_dup 1) (match_dup 2)))]
  ""
  " if(dlx_compare_mode != SImode) FAIL;
    operands[1] = dlx_compare_op0;
    operands[2] = dlx_compare_op1;
  ")


;
; ** AO_Comment ** 
;(define_expand "slt"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(lt:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
(define_expand "elt"
  [(set (match_operand:SI 0 "register_operand" "=d") 
	(lt:SI (match_dup 1) (match_dup 2)))]
  ""
  " if(dlx_compare_mode != SImode) FAIL;
    operands[1] = dlx_compare_op0;
    operands[2] = dlx_compare_op1;
  ")


;
; ** AO_Comment ** 
;(define_expand "sgt"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(gt:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
;
;
; ** AO_Comment ** 
;(define_expand "sle"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(le:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
;
;(define_expand "sge"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(ge:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
;
;
; ** AO_Comment ** 
;(define_expand "sltu"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(ltu:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
(define_expand "eltu"
  [(set (match_operand:SI 0 "register_operand" "=d")
	(ltu:SI (match_dup 1) (match_dup 2)))]
  ""
  " if(dlx_compare_mode != SImode) FAIL;
    operands[1] = dlx_compare_op0;
    operands[2] = dlx_compare_op1;
  ")
;
;
; ** AO_Comment ** 
;(define_expand "sgtu"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(gtu:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
;
;
; ** AO_Comment ** 
;(define_expand "sleu"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(leu:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")
;
; ** AO_Comment ** 
;(define_expand "sgeu"
;  [(set (match_operand:SI 0 "register_operand" "=d") 
;	(geu:SI (match_dup 1) (match_dup 2)))]
;  ""
;  " if(dlx_compare_mode != SImode) FAIL;
;    operands[1] = dlx_compare_op0;
;    operands[2] = dlx_compare_op1;
;  ")

;;
;; Integer conditional branches; the RTL for these is 
;; generated in gen_conditional_branch().
;;

;
; ** AO_Comment ** 
(define_insn "int_cond_branch"
  [(set (pc) (if_then_else (eq:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])


;
; ** AO_Comment ** 
(define_insn "int_cond_branch_rev"
  [(set (pc) (if_then_else (ne:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])


;
; ************** AO_Add **********:
; 070601-1 unsigned branch active C.katano
; 070601-2 all in-active C.katano
(define_insn "int_cond_branch_lt"
  [(set (pc) (if_then_else (lt:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_gt"
  [(set (pc) (if_then_else (gt:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("

  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_le"
  [(set (pc) (if_then_else (le:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_ge"
  [(set (pc) (if_then_else (ge:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_ltu"
  [(set (pc) (if_then_else (ltu:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_gtu"
  [(set (pc) (if_then_else (gtu:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_leu"
  [(set (pc) (if_then_else (leu:SI (const_int 0)
                           (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])

(define_insn "int_cond_branch_geu"
  [(set (pc) (if_then_else (geu:SI (const_int 0)
                            (match_operand:SI 0 "register_operand" "d"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
  ""
  "brnz\\t%0,%1%("
  [(set_attr "type" "branch")
   (set_attr "mode" "SI")])


;;
;; Floating point conditional branches,
;; also generated in gen_conditional_branch().
;;


;(define_insn "fp_cond_branch"
;  [(set (pc) (if_then_else (ne:SF
;                            (match_operand:SF 0 "register_operand" "f")
;                            (const_int 0))
;              (label_ref (match_operand 1 "" "")) (pc)))]
;  ""
;  "brz\\t%0,%1%("
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")])
;
;(define_insn "fp_cond_branch_rev"
;  [(set (pc) (if_then_else (eq:SF
;                            (match_operand:SF 0 "register_operand" "f")
;                            (const_int 0))
;              (label_ref (match_operand 1 "" "")) (pc)))]
;  ""
;  "brnz\\t%0,%1%("
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")])


;;
;; RTL for s__ instructions.
;; The RTL for these is generated in gen_conditional_branch().
;;
;; The match_operator RTL expression is very useful
;; here in that you can write 3 patterns for about 
;; 32 instructions.
;;
;

;
; ** AO_Comment ** 
(define_insn "set_internal"
  [(set (match_operand:SI 0 "register_operand" "=d")
        (match_operator:SI 1 "comparison_operator"
         [(match_operand:SI 2 "register_operand" "d")
          (match_operand:SI 3 "register_operand" "d")]))]
  ""
  "%C1\\t%0,%2,%3"
  [(set_attr "type" "alu")
   (set_attr "mode" "SI")])


;;
;; Float compares.
;; The RTL for these is also generated in
;; gen_conditional_branch().
;;
;
;(define_insn ""
;  [(set (match_operand:SF 0 "register_operand" "=z")
;        (match_operator:SF 1 "signed_comparison_operator"
;         [(match_operand:SF 2 "register_operand" "f")
;          (match_operand:SF 3 "register_operand" "f")]))]
;  ""
;  "e%C1\\t%2,%3"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "SF")])
;
;(define_insn ""
;  [(set (match_operand:DF 0 "register_operand" "=z")
;        (match_operator:DF 1 "signed_comparison_operator"
;         [(match_operand:DF 2 "register_operand" "f")
;          (match_operand:DF 3 "register_operand" "f")]))]
;  ""
;  "%C1\\t%2,%3"
;  [(set_attr "type" "fp")
;   (set_attr "mode" "DF")])
;
;


;; normilize to use conditional lt or ltu at optimization.
;; see gen_conditional_branch() in brownie32.c also.
; le -> lt, swap and reverse
; ge -> lt, reverse
; gt -> lt, swap
; leu, -> ltu, swap and reverse
; geu -> ltu, reverse
; gtu -> ltu, swap

; le -> lt, swap and reverse
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (le:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 2) (match_dup 1)))
	 (set (pc) (if_then_else (eq:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])

; ge -> lt, reverse
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (ge:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 1) (match_dup 2)))
	 (set (pc) (if_then_else (eq:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])

; gt -> lt, swap
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (gt:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 2) (match_dup 1)))
	 (set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])
;; unsfined staff.
; leu -> ltu, swap and reverse
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (leu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 2) (match_dup 1)))
	 (set (pc) (if_then_else (eq:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])

; geu -> ltu, reverse
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (geu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 1) (match_dup 2)))
	 (set (pc) (if_then_else (eq:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])

; gtu -> ltu, swap
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (gtu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))
	(set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_operand 3 "" ""))
			(pc)))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 2) (match_dup 1)))
	 (set (pc) (if_then_else (ne:SI (const_int 0) (match_dup 0))
			(label_ref (match_dup 3))
			(pc)))])



;
; set_internal only
;
;; le -> lt, swap and reverse
;; ge -> lt, reverse
;; gt -> lt, swap
;; leu, -> ltu, swap and reverse
;; geu -> ltu, reverse
;; gtu -> ltu, swap



;; le -> lt, swap and reverse -> lt $0,$2,$1; xori $0,$0,#1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (le:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 2) (match_dup 1)))
	(set (match_dup 0) (xor:SI (match_dup 0) (const_int 1)))])

;; ge -> lt, reverse -> lt, xori $0, $0, #1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (ge:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 2) (match_dup 1)))
	(set (match_dup 0) (xor:SI (match_dup 0) (const_int 1)))])
	
;; gt -> lt, swap -> lt $0,$2,$1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (gt:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(lt:SI (match_dup 2) (match_dup 1)))])

;; unsfined staff.

;; leu -> ltu, swap and reverse -> ltu $0,$2,$1; xor $0,$0,#1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (leu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 2) (match_dup 1)))
	(set (match_dup 0) (xor:SI (match_dup 0) (const_int 1)))])

;; geu -> ltu, reverse -> ltu, xori dst, dst, #1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	   (geu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 1) (match_dup 2)))
	(set (match_dup 0) (xor:SI (match_dup 0) (const_int 1)))])

;; gtu -> ltu, swap, -> ltu $0,$2,$1
(define_peephole2
	[(set (match_operand 0 "register_operand" "")
	 (gtu:SI (match_operand 1 "register_operand" "")
		(match_operand 2 "register_operand" "")))]
	""
	[(set (match_dup 0)
		(ltu:SI (match_dup 2) (match_dup 1)))])




;;
;; unsplit for nandsi3
;;
(define_peephole2
  [(set (match_operand:SI 3 "register_operand" "=d")
	(and:SI (match_operand:SI 1 "register_operand" "%d")
	                (match_operand:SI 2 "register_operand" "d")))
  (set (match_operand:SI 0 "register_operand" "=d") (not:SI  (match_dup 3)))]
  "find_reg_note (NEXT_INSN (insn), REG_DEAD, operands[3]) ||
     (REGNO (operands[0]) == REGNO (operands[3]))"
  [(set (match_dup 0)
        (not:SI (and:SI (match_dup 1)
	                (match_dup 2))))])

;; for norsi3
(define_peephole2
  [(set (match_operand:SI 3 "register_operand" "=d")
	(ior:SI (match_operand:SI 1 "register_operand" "%d")
	                (match_operand:SI 2 "register_operand" "d")))
  (set (match_operand:SI 0 "register_operand" "=d") (not:SI  (match_dup 3)))]
  "find_reg_note (NEXT_INSN (insn), REG_DEAD, operands[3]) ||
     (REGNO (operands[0]) == REGNO (operands[3]))"
  [(set (match_dup 0)
        (not:SI (ior:SI (match_dup 1)
	                (match_dup 2))))])



;;
;;

;(insn 89 88 91 10 (set (reg/v/f:SI 54 [ type ])
;        (plus:SI (reg:SI 119)
;          (const:SI (plus:SI (symbol_ref:SI ("cplus_demangle_builtin_types") \
;[flags 0x2] <var_decl 0xb7bfd370 cplus_demangle_builtin_types>)
;                    (const_int -1940 [0xfffff86c]))))) 0 {addsi3} (nil)
;    (nil))

;(define_peephole2
;  [(set (match_operand:SI 0 "register_operand" "=d")
;       (const:SI (plus:SI
;                   (match_operand:SI 1 "symbol_ref_operand" "")
;                   (match_operand:SI 2 "immediate_operand" ""))))]
;  "GET_CODE (operands[2]) == CONST_INT"
;  [(set (match_dup 0)
;        (match_dup 1))
;   (set (match_dup 0)
;       (plus:SI (match_dup 0)(match_dup 2)))])


;; Constants used in RTL templates.
(define_constants
[
(UNSPEC_BUILTIN_CLAMPV 10000)
(UNSPEC_BUILTIN_CLAMPI 10001)
(UNSPEC_BUILTIN_VALPRED 10002)
]
)


(define_attr "insn_mnemonic"
  "CLAMPV,CLAMPI,VALPRED,unknown"
(const_string "unknown")
)

(define_insn_reservation "CLAMPV" 1
  (eq_attr "insn_mnemonic"  "CLAMPV")
  "nothing"
)

(define_insn_reservation "CLAMPI" 1
  (eq_attr "insn_mnemonic"  "CLAMPI")
  "nothing"
)

(define_insn_reservation "VALPRED" 1
  (eq_attr "insn_mnemonic"  "VALPRED")
  "nothing"
)



(define_insn "builtin_brownie32_CLAMPV"
[
(set (match_operand:SI 0 "brownie32_gr_regs_operand" "=d")
  (unspec:VOID [
    (match_operand:SI 1 "brownie32_gr_regs_operand" "d") ;; rs1
    ]  UNSPEC_BUILTIN_CLAMPV))
]
""
"CLAMPV %0 , %1 "
[(set_attr "length" "4")
 (set_attr "insn_mnemonic" "CLAMPV")]
)

(define_insn "builtin_brownie32_CLAMPI"
[
(set (match_operand:SI 0 "brownie32_gr_regs_operand" "=d")
  (unspec:VOID [
    (match_operand:SI 1 "brownie32_gr_regs_operand" "d") ;; rs1
    ]  UNSPEC_BUILTIN_CLAMPI))
]
""
"CLAMPI %0 , %1 "
[(set_attr "length" "4")
 (set_attr "insn_mnemonic" "CLAMPI")]
)

(define_insn "builtin_brownie32_VALPRED"
[
(set (match_operand:SI 0 "brownie32_gr_regs_operand" "=d")
  (unspec:VOID [
    (match_operand:SI 1 "brownie32_gr_regs_operand" "d") ;; rs1
    (match_operand:SI 2 "brownie32_gr_regs_operand" "d") ;; rs2
    ]  UNSPEC_BUILTIN_VALPRED))
]
""
"VALPRED %0 , %1 , %2 "
[(set_attr "length" "4")
 (set_attr "insn_mnemonic" "VALPRED")]
)

