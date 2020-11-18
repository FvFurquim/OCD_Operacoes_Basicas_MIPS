.data

	num1: .word 7	
	num2: .word 6
.text

	lw $t0, num1
	lw $t1, num2
	
	mul $t2, $t0, $t1
	
	li $v0, 1
	move $a0, $t2
	syscall