.data

.text

	addi $a0, $zero, 6	# this is n
	addi $a1, $zero, $a0	#this is used to make the operations
		
	jal main
	j end
main:
	addi $sp, $sp, -12	#save 3 spaces in the stack
	sw $ra, 0($sp)		#save return address on stack
	sw $s0, 4($sp)		#save s0 on stack
	sw $s1, 8($sp)		#save s1 on stack 
   
	#slti $s0, $a0, 2	#if n < 2 do somenthing. 
	#beq $s0, $a1,		#this will be used while I learn how to use slti  
	
fibonacci:
	
	

exitfibonacci:
	lw $ra, 0($sp)		# load $ra from stack
	lw $s0, 4($sp)		# load a0 from stack
	lw $s1, 8($sp)		# load s1 from stack
	addi $sp, $sp, 12	# restore space in stack
	jr $ra

end:	