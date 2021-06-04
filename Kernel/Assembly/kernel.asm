__Z3vmlPmm:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rsi, %rax

        shrq    $36, %rax
        andl    $4088, %eax
        movq    (%rdi,%rax), %rax
        testb   $1, %al
        je      error

        andq    $-4096, %rax
        movq    %rsi, %rcx
        shrq    $27, %rcx
        andl    $4088, %ecx
        movq    (%rax,%rcx), %rax
        testb   $1, %al
        je      error

        andq    $-4096, %rax
        movq    %rsi, %rcx
        shrq    $18, %rcx
        andl    $4088, %ecx
        movq    (%rax,%rcx), %rax
        testb   $1, %al
        je      error

        andq    $-4096, %rax
        movq    %rsi, %rcx
        shrq    $9, %rcx
        andl    $4088, %ecx
        movq    (%rax,%rcx), %rax
        testb   $1, %al
        je      error

        andq    $-4096, %rax
        andl    $4095, %esi
        orq     %rax, %rsi
done:
        movq    %rsi, %rax
        popq    %rbp
        retq

error:
        xorl    %esi, %esi
        jmp     done
