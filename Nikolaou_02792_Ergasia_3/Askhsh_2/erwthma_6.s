.data
	str1: .asciiz "\nEnter full name: "
	str2: .asciiz "\nEnter rolling number: "
	str3: .asciiz "\nEnter semester: "
	str4: .asciiz "\nEnter first number: "
	str5: .asciiz "\nEnter second number: "
	str6: .asciiz "\nEnter valid operation (+, -, *, /, p [power of two]): "	
	str7: .asciiz "\nResult: "
	full_name: .space 50

.text
.globl main

	
	#full_name = onomatepwnhmo
	#s0 = AM
	#s1 = eksamhno
	#s2 = ari8mos1
	#s3 = ari8mos2
	#s4 = apotelesma2 (air8mos2 otan power_of_two)
	


main:
	#printf("%s", str1); // enter full name
	la $a0, str1
	jal printstr	
	nop


	#fgets(full_name, 50, stdin);
	la $a0, full_name
	li $a1, 50
	jal fgets	
	nop	

	#printf("%s", str2); // enter rolling number
	la $a0, str2
	jal printstr
	nop

	#scanf("%d", &AM);
	jal get_int
	nop
	move $s0, $v0	
	
	#printf("%s", str3);  // enter semester
	la $a0, str3
	jal printstr
	nop
	
	#scanf("%d", &eksamhno);
	jal get_int
	nop
	move $s1, $v0

REPEAT:
	#printf("%s", str4) // enter 1st num
	la $a0, str4
	jal printstr
	nop

	#scanf("%d", &x);
	jal get_int
	nop
	move $s2, $v0	 

	#printf("%s", str5) // enter 2st num
	la $a0, str5
	jal printstr
	nop

	#scanf("%d", &y);
	jal get_int
	nop
	move $s3, $v0	

	# check if either number equals to 2792
	li $t0, 2792
	beq $s2, $t0, EXIT_PROGRAM
	nop
	beq $s3, $t0, EXIT_PROGRAM
	nop
	
BAD_CHAR:
	#printf("%s", str6) // enter operation
	la $a0, str6
	jal printstr
	nop

	#op = getchar()
	jal get_char
	nop
	move $t0, $v0 	#t0 = op
	
	li $t1, '+'
	li $t2, '-'
	li $t3, '*'
	li $t4, '/'
	li $t5, 'p'	# power of two
	beq $t0, $t1, OP_sum
	nop
	beq $t0, $t2, OP_sub
	nop	
	beq $t0, $t3, OP_mul
	nop	
	beq $t0, $t4, OP_div
	nop	
	beq $t0, $t5, OP_pot
	nop
	j BAD_CHAR
OP_sum:
	add $a0, $s2, $s3
	jal printint_with_resultstr
	j EXIT_OPERATIONS
OP_sub:
	sub $a0, $s2, $s3
	jal printint_with_resultstr
	j EXIT_OPERATIONS
OP_mul:
	mul $a0, $s2, $s3
	jal printint_with_resultstr
	j EXIT_OPERATIONS
OP_div:
	div $s2, $s3
	mflo $a0
	jal printint_with_resultstr
	j EXIT_OPERATIONS
OP_pot:
	mul $a0, $s2, $s2
	jal printint_with_resultstr
	mul $a0, $s3, $s3
	jal printint_with_resultstr
	j EXIT_OPERATIONS
EXIT_OPERATIONS:
	j REPEAT		

EXIT_PROGRAM:
	li $v0, 10
	syscall

#print string function
printstr:
	li $v0, 4
	syscall
	jr $ra

#fgets
fgets:
	li $v0, 8
	syscall
	jr $ra

#scanf("%d", &some_int)
get_int:
	li $v0, 5
	syscall
	jr $ra
#getchar()
get_char:
	li $v0, 12
	syscall
	jr $ra
#printf("%d", num);
printint_with_resultstr:
	move $t9, $a0
	la $a0, str7
	li $v0, 4
	syscall
	move $a0, $t9
	li $v0, 1
	syscall
	jr $ra
	
