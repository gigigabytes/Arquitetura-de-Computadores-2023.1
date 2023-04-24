.text

#Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
#bem como a diferença entre eles (a diferença é sempre um valor positivo)


main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
     
      sub $12, $8, $9
     
      slt $10, $8, $9 # Se $8 < $9 então
                      #   $10 <= 1
                      # senão
                      #   $10 <= 0
                     
      beq $10, $0, maior8
      add $4, $0, $9
      j fimif                
maior8: add $4, $0, $8

fimif:addi $2, $0, 1
      syscall
     
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
     
      sra $13, $12, 31
      beq $0, $13, difpos
difneg: mul $12, $12, $13      
     
difpos:  add $4, $12, $0

prn:  addi $2, $0, 1
      syscall
     
      addi $2, $0, 10
      syscall
