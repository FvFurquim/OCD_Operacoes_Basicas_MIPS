.data
	numDouble: .double 2.71828182845
	numZero: .double 0.0
.text
	ldc1 $f2, numDouble
	ldc1 $f0, numZero
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall
