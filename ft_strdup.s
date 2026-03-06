bits 64
global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

ft_strdup:
    push rdi ; Push string to stack
    call ft_strlen
    inc rax
    mov rdi, rax ; rdi = size of the string
    call malloc wrt ..plt
    test rax, rax ; rax is now new char *string
    js .error
    pop rsi
    mov rdi, rax ; destination string (malloc result)
    call ft_strcpy ; Takes rdi and rsi, copies string from rsi to rdi
    ret

.error:
    mov rax, 0 ; Return NULL on err
    ret
