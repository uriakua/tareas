.data

.text

	addi $a0, $zero, 6	# this is n
	addi $a1, $zero, $a0	#this is used to make the operations
		
	jal fibonacci
	
main:
	addi $sp, $sp, -12	#save 3 spaces in the stack
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
   
	slti $s0, $a0, 2	#jump to base case. investigate base case for fibonacci
	beq $s0, $zero, fibonacci	
	
fibonacci:
	
	

exitfibonacci:


end:	