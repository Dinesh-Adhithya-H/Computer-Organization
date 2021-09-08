.data
	newline: .asciiz "\n"
.text
	main:
		addi $s0,$zero,10
		
		li $v0,1
		addi $a0,$s0,0
		syscall
		
		
		jal increasemyregister
		
		
		li $v0,4
		la $a0,newline
		syscall
		
		
	
	
	# This line is going to signal end of process
	li $v0,10
	syscall
	
	
	increasemyregister:
		addi $sp,$sp,-8
		sw $s0,0($sp)
		sw $ra,4($sp)
		
		addi $s0,$s0,30
		
		# nested procedure
		jal printvalue
		
		
		lw $s0,0($sp)
		lw $ra,4($sp) 
		addi $sp,$sp,4
		
		
		jr $ra
		
	printvalue:
		#print the value
		li $v0,1
		move $a0,$s0
		syscall
		jr $ra
			

