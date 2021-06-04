f1:
    xorl    %eax, %eax
L2:
    movsbq  (%rdi), %rdx
    subq    $48, %rdx
    cmpq    $9, %rdx
    ja      L5
    imulq   $10, %rax, %rax
    incq    %rdi
    addq    %rdx, %rax
    jmp     L2
L5:
    ret
