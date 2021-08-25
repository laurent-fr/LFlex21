    ; CONSOLE I/O DRIVER PACKAGE
    ;
    ; COPYRIGHT (C) 1980 BY
    ; TECHNICAL SYSTEMS CONSULTANTS, INC.
    ; 111 PROVIDENCE RD, CHAPEL HILL, NC 27514
    ;
    ; CONTAINS ALL TERMINAL I/O DRIVERS AND INTERRUPT HANDLING
    ; INFORMATION. THIS VERSION IS FOR A SWTPC SYSTEM USING
    ; A SBUG MONITOR AND THE MF-68 MINIFLOPPY SYSTEM. THE
    ; INTERRUPT TIMER ROUTINES ARE FOR A SWTPC MP-T TIMER
    ; CARD ADDRESSED AT $E012.
    ; SYSTEM EQUATES

CHPR EQU $C700 ; CHANGE PROCESS ROUTINE
TMPIA EQU $E012 ; TIMER PIA ADDRESS
ACIA EQU $E808 ; ACIA ADDRESS


    ; *
    ;**************************************************
    ; ACTUAL ROUTINES START HERE
    ;*****************************

    ORG $D370

    ; TERMINAL INITIALIZE ROUTINE

INIT    
        RTS

    ; TERMINAL INPUT CHAR. ROUTINE - NO ECHO

INNECH  LDA ACIA        ; GET ACIA STATUS 
        ANDA #$01            ; A CHARACTER PRESENT? 
        BEQ INNECH      ; LOOP IF NOT 
        LDA ACIA+1      ; GET THE CHARACTER 
        ANDA #$7F       ; STRIP PARITY 
        RTS

    ; TERMINAL INPUT CHAR. ROUTINE - W/ ECHO

INPUT   BSR INNECH

    ; TERMINAL OUTPUT CHARACTER ROUTINE

OUTPUT  PSHS A          ; SAVE CHARACTER 
OUTPU2  LDA ACIA        ; TRANSMIT BUFFER EMPTY? 
        ANDA  #$02 
        BEQ OUTPU2      ; WAIT IF NOT 
        PULS A          ; RESTORE CHARACTER 
        STA ACIA+1      ; OUTPUT IT 
        RTS

    ; TERMINAL STATUS CHECK (CHECK FOR CHARACTER HIT)

STATUS  PSHS A          ; SAVE A REG. 
        LDA ACIA        ; GET STATUS 
        ANDA #$01       ; CHECK FOR CHARACTER 
        PULS A          ; RESTORE A REG. 
        RTS

    ; TIMER INITIALIZE ROUTINE

TINT     
        RTS

    ; TIMER ON ROUTINE

TON 
        RTS
 
    ; TIMER OFF ROUTINE

TOFF    
        RTS
 
    ; IRQ INTERRUPT HANDLER ROUTINE

IHND 
        RTS


    ;**************************************************
    ; *
    ; I/O ROUTINE VECTOR TABLE *
    ; *

    ORG $D3E5  ; TABLE STARTS AT $D3E5 ;

; *

INCHNE  FDB INNECH      ; INPUT CHAR - NO ECHO ;
IHNDLR  FDB IHND        ; IRQ INTERRUPT HANDLER ;
SWIVEC  FDB $DFC2       ; SWI3 VECTOR LOCATION ;
IRQVEC  FDB $DFC8       ; IRQ VECTOR LOCATION ;
TMOFF   FDB TOFF        ;  TIMER OFF ROUTINE ;
TMON    FDB TON         ; TIMER ON ROUTINE ;
TMINT   FDB TINT        ; TIMER INITIALIZE ROUTINE ;
MONITR  FDB $F814       ; MONITOR RETURN ADDRESS ;
TINIT   FDB INIT        ; TERMINAL INITIALIZATION ;
STAT    FDB STATUS      ; CHECK TERMINAL STATUS ;
OUTCH   FDB OUTPUT      ; TERMINAL CHAR OUTPUT ;
INCH    FDB INPUT       ; TERMINAL CHAR INPUT ;
 
    END 