.data
	Symbol: .space 28
	Array: .space 28
	Space: .asciiz " "
	Line: .asciiz "\n"
.macro getIndex(%ans,%i)
	sll %ans,%i,2
.end_macro
.macro end
    li $v0, 10
    syscall
.end_macro
.macro getInt(%des)
    li      $v0, 5
    syscall
    move    %des, $v0
.end_macro
.macro printInt(%src)
    move    $a0, %src
    li      $v0, 1
    syscall
.end_macro
.macro printStr(%src)
    la    	$a0, %src
    li      $v0, 4
    syscall
.end_macro
.macro push(%src)
    sw      %src, 0($sp)
    subi    $sp, $sp, 4
.end_macro
.macro pop(%des)
    addi    $sp, $sp, 4
    lw      %des, 0($sp) 
.end_macro
.text
main:
	getInt($s0) #n:$s0
	move $a0,$0
	jal full
	end
full:
	move $t0,$a0 #index:$t0
	blt $t0,$s0,if_1_end
		li $t1,0 #i:$t1
		for_1:
			beq $t1,$s0,for_1_end
			getIndex($t2,$t1)
			lw $t2,Array($t2)
			printInt($t2)
			printStr(Space)
			addi $t1,$t1,1
			j for_1
		for_1_end:
			printStr(Line)
			jr $ra
	if_1_end:
	li $t1,0 #i:$t1
	for_2:
		beq $t1,$s0,for_2_end
		getIndex($t2,$t1)
		lw $t2,Symbol($t2)
		bne $t2,$0,if_2_end
			addi $t3,$t1,1
			getIndex($t4,$t0)
			sw $t3,Array($t4)
			li $t3,1
			getIndex($t4,$t1)
			sw $t3,Symbol($t4)
			push($t0)
			push($t1)
			push($ra)
			addi $a0,$t0,1
			jal full
			pop($ra)
			pop($t1)
			pop($t0)
			getIndex($t4,$t1)
			sw $0,Symbol($t4)
		if_2_end:
		addi $t1,$t1,1
		j for_2
	for_2_end:
	jr $ra			
				
		
	
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
