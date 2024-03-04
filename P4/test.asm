.text
	ori $t1,$t1,4
	ori $t2,$t2,32
	ori $t3,$t3,8
A:	add $t1,$t1,$t1
	beq $t1,$t3,A
	jal B
	add $t1,$t1,$t1
	add $t1,$t1,$t1
	beq $t1,$t2,C
B:  sub $t1,$t1,$t3
	jr $ra
C:	