.data
	Matrix: .space 10000
	Space: .asciiz " "
	Line: .asciiz "\n"
.macro getIndex(%ans,%i,%j)
	mult %i,$s0
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro
.text
	li $s0,50
	li $v0,5
	syscall
	move $s1,$v0 #n:$s1
	li $v0,5
	syscall
	move $s2,$v0 #m:$s2
	li $t0,0 #i:$t0
for_1:
	beq $t0,$s1,for_1_end
	li $t1,0 #j:$t1
	for_2:
		beq $t1,$s2,for_2_end
		li $v0,5
		syscall
		getIndex($t2,$t0,$t1)
		sw $v0,Matrix($t2)
		addi $t1,$t1,1
		j for_2
	for_2_end:
	addi $t0,$t0,1
	j for_1
for_1_end:
	subi $t0,$s1,1 #i:$t0
for_3:
	blt $t0,$0,for_3_end
	subi $t1,$s2,1 #j:$t1
	for_4:
		blt $t1,$0,for_4_end
		getIndex($t2,$t0,$t1)
		lw $t3,Matrix($t2)
		beq $t3,$0,zero
			move $a0,$t0
			addi $a0,$a0,1
			li $v0,1
			syscall
			la $a0,Space
			li $v0,4
			syscall
			move $a0,$t1
			addi $a0,$a0,1
			li $v0,1
			syscall
			la $a0,Space
			li $v0,4
			syscall
			move $a0,$t3
			li $v0,1
			syscall
			la $a0,Line
			li $v0,4
			syscall
		zero:
		subi $t1,$t1,1
		j for_4
	for_4_end:
	subi $t0,$t0,1
	j for_3
for_3_end:
	
	
	
	
	
	
	
	
	