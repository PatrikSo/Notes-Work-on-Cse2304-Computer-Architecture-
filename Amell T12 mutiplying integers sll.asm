.data

.text
   addi $s0, $zero, 4
   
   sll $t0, $s0, 2    #multiplies by 2 to the power of i (2 to the 2)
   
   #print it
   li $v0, 1
   add $a0, $zero, $t0
   syscall