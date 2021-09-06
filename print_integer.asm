# To print integer

.data # data of programs
	number: .word 69
.text # instructions of program
	li $v0,1
	la $a0,number
	syscall