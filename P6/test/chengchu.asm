.text
ori $1,$0,1
ori $2,$0,2
ori $3,$0,3
ori $4,$0,4
lui $5,0xffff
ori $5,$5,0xffff
mult $1,$5
nop
mfhi $6
nop
mflo $7
nop
multu $1,$5
nop
mfhi $6
nop
mflo $7
nop
div $1,$5
nop
mfhi $6
nop
mflo $7
nop
divu $1,$5
nop
mfhi $6
nop
mflo $7
nop
mthi $2
nop
mfhi $6
nop
mtlo $3
nop
mflo $7
nop