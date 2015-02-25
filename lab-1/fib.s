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
	@push { lr }
	mov r3, #-1	@pervios
	mov r4, #1	@result
	mov r5, #0	@i

.loop:
	
	add r6, r4, r3	@R6 = R4 + R3 sum=result+previous 
	mov r3, r4 	@previous = result
	mov r4, r6 	@result = sum
	add r5, #1 	@i++

	cmp r5, r0
	ite gt
	movgt r0 ,r4
	ble .loop 	@when i<=x, continue the loop

	@pop { pc }
	bx lr
	.size fibonacci, .-fibonacci
	.end
