.data 

.text
main:
addi $s0, $zero, 6             #n
addi $s1, $zero, 2		#m this is used for the base case n<2
add $a0, $zero, $s0		
add $a1, $zero, $s0 		
jal Save
j Exit

Save:
    addi $sp, $sp, -12	       #Load $ra and $s0 to the stack
    sw $ra, 0($sp)		#to store ra
    sw $s0, 4($sp)		#n-1
    sw $s1, 8($sp)		#n-2

    bne $zero, $a1, Fibonacci    #if(m == 2)
        addi $v0, $zero, 1     #result = 1;
        j Load
    Fibonacci:
        add $s0, $zero, $a0    #backup n
        add $s1, $zero, $a0    #backup n for second sub
        addi $a0, $a0, -1      #load n-1 as parameter
        addi $a1, $a1, -2	#load n-2 as a parameter
        
        jal Save          #return to Save the values;
     
    add $t0, $t0, $a0  		#t0=n-1
    add $t1, $t1, $a1		#t1=n-2
    add $v0, $t0, $t1
    Load:
    
    lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    addi $sp, $sp, 12           #release the stack
    
    jr $ra                     #return
 
Exit: 


#dudas: 
