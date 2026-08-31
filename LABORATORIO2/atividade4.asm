addi x11, x0, 28              #pegando a primeira posição da memoria onde esta armazenado a string

loop: 
	lb x10, 0(x11)              #carregando o byte da primeira posição da string no reg 10
	beq x10, x0, Exit           #se chegou no \'0 sai do loop
	sb x10, 1024(x0)            #escreve o byte do reg 10 na memoria 1024

	addi x11, x11, 1            #incrementa no i para percorrer a string
	beq x0, x0, loop            #voltando ao loop

Exit: 
	halt

str1: .string "Hello World"
