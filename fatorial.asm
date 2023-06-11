.text
	jal zero, ret_n1
	
fat_rec:
	addi sp, sp, -8 # Atualiza sp (push 2 itens)
	sw ra, 0(sp) # - Push ra
	sw a0, 4(sp) # - Push a2
	addi t0, t0, 1 # Teste se n<1
	bge a0, t0, ret_n1 # Se n>=1, desvia para ret_n1
	addi a1, zero, 1 # Retorna o valor 1
	jalr ra, 0 # Retorna para depois de jal

ret_n1:
	addi a0, a0, -1 # n>=1, a0 = n-1
	jal fat_rec # Chama fat_rec(n-1_)
	lw a0, 4(sp) # - Pop a2 (ou seja, n)
	lw ra, 0(sp) # - Pop ra
	addi sp, sp, 8 # Atualiza sp (Pop 2 itens)
	addi t0, zero, 8
	mul  a1, a1, t0 # Retorna n*fact(n-1)
	jalr ra, 0 # Retorna para o chamador
