ICL "atari equates.asm

RAMHIGH = $6A
PMYPOS = $D0
PMBASE = $D1
PMSAVELO = $02
PMSAVEHI = $03
PMNUMBER = $CD
FROMLO = $CE
FROMHI = $CF
    *=  $9000
;
    PLA 
    CMP #$05
    BEQ RIGHT_AMOUNT
    TAY 
CLEANSTACK
    PLA 
    PLA 
    DEY 
    BPL CLEANSTACK
    RTS 
RIGHT_AMOUNT
    PLA 
    PLA 
    CLC 
    ADC #$03
    CMP #$08
    BCC NOCOMBO
    LDA #$03
NOCOMBO
    TAY 
    STA PMNUMBER
    CLC 
    ADC $6A
    STA PMBASE
    PLA 
    STA FROMHI
    PLA 
    STA FROMLO
    TYA 
    ASL A
    CLC 
    ADC #$EC
    STA PMSAVELO
    LDA $6A
    CLC 
    ADC #$02
    STA PMSAVEHI
    LDY #$00
    LDA (PMSAVELO),Y
    STA PMYPOS
    INY 
    LDA (PMSAVELO),Y
    TAY 
    LDA #$00
CLEARLOOP
    STA (PMYPOS),Y
    DEY 
    BPL CLEARLOOP
    PLA 
    PLA 
    LDY #$01
    STA (PMSAVELO),Y
    PLA 
    PLA 
    LDX PMNUMBER
    CPX #$04
    BNE COMBOSKIP
    LDX #$08
    CLC 
    ADC #$08
    STA HPOSP0-4,X
    SEC 
    SBC #$02
    INX 
    STA HPOSP0-4,X
    SBC #$02
    INX 
    STA HPOSP0-4,X
    SBC #$02
    INX 
COMBOSKIP
    STA HPOSP0-4,X
    PLA 
    PLA 
    STA PMYPOS
    LDY #$00
    STA (PMSAVELO),Y
    INY 
    LDA (PMSAVELO),Y
    TAY 
    DEY 
DRAWLOOP
    LDA (FROMLO),Y
    STA (PMYPOS),Y
    DEY 
    BPL DRAWLOOP
    RTS 
;
;
;
    PLA 
    CMP #$02
    BEQ DOCLEAR
    TAY 
PGCLRSTK
    PLA 
    PLA 
    DEY 
    BPL PGCLRSTK
    RTS 
DOCLEAR
PAGEBASE = $D0
PAGEBSHI = $D1
PAGES = $CF
    PLA 
    STA PAGEBSHI
    PLA 
    STA PAGEBASE
    PLA 
    PLA 
    TAX 
NEXTPAGE
    LDY #$00
    TYA 
PGCLRLOOP
    STA (PAGEBASE),Y
    DEY 
    BNE PGCLRLOOP
    INC PAGEBSHI
    DEX 
    BNE PGCLRLOOP
    RTS 
