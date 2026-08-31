#Considerando que f, g, h, i, j  estão armazenados respectivamente em x19, x20, x21, x22 e x23:
bne x22, x23, Else 
add x19, x20, x21
beq x0, x0, Exit
Else:
sub x19, x20, x21
Exit:
