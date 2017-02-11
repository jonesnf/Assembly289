.data
	endMsg: .asciiz "End of For Loop Program \n"
	frmt:   .asciiz ", "
.text
	
	addi $t0, $zero, 0
	addi $t1, $zero, 9
		
	for: 
		bgt $t0, $t1, exit
		jal print
		addi $t0, $t0, 1
		
		j for		
		
    	print:	
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, frmt
		syscall
		
		jr $ra
	
		
	exit:
		li $v0, 4
		la $a0, endMsg
		syscall
		
		
	li $v0, 10
	syscall
		
	
	
	
	
