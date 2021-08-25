; Test Disk - Read the boot sector
; Laurent FRANCOISE 2021

; Disk driver must be loaded first

; Disk driver entry points
INIT    EQU $DE15
DRIVE   EQU $DE0C
RESTORE EQU $DE09
READ    EQU $DE00

SCTBUF  EQU $C200 ; DATA SECTOR BUFFER

BUFFER  EQU $0200 ; SECTOR DATA

    ORG $0100

    JSR INIT        ; INIT DISK DRIVER

    LDX #SCTBUF
    CLR 3,X         ; 
    JSR DRIVE       ; SELECT DRIVE 0
    
    LDX #SCTBUF
    JSR RESTORE     ; GO TO TRACK 0

    LDX #BUFFER     ; SECTOR DEST.
    LDA #0          ; TRACK
    LDB #1          ; SECTOR
    JSR READ        ; READ SECTOR

    RTS
