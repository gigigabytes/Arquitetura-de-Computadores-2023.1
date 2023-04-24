.text
main: addi $2, $0, 5 # 23
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5 # 23
      syscall
      add $9, $0, $2
     
      slt $10, $8, $9 # Se $8 < $9 então $10 recebe 1 QUALQUER caso contrário $10 recebe 0
                      
      sub $12, $8, $9
      addi $15, $0, 1
      
         
      add $4, $8, $0
      addi $2, $0, 1
      syscall
      

      beq, $10, $15, menor
      beq, $12, $0, igual
      j maior
      
      maior:
      addi $4, $0, '>'
      addi $2, $0, 11
      syscall
      j segundoNum
   
      menor:  
      addi $4, $0, '<'
      addi $2, $0, 11
      syscall
      j segundoNum
      
      igual:
      addi $4, $0, '='
      addi $2, $0, 11
      syscall
      
      segundoNum:
      add $4, $9, $0
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
