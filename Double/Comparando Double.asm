.data
	num1: .double 3.1415926
	num2: .double 2.7182818
	msg1: .asciiz "Os numeros sao iguais"
	msg2: .asciiz "Os numeros nao sao iguais"

.text
	main:
		ldc1 $f2, num1
		ldc1 $f4, num2
	
		c.eq.d $f2, $f4		# if(f2, f4) condition flag 0 = true
					# else condition flag = false]
					
		bc1t numEqual		# if(cc == true) va para numEqual
		
		bc1f numNotEqual	# if(cc == false) va para numNotEqual
		
		j exit
	
	numEqual:
		li $v0, 4
		la $a0, msg1
		syscall
		
		j exit
			
	numNotEqual:
		li $v0, 4
		la $a0, msg2
		syscall
		
		j exit	
		
	exit:
		li $v0, 10
		syscall
		
		
		
		