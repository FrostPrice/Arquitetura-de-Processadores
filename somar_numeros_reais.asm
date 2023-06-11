.data
	texto1: .asciz "Digite um numero real: " 
	texto2: .asciz "Digite outro numero real: "
	texto3: .asciz "Resultado: "
	
.text
	# Imprime: String
	addi a7, zero, 4
	la a0, texto1
	ecall
	
	# Solicita: Float
	addi a7, zero, 6
	ecall
	fadd.d fs0, ft0, fa0
		
	# Imprime: String
	addi a7, zero, 4
	la a0, texto2
	ecall
	
	# Solicita: Float
	addi a7, zero, 6
	ecall
	fadd.d fs1, ft0, fa0
	
	# Soma: Floats
	fadd.d fs2, fs1, fs0
	
	# Imprime: String
	addi a7, zero, 4
	la a0, texto3
	ecall
	
	# Imprime: Float
	addi a7, zero, 2
	fmv.s fa0, fs2
	ecall
	
