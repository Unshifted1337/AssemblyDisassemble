f3:
       subq    $8, %rsp
       call    callfunc
       subl    $97, %eax
       cmpb    $4, %al
       ja      .L2
       movzbl  %al, %eax
       jmp     *.L4(,%rax,8)
.L4:
       .quad   .L3
       .quad   .L9
       .quad   .L6
       .quad   .L7
       .quad   .L8
.L3:
       movl    $42, %edx
       jmp     .L5
.L6:
       movl    $4096, %edx
       jmp     .L5
.L7:
       movl    $52, %edx
       jmp     .L5
.L8:
       movl    $6440, %edx
       jmp     .L5
.L2:
       movl    $0, %edx
       jmp     .L5
.L9:
       movl    $61, %edx
.L5:
       movl    $.LC0, %esi
       movl    $1, %edi
       movl    $0, %eax
       call    __printf_chk
       addq    $8, %rsp
       ret
.LC0:
       .string "Sum = %d\n"
