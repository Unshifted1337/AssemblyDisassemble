f2:
    movq    %rdi, %rax
L7:
    cmpb    $0, (%rax)
    je      L9
    incq    %rax
    jmp     L7
L9:
    cmpq    %rax, %rdi
    jnb     L11
    decq    %rax
    movb    (%rdi), %cl
    incq    %rdi
    movb    (%rax), %dl
    movb    %cl, (%rax)
    movb    %dl, -1(%rdi)
    jmp     L9
L11:
    ret
