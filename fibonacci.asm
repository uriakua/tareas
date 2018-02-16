.data

.text

	addi $a0, $zero, 6	# this is n
	addi $a1, $zero, 1	#this is used as a flag to see if n-1 or n-2
		
	jal fibonacci
	j end
	
fibonacci:
	addi $sp, $sp, -12	#save 4 spaces in the stack
	sw $ra, 0($sp)		#save return address on stack
	sw $s0, 4($sp)		#save s0 on stack n-1
	sw $s1, 8($sp)		#save s1 on stack this will be used for operation n-1
	#sw $s2, 12($sp)
   
	slti $s0, $a0, 2	#if n < 2 save 0. 
	beq $s0, $zero, recursividad
	addi $v0, $zero, 1 		#init v0 with 
	j exitfibonacci
	
recursividad:
	add $s1, $zero, $a0	#add n to $s0
	addi $a0, $a0, -1	#decrease n by one
	jal factorial
	add $v0, $s1, $v0
			

exitfibonacci:
	lw $ra, 0($sp)		# load $ra from stack
	lw $s0, 4($sp)		# load a0 from stack
	lw $s1, 8($sp)		# load s1 from stack
	#lw $s2, 12($sp)		#load s2 from stack
	addi $sp, $sp, 12	# restore space in stack
	jr $ra

end:	