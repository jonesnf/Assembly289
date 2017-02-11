.data
	string: .asciiz "hello"
.text
	main: 
		li $t0, 0
		la $a0, string		
		jal findLength
		
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
		
	li $v0, 10
	syscall
	
	findLength:
		
		li $v1, 0
		for: 
			lb $t1, 0($a0)
			beqz $t1, exit
			addi $a0, $a0, 1
			addi $v1, $v1, 1
			j for
			
		exit:	
			jr $ra
		
		