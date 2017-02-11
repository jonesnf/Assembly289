.data
.text
	addi $t0, $zero, 0
	addi $t1, $zero, 0
	addi $t2, $zero, 20	#How many bytes
	addi $t3, $zero, 5	#used in for loop
	
	li $v0, 9
	addi $a0, $t2, 0
	syscall
	
	move $t0, $v0		
	
	
	for: 
		bge $t1, $t3, exit
		sw  $t1, ($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		
		j for		
		
	
	exit:
		li $v0, 1
		addi $a0, $t1, 0
		syscall
		
		li $v0, 10
		syscall
	
