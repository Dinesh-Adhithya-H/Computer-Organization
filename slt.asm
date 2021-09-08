.data
	message: .asciiz "the number is less than others"
.text
	main:
	addi $t0,$zero,1
	addi $t1,$zero,200
	
	slt $s0,$t0,$t1
	
	bne $s0,$zero,printmessage
	
	li $v0,10
	syscall
	
	printmessage:
		li $v0,4
		la $a0,message
		syscall
	
	