# To print character

.data # data of programs
	mymessage: .byte 'h'
.text # instructions of program
	li $v0,4
	la $a0,mymessage
	syscall