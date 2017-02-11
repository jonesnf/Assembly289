.data
.text
	li $t0, 0     #starting value
	li $t1, 9    #condition we will be checking against
	
	while: 
		addi $t0, $t0, 1
		bge  $t0, $t1, exit
		
		j while
		
	
	exit:
		li $v0, 1
		addi $a0, $t0, 0
		syscall
	
		li $v0, 10
		syscall
