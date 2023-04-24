.text

# Faça um programa para ler um número inteiro. Se o número for positivo, imprima o
#dobro do número, se for negativo, imprima o quadrado do número.

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	srl $9, $8, 31
	
	beq $9, $0, posit
	
neg:
	mul $4, $8, $8 #quadrado
	j fimif 
	
posit: 	
	sll $4, $8, 1 #dobro (é só deslocar uma casa para esquerda
	
fimif:  addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall
