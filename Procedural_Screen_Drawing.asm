SCREEN 				  = $6000
DATA_INDEX 			= $A0
DRAW_SCREEN_INDEX = $A2
VERTICAL_ADD_AMOUNT = $A4
DRAW_CHARACTER = $A5
HORIZONTAL_SIZE = $A6
VERTICAL_SIZE = $A7
SCREEN_NUMBER 	= $A8
	
		CHR = 1
		BLK = 2
		HLN = 3
		VLN = 4
		LDL = 5
		RDL = 6
		EOS = 255

		LDY Screen_Number
		
    LDA :Screen_Data_Address_LO_0,Y	
		STA DATA_INDEX + 0
		LDA :Screen_Data_Address_HI_0,Y	
		STA DATA_INDEX + 1
Draw_Screen_Loop
    LDY #0
    LDA (DATA_INDEX),Y            	                   
    INY
    CMP #:EOS
    BNE No_End_Of_Screen
    JMP Screen_Draw_Done
No_End_Of_Screen    

CT_CHR ; ;Put Tile Char
		CMP #:CHR ;Put Tile Char
		bne CT_BLK 
		LDA #2
		STA DRAW_SIZE_COUNT
		JSR Get_Screen_Address
		lda (DATA_INDEX),Y	
		LDY #$00
		STA (NDX0),Y
    JMP Add4ToNDX
CT_BLK	;BLK ;Draw_Block	
    cmp #:BLK ;Draw_Block
		bne CT_HLN
		JSR Get_Screen_Positions 
		LDA (DATA_INDEX),Y	
		STA M3
		INY
		STA DRAW_CHARACTER
		LDA (DATA_INDEX),Y	
		JSR Get_Rectangle_Dimensions	
		JSR DRAWBLOCK		    
	  JMP Add5ToNDX
CT_HLN
  		cmp #:HLN
  		bne CT_05
      JSR Get_Screen_Positions 
      LDA (DATA_INDEX),Y	
			STA HOZWALLCHAR
      INY
		  LDA (DATA_INDEX),Y
			STA HORIZONTAL_SIZE
			JSR DRAWHOZWALL
      JMP Add5ToNDX
CT_VLN
  		cmp #:CT_VLN
  		bne CT_LDL
      JSR Get_Screen_Positions
      LDA (DATA_INDEX),Y
    	STA DRAW_CHARACTER
    	INY
    	LDA (DATA_INDEX),Y
      STA VERTICAL_SIZE					
      LDA #40
      STA VERTICAL_ADD_AMOUNT
      JSR DRAWVRTWALL
      JMP Add5ToNDX
CT_LDL
  		cmp #:CT_LDL
  		bne CT_RDL
      JSR Get_Screen_Positions
      LDA (DATA_INDEX),Y     
    	STA DRAW_CHARACTER		
    	INY
    	LDA (DATA_INDEX),Y
      STA VERTICAL_SIZE
      LDA #39
      STA VERTICAL_ADD_AMOUNT
      JSR DRAWVRTWALL
      JMP Add5ToNDX
CT_RDL
  		cmp #:CT_RDL
  		bne No_Incr_Room_Hi
      JSR Get_Screen_Positions
      LDA (DATA_INDEX),Y     
    	STA DRAW_CHARACTER
    	INY
    	LDA (DATA_INDEX),Y
      STA VERTICA0L_SIZE
      LDA #41
      STA VERTICAL_ADD_AMOUNT
      JSR DRAWVRTWALL
      JMP Add5ToNDX
    
    
Add5toNDX
	LDA #$05
  JMP AddRoomInstrNDX
Add4toNDX
  LDA #$04
  JMP AddRoomInstrNDX
Add3toNDX
  LDA #$03
	JMP AddRoomInstrNDX
Add2toNDX
	LDA #$02    
AddRoomInstrNDX
  CLC		
  ADC DATA_INDEX  
  STA DATA_INDEX
  BCC No_Incr_Room_Hi
  INC DATA_INDEX + 1
No_Incr_Room_Hi
  JMP Draw_Screen_Loop	 


Screen_Draw_Done

	RTS

Get_Screen_Positions
		LDA (DATA_INDEX),Y	
		STA M7		
		INY
		LDA (DATA_INDEX),Y
		TAX		
		INY
		RTS

Get_Rectangle_Dimensions	
    CLC
    PHA			
    AND #$0F
    ADC #$02
    STA HORIZONTAL_SIZE 	
    PLA 		
    LSR  		
    LSR  		
    LSR  			
    LSR   		
    CLC				
    ADC #$02	
    STA VERTICAL_SIZE 		
    RTS				




DRAWHOZWALL  
			JSR GET_SCREEN_ADDRESS
			LDY HORIZONTAL_SIZE
      LDA DRAW_CHARACTER
HOZWALLLOOP
      DEY
    	STA (DRAW_SCREEN_INDEX),Y
    	BNE HOZWALLLOOP
    	RTS
    
DRAWVRTWALL
      JSR GET_SCREEN_ADDRESS
VRTWALLLOOP    
			LDA DRAW_CHARACTER
			STA (DRAW_SCREEN_INDEX),Y
    	LDA DRAW_SCREEN_INDEX 
			CLC
    	ADC VERTICAL_ADD_AMOUNT
    	STA DRAW_SCREEN_INDEX
    	BCC NOVERTHI    	
      INC DRAW_SCREEN_INDEX +1
NOVERTHI      
    	RTS


DRAWBLOCK
			JSR GET_SCREEN_ADDRESS
NEWBLOCKROW
    	LDY HORIZONTAL_SIZE
BLOCKLOOP
      LDA DRAW_CHARACTER
			STA (DRAW_SCREEN_INDEX),Y
      DEY 
      BPL HORIZONTAL_SIZE
      
      LDA DRAW_SCREEN_INDEX
      CLC
      ADC VERTICAL_ADD_AMOUNT
      STA DRAW_SCREEN_INDEX
      BCC NOBLOKHI
      INC DRAW_SCREEN_INDEX+1
NOBLOKHI
      DEC M9
      BPL NEWBLOCKROW    
      RTS

GET_SCREEN_ADDRESS
      LDA M7
      CLC 
      ADC :SCREEN_LINE_ADDR_LOW,X
      STA DRAW_SCREEN_INDEX + 0  
      LDA :SCREEN_LINE_ADDR_HIGH,X
      ADC #$00
      STA DRAW_SCREEN_INDEX + 1
      RTS         


R000
		DTA BLK,5,5,$22,68
		DTA HLN,0,10,72,40
		DTA VLN,0,0,70,22
		DTA VLN,39,0,70,22
		DTA EOS
R001
		DTA HLN,0,5,72,40
		DTA HLN,0,10,72,40
		DTA HLN,0,15,72,40		
		DTA VLN,0,0,70,22
		DTA VLN,39,0,70,22
    DTA EOS
R002
		DTA BLK,15,5,$22,68
		DTA BLK,25,5,$22,68
		DTA VLN,19,0,70,22
		DTA VLN,20,0,70,22
		DTA EOS

;;;;
;;;;
;;;;



Screen_Data_Address_LO
    	DTA <R000,<R001,<R002
Screen_Data_Address_HI
    	DTA >R000,>R001,>R002

SCREEN_LINE_ADDR_LOW
			DTA <SCREEN+000,<SCREEN+040,<SCREEN+080,<SCREEN+120,<SCREEN+160,<SCREEN+200,<SCREEN+240,<SCREEN+280,<SCREEN+320,<SCREEN+360
			DTA <SCREEN+400,<SCREEN+440,<SCREEN+480,<SCREEN+520,<SCREEN+560,<SCREEN+600,<SCREEN+640,<SCREEN+680,<SCREEN+720,<SCREEN+760
			DTA <SCREEN+800,<SCREEN+840,<SCREEN+880,<SCREEN+920,<SCREEN+960
SCREEN_LINE_ADDR_HIGH
			DTA >SCREEN+000,>SCREEN+040,>SCREEN+080,>SCREEN+120,>SCREEN+160,>SCREEN+200,>SCREEN+240,>SCREEN+280,>SCREEN+320,>SCREEN+360
			DTA >SCREEN+400,>SCREEN+440,>SCREEN+480,>SCREEN+520,>SCREEN+560,>SCREEN+600,>SCREEN+640,>SCREEN+680,>SCREEN+720,>SCREEN+760
			DTA >SCREEN+800,>SCREEN+840,>SCREEN+880,>SCREEN+920,>SCREEN+960

