.text 
	li $a0,3
	li $a1,0
	
	jal sum
	
	add $a0,$zero,$v0
	li $v0,1
	syscall
	
	# to end the program
	li $v0,10
	syscall
	
sum:
	slti $t0,$a0,1
	bne $t0,$zero,sum_exit
	add $a1,$a1,$a0
	addi $a0,$a0,-1
	j sum
sum_exit:
	add $v0,$a1,$zero
	jr $ra