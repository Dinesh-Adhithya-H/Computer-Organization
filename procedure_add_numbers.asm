.data

.text

	main:
		addi $a0,$zero,50
		addi $a1,$zero,100
		jal addnumbers
		
		li $v0,1
		addi $a0,$v1,0
		syscall
		
	li $v0,10
	syscall
addnumbers:
	add $v1,$a1,$a0
	jr $ra
