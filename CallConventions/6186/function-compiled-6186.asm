f:
    sub $24, %rsp
    movq %ra, (%rsp)
    mov %rb, %rx
    shl $1, %rx
    add $1, %rx
    movl (%ra, %rx, 4), %ra
    call g
    add %rb, %rr
    movq (%rsp), %ra
    movl (%ra, %rr, 4), %ra
    mov %ra, %rr
    add $24, %rsp
    ret
