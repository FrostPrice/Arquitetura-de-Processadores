.text
jal zero, main # executa a main

mdc_rec:
        addi sp, sp, -4 # Insere 1 itens na pilha
        sw ra, 0(sp) # - push ra

        bgt a1, a2, if_maior # se x > y, vai para if_maior   
        blt a1, a2, if_menor # se x < y, vai para if_menor
        beq a1, a2, if_igual # se x === y, sai da funcao

if_igual:
        add a3, zero, a1 # return x

        lw ra, 0(sp) # - pop ra
        
        jalr ra, 0 # Retorna para main na chamada dessa funcao
        addi sp, sp, 4 # Remove 1 itens na pilha
        
if_maior:
        sub a1, a1, a2  # x = x - y
        
        lw ra, 0(sp) # - pop ra
        
        j mdc_rec  # Chama mdc(x - y, y)
        addi sp, sp, 4 # Remove 1 itens na pilha

if_menor:
	sub a2, a2, a1 # y = y - x
	
	lw ra, 0(sp) # - pop ra
	
        j mdc_rec  # Chama mdc(x, y - x)
        addi sp, sp, 4 # Remove 1 itens na pilha
        
main:
	addi a1, zero, 51
	addi a2, zero, 2
	jal ra, mdc_rec
	
	# Imprime: Int 
	addi a7, zero, 1
	add a0, zero, a3
	ecall
