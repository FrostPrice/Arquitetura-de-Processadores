.data
	texto1: .asciz "Digite um valor: "
	texto2: .asciz "Digite outro valor: "

.text
	# Imprime string
	addi a7, zero, 4
	la a0, texto1
	ecall
	
	# Ler um inteiro
	addi a7, zero, 5
	ecall
	add s0, zero, a0
	
	# Imprime string
	addi a7, zero, 4
	la a0, texto2
	ecall
	
	# Ler um inteiro
	addi a7, zero, 5
	ecall
	add s1, zero, a0
	
	# Trocar valor s0 e s1
	add t0, zero, s0
	add s0, zero, s1
	add s1, zero, t0
	
	# Imprime inteiro
	addi a7, zero, 1
	add a0, zero, s0
	ecall
	
	# Imprime inteiro
	addi a7, zero, 1
	add a0, zero, s1
	ecall