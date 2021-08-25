
    ; EQUATES

STACK   EQU $C07F
SCTBUF  EQU $C300   ; DATA SECTOR BUFFER
PIA     EQU $E810

    ORG $C100

LOAD    BRA LOAD0

        FCB 0,0,0 
TRK     FCB $07         ; FILE START TRACK 
SCT     FCB $04         ; FILE START SECTOR 
DNS     FCB 0           ; DENSITY FLAG 
TADR    FDB $c100       ; TRANSFER ADDRESS 
LADR    FDB 0           ; LOAD ADDRESS

LOAD0   LDS #STACK      ; SETUP STACK 
        LDD TRK         ; SETUP STARTING TRK & SCT
        STD SCTBUF 
        LDY #SCTBUF+256

    ; PERFORM ACTUAL FILE LOAD

LOAD1   BSR GETCH       ; GET A CHARACTER 
        CMPA #$02       ; DATA RECORD HEADER? 
        BEQ LOAD2       ; SKIP IF SO 
        CMPA #$16       ; XFR ADDRESS HEADER? 
        BNE LOAD1       ; LOOP IF NEITHER 
        BSR GETCH       ; GET TRANSFER ADDRESS 
        STA TADR 
        BSR GETCH 
        STA TADR+1 
        BRA LOAD1       ; CONTINUE LOAD 
LOAD2   BSR GETCH       ; GET LOAD ADDRESS 
        STA LADR 
        BSR GETCH 
        STA LADR+1
        BSR GETCH       ; GET BYTE COUNT 
        TFR A,B         ; PUT IN B
        TSTA            ; TFR A,B + TSTA = TAB 
        BEQ LOAD1       ; LOOP IF COUNT=0 
        LDX LADR        ; GET LOAD ADDRESS 
LOAD3   PSHS B,X 
        BSR GETCH       ; GET A DATA CHARACTER 
        PULS B,X 
        STA 0,X+        ; PUT CHARACTER 
        DECB            ; END OF DATA IN RECORD? 
        BNE LOAD3       ; LOOP IF NOT 
        BRA LOAD1       ; GET ANOTHER RECORD
 
    ; GET CHARACTER ROUTINE - READS A SECTOR IF NECESSARY

GETCH   CMPY #SCTBUF+256    ; OUT OF DATA? 
        BNE GETCH4          ; GO READ CHARACTER IF NOT 
GETCH2  LDX #SCTBUF         ; POINT TO BUFFER 
        LDD 0,X             ; GET FORWARD LINK 
        BEQ GO              ; IF ZERO, FILE IS LOADED 
        BSR READ            ; READ NEXT SECTOR 
        BNE LOAD            ; START OVER IF ERROR 
        LDY #SCTBUF+4       ; POINT PAST LINK 
GETCH4  LDA 0,Y+            ; ELSE, GET A CHARACTER 
        RTS
 
    ; FILE IS LOADED, JUMP TO IT

GO      JMP [TADR]      ; JUMP TO TRANSFER ADDRESS

    ; READ SINGLE SECTOR
    ;
    ; THIS ROUTINE MUST READ THE SECTOR WHOSE TRACK
    ; AND SECTOR ADDRESS ARE IN A ANB B ON ENTRY.
    ; THE DATA FROM THE SECTOR IS TO BE PLACED AT
    ; THE ADDRESS CONTAINED IN X ON ENTRY.
    ; IF ERRORS, A NOT-EQUAL CONDITION SHOULD BE
    ; RETURNED. THIS ROUTINE WILL HAVE TO DO SEEKS.
    ; A,B,X, AND U MAY BE DESTROYED BY THIS ROUTINE,
    ; BUT Y MUST BE PRESERVED.
    ; WESTERN DIGITAL EQUATES

COMREG  EQU $E818   ; COMMAND REGISTER
TRKREG  EQU $E819   ; TRACK REGISTER
SECREG  EQU $E81A   ; SECTOR REGISTER
DATREG  EQU $E81B   ; DATA REGISTER
DRQ     EQU 2       ; DRQ BIT MASK
BUSY    EQU 1       ; BUSY MASK
RDMSK   EQU $1C     ; READ ERROR MASK
RDCMND  EQU $8C     ; READ COMMAND
SKCMND  EQU $18     ; SEEK COMMAND

PRA     EQU $E810

    ; READ ONE SECTOR
 
READ    BSR XSEEK       ; SEEK TO TRACK 
        LDA #RDCMND     ; SETUP READ SECTOR COMMAND
        STA COMREG      ; ISSUE READ COMMAND 
        BSR DEL28       ; DELAY 
        CLRB            ; GET SECTOR LENGTH (=256) 
        LDX #SCTBUF     ; POINT TO SECTOR BUFFER 
READ3   LDA COMREG      ; GET WD STATUS 
        BITA #DRQ       ; CHECK FOR DATA 
        BNE READ5       ; BRANCH IF DATA PRESENT 
        BITA #BUSY      ; CHECK IF BUSY 
        BNE READ3       ; LOOP IF SO 
        TFR A,B         ; SAVE ERROR CONDITION 
        BRA READ6 
READ5   LDA DATREG      ; GET DATA BYTE 
        STA 0,X+        ; PUT IN MEMORY 
        DECB            ; DEC THE COUNTER 
        BNE READ3       ; LOOP TIL DONE 
        BSR XWAIT       ; WAIT TIL WD IS FINISHED 
READ6   BITB #RDMSK     ; MASK ERRORS 
        RTS             ; RETURN
 
    ; WAIT FOR 1771 TO FINISH COMMAND

XWAIT   LDB COMREG      ; GET WD STATUS 
        BITB #BUSY      ; CHECK IF BUSY 
        BNE XWAIT       ; LOOP TIL NOT BUSY 
        RTS             ; RETURN

    ; SEEK THE SPECIFIED TRACK

XSEEK   PSHS A
        LDA PRA
        ANDA #%11111011 ; pre-select side 0
        CMPB #$0A       ; side 0 or 1 ?
        BLS  XSEEK1     ; side 0
        ORA #%100       ; side 1
XSEEK1  STA PRA         ; set side
        PULS A
        STB SECREG      ; SET SECTOR 
        CMPA TRKREG     ; DIF THAN LAST? 
        BEQ DEL28       ; EXIT IF NOT 
        STA DATREG      ; SET NEW WD TRACK 
        BSR DEL28       ; GO DELAY 
        LDA #SKCMND     ; SETUP SEEK COMMAND 
        STA COMREG      ; ISSUE SEEK COMMAND 
        BSR DEL28       ; GO DELAY 
        BSR XWAIT       ; WAIT TIL DONE
        BITB #$10 ; CHECK FOR SEEK ERROR
    ; DELAY

DEL28   JSR DEL14 
DEL14   JSR DEL 
DEL     RTS

    END
