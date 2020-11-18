.data
	quebraLinha: .asciiz "\n"
	mensagem: .asciiz "Valor colocado na pilha.\n"
	num1: .word 5
	num2: .word 9
	num3: .word 25
	num4: .word 6
	num5: .word 4
	#Valores a serem colocados na pilha
.text
	main:
	
		lw $t1, num1
		jal encherPilha
	
		lw $t1, num2
		jal encherPilha
	
		lw $t1, num3
		jal encherPilha
	
		lw $t1, num4
		jal encherPilha
	
		lw $t1, num5
		jal encherPilha
		
		jal esvaziarPilha	
		
		li $v0, 10
		syscall
	
	encherPilha:
		addi $sp, $sp, -4 #Aumente o ponteiro de pilha	
		addi $s0, $t1, 0 #Salve o numero em algum registrador que se preserva ($sx)
		sw $s0, 0($sp)	#Guarde o númeri		
		
		li $v0, 4
		la $a0, mensagem 
		syscall #Imprima que tudo deu certo até aqui		
		
		jr $ra
	
	esvaziarPilha:
		lw $s1, num1
		beq $s0, $s1, sairEsvaziar #Saia se s0 = o primeiro valor inserido na pilha
		
		lw $s0, 0($sp)	#Carregue o numero salvo
		addi $sp, $sp, 4 #Decremente o ponteiro de pilha
		
		#Se quiser, você pode salvar um 0 neste espaço da pilha, mas parece desnecessário já que encherPilha sobrescreverá o que está no espaço.
		
		li $v0, 1
		move $a0, $s0
		syscall #Imprima o numero salvo
		
		li $v0, 4
		la $a0, quebraLinha
		syscall
		
		j esvaziarPilha #loop ou laço :D
		
	sairEsvaziar:
		jr $ra #saia do loop, volte pro main (ou seja lá onde $ra está apontando)