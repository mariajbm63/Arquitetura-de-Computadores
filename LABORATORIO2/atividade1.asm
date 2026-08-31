lw x10, a
lw x11, b
add x12, x0, x10 # m recebe a
sw x12, m
blt x11, x12, SOMA
jal x0, FIM
SOMA: 
add x12, x10, x11
sw x12, m
FIM:
halt

a: .word 0x0014
b: .word 0x0007
m: .word 0x0000
