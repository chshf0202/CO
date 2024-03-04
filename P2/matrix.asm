.data
	matrix1: .space 256 #matrix1
	matrix2: .space 256 #matrix2
	matrixput: .space 256 #matrixput
	space: .asciiz " "
	line: .asciiz "\n"
.macro getindex(%ans,%i,%j)
    sll %ans, %i, 3             # %ans = %i * 8
    add %ans, %ans, %j          # %ans = %ans + %j
    sll %ans, %ans, 2           # %ans = %ans * 4
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0 #read n:$s0
	li $t1,0 #i=0 i:$t1
	li $t2,0 #j=0 j:$t2
#read1
	li  $t0, 0  
in1_i:                           
	beq $t0, $s0, in1_i_end
	li  $t1, 0                     
in1_j:                          
	beq $t1, $s0, in1_j_end
	li  $v0, 5
	syscall                         
	getindex($t2, $t0, $t1)        
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
	beq $t0, $s0, in2_i_end
	li  $t1, 0                     
in2_j:                          
	beq $t1, $s0, in2_j_end
	li  $v0, 5
	syscall                         
	getindex($t2, $t0, $t1)        
	sw  $v0, matrix2($t2)           
	addi $t1, $t1, 1
	j   in2_j
in2_j_end:
	addi $t0, $t0, 1
	j   in2_i
in2_i_end:
#calculate
	li  $t0, 0  
cal_i:                           
	beq $t0, $s0, cal_i_end
	li  $t1, 0                     
cal_j:                          
	beq $t1, $s0, cal_j_end
	li $t3,0
	li $s1,0
cal_m:
	beq $t3,$s0,cal_m_end
	getindex($t4,$t0,$t3)
	lw $t6,matrix1($t4)
	getindex($t5,$t3,$t1)
	lw $t7,matrix2($t5)
	mult $t6,$t7
	mflo $t8
	add $s1,$s1,$t8
	addi $t3,$t3,1
	j cal_m
cal_m_end:  
	getindex($t2, $t0, $t1)
	sw  $s1, matrixput($t2)           
	addi $t1, $t1, 1
	j   cal_j
cal_j_end:
	addi $t0, $t0, 1
	j   cal_i
cal_i_end:
#output
	li  $t0, 0  
out_i:                           
	beq $t0, $s0, out_i_end
	li  $t1, 0                     
out_j:                          
	beq $t1, $s0, out_j_end                      
	getindex($t2, $t0, $t1)        
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
	
	
