func:
        xorl    %eax, %eax
        cmpb    $0, (%rdi)
        je      .L27
.L26:
        addq    $1, %rdi
        addl    $1, %eax
        cmpb    $0, (%rdi)
        jne     .L26
.L27:
        retq
