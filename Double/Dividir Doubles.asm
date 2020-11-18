.data
	num1: .double 3.1415926
	num2: .double 2.7182818


.text

	ldc1 $f2, num1
	ldc1 $f4, num2
	
	div.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
