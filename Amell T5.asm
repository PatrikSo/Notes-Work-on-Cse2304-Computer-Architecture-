.data
   age:   .word   23   #This is a integer
   
.text
   li $v0, 1
   lw $a0, age
   syscall