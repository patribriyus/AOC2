	mov #0,r5
	mov #6,r0
	mov #0,r1
	mov #0,r2
	mov #1,r3
	mov #33,r6
	
bucle:
	add r3,r2,r2
	ld (r2),r4
	add r4,r5,r5
	add r3,r1,r1
	beq r1,r0,acabar
	beq r0,r0,bucle
	
acabar:
	mov #0,r0
	st r5,(r0)
	mov #0xffff,r1
	mov #79,r2
	mov #75,r3
	beq r5,r6,OK
	mov #78,r4
	mov #32,r5
	st r4,(r1)
	st r2,(r1)
	st r5,(r1)
	
OK:
	st r2,(r1)
	st r3,(r1)