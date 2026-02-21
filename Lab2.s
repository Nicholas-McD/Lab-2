.section .data
word1:
    .asciz "foo"
word2:
    .asciz "bar"

.section .text
.global hammingDist   

hammingDist:
    lea word1(%rip), %rsi 
    lea word2(%rip), %rdi   
    xor %rax, %rax          

loop:
    movzbq (%rsi), %r8     
    movzbq (%rdi), %r9     

    test %r8, %r8           
    jz done
    test %r9, %r9           
    jz done

    xor %r8, %r9           
    popcnt %r9, %r10       
    add %r10, %rax        

    inc %rsi              
    inc %rdi                
    jmp loop

done:
    ret                    

.section .note.GNU-stack,"",@progbits
