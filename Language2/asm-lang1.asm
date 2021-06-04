# Code Sample 1
       movq    %rdi, %rax
       testq   %rdx, %rdx
       je      .L2
       addq    %rdi, %rdx
       movq    %rdi, %rcx
.L3:
       addq    $1, %rcx
       movb    %sil, -1(%rcx)
       cmpq    %rdx, %rcx
       jne     .L3
.L2:
       rep ret
