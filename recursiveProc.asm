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
		
		li $t0, 500
		add $v1, $a0, $a1
		addi $a0, $a0, 100
		blt $v1, $t0, addNumbers
		
		jr $ra