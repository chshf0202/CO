.text
ori $3,2
label: addi $1,$1, 1
mtlo $1
mflo $2
bne $3, $2, label
nop
