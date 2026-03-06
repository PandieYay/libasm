bits 64

global ft_strlen

section .text
ft_strlen:
    xor rax, rax

.count:
    cmp BYTE [rdi + rax], 0
    je .end_count
    inc rax
    jmp .count

.end_count:
    ret
