.text
ori $1,$0,1
ori $2,$0,4
mflo $8
mfhi $9
ori $6,$0,6
mthi $6
divu $6,$1
beq $3,$6,C
divu $6,$2
sh $2,0($0)
mflo $8
mfhi $9
mult $2,$6
mflo $8
mfhi $9
lh $3,0($0)
multu $6,$1
mfhi $7
mflo $7
lb $7,1($2)
mtlo $7
mflo $7
addi $4,$3,1
slt $1,$3,$4
mult $1,$2
jal A
div $6,$2
lw $5,0($0)
mfhi $ra
mflo $ra
ori $ra,$0,0x3008
B:
add $3,$3,$1
A:
mflo $8
mfhi $9
beq $5,$3,B
mflo $6
sb $6,5($0)
mult $1,$2
jr $ra
mtlo $0
C:
mflo $8
mfhi $9
