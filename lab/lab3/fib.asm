.data 
out: .word 0
in: .word 2

.text
li t1, 1
li t2, 2
la a0, out
lw t3, 4(a0)
beq t1, t3, first
beq t2, t3, second
addi t3, t3, -2
loop:
add t4, t1, t2
addi t1, t2, 0
addi t2, t4, 0
addi t3, t3, -1
bgtz t3, loop
sw t4, 0(a0)
jal exit 

first:
sw t1, 0(a0)
jal exit

second:
sw t2, 0(a0)
jal exit

exit:
li a7, 10
ecall
