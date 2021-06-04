_Z3gcdjj:
        movl    %esi, %eax
        cmpl    %esi, %edi
        jne     .L3
        jmp     .L2
.L8:
        subl    %eax, %edi
        cmpl    %edi, %eax
        je      .L2
.L3:
        cmpl    %edi, %eax
        jb      .L8
        subl    %edi, %eax
        cmpl    %edi, %eax
        jne     .L3
.L2:
        ret
