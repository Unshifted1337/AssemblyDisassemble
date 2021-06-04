ensmallen:
 1.          movzbl  (%rsi),  %edx
 2.          testb   %dl, %dl
 3.          movb    %dl, (%rdi)
 4.          jne     .L22
 5.          jmp     .L23
 6.  .L18:
 7.          addq    $1, %rsi
 8.  .L22:
 9.          movzbl  (%rsi), %eax
10.          cmpb    %dl, %al
11.          je      .L18
12.          addq    $1, %rdi
13.          testb   %al, %al
14.          movb    %al, (%rdi)
15.          je      .L23
16.          movl    %eax, %edx
17.          jmp     .L22
18.  .L23:
19.          retq
