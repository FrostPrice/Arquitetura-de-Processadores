.text
	jal zero, main

soma_parametro:
	addi sp, sp, -8
	sw t0, 8(sp)
	sw t1, 4(sp)

	add t0, a0, a1
	
	lw t1, 4(sp)
	lw t0, 8(sp)
	addi sp, sp, 8
	
	jalr ra, 0

main:
	addi a0, zero, 1
	addi a1, zero, 2
	addi t0, zero, 5
	addi t1, zero, 20
	jal ra, soma_parametro