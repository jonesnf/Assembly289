.data
.text
	li $t0, 100
	li $t1, 200
	li $t3, 0			#used to keep track of where we go, for debugging purposes only
	
	if:
		addi $t3, $t3, 1	#for debugging purposes only
		bgt $t1, 10, elseif
		la $t2, ($t1)
		
		j exit
	
	elseif:
		addi $t3, $t3, 1
		blt  $t1, 10000, else
		j exit   	
   	
   	else:
   		div $t1, $t1, 10
   		addi $t3, $t3, 1
   		j exit
   
 	exit:
 		li $v0, 1
 		addi $a0, $t3, 0
 		syscall 		
 		
 		li $v0, 10
 		syscall
