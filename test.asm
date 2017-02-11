.data
	myMessage: .asciiz "Hello World \n"
.text
    main:	
	addi $t0, $zero, 0
	addi $t1, $zero, 4
		
	for: 
		bgt $t0, 10, exit
		jal print
		addi $t0, $t0, 1
		
		j while		
	exit:
		
	
	
	li $v0, 10
	syscall
	
    print:
	
	li $v0, 1
	add $a0, $t0, $t1
	syscall
