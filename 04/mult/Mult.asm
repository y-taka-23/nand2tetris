    @R2
    M=0
(LOOP)
    @R1
    D=M
    @END
    D;JLE   // if R1 <= 0 then jump to END
    @R0
    D=M
    @R2
    M=M+D   // R2 <- R2 + R0
    @R1
    M=M-1   // R1 <- R1 - 1
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
