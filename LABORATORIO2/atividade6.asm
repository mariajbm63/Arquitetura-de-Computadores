addi x11, x0, 1                         #começa no 1
addi x12, x0, 32                        #GPIO 7

sb x11, 1029(x0)                        #acende o LED 2

loop:
    lb x10, 1026(x0)                    #lê o botão
    andi x10, x10, 1                    #pega o bit do botão

    beq x10, x0, loop                   #se botão não pressionado, volta para o loop

    beq x11, x12, Exit                  #se chegou no LED 7, para

	  #botão foi pressionado
    slli x11, x11, 1                    #desloca 1 bit para esquerda

    sb x11, 1029(x0)                    #atualiza os LEDs

off:
    lb x10, 1026(x0)                    #lê o botão novamente
    andi x10, x10, 1

    bne x10, x0, off                    #espera o botão ser solto

    jal x0, loop

Exit:
    halt
