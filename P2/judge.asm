.data
	String: .space 80
.macro getIndex(%ans,%i)
	li %ans,0
	add %ans,%ans,%i
	sll %ans,%ans,2
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0 #num:$s0
	li $t0,0
read:
	beq $t0,$s0,read_end
	li $v0,12
	syscall
	getIndex($t1,$t0)
	sw $v0,String($t1)
	addi $t0,$t0,1
	j read
read_end:
	sra $s1,$s0,1 #round:$s1
	li $s2,1
	li $t0,0
check:
	beq $t0,$s1,check_end
	getIndex($t1,$t0)
	lw $t4,String($t1)
	sub $t2,$s0,1
	sub $t2,$t2,$t0
	getIndex($t3,$t2)
	lw $t5,String($t3)
	bne $t4,$t5,check_n_end
	addi $t0,$t0,1
	j check
check_n_end:
	li $s2,0
check_end:
#output
	move $a0,$s2
	li $v0,1
	syscall
	li $v0,10
	syscall
	
	