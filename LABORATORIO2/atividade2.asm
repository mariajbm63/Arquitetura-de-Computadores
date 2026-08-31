lw x10, a
lw x11, b
addi x12, x0, 0 # m = 0
blt x11, x12, SOMA
sub x12, x10, x11
jal x0, SALVA
SOMA: 
add x12, x10, x11
SALVA:
sw x12, m
halt

a: .word 6
b: .word 15
m: .word 0
