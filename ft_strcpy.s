bits 64
global ft_strcpy

section .text
ft_strcpy:
    xor rax, rax

.copy:
    mov dl, BYTE [rsi + rax]
    mov BYTE [rdi + rax], dl
    inc rax
    cmp dl, 0
    jne .copy
    mov rax, rdi
    ret