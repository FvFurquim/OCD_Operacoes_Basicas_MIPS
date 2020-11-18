.data 
	array: .word 5:6
	quebraLinha: .asciiz "\n"
	tamanhoArray: .word 24    # 4*tamanho
.text
	main:
	
		addi $t0, $zero, 0
		lw $t1, tamanhoArray($zero)
	
	while:
		beq $t0, $t1, exit
		
		lw $t6, array($t0)
		
		addi $t0, $t0, 4
		
		li $v0, 1
		move $a0, $t6
		syscall
		
		li $v0, 4
		la $a0, quebraLinha
		syscall
		
		j while
		
	exit:
	
		li $v0, 10
		syscall