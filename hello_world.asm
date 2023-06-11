.data
	ola: .asciz "Ola Mundo!"

.text
	# Imprimir String
	addi a7, zero, 4
	la a0, ola
	ecall