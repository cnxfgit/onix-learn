[bits 32]

extern exit

global main

test:
    ret

main:

    call test

    push 0 ; 传递参数
    call exit