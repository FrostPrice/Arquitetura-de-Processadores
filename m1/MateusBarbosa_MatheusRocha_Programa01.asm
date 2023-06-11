# Disciplina: Arquitetura e Organização de Computadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 01
# Grupo: - Mateus Barbosa
#	 - Matheus de Oliveira Rocha

.data # Segmento de Dados
	Vetor_A: .word 0, 0, 0, 0, 0, 0, 0, 0 # Inicializa um vetor com 8 posições com o valor 0
	Vetor_B: .word 0, 0, 0, 0, 0, 0, 0, 0 # Inicializa um vetor com 8 posições com o valor 0
	max_tam: .word 8
	min_tam: .word 1
	texto_input_max_tam: .asciz "\nEntre com o tamanho dos vetores (máx = 8): "
	texto_valor_invalido: .asciz "\nValor inválido!\n"
	texto_input_Vetor_A: .asciz "\nVetor_A["
	texto_input_Vetor_B: .asciz "\nVetor_B["
	texto_fecha_index: .asciz "] = " # Essa string será usada para evitar ter que fazer algo muito trabalhoso para adicionar o número do contador
	
.text # Segmento de Código

	lw t0, min_tam
	lw t1, max_tam
	la s10, Vetor_A # Carrega o Vetor_A no registrador s10 
	la s11, Vetor_B # Carrega o Vetor_B no registrador s11 

loop_define_vetor_tam:
	# Imprime: String texto_input_max_tam
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_max_tam # Carrega ao registrador a0 o texto_input_max_tam
	ecall # Chama a syscall
	
	# Solicita: Int tamanho do vetor
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s0, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s0
	
	bge s0, t0, if_maior_que # Se o valor de s0 (sem sinal) for maior que 1, vai para a função if_maior_que
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j loop_define_vetor_tam # "Pula" para a função loop_define_vetor_tam

if_maior_que: # Função que verifica se o valor informado é menor que tam
	ble s0, t1, define_Vetor_A_contador # Se o valor de s0 (sem sinal) for menor que max_tam, vai para a função loop_preenche_vetor_A
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j loop_define_vetor_tam # "Pula" para a função loop_define_vetor_tam
		
define_Vetor_A_contador: 
	li t0, 0 # Define o counter para o valor 0
	la t1, texto_input_Vetor_A # Carrega o texto texto_input_vetor_A no registrador t1
	j loop_preenche_Vetor_A # Executa a função loop_preenche_Vetor_A
		
loop_preenche_Vetor_A:
	bge t0, s0, define_Vetor_B_contador # Se o contador foi maior que o tamanho informado pelo usuario, sai do loop

	# Imprime: String texto_input_vetor_A
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_Vetor_A # Carrega ao registrador a0 o texto_input_vetor_A
	ecall # Chama a syscall
	
	# Imprime: Int contador ou i
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	add a0, zero, t0 # Carrega ao registrador a0 o contador
	ecall # Chama a syscall
	
	# Imprime: String texto_fecha_index
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_fecha_index # Carrega ao registrador a0 o texto_fecha_index
	ecall # Chama a syscall
	
	# Solicita: Int valor na posição atual
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s1, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s0
	
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s10, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + (4 * i)
	
	# Adiciona o valor na posiocao calculada do Vetor_A
	sw s1, 0(t2) # Guarda o valor informado pelo usuario no s1, com um offset de 0 bits, no Vetor_A (s10)
	
	addi t0, t0, 1 # Incrementa o contador: i = i + 1
	j loop_preenche_Vetor_A # "Reinicia" o loop

define_Vetor_B_contador: 
	li t0, 0 # Define o counter para o valor 0
	la t1, texto_input_Vetor_B # Carrega o texto texto_input_vetor_B no registrador t1
	j loop_preenche_Vetor_B # Executa a função loop_preenche_Vetor_B
  
loop_preenche_Vetor_B:
	bge t0, s0, troca_valores_vetor # Se o contador foi maior que o tamanho informado pelo usuario, sai do loop
	
	# Imprime: String texto_input_vetor_B
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_Vetor_B # Carrega ao registrador a0 o texto_input_vetor_B
	ecall # Chama a syscall
	 
	# Imprime: Int contador ou i
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	add a0, zero, t0 # Carrega ao registrador a0 o contador
	ecall # Chama a syscall
	  
	# Imprime: String texto_fecha_index
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_fecha_index # Carrega ao registrador a0 o texto_fecha_index
	ecall # Chama a syscall
	  
	# Solicita: Int valor na posição atual
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s1, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s0
	    
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s11, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + 4 * i
	  
	# Adiciona o valor na posiocao calculada do Vetor_A
	sw s1, 0(t2) # Guarda o valor informado pelo usuario no s1, com um offset de 0 bits, no Vetor_B (s11)
	  
	addi t0, t0, 1 # Incrementa o contador: i = i + 1
	j loop_preenche_Vetor_B # "Reinicia" o loop
	
troca_valores_vetor:
	li t0, 0
	j loop_troca_valores_vetor

loop_troca_valores_vetor:
	bge t0, s0, print_Vetor_A # Se o contador foi maior que o tamanho informado pelo usuario, sai do loop
	
	# Calcula a posicao no Vetor_A (s10)
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s10, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + 4 * i
	
	lw t3, 0(t2) # Carrega no registrador t3 (auxiliar), sem offset de bits, o conteudo do Vetor_A na posicao atual
	
	# Calcula a posicao no Vetor_B (s11)
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t4, s11, t1 # Calcula a posicao no Vetor_B desde o seu comeco: comeco_do_Vetor + 4 * i
	
	lw t5, 0(t4) # Carrega no registrador t4, sem offset de bits, o conteudo do Vetor_B na posicao atual
	sw t5, 0(t2) # Vetor_B[i] = Vetor_A[i] 
	sw t3, 0(t4) # Vetor_A[i] = Vetor_B[i] 
	
	addi t0, t0, 1 # Incrementa o contador: i = i + 1
	j loop_troca_valores_vetor # "Reinicia" o loop
	
print_Vetor_A:
	li t0, 0
	j loop_print_Vetor_A

loop_print_Vetor_A:
	bge t0, s0, print_Vetor_B # Se o contador foi maior que o tamanho informado pelo usuario, sai do loop
	
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s10, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + 4 * i

	# Imprime: String texto_input_vetor_A
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_Vetor_A # Carrega ao registrador a0 o texto_input_vetor_A
	ecall # Chama a syscall
	
	# Imprime: Int contador ou i
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	add a0, zero, t0 # Carrega ao registrador a0 o contador
	ecall # Chama a syscall
	
	# Imprime: String texto_fecha_index
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_fecha_index # Carrega ao registrador a0 o texto_fecha_index
	ecall # Chama a syscall
	
	# Imprime: Int valor na posição atual
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	lw a0, 0(t2) # Adciciona ao registrador a0, o valor daquela posicao do vetor
	ecall # Chama a syscall
	
	addi t0, t0, 1 # Incrementa o contador: i = i + 1
	j loop_print_Vetor_A # "Reinicia" o loop
	
print_Vetor_B:
	li t0, 0
	j loop_print_Vetor_B

loop_print_Vetor_B:
	bge t0, s0, exit # Se o contador foi maior que o tamanho informado pelo usuario, sai do loop
	
	slli t1, t0, 2 # Move 2 bits para a esquerda: 4 * i
	add t2, s11, t1 # Calcula a posicao no Vetor_A desde o seu comeco: comeco_do_Vetor + 4 * i

	# Imprime: String texto_input_vetor_A
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_Vetor_B # Carrega ao registrador a0 o texto_input_vetor_B
	ecall # Chama a syscall
	
	# Imprime: Int contador ou i
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	add a0, zero, t0 # Carrega ao registrador a0 o contador
	ecall # Chama a syscall
	
	# Imprime: String texto_fecha_index
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_fecha_index # Carrega ao registrador a0 o texto_fecha_index
	ecall # Chama a syscall
	
	# Imprime: Int valor na posição atual
	addi a7, zero, 1 # Adiciona o valor 1 (PrintInt) ao registrador de serviço a7
	lw a0, 0(t2) # Adciciona ao registrador a0, o valor daquela posicao do vetor
	ecall # Chama a syscall
	
	addi t0, t0, 1 # Incrementa o contador: i = i + 1
	j loop_print_Vetor_B # "Reinicia" o loop
	
exit:
	addi a7, zero, 10 # Usa a diretir Exit (10)
	ecall
