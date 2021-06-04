# Code Sample 4
       testq   %rdx, %rdx
       je      .L3
       movq    %rdi, %rax
.L2:
       movb    %sil, (%rax)
       incq    %rax
       decq    %rdx
       jne     .L2
.L3:
       movq    %rdi, %rax
       ret
