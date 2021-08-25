

    ORG $0080

OUTPUT  EQU $D37F 

        LDA #'X
        LBSR OUTPUT

        RTS
    
    END 
