f1:
       subq    $8, %rsp
       call    callfunc
       movl    %eax, %edx
       leal    1(%rax,%rax,2), %eax
       testb   $1, %dl
       jne     .L3
       movl    %edx, %eax
       shrl    $31, %eax
       addl    %edx, %eax
       sarl    %eax
.L3:
       addq    $8, %rsp
       ret
