.text
# Faça um programa para ler dois números e informe qual deles é o maior.

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 #Se $8 < $9 então
			#   $10 <= 1
			# senão
			#   $10 <= 0 
	
	beq $10, $0, maior8
	add $4, $0, $9
	j fimif
		
maior8: add $4, $0, $8

fimif:	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
