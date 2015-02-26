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
	mov r3, #-1	@pervios
	mov r4, #1	@result
	mov r5, #0	@i

.loop:
	
	add r6, r4, r3	@R6 = R4 + R3 sum=result+previous 
	mov r3, r4 	@previous = result
	mov r4, r6 	@result = sum
	subs r0, #1 	@i++

	ite lt
	movlt r0 ,r4
	bge .loop 	@when i<=x, continue the loop

	bx lr
	.size fibonacci, .-fibonacci
	.end
