_Z4buf1PKc:
        subq    $40, %rsp
        movq    %rdi, %rsi
        movq    %rsp, %rdi
        call    strcpy@PLT
        movq    %rsp, %rax
        addq    $40, %rsp
        ret
