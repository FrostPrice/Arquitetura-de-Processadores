.data

coutx: .asciz "Informe x (1 < x <= 8): "

 

.text

 

#IMPRIMIR UMA STRING

addi a7, zero, 4# a7 = 4

la a0, coutx# a0 = string do coutx

ecall

 

#LER UM INTEIRO

addi a7, zero, 5# a7 = 5

ecall

add t0, zero, a0