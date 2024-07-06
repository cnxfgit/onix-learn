[bits 32]

section .text

global inb
inb:
    push ebp
    mov ebp, esp ; 保存栈帧

    xor eax, eax
    mov edx, [ebp + 8] ; port
    in al, dx ; 端口号输入到ax

    jmp $+2
    jmp $+2
    jmp $+2

    leave
    ret

global outb
outb:
    push ebp
    mov ebp, esp ; 保存栈帧

    mov edx, [ebp + 8] ; port
    mov eax, [ebp + 12] ; value
    out dx, al  ; al 的值输出到端口号 dx

    jmp $+2
    jmp $+2
    jmp $+2

    leave
    ret

global inw
inw:
    push ebp
    mov ebp, esp ; 保存栈帧

    xor eax, eax
    mov edx, [ebp + 8] ; port
    in ax, dx ; 端口号输入到ax

    jmp $+2
    jmp $+2
    jmp $+2

    leave
    ret

global outw
outw:
    push ebp
    mov ebp, esp ; 保存栈帧

    mov edx, [ebp + 8] ; port
    mov edx, [ebp + 12] ; value
    out dx, ax  ; al 的值输出到端口号 dx

    jmp $+2
    jmp $+2
    jmp $+2

    leave
    ret