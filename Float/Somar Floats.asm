.data
	num1: .float 3.14
	num2: .float 2.73

.text

	lwc1 $f0, num1
	lwc1 $f2, num2
	
	add.s $f12, $f0, $f2
	
	li $v0, 2	
	syscall