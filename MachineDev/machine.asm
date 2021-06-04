cmpq %rdi, %rsi
decq %rsi
incq %rax
je L1
jl L2
jmp L3
movl (%rdi,%rax,4), %edi
retq
xchgq %rax, %rcx
xorq %rax, %rax
