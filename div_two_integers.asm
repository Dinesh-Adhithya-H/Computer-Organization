# To divide two integers

.data # data of programs
	number1: .word 6
	number2: .word 2
.text # instructions of program
	
	lw $t0,number1($zero)
	lw $t1,number2($zero)
	
	div $t3,$t0,$t1
	
	li $v0,1
	add $a0,$zero,$t3
	syscall