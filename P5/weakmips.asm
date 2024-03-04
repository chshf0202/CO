 .text
 ori $gp, $zero, 0
 ori $sp, $zero, 0
 ori $at, $zero, 0x1010
 lui $v0, 0x8723
 ori $v1, $zero, 0x7856
 lui $a0, 0x85ff
 ori $a1, $zero, 1
 lui $a2, 0xffff
 ori $a3, $zero, 0xffff
 add $at, $at, $v0
 add $t1, $at, $v1
 sub $t0, $at, $v0
 sub $zero, $a3, $zero
 beq $gp, $s1,A
 nop 
 beq $0,$0,  B
 nop 
 A:beq $at, $v0,B
 nop 
 ori $v0, $zero, 0xc
 nop 
 nop 
 nop 
 jal C
 sw  $at, ($v0)
 beq $0,$0,  B
 add $at, $at, $v0
 C:add $at, $at, $v0
 add $at, $at, $v0
 add $at, $at, $v0
 sw  $ra, ($v0)
 lw  $at, ($v0)
 nop 
 nop 
 nop 
 jr  $at
 sw  $ra, ($v0)
 B:beq $0,$0, B
 nop 