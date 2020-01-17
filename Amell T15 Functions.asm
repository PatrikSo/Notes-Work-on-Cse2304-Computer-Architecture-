.data
   message: .asciiz "Hello world! \n"
.text
   main:
      jal displayMessage
   
   
      addi $s0, $zero, 5
      
      #print number 5 to screen
      li $v0, 1
      add $a0, $zero, $s0
      syscall
   
   
   #tell the system the program is done. (mandatory to stop infinite loops)
   li $v0, 10
   syscall
   
   displayMessage:
      li $v0, 4
      la $a0, message
      syscall
      
      
      jr $ra