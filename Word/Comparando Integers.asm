.data

	mensagem1: .asciiz "Os numeros sao iguais\n"
	mensagem2: .asciiz "Os numeros nao sao iguais\n"
	
	num1: .word 7
	num2: .word 7
	
.text
	main:
		lw $t0, num1
		lw $t1, num2
	
		beq $t0, $t1, iguais			
			
		bne $t0, $t1, naoiguais		
		
		
	iguais:
		li $v0, 4
		la $a0, mensagem1
		syscall
		
		li $v0, 10
		syscall
		
		
	naoiguais:
		li $v0, 4
		la $a0, mensagem2
		syscall
		
		li $v0, 10
		syscall
		
	
