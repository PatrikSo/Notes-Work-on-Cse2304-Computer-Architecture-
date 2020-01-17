.data

.text
   addi $t0, $zero, 30
   addi $t1, $zero, 8
   
   #div $s0, $t0, 10    #now dividing 30 by 10
   
   div $t0, $t1         #stores quotient in lo, remainder in hi registers
   
   mflo $s0   #s0 now has quotient
   mfhi $s1   #s1 now has remainder
   
   #Print product
   li $v0, 1
   add $a0, $zero, $s0     #change $s0 to $s1 to display remainder instead
   syscall
