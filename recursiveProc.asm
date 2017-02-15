.data
.text
	main:	
		li $a0, 100
		li $a1, 100
		
		jal addNumbers
		
		li $v0, 1
		add $a0, $zero, $v1
		syscall
	
	li $v0, 10
	syscall
	
	
	addNumbers:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		
		li $t0, 500
		add $v1, $a0, $a1
		bge $v1, $t0, pop
		
		addi $a0, $a0, 100
		jal addNumbers
		
	pop:
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
