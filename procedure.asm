.data
	text: .asciiz "Hi everybody , lol\n"
.text
	main:
		jal displaymessage
		addi $s0,$zero,5
		
		li $v0,1
		add $a0,$zero,$s0
		syscall
	
	
	
	# to end the program
	li $v0,10
	syscall
	

	displaymessage:
		li $v0,4
		la $a0,text
		syscall
		jr $ra