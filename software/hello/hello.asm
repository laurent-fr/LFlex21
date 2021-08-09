

PTM     EQU     $E800
ACIA    EQU     $E808

	; PTM ACCESS DEFINITIONS
PTMSTA  EQU     PTM+1           ; READ STATUS REGISTER
PTMC13  EQU     PTM             ; CONTROL REGISTERS 1 AND 3
PTMC2   EQU     PTM+1           ; CONTROL REGISTER 2
PTMTM1  EQU     PTM+2           ; LATCH 1
PTMTM2  EQU     PTM+4           ; LATCH 2
PTMTM3  EQU     PTM+6           ; LATCH 3

	; ACIA

RSET   EQU   ACIA                  ; state
RSCR   EQU     ACIA
RSRD   EQU    ACIA+1                 ; rx
RSTD   EQU    ACIA+1                  ; tx

STACK   EQU     $0100


    ORG $E000 ; start of eprom

    FCB 0    

    ORG $F000 

RESET           ; start of code

    LDS STACK   ; setup system stack

    ; setup PTM
    LDA #$93    ; CRX7=1 : Tx output Enabled
                ; CRX6=0 : IRQ masked
                ; CRX5-3=010 : continuous wave
                ; CRX2=0 : 16 bit timer
                ; CRX1=1 : clk=E
                ; CRX20=1 : select CR1
    STA PTMC2 
    LDD #2
    STD PTMTM2 
    CLRA        ; CRX10=0 : ready to operate
    STA PTMC13 

    ; setup ACIA
    LDA #%00000011 ; master reset
    STA RSCR
    LDA #%00010101 ; no int, rts=0, 8n1, /16
    STA RSCR 

    ; Hello Message
    LDX #MSG 
    BSR OUTSTR



PROMPT
   
   LDA #'? ; prompt

ECHOLOOP
        BSR OUTCH
        BSR INCH
        BRA ECHOLOOP


OUTCH   LDB RSET 
        BITB #%00000010
        BEQ OUTCH 
        STA RSTD
        RTS

INCH    LDB RSET
        LSRB
        BCC INCH 
        LDA RSRD 
        RTS

OUTSTR  LDA ,X+
        BEQ OUTSTRE
        JSR OUTCH
        BRA OUTSTR
OUTSTRE RTS 

MSG 
        FCB 27
        FCC /[2J/
        FCC /Hello, World!/
        FCB 13
        FCB 10
        FCB 0

    ORG $FFFE

        FDB RESET ; reset vector

    END
