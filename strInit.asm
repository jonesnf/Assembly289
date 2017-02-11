.data
 	str: .asciiz "Enter String: "
 	response: .asciiz "You typed: "
.text

	li $t0, 0
	li $t1, 10
	li $t2  0	
	
	li $v0, 9
	addi $a0, $t0, 0
	syscall
	
	move $t0, $v0
	
		
	li $v0, 4
	la $a0, str
	syscall
	
	
	li $v0, 8
	la $a0, 0($t0)
	li $a1, 10
	syscall
	
	move $t0, $a0
	
	li $v0, 4
	la $a0, response
	syscall
	
	
	li $v0, 4
	#move $a0, $t0
	la $a0, ($t0)
	syscall
	

	
	li $v0, 10
	syscall
	
	
	
