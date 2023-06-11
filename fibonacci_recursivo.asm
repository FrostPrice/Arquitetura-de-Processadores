# int fib_rec(int n) {
#	if(n <= 2) return 1;
#	return fib(n - 1) + fib(n - 2);
# }
.text
jal zero, main # Chama main

fib_rec:
	addi sp, sp, -8 # -(3 * 4)
	sw ra, 0(sp) # -8 + 0 = -8 (Fundo da pilha)
	sw a0, 4(sp) # -8 + 4 = -4 (Topo da pilha)
	addi t0, zero, 2
	bgt a0, t0, return_fib	# Aqui eh else

 	# Aqui eh if (n <= 2)
	addi a1, a1, 1
	
	# Desempilhar e Return
	lw a0, 4(sp) # (Topo da pilha)
	lw ra, 0(sp) # (Fundo da pilha)
	addi sp, sp, 8 # Desempilhar (Carregar nos registrador os valors que estao na pilha)
	
	add a1, a1, a0 # Soma dos valores
	jalr ra, 0 # Return
	
return_fib:
	addi a0, a0, -1
	jal ra, fib_rec # fib_rec(n-1)
	
	addi a0, a0, -1
	jal ra, fib_rec # fib_rec(n-2)
	
	jalr ra, 0 # Return
	
main:
	addi a0, zero, 6 # int n = 6
	jal ra, fib_rec # fib_rec(n)
	# ra armazena o endereço da proxima linha do jal