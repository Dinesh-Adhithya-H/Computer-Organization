# To print integer

.data # data of programs
	number1: .word 6
	number2: .word 2
.text # instructions of program
	
	lw $t0,number1($zero)
	lw $t1,number2($zero)
	
	sub $t3,$t1,$t0
	
	li $v0,1
	add $a0,$zero,$t3
	syscall