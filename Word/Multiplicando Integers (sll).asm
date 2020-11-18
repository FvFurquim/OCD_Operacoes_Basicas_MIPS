.data
	num1: .word 2	
	
.text

	lw $t0, num1	
	
	sll $t1, $t0, 7
	
	li $v0, 1
	move $a0, $t1
	syscall