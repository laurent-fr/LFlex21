; PIA / ASSIST09

PIA	    EQU $E810

PRA	    EQU PIA
DDRA	EQU PIA
CRA	    EQU PIA+1
PRB	    EQU PIA+2
DDRB	EQU PIA+2
CRB	    EQU PIA+3


    	ORG $0100 

INIT
	CLRA		        ; init PIA + select DDRA & DDRB
	STA	CRA
	STA	CRB
    LDA #$0F            ; PORTA b0..b3 = output
	STA	DDRA
	LDA	#$FF	        ; PORT B = output
	STA	DDRB
	LDA	#%00111110      ; select PRB
	STA	CRB
	RTS

LEDOFF	LDA	#%00110100  ; turn off LED
	    STA	CRA
	    RTS

LEDON   LDA	#%00111100  ; turn on LED
	    STA CRA
	    RTS

PRTCHR 
	    STA	PRB         ; write data to printer port
        LDA #%00110100  ; STROBE L
        STA CRB
        NOP
        LDA #%00111100  ; STROBE H
        STA CRB
PRTCHRW	LDA	CRB
	    BPL	PRTCHRW     ; loop if CRB.7 == 0 
        LDA PRB         ; read PRB to clear CRB.7
	    RTS

TST	    LDA	#42         ; print a '*'
	    BSR PRTCHR
	    RTS

TSTL	JSR	TST         ; print an infinite quantity of '*'
	    BRA	TSTL

OUTSTR	LDA	,X+         ; print message at address X
	    BEQ	OUTSTRE
	    JSR 	PRTCHR
	    BRA	OUTSTR
OUTSTRE	RTS

TESTSTR	LDX	#MSG        ; print a 'Hello World'
	BSR	OUTSTR
	RTS

MSG	
	FCB 27,120,49,27,71,27,104,2
	FCC /Hello, World!/
	FCB 13
	FCB 10
	FCB 0

