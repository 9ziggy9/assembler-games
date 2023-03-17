section .data
    hello db "hello, world", 10 ; add a new line

section .text
    global _start

_start:
    ; write the string to stdout
    mov eax, 4          ; write system call
    mov ebx, 1          ; file descriptor (stdout)
    mov ecx, hello      ; string to write
    mov edx, 13         ; length of string
    int 0x80            ; call kernel

    ; exit the program with status code 0
    mov eax, 1          ; exit system call
    xor ebx, ebx        ; status code 0
    int 0x80            ; call kernel
