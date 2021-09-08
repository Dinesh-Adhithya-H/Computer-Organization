.data
	message: .asciiz "the numbers are equal"
	message3: .asciiz "numbers are different"
	message2: .asciiz "nothing happened ever"
.text
	main:
		addi $t0,$zero,22
		addi $t1,$zero,20
		
		#beq $t0,$t1,numbersequal
		
		#bne $t0,$t1,numbersdifferent
		
		b print
		
		# syscall to end program
		li $v0,10
		syscall
		
	numbersequal:
		li $v0,4
		la $a0,message
		syscall
		
	print:
		li $v0,4
		la $a0,message2
		syscall
		
	numbersdifferent:
		li $v0,4
		la $a0,message3
		syscall