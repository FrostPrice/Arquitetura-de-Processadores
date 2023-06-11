.text
	jal zero, main
	
leaf:
	# Armazena os parametros na pilha, o ultimo a entrar eh o primeiro a sair
	addi sp, sp, -4 # Calcula o ponteiro
	sw t0, 0(sp) # Armazena valor na pilha, com 0 offset de sp
	addi sp, sp, -4 # Calcula o ponteiro
	sw t1, 0(sp) # Armazena valor na pilha, com 0 offset de sp
	
	add t0, a0, a1 # t0 = g + h
	add t1, a2, a3 # t1 = i = j
	sub a0, t0, t1 # a0 = (g+h) - (i+j)

	# Retira os parametros da pilha, o ultimo a entrar eh o primeiro a sair
	lw t1, 0(sp) # Retira valor na pilha, com 0 offset de sp
	addi sp, sp, 4 # Calcula o ponteiro
	lw t0, 0(sp) # Retira valor na pilha, com 0 offset de sp
	addi sp, sp, 4 # Calcula o ponteiro
	
	jalr ra, 0 # Retona para a main

main:
	# Chamada da funcao leaf(g,h,i,j)
	addi a0, zero, 1
	addi a1, zero, 2
	addi a2, zero, 3
	addi a3, zero, 4
	jal ra, leaf