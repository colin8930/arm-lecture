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
<<<<<<< HEAD
ldr r1, [r0] @ lrdex from [r0]
cmp r1, #unlocked   @ cmp to unlocked value

streq r1, r2 , [r0]   @strex if equal
=======
ldrex r1, [r0] @ lrdex from [r0]
cmp r1, #unlocked   @ cmp to unlocked value

strexeq r1, r2 , [r0]   @strex if equal
>>>>>>> b1cdc88c60eabdae0a14d5b10b65f911c2df17f5
cmpeq r1,#0

bne .loop @goto loop


        @ END CODE INSERT
bx lr

.size lock_mutex, .-lock_mutex

.global unlock_mutex
.type unlock_mutex, function
unlock_mutex:
@ INSERT CODE BELOW
ldr r2, =unlocked @ load locked value
str r2, [r0] @ store r2 content into r0
<<<<<<< HEAD
bx lr
=======

>>>>>>> b1cdc88c60eabdae0a14d5b10b65f911c2df17f5
        @ END CODE INSERT
bx lr
.size unlock_mutex, .-unlock_mutex

.end
