.global _start

.section .data
hello:
    .ascii "Hello, World!\n"
hello_len = . - hello

.section .text
_start:
    @ write(1, hello, hello_len)
    mov r0, #1       @ file descriptor (stdout)
    ldr r1, =hello   @ pointer to the message
    ldr r2, =hello_len @ message length
    mov r7, #4       @ syscall number for write
    swi 0            @ make the system call

exit:
    mov r0, #0       @ status code
    mov r7, #1       @ syscall number for exit
    swi 0            @ make the system call
