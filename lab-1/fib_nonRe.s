	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	movs r3, #0  //pervios
	subs r3, #1
	movs r4, #1			//result
	movs r5, #0			//i

.loop:
	
	adds r6, r4, r3 	// R6 = R4 + R3 sum=result+previous 
	movs r3, r4
	movs r4, r6
	adds r5, #1  //i++	
	cmp r5, r0
	ble .loop

	mov r0 ,r4

bx lr

	.size fibonacci, .-fibonacci
	.end
