.data 
out: .word 0xff
in: .word 0

.text
la a0, out
sw x0, 0(a0)	#store 0 in address out
addi t0, x0, 0xff
sw t0, 0(a0)
lw t0, 4(a0)
sw t0, 0(a0)
li t1, 0xf
li t2, 0xf0
add t0, t1, t2

li t2, 0xf
beq t1, t2, equal
jal exit

equal: 	
li t3, 0xee
jal exit

exit:
li a7, 10
ecall
