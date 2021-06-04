f4:
       subq    $40, %rsp
       movl    $1, (%rsp)
       movl    $0, 16(%rsp)
.L2:
       leaq    16(%rsp), %rsi
       movq    %rsp, %rdi
       call    callfunc
       movl    16(%rsp), %eax
       cmpl    %eax, (%rsp)
       jne     .L2
       addq    $40, %rsp
       ret
