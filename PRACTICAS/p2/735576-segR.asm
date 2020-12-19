	mov #0,r5
	mov #0,r2
	mov #1,r3
	mov #0,r1
	mov #33,r6
	mov #6,r0
	
bucle:
	add r3,r2,r2
	add r3,r1,r1
	nop
	nop
	ld (r2),r4
	nop
	nop
	nop
	add r4,r5,r5
	beq r1,r0,acabar
	nop
	beq r0,r0,bucle
	nop
	
acabar:
	mov #0,r0
	mov #0xffff,r1
	mov #79,r2
	mov #75,r3
	st r5,(r0)
	beq r5,r6,OK
	nop
	mov #78,r4
	mov #32,r5
	nop
	nop
	st r4,(r1)
	st r2,(r1)
	st r5,(r1)
	
OK:
	st r2,(r1)
	st r3,(r1)