bits 64
global ft_strcmp

section .text
ft_strcmp:
    xor rax, rax
    xor rdx, rdx
    xor rcx, rcx

.loop:
    mov dl, BYTE [rdi + rax] ; s1
    mov cl, BYTE [rsi + rax] ; s2
    cmp dl, cl
    jne .end_loop
    cmp dl, 0
    je .end_loop
    cmp cl, 0
    je .end_loop
    inc rax
    jmp .loop
.end_loop:
    sub rdx, rcx
    mov rax, rdx
    ret