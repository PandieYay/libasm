bits 64
global ft_read
extern __errno_location

section .text
ft_read:
    mov rax, 0 ; syscall number for sys_read
    syscall
    test rax, rax ; Sets flags based on the return value of write, ZF is set if rax is zero, SF is set if rax is negative (most significant bit is 1)
    js .error
    ret

.error:
    neg rax
    push rax ; Save errno number first
    call __errno_location wrt ..plt ; Find errno address
    pop rcx
    mov [rax], rcx
    mov rax, -1
    ret
