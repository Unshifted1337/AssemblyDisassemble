f2:
       pushq   %rbx
       xorl    %ebx, %ebx
.L3:
       movl    %ebx, %edi
       addl    $1, %ebx
       call    callfunc
       cmpl    $10, %ebx
       jne     .L3
       popq    %rbx
       ret
