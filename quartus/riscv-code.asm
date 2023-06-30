.text
# Begin::Part_1
	addi t0, zero, 10
	addi t1, zero, 6
#	add s0, t0, t1
#	
#	addi t2, zero, -1234
#	slt t4, t0, t2
#	slt t5, t2, t0
# End::Part_1
	
# Begin::Part_2
	blt t1, t0, true_branch_1 # true
	add t0, t0, t1 # Linha nao executada
	addi t1, t0, 1234 # Linha nao executada
	
true_branch_1:
	bge t1, t0, false_branch_1 # false
	bne t0, t1, true_branch_2 # true
	addi s1, t0, 1 # Linha nao executada
	
false_branch_1: # Label nao executada
	sub s0, t0, t1 # Linha nao executada
		
true_branch_2:
	bge t1, t0, false_branch_3 # true
	bge t0, t1, true_branch_3 # false
	addi s1, t0, 1 # Linha nao executada
	
false_branch_3: # Label nao executada
	sub s0, t0, t1 # Linha nao executada
	
true_branch_3:
	beq t0, t1, false_branch_4 # false
	addi t1, t1, 4 # = 10
	beq t0, t1, true_branch_4 # true
	
false_branch_4: # Label nao executada
	sub s0, t0, t1 # Linha nao executada
	
true_branch_4:
	sub t0, t0, t1 # = 0
	addi s1, zero, 1 # = 1
# End::Part_2
