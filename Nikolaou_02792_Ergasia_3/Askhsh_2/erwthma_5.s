
.data


	str1: .asciiz "\nPlease enter a binary number with length 4 bits (ie 0001): "
	str2: .asciiz "\nYour number in decimal is: "

.text
.globl main
main:

	#s0 = given number
	#s1 = msb
	#s2 = 2nd msb
	#s3 = 2nd lsb
	#s4 = lsb
	#s5 = result
	#t8 = 0, $t9 = 1
	li $t8, 0
	li $t9, 1
	li $s1, 0
	li $s2, 0
	li $s3, 0
	li $s4, 0
	move $s5, $0 #sum/result = 0
		
	

REPEAT: # jump here if one of the four bits different from 0 or 1	
	#printf("\nPlease enter a binary number with length 4 bits (ie 0001): ");
	la $a0, str1
	li $v0, 4
	syscall 
	
	#scanf("%d", $s0);
	li $v0, 5
	syscall
	move $s0, $v0
	
	#s1,s2,s3,s4 == most valuable bit, 2nd most valuable bit, 2nd least valuable bit, least valuable bit
	
	#get w from wxyz
	li $t0, 1000	
	div $s0, $t0	#wxyz/1000 = w
	mflo $s1	#move result to most valuable bit
	
	#START CHECK
	beq $s1, $t8, SKIP_S1_CHECK # if $register == 0 then skip check
	bne $s1, $t9, REPEAT	    # if $register != 1 then is not 0 and not 1, therefore repeat
SKIP_S1_CHECK:
	#END CHECK


	#get x from wxyz
	li $t0, 100
	div $s0, $t0
	mflo $t1	#wxyz/100 = wx
	li $t0, 10
	div $t1, $t0	#wx/10 -> remainder x
	mfhi $s2 #move remainder to second most valuable bit
	
	#START CHECK
	beq $s2, $t8, SKIP_S2_CHECK # if $register == 0 then skip check
	bne $s2, $t9, REPEAT	    # if $register != 1 then is not 0 and not 1, therefore repeat
SKIP_S2_CHECK:
	#END CHECK

	#get y from wxyz
	li $t0, 10
	div $s0, $t0	#wxyz/10 = wxy
	mflo $t1 
	li $t0, 10
	div $t1, $t0 	#wxy/10 -> remainder y
	mfhi $s3 #move remainder to second least valuable bit 	

	#START CHECK
	beq $s3, $t8, SKIP_S3_CHECK # if $register == 0 then skip check
	bne $s3, $t9, REPEAT	    # if $register != 1 then is not 0 and not 1, therefore repeat
SKIP_S3_CHECK:
	#END CHECK
	
	#get z from wxyz
	li $t0, 10
	div $s0, $t0	#wxyz/10 --> remainder z
	mfhi $s4 #move remainder to least valueable bit

	#START CHECK
	beq $s4, $t8, SKIP_S4_CHECK # if $register == 0 then skip check
	bne $s4, $t9, REPEAT	    # if $register != 1 then is not 0 and not 1, therefore repeat
SKIP_S4_CHECK:
	#END CHECK


	# time to multiply everything and get the result
	# result = msb*8 + 2ndmsb*4 + 2ndlsb*2 + lsb*1
	# s5 = s1 * 8 + s2 * 4 + s3 * 2 + s4  * 1;	
	# temp5 = MSB * 8; result += temp5;
	li $t1, 8		
	mul $t5, $s1, $t1
	add $s5, $s5, $t5
	
	#temp5 = 2ndMSB * 4; result += temp5;
	li $t2, 4
	mul $t5, $s2, $t2
	add $s5, $s5, $t5

	#temp5 = 2ndLSB * 2; result += temp5;
	li $t3, 2
	mul $t5, $s3, $t3
	add $s5, $s5, $t5

	#temp5 = LSB * 1; result +=temp5; ---->>> result += LSB;
	add $s5, $s5, $s4

	#printf("\nYour number in decimal is: 
	la $a0, str2
	li $v0, 4
	syscall
	
	#%d\n", result); #continue from previous syscall
	move $a0, $s5
	li $v0, 1
	syscall
	
	
	
	#EXIT PROGRAM
	li $v0, 10
	syscall
