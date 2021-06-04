_Z4xxx2P4nodem:
.L28:
    testq   %rdi, %rdi
    je  .L30
    movq    (%rdi), %rax
    cmpq    %rsi, %rax
    je  .L35
    cmpq    %rax, %rsi
    jnb .L27
    movq    16(%rdi), %rdi
    jmp .L28
.L27:
    movq    24(%rdi), %rdi
    jmp .L28
.L30:
    xorl    %eax, %eax
    ret
.L35:
    movq    8(%rdi), %rax
    ret
