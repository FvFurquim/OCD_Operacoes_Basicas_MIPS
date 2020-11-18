.data

	meuValor1: .word 77
	meuValor2: .word 35
	
.text

	lw $t0, meuValor1
	lw $t1, meuValor2
	
	sub $t2, $t0, $t1
	
	li $v0, 1
	move $a0, $t2
	syscall