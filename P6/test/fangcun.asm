.text
lui $1,0x1234
ori $1,$1,0x5678
sw $1,0($0)
sh $1,6($0)
sb $1,4($0)
lb $2,4($0)
lh $3,6($0)
lw $4,0($0)