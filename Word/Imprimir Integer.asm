.data
	letra: .word 500
.text
	li $v0, 1
	lw $a0, letra
	syscall