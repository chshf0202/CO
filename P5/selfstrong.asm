.text
ori $1,$0,1
ori $2,$0,4
ori $6,$0,6
beq $3,$6,C
sw $2,0($0)
lw $3,0($0)
add $4,$1,$3
sub $1,$4,$3
jal A
lw $5,0($0)
ori $ra,$0,0x300c
B:
add $3,$3,$1
A:
beq $5,$3,B
nop
sw $3,4($0)
jr $ra
nop
C:
