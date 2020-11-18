.data

	dividendo: .word 2352
	divisor: .word 56
	
.text

	lw $t0, dividendo
	lw $t1, divisor
	
	div $t0, $t1
	
	mflo $t2 # Quociente
	mfhi $t3 # Resto
	
	li $v0, 1
	move $a0, $t2
	syscall
