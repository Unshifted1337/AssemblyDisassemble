f3:
    xorl    %eax, %eax
L13:
    cmpq    %rax, %rdx
    je      L15
    movb    (%rdi,%rax), %cl
    movb    (%rsi,%rax), %r8b
    movb    %r8b, (%rdi,%rax)
    movb    %cl, (%rsi,%rax)
    incq    %rax
    jmp     L13
L15:
    ret
