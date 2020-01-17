.data
   Xvariable: .word 0   #setting x to 0
   Bvariable: .word 0   #setting b to 0
   
.text
   main:                # MAIN FUNCTION
      lw $a0, Xvariable($zero) #moving the x variable to corect register
      lw $a1, Bvariable($zero) #moving the b variable to corect register
      
      li $t0, 10        #our loop range, going to 10
      li $t1, 0         #our starting increment
      #li $v0, 0         #loading $v0 as 0
      
      j loop            #calling loop
   

   adding:              #OUR ADDITION FUNCTION add(x)
      addi $a0, $a0, 1         #returns x + 1
      
      
      
   loop:                #OUR LOOP 
      beq $t1, $t0, EXIT       #if t1 == t0, stop the loop
      addi $t1, $t0, 1        #add 1 to t1, increment
      add $a0, $a0, $t1       #updating x as the new i to add in adding
      j adding                #jumps to adding funtion
      add $a1, $a1, $a0       #adding b to add(i)
      
      j loop                  #jump back to loop
      
      move $a1, $v0       #storing b in $v0

EXIT: