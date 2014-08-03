	.syntax unified
.arch armv7-a
.text

.equ locked, 1
.equ unlocked, 0

.global lock_mutex
.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW
ldr r2, =locked @ locked value	into temp reg

 .loop: @loop
ldrex r1, [r0] @ lrdex from [r0]
cmp r1, #unlocked @ cmp to unlocked value
bne .loop @if it's locked,continue the loop
str r2, [r0]



        @ END CODE INSERT
bx lr

.size lock_mutex, .-lock_mutex

.global unlock_mutex
.type unlock_mutex, function
unlock_mutex:
@ INSERT CODE BELOW
ldr r2, =unlocked @ load locked value
str r2, [r0] @ store r2 content into r0
bx lr
        @ END CODE INSERT
bx lr
.size unlock_mutex, .-unlock_mutex

.end
