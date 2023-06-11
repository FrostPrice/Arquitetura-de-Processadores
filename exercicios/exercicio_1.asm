####################################################################
# Exercício 01 - Patterson pags. 54/55/56
# Mostra a compilação de um comando de atribuição em C
####################################################################
# Trecho em C:
#
# f = (g + h) - (i + j)

.text # Segmento de código (Programa)

main:
	addi s1, zero, 4 # Adiciona imediatamente no registrador s1 o valor de zero mais o Serviço 4 (PrintString) 
	addi s2, zero, 3 # Adiciona imediatamente no registrador s2 o valor de zero mais o Serviço 3 (PrintDouble)
	addi s3, zero, 2 # Adiciona imediatamente no registrador s3 o valor de zero mais o Serviço 2 (PrintFloat)
	addi s4, zero, 1 # Adiciona imediatamente no registrador s3 o valor de zero mais o Serviço 1 (PrintInt)
	
	add t0, s1, s2 # t0 = g + h
	add t1, s3, s4 # t1 = i + j
	sub s0, t0, t1 # f = t0 - t1