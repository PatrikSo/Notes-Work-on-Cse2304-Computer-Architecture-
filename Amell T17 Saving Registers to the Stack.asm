.data
   newLine: .asciiz "\n"
.text
   main:
      addi $s0, $zero, 10
      
      li $v0, 1
      move $a0, $s0
      syscall
   
   #This line is going to signal end of program
   li $v0, 10
   syscall
   
   
#convention of t registers and s registers
#s registers cannot be modified by the call-e's 