.data
	array: .space 10
	
.text
	addi $s0, $zero, 8
	addi $s1, $zero, 12
	addi $s2, $zero, 17
	addi $s3, $zero, 5
	
	addi $t0, $zero, 0
	
	sw $s0, array($t0)
	addi $t0, $t0, 4
	sw $s1, array($t0)
	addi $t0, $t0, 4
	sw $s2, array($t0)
	addi $t0, $t0, 4
	sw $s3, array($t0)
	
	