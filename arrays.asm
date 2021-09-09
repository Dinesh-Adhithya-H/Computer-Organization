.data
	array: .space 12 # one integer needs 4 bytes , 3 values so 3*4
.text
	main:
	
	addi $s0,$zero,4
	addi $s1,$zero,10
	addi $s2,$zero,12
	
	# Index = t0 , saving s0 at array index 0
	addi $t0, $zero,0
	sw $s0,array($t0)
	addi $t0,$t0,4
	sw $s1,array($t0)
 	addi $t0,$t0,4
	sw $s1,array($t0)
	
	# printing values from array
	lw $t6,array(4)
	li $v0,1
	addi $a0,$t6,0
	syscall
	
	# to end program
	li $v0,10
	syscall