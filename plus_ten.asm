.data
	texto1: .asciz "Digite um valor: "
	texto2: .asciz "Valor Final: "
	
.text
	# Imprime string
	addi a7, zero, 4
	la a0, texto1
	ecall
	
	# Ler um inteiro
	addi a7, zero, 5
	ecall
	add t0, zero, a0 # Valor retornado
	
	addi t0, t0, 10

	# Imprime string
	addi a7, zero, 4
	la a0, texto2
	ecall
	
	# Imprime inteiro
	addi a7, zero, 1
	add a0, zero, t0
	ecall
