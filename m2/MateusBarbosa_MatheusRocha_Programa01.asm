# Disciplina: Arquitetura e Organização de Computadores
# Atividade: Avaliação 03 – Programação de Procedimentos
# Programa 01
# Grupo: 
#	- Mateus Barbosa
#	- Matheus de Oliveira Rocha

.data # Segmento de Dados
	max_tam: .word 100
	min_tam: .word 2
	vetor: .word # Vetor vazio para definir um endereço na memoria
	texto_input: .asciz "\nInforme a posicao do vetor [2-100]: "
	texto_resultado: .asciz "\nResultado da Soma: "
	texto_valor_invalido: .asciz "\nValor inválido!"
	
.text # Segmento de Código
	jal zero, main # Executa primeiro a funcao main

### Start: Solicita input entre min_tam e max_tam
solicita_input_tam_vetor:
	# Imprime: String texto_input_max_tam
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input # Carrega ao registrador a0 o texto_input
	ecall # Chama a syscall
	
	# Solicita: Int tamanho do vetor
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s0, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s0
	
	lw t0, min_tam
	bge s0, t0, if_maior_que # Se o valor de s0 for maior que min_tam, vai para a função if_maior_que
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j solicita_input_tam_vetor # Volta para o inicio de solicita_input_tam_vetor

if_maior_que: # Função que verifica se o valor informado é menor que tam
	lw t1, max_tam
	ble s0, t1, ret_solicita_input_tam_vetor # Se o valor de s0 (sem sinal) for menor que max_tam, vai para a função ret_solicita_input_tam_vetor
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j solicita_input_tam_vetor # Volta para o inicio de solicita_input_tam_vetor
	
ret_solicita_input_tam_vetor:
	add a0, zero, s0
	jalr ra # Retorna para o chamador
### End: Solicita input entre min_tam e max_tam

### Start: Cria o vetor ate a posicao informada
init_vetor: # Dinamicamente preenche o vetor ate a posicao informada
	# Salvando registradores na pilha - Push
	addi sp, sp, -12
	sw s0, 0(sp)
	sw s1, 4(sp)
	sw ra, 8(sp)
    
	lw s0, max_tam # Verificando se o número de posições do vetor é maior que max_tam
	lw s1, min_tam # Verificando se o número de posições do vetor é menor que min_tam
	bge a1, s0, init_vetor_if_maior_que_max_tam
	blt a1, s1, init_vetor_if_menor_que_min_tam
	j posicao_init_vetor_ok 

init_vetor_if_maior_que_max_tam:
	lw a1, max_tam # Caso o número de posições seja maior que max_tam, definimos como max_tam
	j posicao_init_vetor_ok 
	
init_vetor_if_menor_que_min_tam:
	lw a1, min_tam # Caso o número de posições seja maior que min_tam, definimos como min_tam
	j posicao_init_vetor_ok
	
posicao_init_vetor_ok: # Input do usuario OK
	add s0, zero, a0 # Inicializando s0 com o endereço base do vetor
	add s1, zero, a1 # Inicializando s1 com o número de posições do vetor
    
	li t0, 0 # Inicializando variável i com 0
	j init_vetor_loop # Inicia o loop
	
init_vetor_loop:
	bge t0, s1, init_vetor_fim # Verificando se o número de posições do vetor foi alcançado
	
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s0, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + (4 * i)
	
	sw t0, 0(t2) # Preenchendo a posição atual do vetor com o valor de i
	
	addi t0, t0, 1 # Incrementando i
	
	j init_vetor_loop # Retornando ao início do loop
	
init_vetor_fim:
	# Retirando registradores da Pilha - Pop
	lw s0, 0(sp)
	lw s1, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	
	jalr ra # Retorna pro chamador
### End: Cria o vetor ate a posicao informada

### Start: Soma elementos do vetor ate a posicao informada
soma_vetor:
	# PS: Armazenamos os registradores de tipo S pois usamos eles no loop
	# Salvando registradores na pilha - Push
	addi sp, sp, -16
	sw s0, 0(sp)
	sw s1, 4(sp)
	sw s2, 8(sp)
	sw ra, 12(sp)
	
	add s0, zero, a0 # Inicializando s0 com o endereço base do vetor
	add s1, zero, a1 # Inicializando s1 com o número de posicoes do vetor
	add s2, zero, zero # Inicializando s2 (total da soma) em zero
    
	li t0, 0 # Inicializando variável i com 0
	j soma_vetor_loop # Inicia o loop
	
soma_vetor_loop:
	bge t0, s1, soma_vetor_fim # Verificando se o número de posições do vetor foi alcançado
		
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s0, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + (4 * i)
	lw t2, 0(t2) # Valor do vetor na posicao i
	
	add s2, s2, t2 # Somando a posição atual do vetor com o valor de i (total += i)
	
	addi t0, t0, 1 # Incrementando i
	
	j soma_vetor_loop # Retornando ao início do loop
	
soma_vetor_fim:
	# Define o valor de retorno
	add a0, zero, s2
	
	# Retirando registradores da Pilha - Pop
	lw s0, 0(sp)
	lw s1, 4(sp)
	lw s2, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	
	jalr ra, 0 # Retorna pro chamador
### End: Soma elementos do vetor ate a posicao informada

exit:
	addi a7, zero, 10 # Usa a diretir Exit (10)
	ecall

main:
	jal ra, solicita_input_tam_vetor # Chama a funcao para solicitar posicao do vetor
	add s0, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s0

	# Imprime: String texto_resultado
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_resultado # Carrega ao registrador a0 o texto_resultado
	ecall # Chama a syscall

	# Argumentos:
	#   a0 - endereço base do vetor
	#   a1 - número de posições do vetor
	# O vetor vai de 0 ate o 99 (max_tam - 1) para os valores dos elementos
	la a0, vetor # Carrega o endereco de memoria do vetor em a0
	add a1, zero, s0 # Define o tamanho do vetor e a posicao (index)
	jal ra, init_vetor # Chama init_vetor e define ra para a proxima linha
	
	# Argumentos:
	#   a0 - endereço base do vetor
	#   a1 - número de posições do vetor
	jal ra, soma_vetor # Chama soma_vetor e define ra para a proxima linha
	
	# Imprime: Int resultado da soma
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	ecall # Chama a syscall
	
	j exit # Sai do programa
