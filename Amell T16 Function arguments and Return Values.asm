.data
   message: .asciiz "Hello World!, \n"
.text
   main:
      jal addNumbers
      
      
   #tell system the program is done
   li $v0, 10
   syscall
   
   addNumbers:
      li $v0, 4
      la $a0, message
      syscall
      
      jr $ra
