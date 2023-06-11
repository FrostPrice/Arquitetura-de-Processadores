.data
	sinal_mais: .asciz " + "
	sinal_igual: .asciz " = "
	texto_1: .asciz "\nValor passado por parametro: "
.text

jal zero, main

func_soma:
	# Push
	addi sp, sp, -4
	sw a0, 0(sp)

	add t1, zero, a0

	addi a7, zero, 1
	ecall
	
	addi a7, zero, 4
	la t0, sinal_mais
	add a0, zero, t0
	ecall
	
	addi a7, zero, 1
	addi a0, zero, 2
	ecall
	
	addi a7, zero, 4
	la t0, sinal_igual
	add a0, zero, t0
	ecall
	
	addi a7, zero, 1
	addi a0, t1, 2
	ecall
	
	# Pop
	lw a0, 0(sp)
	addi sp, sp, 4
	
	jalr ra

main:
	addi a0, zero, 5
	
	jal ra, func_soma	
	
	add t1, zero, a0
	
	addi a7, zero, 4
	la t0, texto_1
	add a0, zero, t0
	ecall
	
	add a0, zero, t1
	addi a7, zero, 1
	ecall