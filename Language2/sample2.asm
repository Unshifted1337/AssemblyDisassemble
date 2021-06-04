# Code Sample 2
       movq    %rdi, %rax
       testq   %rdx, %rdx
       je      .L2
       addq    %rdi, %rdx
       movq    %rdi, %rcx
.L3:
       addq    $1, %rcx
       addq    $1, %rsi
       movzbl  -1(%rsi), %r8d
       movb    %r8b, -1(%rcx)
       cmpq    %rdx, %rcx
       jne     .L3
.L2:
       rep ret
