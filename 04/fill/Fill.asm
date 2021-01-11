(LOOP)
    @SCREEN
    D=A
    @position
    M=D
    @KBD
    D=M
    @BLACK
    D;JNE   // if KBD != 0 then color <- black(-1) else color <- white(0)
(WHITE)
    @color
    M=0
    @FILL
    0;JMP
(BLACK)
    @color
    M=-1
    @FILL
    0;JMP
(FILL)
    @position
    D=M
    @24576  // SCREEN(16384) + 8192
    D=D-A
    @LOOP
    D;JGE   // if position >= SCREEN + 8192 then jump to LOOP
    @color
    D=M
    @position
    A=M
    M=D     // fill Memory[position] in the color
    @position
    M=M+1   // position <- position + 1
    @FILL
    0;JMP
