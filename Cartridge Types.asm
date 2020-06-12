CartridgeXEX            = 00; Set to load as an XEX file
CartridgeStandard8K     = 01  ;Standard 08K Cartridge
CartridgeStandard16K    = 02  ;*** Standard 16K Cartridge ***
CartTypeOSS16K          = 03  ;OSS 16 KB Cartridge            $B000-$BFFF always Mapped. D5x0/1 for A, D5x3/7 for B, D5x4/5 for C. D5x2/6, x6 Disables. 
CartType520032K         = 04  ;32K 5200 Cartridge
CartTypeDB32K           = 05  ;32K DB Cartridge
CartType520016K2        = 06  ;16K 5200 Cartridge 2 Chip
CartType520040K         = 07  ;Bounty Bob 5200 40K 
CartTypeWilliams64      = 08  ;*** Williams 64K Cartridge ***  8 banks mapped to $A000-$BFFF. $D500 to $D507
CartTypeExpess64        = 09  ;Express 64 KB cartridge         8 banks mapped to $A000-$BFFF. $D577 to $D570 
CartTypeDiamond64       = 10  ;Diamond 64 KB cartridge         8 banks mapped to $A000-$BFFF. $D5D7 to $D5D0
CartTypeSpartaDos64     = 11  ;SpartaDos X 64 KB cartridge     8 banks mapped to $A000-$BFFF. $D5E7 to $D5E0
CartTypeXEGS032         = 12  ;*** XEGS 32 KB cartridge ***    $A000-$BFFF Constant; 4 @ $8000-$9FFF 
CartTypeXEGS064         = 13  ;*** XEGS 64 KB cartridge ***    $A000-$BFFF Constant; 8 @ $8000-$9FFF
CartTypeXEGS128         = 14  ;*** XEGS 128 KB cartridge ***   $A000-$BFFF Constant; 16 @ $8000-$9FFF
CartTypeOSSM16K         = 15	;OSS 'M091' 16 KB cartridge
CartType520016K         = 16  ;16K 5200 Cartridge 1 Chip
CartTypeAtrax128K       = 17  ;128K	Atrax 128 KB cartridge     16 banks mapped to $A000-$BFFF. 4 lowest bits from $D5xx
CartTypeBOB40K          = 18  ;40K Bounty Bob Strikes Back
CartType52008K          = 19	;Standard 8 KB 5200 cartridge
CartType52004K          = 20  ;Standard 4 KB 5200 cartridge
CartType800Right8K      = 21  ;8 KB Right cartridge
CartTypeWilliams32      = 22  ;*** Williams 32K Cartridge ***  4 banks mapped to $A000-$BFFF.
CartTypeXEGS256         = 23  ;*** XEGS 256 KB cartridge ***   $A000-$BFFF Constant; 32 @ $8000-$9FFF 
CartTypeXEGS512         = 24  ;*** XEGS 512 KB cartridge ***   $A000-$BFFF Constant; 64 @ $8000-$9FFF
CartTypeXEGS1024        = 25  ;*** XEGS 1024 KB cartridge ***  $A000-$BFFF Constant; 128 @ $8000-$9FFF
CartridgeMegaCart16K    = 26  ;Switchable 16K Mega Cartridge   
CartridgeMegaCart32K    = 27  ;Switchable 32K Mega Cartridge   $8000-$BFFF  2  Banks  D5xx Selects
CartridgeMegaCart64K    = 28  ;Switchable 64K Mega Cartridge   $8000-$BFFF  4  Banks  D5xx Selects
CartridgeMegaCart128K   = 29  ;Switchable 128K Mega Cartridge  $8000-$BFFF  8  Banks  D5xx Selects
CartridgeMegaCart256K   = 30  ;Switchable 256K Mega Cartridge  $8000-$BFFF  16 Banks  D5xx Selects
CartridgeMegaCart512K   = 31  ;Switchable 512K Mega Cartridge  $8000-$BFFF  32 Banks  D5xx Selects
CartridgeMegaCart1024K  = 32  ;Switchable 1024K Mega Cartridge $8000-$BFFF  64 Banks  D5xx Selects
CartTypeSXEGS032        = 33  ;Switchable XEGS 32 KB cartridge   $A000-$BFFF Constant; 4 @ $8000-$9FFF
CartTypeSXEGS064        = 34  ;Switchable XEGS 64 KB cartridge   $A000-$BFFF Constant; 8 @ $8000-$9FFF
CartTypeSXEGS128        = 35  ;Switchable XEGS 128 KB cartridge  $A000-$BFFF Constant; 16 @ $8000-$9FFF
CartTypeSXEGS256        = 36  ;Switchable XEGS 256 KB cartridge  $A000-$BFFF Constant; 32 @ $8000-$9FFF 
CartTypeSXEGS512        = 37  ;Switchable XEGS 512 KB cartridge  $A000-$BFFF Constant; 64 @ $8000-$9FFF
CartTypeSXEGS1024       = 38  ;Switchable XEGS 1024 KB cartridge $A000-$BFFF Constant; 128 @ $8000-$9FFF
CartridgePhoenix8K      = 39  ;Phoenix 08K Cartridge
CartridgeBlizzard16K    = 40  ;Blizzard 16K Cartridge
CartTypeMax128          = 41  ;Atarimax 128 KB flash cartridg ;  16 banks mapped to $A000-$BFFF.
CartTypeMax1024         = 42  ;Atarimax 1024 KB flash cartridg;  128 banks mapped to $A000-$BFFF.
CartTypeSIC128          = 128 ;SIC! Flash Cartridge 128k      $8000-$BFFF  8  Banks  D500 to $D51F Selects. Bit 5(+32)=0 $8000-$9FFF disabled. Bit 6(+64)=0 $A000-$9BFF disabled. Bit 7 (+128)=8 Write Enable
CartTypeSIC256          = 130 ;SIC! Flash Cartridge 256k      $8000-$BFFF  16 Banks  D500 to $D51F Selects. Bit 5(+32)=0 $8000-$9FFF disabled. Bit 6(+64)=0 $A000-$9BFF disabled. Bit 7 (+128)=8 Write Enable
CartTypeSIC512          = 132 ;SIC! Flash Cartridge 512k      $8000-$BFFF  32 Banks  D500 to $D51F Selects. Bit 5(+32)=0 $8000-$9FFF disabled. Bit 6(+64)=0 $A000-$9BFF disabled. Bit 7 (+128)=8 Write Enable
CartridgeXEXDEMO        = 199



CartridgeType = CartridgeStandard16K
