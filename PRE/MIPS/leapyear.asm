.text
	li $v0 5
	syscall
	li $t0,4
	div $v0,$t0
	mfhi $t1
	seq $s0,$t1,$0
	li $t0,100
	div $v0,$t0
	mfhi $t1
	seq $s1,$t1,$0
	li $t0,400
	div $v0,$t0
	mfhi $t1
	seq $s2,$t1,$0
	and $s3,$s0,$s1
	xor $s4,$s3,$s0
	or $s5,$s4,$s2
	li $v0,1
	move $a0,$s5
	syscall
	li $v0,10
	syscall