.data
   myCharacter:   .asciiz   "Hello world \n"
   myInt:   .word   30
   
.text
   li $v0, 4
   la $a0, myCharacter
   
   li $v0, 1
   la $a0, myInt
   
   syscall