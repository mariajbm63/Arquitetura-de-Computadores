lw x11, a                        #carregando o caracter '*' no reg 11

loop:
	lb x10, 1025(x0)             #carregada cada byte de 1025 para reg 10
	sb x10, 1024(x0)             #escrreve cada byte em 1024

	beq x10, x11, Exit           #se o byte escrito for o caracter '*' sai do loop

	jal x0, loop

Exit:
	halt

a: .word 0x2A                    #caracter '*' em hexadecimal
