;Atari Hardware Registers
;File version 1.03
;2005-01-02 17:47:15
;Register names based on PDF specifications
;---------------------------------------
;HARDWARE
;CPU vectors

;  5200 Page Zero Locations
POKMSK = $00 ;      Shadow for IRQEN
RTCLOK = $01 ;      Real time clock (high byte)
CRITIC = $03 ;      Critical  code  flag  (if  non-zero,  VBI  routine  is abbreviated)
ATRACT = $04 ;      Attract mode timer/flag
SDLSTL = $05 
SDLSTH = $06 
SDMCTL = $07 
PCOLR0 = $08
PCOLR1 = $09
PCOLR2 = $0A
PCOLR3 = $0B
COLOR0 = $0C
COLOR1 = $0D
COLOR2 = $0E
COLOR3 = $0F
COLOR4 = $10
SPOT0  = $11
SPOT1  = $12
SPOT2  = $13
SPOT3  = $14
SPOT4  = $15
SPOT5  = $16
SPOT6  = $17
SPOT7  = $18

KEY_5200_NONE = $FF
KEY_5200_STAR = $A
KEY_5200_HASH = $B
KEY_5200_START = $C
KEY_5200_PAUSE = $D
KEY_5200_RESET = $E
KEY_5200_0 = 0
KEY_5200_1 = 1
KEY_5200_2 = 2
KEY_5200_3 = 3
KEY_5200_4 = 4
KEY_5200_5 = 5
KEY_5200_6 = 6
KEY_5200_7 = 7
KEY_5200_8 = 8
KEY_5200_9 = 9


 
; 5200  Page Two Vectors
VIMIRQ = $0200 ; Immediate IRQ vector
VVBLKI = $0202 ;Immediate VBI vector
VVBLKD = $0204 ;Deferred VBI vector
VDSLST = $0206 ;  DLI vector
VKEYBD = $0208 ;Keyboard IRQ vector
VKEYBC = $020A ;Keypad routine continuation vector
BRKKY  = $020C ;BREAK key IRQ vector
VTRIGR = $020C ;5200 2ND Trigger
VBREAK = $020E ;BRK instruction IRQ vector
VSERIN = $0210 ;Serial Input Data Ready IRQ vector
VSEROR = $0212 ;Serial Output Data Needed IRQ vector
VSEROC = $0214 ;Serial Output Finished IRQ vector
VTIMR1 = $0216 ;POKEY Timer 1 IRQ vector
VTIMR2 = $0218 ;POKEY Timer 2 IRQ vector
VTIMR3 = $021A ;POKEY Timer 4 IRQ vector

NMIV	= $FFFA 	;NMI vector
RESETV	= $FFFC 	;RESET vector
IRQV	= $FFFE 	;IRQ vector

;GTIA Write
GTIA	= $C000
HPOSP0	= $C000
HPOSP1	= $C001
HPOSP2	= $C002
HPOSP3	= $C003
HPOSM0	= $C004
HPOSM1	= $C005
HPOSM2	= $C006
HPOSM3	= $C007
SIZEP0	= $C008
SIZEP1	= $C009
SIZEP2	= $C00A
SIZEP3	= $C00B
SIZEM	  = $C00C
GRAFP0	= $C00D
GRAFP1	= $C00E
GRAFP2	= $C00F
GRAFP3	= $C010
GRAFM	  = $C011
COLPM0	= $C012
COLPM1	= $C013
COLPM2	= $C014
COLPM3	= $C015
COLPF0	= $C016
COLPF1	= $C017
COLPF2	= $C018
COLPF3	= $C019
COLBAK	= $C01A
COLBK	  = $C01A 	;alias of COLBAK
PRIOR	  = $C01B
VDELAY	= $C01C
GRACTL	= $C01D
HITCLR	= $C01E
CONSOL	= $C01F

;GTIA Read
M0PF	= $C000
M1PF	= $C001
M2PF	= $C002
M3PF	= $C003
P0PF	= $C004
P1PF	= $C005
P2PF	= $C006
P3PF	= $C007
M0PL	= $C008
M1PL	= $C009
M2PL	= $C00A
M3PL	= $C00B
P0PL	= $C00C
P1PL	= $C00D
P2PL	= $C00E
P3PL	= $C00F
TRIG0	= $C010
TRIG1	= $C011
TRIG2	= $C012
TRIG3	= $C013
PAL	= $C014

;Pokey Write
POKEY	  = $E800
AUDF1	  = $E800
AUDF2	  = $E802
AUDF3	  = $E804
AUDF4	  = $E806
AUDC1	  = $E801
AUDC2	  = $E803
AUDC3	  = $E805
AUDC4	  = $E807
AUDCTL	= $E808
STIMER	= $E809
SKRES	  = $E80A
POTGO	  = $E80B
SEROUT	= $E80D
IRQEN	  = $E80E
SKCTL	  = $E80F

;Pokey Read
POT0	  = $E800
POT1	  = $E801
POT2	  = $E802
POT3	  = $E803
POT4	  = $E804
POT5	  = $E805
POT6	  = $E806
POT7	  = $E807
ALLPOT	= $E808
POTST	  = $E808
KBCODE	= $E809
RANDOM	= $E80A
SERIN	  = $E80D
IRQST	  = $E80E
SKSTAT	= $E80F

;ANTIC
ANTIC	  = $D400
DMACTL	= $D400
CHACTL	= $D401
DLISTL	= $D402
DLISTH	= $D403
HSCROL	= $D404
VSCROL	= $D405
PMBASE	= $D407
CHBASE	= $D409
WSYNC	  = $D40A
VCOUNT	= $D40B
PENH	  = $D40C
PENV	  = $D40D
NMIEN	  = $D40E
NMIRES	= $D40F
NMIST	  = $D40F

OSFONT  = $F800
IRQ5200 = $FC03
VBI5200 = $FCB8
NMI5200 = $FCA2
XITVBV  = $FCB2
KEY5200 = $FD02

;PIA
PIA	= $D300
PORTA	= $D300
PORTB	= $D301
PACTL	= $D302
PBCTL	= $D303



;ANTIC dlisplay list commands
DL_E1	= $00
DL_E2	= $10
DL_E3	= $20
DL_E4	= $30
DL_E5	= $40
DL_E6	= $50
DL_E7	= $60
DL_E8	= $70
DL_JUMP	= $01 	;jump to adress and create one empty line
DL_LOOP	= $41 	;jump to adress and wait for vsync
DL_ADRES	= $40 	;load memory counter
DL_DLI	= $80 	;dli interrupt
DL_HS	= $10 	;horizontal scroll
DL_VS	= $20 	;vertical scroll
;BASIC GR-codes:
DL_GR0	= $02 	;text hi-res mode 40 bytes/line
DL_GR1	= $06 	;4 color text mode 20 bytes/line, 1 line V
DL_GR2	= $07 	;4 color text mode 20 bytes/line, 2 line V
DL_GR3	= $08 	;4 color graphics mode 10 bytes/line, 8 line V
DL_GR4	= $09 	;1 color graphics mode 10 bytes/line, 4 line V
DL_GR5	= $0A 	;4 color graphics mode, 20 bytes/line, 4 line V
DL_GR6	= $0B 	;1 color graphics mode, 20 bytes/line, 2 line V
DL_GR7	= $0D 	;4 color graphics mode, 40 bytes/line, 2 line V
DL_GR8	= $0F 	;graphics hi-res mode 40 bytes/line
DL_GR12	= $04 	;text - 4+1 color, 1 line V
DL_GR15	= $0E 	;4 color graphics mode, 40 bytes/line, 1 line V
;modes not supported by BASIC
DL_A3	= $03 	;hi-res text mode 8x10 pixel char, 40 bytes/line
DL_A5	= $05 	;text - 4+1 color, 2 line V
DL_AC	= $0C 	;1 color graphics mode, 20 bytes/line, 1 line V
;------------------------------------------
;USEFUL
;bit mask
OR0	= 1
OR1	= 2
OR2	= 4
OR3	= 8
OR4	= 16
OR5	= 32
OR6	= 64
OR7	= 128
AND0	= $FE
AND1	= $FD
AND2	= $FB
AND3	= $F7
AND4	= $EF
AND5	= $DF
AND6	= $BF
AND7	= $7F
;-----------------------------------------------
;hw bits
SKSTAT_KEYPRESS	= OR2 	;key pressed
SKSTAT_SHIFT	= OR3 	;shift key pressed
SKSTAT_SR_BUSY	= OR1 	;serial input register busy
SKSTAT_FERR	= OR7 	;framing error
SKSTAT_KB_OVR	= OR6 	;keyboard overrun
SKSTAT_SR_OVR	= OR5 	;serial overrun
SKSTAT_IN_PAD	= OR4 	;serial input pin

