.data 
out: .word 0xff
in: .word 0xff

.text
la a0, out	#auipc
sw x0, 0(a0)	#sw 0 in address out
addi x5, x0, 0xf0	#addi
lw x5, 4(a0)	#lw

li x6, 0xf
li x7, 0xf0
add x5, x6, x7	#add
sub x5, x6, x7  #sub

li x7, 0xf
beq x6, x7, equal  #beq
jal exit  #jal

equal: 	
li x7, 0xf0
blt x6, x7, lessthan #blt
jal exit

lessthan: 
la a0, exit
jalr a0 #jalr

exit:
li a7, 10
ecall