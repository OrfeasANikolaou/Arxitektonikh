.text
.globl main
main:

#### STUDENT PART

	#PRINT STUDENT NAME
	la $a0, name_field		#load name_field to syscall function
	li $v0, 4							#print str
	syscall
	#v0 already has value == 4 and does not change when calling syscall 4
	#so no reason to load it again as 4
	la $a0, name
	syscall
	#PRINT STUDENT ROLLING NUMBER
	la $a0, rolling_number_field
	syscall
	la $a0, rolling_number
	syscall
	#PRINT STUDENT SEMESTER
	la $a0, semester_field
	syscall
	la $a0, semester
	syscall

####ADD NUMBERS PART

	# x
	#printf enter x
	la $a0, enter_x_msg	
	syscall						
	#scanf("%d", &x);
	li $v0, 5
	syscall
	move $t0, $v0 #return value from syscall 5 is $v0
	#y
	#printf enter y
	li $v0, 4
	la $a0, enter_y_msg
	syscall
	#scanf("%d", &y);
	li $v0, 5
	syscall
	move $t1, $v0
	#printf("Sum= ");
	li $v0, 4 
	la $a0, result_msg
	syscall
	# ήθελα να κάνω 
	#	add $s0, $t0, $t1 
	#	και το s0 --> a0 με lw/sw
	# αλλά δεν με άφηνε το interpreter/compiler/whatever
	#printf("%d", sum);
	li $v0, 1 
	add $a0, $t0, $t1
	syscall
	# exit
	li $v0, 10
	syscall
.data
	# για καλύτερο modularity εβαλα 1 για το σταθερο και 1 για το καθε μαθητη
	name_field: 
		.asciiz "Ονοματεπώνυμο: "
	name: 
		.asciiz "Ορφέας- Άγγελος Νικολάου\n"
	rolling_number_field:	
		.asciiz "ΑΜ...........: "
	rolling_number:
		.asciiz "02792\n"
	semester_field:	
		.asciiz "Εξάμηνο......: "
	semester:
		.asciiz "3ο\n"
	# printf sum part
	enter_x_msg:
		.asciiz "Εισάξτε έναν (ακέραιο) αριθμό: "
	enter_y_msg:
		.asciiz "Εισάξτε άλλον έναν (ακέραιο) αριθμό: "
	result_msg:
		.asciiz "Sum= "
