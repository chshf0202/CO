.data
	G: .space 324
	Book: .space 36
.macro getIndexG(%ans,%i,%j)
	sll %ans,%i,3
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro
.macro getIndexB(%ans,%i)
	sll %ans,%i,2
.end_macro
.macro read(%ans)
	li $v0,5
	syscall
	move %ans,$v0
.end_macro
.macro push(%src)
	sw %src,0($sp)
	subi $sp,$sp,4
.end_macro
.macro pop(%des)
	addi $sp,$sp,4
	lw %des,0($sp)
.end_macro
.macro done
	li $v0,10
	syscall
.end_macro
.text
main:
	read($s0) #n:$s0
	read($s1) #m:$s1
	li $s7,1 #1:$s7
	li $t0,0 #i(main):$t0
for_1:
	beq $t0,$s1,for_1_end
		read($t1) #x:$t1
		read($t2) #y:$t2
		subi $t1,$t1,1
		subi $t2,$t2,1
		getIndexG($t3,$t1,$t2)
		sw $s7,G($t3)
		getIndexG($t3,$t2,$t1)
		sw $s7,G($t3)
		addi $t0,$t0,1
		j for_1
for_1_end:
	li $a0,0 #x:$a0
	li $s2,0 #ans:$s2
	jal dfs
	move $a0,$s2
	li $v0,1
	syscall
	done

dfs:
	move $t9,$a0 #x:$t9
	getIndexB($t8,$t9)
	sw $s7,Book($t8)
	li $t1,1 #flag:$t1
	li $t2,0 #i:$t2
for_2:
	beq $t2,$s0,for_2_end
		getIndexB($t3,$t2)
		lw $t3,Book($t3)
		and $t1,$t1,$t3
		addi $t2,$t2,1
		j for_2
for_2_end:
	getIndexG($t3,$t9,$0)
	lw $t3,G($t3)
	seq $t3,$t3,$s7
	and $t3,$t3,$t1
	bne $t3,$s7,else
		li $s2,1
		jr $ra
else:
	li $t2,0 #i:$t2
for_3:
	beq $t2,$s0,for_3_end
		getIndexB($t3,$t2)
		lw $t3,Book($t3)
		xor $t3,$t3,$s7
		getIndexG($t4,$t9,$t2)
		lw $t4,G($t4)
		seq $t4,$t4,$s7
		and $t3,$t3,$t4
		bne $t3,$s7,else1
			push($t9)
			push($ra)
			push($t2)
			push($t1)
			push($t3)
			move $a0,$t2
			jal dfs
			pop($t3)
			pop($t1)
			pop($t2)
			pop($ra)
			pop($t9)
else1:
	addi $t2,$t2,1
	j for_3
for_3_end:
	getIndexB($t3,$t9)
	sw $0,Book($t3)
	jr $ra
	
	
	
	
	
	
	
	
	
