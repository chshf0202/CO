.data
	matrix1: .space 400 #matrix1
	matrix2: .space 400 #matrix2
	matrixput: .space 400 #matrixput
	space: .asciiz " "
	line: .asciiz "\n"
.macro getIndex(%ans,%i,%j)
	mult %i,$s7        
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0 #read m1:$s0
	li $v0,5
	syscall
	move $s1,$v0 #read n1:$s1
	li $v0,5
	syscall
	move $s2,$v0 #read m2:$s2
	li $v0,5
	syscall
	move $s3,$v0 #read n2:$s3
	li $s7,10 #size:$s7
	li $t1,0 #i=0 i:$t1
	li $t2,0 #j=0 j:$t2
#read1
	li  $t0, 0  
in1_i:                           
	beq $t0, $s0, in1_i_end
	li  $t1, 0                     
in1_j:                          
	beq $t1, $s1, in1_j_end
	li  $v0, 5
	syscall                 
	getIndex($t2,$t0,$t1)
	sw  $v0, matrix1($t2)           
	addi $t1, $t1, 1
	j   in1_j
in1_j_end:
	addi $t0, $t0, 1
	j   in1_i
in1_i_end:
#read2
	li  $t0, 0  
in2_i:                           
	beq $t0, $s2, in2_i_end
	li  $t1, 0                     
in2_j:                          
	beq $t1, $s3, in2_j_end
	li  $v0, 5
	syscall                         
	getIndex($t2,$t0,$t1)
	sw  $v0, matrix2($t2)              
	addi $t1, $t1, 1
	j   in2_j
in2_j_end:
	addi $t0, $t0, 1
	j   in2_i
in2_i_end:
#calculate
	sub $s4,$s0,$s2
	addi $s4,$s4,1 #outi:$s4
	sub $s5,$s1,$s3
	addi $s5,$s5,1 #outj:$s5
	li  $t0, 0  
cal_i:                           
	beq $t0, $s4, cal_i_end
	li  $t1, 0                     
cal_j:                          
	beq $t1, $s5, cal_j_end
	li $t3,0
	li $s6,0
cal_k:
	beq $t3,$s2,cal_k_end
	li $t4,0
cal_l:
	beq $t4,$s3,cal_l_end
	getIndex($t5,$t3,$t4)
	lw $t6,matrix2($t5)
	add $t7,$t0,$t3
	add $t8,$t1,$t4
	getIndex($t9,$t7,$t8)
	lw $t5,matrix1($t9)
	mult $t5,$t6
	mflo $t7
	add $s6,$s6,$t7
	addi $t4,$t4,1
	j cal_l
cal_l_end:
	addi $t3,$t3,1
	j cal_k
cal_k_end:  
	getIndex($t2, $t0, $t1)
	sw  $s6, matrixput($t2)           
	addi $t1, $t1, 1
	j   cal_j
cal_j_end:
	addi $t0, $t0, 1
	j   cal_i
cal_i_end:
#output
	li  $t0, 0  
out_i:                           
	beq $t0, $s4, out_i_end
	li  $t1, 0                     
out_j:                          
	beq $t1, $s5, out_j_end                      
	getIndex($t2, $t0, $t1)        
	lw  $a0, matrixput($t2)  
	li $v0,1
	syscall
	la $a0,space
	li $v0,4
	syscall
	addi $t1, $t1, 1
	j   out_j
out_j_end:
	la $a0,line
	li $v0,4
	syscall
	addi $t0, $t0, 1
	j   out_i
out_i_end:
	li $v0,10
	syscall
	
	
