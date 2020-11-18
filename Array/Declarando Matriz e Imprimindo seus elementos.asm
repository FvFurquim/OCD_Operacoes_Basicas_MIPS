.data

	array2D: .word 2,4
		 .word 6,9
		 
	tamanho: .word 4
	
	coluna: .word 2
	
	.eqv TAM_INT 4 # tamanho do dado dentro da matriz
	
	espaco: .asciiz " "
	quebraLinha: .asciiz "\n"

.text

	main:
	
		la $s1, array2D # endereço da array
		lw $a1, tamanho # tamanho do da matriz
		lw $s2, coluna # tamanho da linha
		la $s3, ($s2) # contador de linhas
		
		jal imprimirArray
		
		li $v0, 10
		syscall
	
	imprimirArray:		
		li $t0, 0 #contador
		
		loop:
			beq $t0, $s3, imprimirQuebra
			
			lw $a0, ($s1)
			li $v0, 1
			syscall
			
			li $v0, 4
			la $a0, espaco
			syscall
			
			addi $s1, $s1, TAM_INT
			addi $t0, $t0, 1
						
			blt $t0, $a1, loop
		jr $ra
		
	imprimirQuebra:	
	
		 li $v0, 4
		 la $a0, quebraLinha
		 syscall
		 
		add $s3, $s3, $s2
		j loop	 
			