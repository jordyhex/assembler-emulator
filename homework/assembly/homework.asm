//==========================================================================================
// PROBLEM 1: Counting Up From 1 to 10 in Little Man Assembly
//==========================================================================================

// You can develop your code via the online emulator and then paste it in here
// Please use a jump in your solution
// Please use the OUT instruction to print values

//I didn't want to do the stepping for LMC 

        LDA PLUS
        OUT
        ADD PLUS
        OUT 
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        ADD PLUS
        OUT
        HLT
        BRA PLUS
PLUS    DAT 1

//==========================================================================================
// PROBLEM 2: Counting Up From 1 to 10 in MIPS Assembly
//==========================================================================================

// You can develop your code via the MARS emulator and then paste it in here
// Please use a jump in your solution
// Please use sys-calls to output the value
.data
	newline:	.asciiz "\n"
.text
	main:
		addi $t0, $zero, 1
		addi $t1, $zero, 10
	
	loop:
		bgt $t0, $t1, exit #breaks out of loop if the value is greater than 10
		
		li $v0, 1
		move $a0, $t0 
		syscall
		
		li $v0, 4
		la $a0, newline
		syscall
		
		addi $t0, $t0, 1
		
		j loop #outputs the same as b 
		
	exit:
		li $v0, 10
		syscall
