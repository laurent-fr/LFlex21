    ; DRIVER ROUTINES FOR SWTPC MF-68
    ;
    ; COPYRIGHT (C) 1980 BY
    ; TECHNICAL SYSTEMS CONSULTANTS, INC.
    ; 111 PROVIDENCE RD, CHAPEL HILL, NC 27514
    ;
    ; THESE DRIVERS ARE FOR A SINGLE-SIDED, SINGLE
    ; DENSITY SWTPC MF-68 MINIFLOPPY DISK SYSTEM.
    ;
    ; THE DRIVER ROUTINES PERFORM THE FOLLOWING
    ; 1. READ SINGLE SECTOR - DREAD
    ; 2. WRITE SINGLE SECTOR - DWRITE
    ; 3. VERIFY WRITE OPERATION - VERIFY
    ; 4. RESTORE HEAD TO TRACK 00 - RESTOR
    ; 5. DRIVE SELECTION - DRIVE
    ; 6. CHECK READY - DCHECK
    ; 7. QUICK CHECK READY - DQUICK
    ; 8. DRIVER INITIALIZATION - DINIT
    ; 9. WARM START ROUTINE - DWARM
    ; 10. SEEK ROUTINE - DSEEK
 
    ; EQUATES

DRQ     EQU 2       ; DRQ BIT MASK
BUSY    EQU 1       ; BUSY MASK
RDMSK   EQU $1C     ; READ ERROR MASK
VERMSK  EQU $18     ; VERIFY ERROR MASK
WTMSK   EQU $5C     ; WRITE ERROR MASK

PIA     EQU $E810   ; PIA
PRA     EQU PIA
DDRA    EQU PIA
CRA     EQU PIA+1

COMREG  EQU $E818   ; COMMMAND REGISTER
TRKREG  EQU $E819   ; TRACK REGISTER
SECREG  EQU $E81A   ; SECTOR REGISTER
DATREG  EQU $E81B   ; DATA REGISTER
RDCMND  EQU $8C     ; READ COMMAND
WTCMND  EQU $AC     ; WRITE COMMAND
RSCMND  EQU $08     ; RESTORE COMMAND
SKCMND  EQU $18     ; SEEK COMMAND
PRCNT   EQU $CC34

    ;**********************************************
    ; DISK DRIVER ROUTINE JUMP TABLE
    ;**********************************************

        ORG $DE00 

DREAD   JMP READ 
DWRITE  JMP WRITE 
DVERFY  JMP VERIFY 
RESTOR  JMP RST 
DRIVE   JMP DRV 
DCHECK  JMP CHKRDY 
DQUICK  JMP CHKRDY 
DINIT   JMP INIT 
DWARM   JMP WARM 
DSEEK   JMP SEEK
 
    ;**********************************************
    ; GLOBAL VARIABLE STORAGE
    ;**********************************************

CURDRV  FCB 0       ; CURRENT DRIVE 
DRVTRK  FDB 0,0      ; CURRENT TRACK PER DRIVE

    ; INIT AND WARM
    ;
    ; DRIVER INITIALIZATION

INIT    LDX #CURDRV     ; POINT TO VARIABLES 
        LDB #5          ; NO. OF BYTES TO CLEAR 
INIT2   CLR 0,X+        ; CLEAR THE STORAGE 
        DECB 
        BNE INIT2       ; LOOP TIL DONE

        CLRA            ; select PIA control register
        STA CRA
        LDA #%00001111  ; b0..b3 = output
        STA DDRA        
        LDA #%00111100  ; select PIA output register
        STA CRA
        LDA #%00001000  ; b3=1 (FM)
                        ; b2=0 (side 0)
                        ; b1-0 = 00 (no drive select)
        STA PRA
     
WARM    RTS             ; WARM START NOT NEEDED

    ; READ
    ;
    ; READ ONE SECTOR
    ;
    ; ENTRY -   (X) = Address in memory where sector is to be placed.
    ;           (A) = Track Number
    ;           (B) = Sector Number
    ; EXIT -    (X) May be destroyed
    ;           (A) May be destroyed
    ;           (B) = Error condition
    ;           (Z) = 1 if no error
    ;               = 0 if an erro

READ    BSR SEEK        ;SEEK TO TRACK 
        LDA #RDCMND     ; SETUP READ SECTOR COMMAND
        ; TST PRCNT       ; ARE WE SPOOLING? 
        ; BEQ READ2       ; SKIP IF NOT 
        ; SWI3            ; ELSE, SWITCH TASKS 
        ; NOP             ; NECESSARY FOR SBUG 
READ2   ; SEI             ; DISABLE INTERRUPTS 
        STA COMREG      ; ISSUE READ COMMAND 
        LBSR DEL28      ; DELAY 
        CLRB            ; GET SECTOR LENGTH (=256) 
READ3   LDA COMREG      ; GET WD STATUS 
        BITA #DRQ       ; CHECK FOR DATA 
        BNE READ5       ; BRANCH IF DATA PRESENT 
        BITA #BUSY      ; CHECK IF BUSY 
        BNE READ3       ; LOOP IF SO 
        TFR A,B         ; ERROR IF NOT 
        BRA READ6 
READ5   LDA DATREG      ; GET DATA BYTE 
        STA 0,X+        ; PUT IN MEMORY 
        DECB            ; DEC THE COUNTER 
        BNE READ3       ; LOOP TIL DONE 
        BSR WAIT        ; WAIT TIL WD IS FINISHED 
READ6   BITB #RDMSK     ; MASK ERRORS 
        ; CLI             ; ENABLE INTERRUPTS 
        RTS             ; RETURN
 
    ; WAIT
    ;
    ; WAIT FOR 1771 TO FINISH COMMAND

WAIT    ; TST PRCNT       ; ARE WE SPOOLING? 
        ; BEQ WAIT1       ; SKIP IF NOT
        ; SWI3            ; SWITCH TASKS IF SO 
        ; NOP             ; NECESSARY FOR SBUG 
WAIT1   LDB COMREG      ; GET WD STATUS 
        BITB #BUSY      ; CHECK IF BUSY 
        BNE WAIT        ; LOOP TIL NOT BUSY 
        RTS             ; RETURN

    ; SEEK
    ;
    ; SEEK THE SPECIFIED TRACK

SEEK    PSHS A
        LDA  PRA        ; get PIA config
        ANDA #%11111011 ; pre-select side 0
        CMPB #$0A       ; side 0 or 1 ?
        BLS  SEEK1      ; side 0
        ORA #%100       ; side 1
SEEK1   STA PRA         ; set side
        PULS A
        STB SECREG      ; SET SECTOR 
        CMPA TRKREG     ; DIF THAN LAST? 
        BEQ SEEK4       ; EXIT IF NOT 
        STA DATREG      ; SET NEW WD TRACK 
        LBSR DEL28      ; GO DELAY 
        LDA #SKCMND     ; SETUP SEEK COMMAND 
        STA COMREG      ; ISSUE SEEK COMMAND 
        LBSR DEL28      ; GO DELAY 
        BSR WAIT        ; WAIT TIL DONE 
        BITB #$10       ; CHECK FOR SEEK ERROR 
SEEK4   LBRA DEL28      ; DELAY

    ; WRITE
    ;
    ; WRITE ONE SECTOR
    ;
    ; ENTRY -   (X) = Address of 256 memory buffer containing data
    ;                   to be written to disk
    ;           (A) = Track Number
    ;           (B) = Sector Number
    ; EXIT -    (X) May be destroyed
    ;           (A) May be destroyed
    ;           (B) = Error condition
    ;           (Z) = 1 if no error
    ;               = 0 if an erro

WRITE   BSR SEEK        ; SEEK TO TRACK 
        LDA #WTCMND     ; SETUP WRITE SCTR COMMAND 
        ; TST PRCNT       ; ARE WE SPOOLING? 
        ; BEQ WRITE2      ; SKIP IF NOT 
        ; SWI3            ; CHANGE TASKS IF SO 
        ; NOP             ; NECESSARY FOR SBUG 
WRITE2  ; SEI             ; DISABLE INTERRUPTS 
        STA COMREG      ; ISSUE WRITE COMMAND 
        LBSR DEL28      ; DELAY 
        CLRB            ; GET SECTOR LENGTH (=256) 
WRITE3  LDA COMREG      ; CHECK WD STATUS 
        BITA #DRQ       ; READY FOR DATA? 
        BNE WRITE5      ; SKIP IF READY 
        BITA #BUSY      ; STILL BUSY? 
        BNE WRITE3      ; LOOP IF SO 
        TFR A,B         ; ERROR IF NOT 
        BRA WRITE6 
WRITE5  LDA 0,X+        ; GET A DATA BYTE 
        STA DATREG      ; SEND TO DISK 
        DECB            ; DEC THE COUNT 
        BNE WRITE3      ; FINISHED? 
        BSR WAIT        ; WAIT TIL WD IS FINISHED 
WRITE6  BITB #WTMSK     ; MASK ERRORS 
        ; CLI             ; ENABLE INTERRUPTS 
        RTS             ; RETURN

    ; VERIFY
    ;
    ; VERIFY LAST SECTOR WRITTEN
    ;
    ; ENTRY -   No entry parameters
    ; EXIT -    (X) May be destroyed
    ;           (A) May be destroyed
    ;           (B) = Error condition
    ;           (Z) = 1 if no error
    ;            = 0 if an error

VERIFY  LDA #RDCMND     ; SETUP VERIFY COMMAND 
        ; TST PRCNT       ; ARE WE SPOOLING? 
        ; BEQ VERIF2      ; SKIP IF NOT 
        ; SWI3            ; CHANGE TASKS IF SO 
        ; NOP             ; NECESSARY FOR SBUG 
VERIF2  ; SEI             ; DISABLE INTERRUPTS 
        STA COMREG      ; ISSUE VERIFY COMMAND 
        LBSR DEL28      ; GO DELAY 
        BSR WAIT        ; WAIT TIL WD IS DONE 
        ; CLI             ; ENABLE INTERRUPTS 
        BITB #VERMSK    ; MASK ERRORS 
        RTS             ; RETURN

    ; RST
    ;
    ; RST RESTORES THE HEAD TO 00
    ;
    ; ENTRY -   (X) = FCB address (3,X contains drive number)
    ; EXIT -    (X) May be destroyed
    ;           (A) May be destroyed
    ;           (B) = Error condition
    ;           (Z) = 1 if no error
    ;               = 0 if an error

RST     PSHS X          ; SAVE X REGISTER 
        BSR DRV         ; DO SELECT 
        LDA #RSCMND     ; SETUP RESTORE COMMAND 
        STA COMREG      ; ISSUE RESTORE COMMAND 
        BSR DEL28       ; DELAY 
        LBSR WAIT       ; WAIT TIL WD IS FINISHED 
        PULS X          ; RESTORE POINTER 
        BITB #$D8       ; CHECK FOR ERROR 
        RTS             ; RETURN
 
    ; DRV
    ;
    ; SELECT THE SPECIFIED DRIVE

DRV     LDA 3,X         ; GET DRIVE NUMBER ZZ
        CMPA #2         ; ENSURE IT'S < 3 
        BLS DRV2        ; BRANCH IF OK 
        LDB #$0F        ; ELSE SET ERROR VALUE 
        ORCC #01        ; SEC 
        RTS 
DRV2    BSR FNDTRK      ; FIND TRACK 
        LDB TRKREG      ; GET CURRENT TRACK 
        STB 0,X         ; SAVE IT 
        LDB PRA         ; get PIA config
        ANDB #%11111100
        CMPA #0         ; is it drive 0 ?
        BNE DRV3        ; no
        ORB #%01        ; set drive 0
        BRA DRV5
DRV3    CMPA #1         ; is it drive 1 ?
        BNE DRV4        ; no
        ORB #%10
        BRA DRV5
DRV4    ORB #%11        ; invalid drive number, no drive selectesd
DRV5    STB PRA
        STA CURDRV 
        BSR FNDTRK      ; FIND NEW TRACK 
        LDA 0,X 
        STA TRKREG      ; PUT NEW TRACK IN WD  
        BSR DEL28       ; DELAY 
        BRA OK
 
    ; CHKRDY
    ;
    ; CHECK DRIVE READY ROUTINE

CHKRDY  LDA 3,X         ; GET DRIVE NUMBER 
        CMPA #1         ; BE SURE IT'S 0 OR 1 
        BLS OK          ; BRANCH IF OK 
        LDB #$80        ; ELSE, SHOW NOT READY 
        ORCC    #01     ; SEC 
        RTS             ; RETURN 
OK      CLRB            ; SHOW NO ERROR 
        ANDCC #$FE       ; CLC 
        RTS

    ; FIND THE TRACK FOR CURRENT DRIVE

FNDTRK  LDX #DRVTRK     ; POINT TO TRACK STORE 
        LDB CURDRV      ; GET CURRENT DRIVE
        ABX             ; POINT TO DRIVE'S TRACK 
        RTS             ; RETURN
 
    ; DELAY

DEL28   LBSR DEL14 
DEL14   LBSR DEL 
DEL     RTS

    END
