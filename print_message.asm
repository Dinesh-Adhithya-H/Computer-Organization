# To print message in screen

.data # data of programs
	mymessage: .ascii "helloworld"
.text # instructions of program
	li $v0,4
	la $a0,mymessage
	syscall