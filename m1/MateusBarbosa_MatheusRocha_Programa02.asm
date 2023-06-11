# Disciplina: Arquitetura e Organização de Computadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 02
# Grupo: - Mateus Barbosa
#	 - Matheus de Oliveira Rocha

.data # Segmento de Dados
	Vetor_Dias: .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
 			  0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
	mask: .word 0x00000001
	texto_input_aula: .asciz "\nEntre com o número da aula (de 0 a 15): "
	texto_input_aluno: .asciz "\nEntre com o número do aluno (de 0 a 31):"
	texto_input_registro: .asciz "\nEntre com o tipo do registro (presença = 1; ausência = 0): "
	texto_valor_invalido: .asciz "\nValor Inválido"
	max_aula: .word 15
	max_aluno: .word 31
	max_registro: .word 1
	
.text # Segmento de Codigo
	
main: # Função usada como ponto de partida do código, e retorno de loops
	lw t0, mask # Carrega a mascara de bits no registrador t0
	la s0, Vetor_Dias # Carrega o Vetor_dias no registrador s0
	j loop_define_aula
	
loop_define_aula:
	# Imprime: String texto_input_aula
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_aula # Carrega ao registrador a0 o texto_input_max_tam
	ecall # Chama a syscall
	
	# Solicita: Int numero da aula
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s1, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s1
	
	bge s1, zero, if_aula_maior_que # Se o valor de s1 for maior ou igual que 0, vai para a função if_maior_que

	j loop_define_aula # "Pula" para a função loop_define_aula
	
if_aula_maior_que:
	lw t1, max_aula
	ble s1, t1, loop_define_aluno # Se o valor de s1 for menor ou igual que max_aluno, vai para a função loop_define_aluno
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j loop_define_aula # "Pula" para a função loop_define_aluno
	
loop_define_aluno:
	# Imprime: String texto_input_aluno
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_aluno # Carrega ao registrador a0 o texto_input_max_tam
	ecall # Chama a syscall
	
	# Solicita: Int numero da aluno
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s2, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s2
	
	bge s2, zero, if_aluno_maior_que # Se o valor de s2 for maior ou igual que 0, vai para a função if_aluno_maior_que
	
	j loop_define_aluno # "Pula" para a função loop_define_aluno
	
if_aluno_maior_que:
	lw t1, max_aluno
	ble s2, t1, loop_define_registro # Se o valor de s2 for menor ou igual que max_aluno, vai para a função loop_define_registro
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j loop_define_aluno # "Pula" para a função loop_define_aluno
	
loop_define_registro:
	# Imprime: String texto_input_aluno
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_input_registro # Carrega ao registrador a0 o texto_input_registro
	ecall # Chama a syscall
	
	# Solicita: Int numero da aluno
	addi a7, zero, 5 # Adiciona o valor 5 (ReadInt) ao registrador de serviço a7
	ecall # Chama a syscall
	add s3, zero, a0 # O que foi digitado no console (registrador a0), é salvo no registrador s3
	
	bge s3, zero, if_registro_maior_que # Se o valor de s3 for maior ou igual que 0, vai para a função if_registro_maior_que
	
	j loop_define_registro # "Pula" para a função loop_define_presenca
	
if_registro_maior_que:
	lw t1, max_registro
	ble s3, t1, presenca_ou_ausencia # Se o valor de s3 for menor ou igual que max_registro, vai para a função presenca_ou_ausencia
	
	# Imprime: String valor_invalido 
	addi a7, zero, 4 # Adiciona o valor 4 (PrintString) ao registrador de serviço a7
	la a0, texto_valor_invalido # Carrega ao registrador a0 o valor_invalido
	ecall # Chama a syscall
	
	j loop_define_registro # "Pula" para a função loop_define_presenca

presenca_ou_ausencia:
	sll t2, t0, s2 # Desloca para a mascara (t0) esquera de acordo com o numero do aluno (s2)

	slli t3, s1, 2 # Move 2 bits para a esquerda de acordo com o dia: 4 * dia
	add t4, s0, t3 # Calcula a posicao no Vetor_Dias desde o seu comeco: comeco_do_Vetor + (4 * dia)
	
	lw t5, 0(t4) # Armazena em t5 o valor dos bits do dia informado (t4) com offset de 0 bits

	beq s3, zero, ausencia # Se for 0, esta ausente
	beq s3, t1, presenca # Se for 1 (max_registro), esta presente
	j exit # Tratamento de error, nunca devera cair nesse jump, devido as validacoes anteriores

ausencia:
	not t2, t2 #Inverte a mascara
	and t6, t5, t2 # Altera o bit do aluno usando a mascara (t2) usando and
	sw t6, 0(t4) # Armazena os bites com a alteracao da mascara na posicao do Vetor_Dias
	
	j main

presenca:
	or t6, t5, t2 # Altera o bit do aluno usando a mascara (t2) usando or
	sw t6, 0(t4) # Armazena os bites com a alteracao da mascara na posicao do Vetor_Dias

	j main

exit:
	addi a7, zero, 10 # Usa a diretriz Exit (10)
	ecall
