# Code Sample 3
      movb    (%rsi), %al
      testb   %al, %al
      je      .L3
      incq    %rsi
.L2:
      movb    %al, (%rdi)
      incq    %rdi
      movb    (%rsi), %al
      incq    %rsi
      testb   %al, %al
      jne     .L2
.L3:
      movq    %rdi, %rax
      ret
