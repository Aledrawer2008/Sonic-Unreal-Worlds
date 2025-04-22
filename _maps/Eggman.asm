; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_iOzII:	
		dc.w SME_iOzII_1A-SME_iOzII, SME_iOzII_3E-SME_iOzII	
		dc.w SME_iOzII_49-SME_iOzII, SME_iOzII_54-SME_iOzII	
		dc.w SME_iOzII_64-SME_iOzII, SME_iOzII_74-SME_iOzII	
		dc.w SME_iOzII_84-SME_iOzII, SME_iOzII_94-SME_iOzII	
		dc.w SME_iOzII_A9-SME_iOzII, SME_iOzII_AF-SME_iOzII	
		dc.w SME_iOzII_B5-SME_iOzII, SME_iOzII_B6-SME_iOzII	
		dc.w SME_iOzII_C1-SME_iOzII	
SME_iOzII_1A:	dc.b 7	
		dc.b $EC, 1, 0, $A, $E4	
		dc.b $EC, 5, 0, $C, $C	
		dc.b $FC, $E, $20, $10, $E4	
		dc.b $14, $C, $20, $28, $EC	
		dc.b $14, 0, $20, $2C, $C	
		dc.b $FC, $A, $20, $1C, 4	
		dc.b $FC, 0, $20, $25, $1C	
SME_iOzII_3E:	dc.b 2	
		dc.b $E4, 4, 0, 0, $F4	
		dc.b $EC, $D, 0, 2, $EC	
SME_iOzII_49:	dc.b 2	
		dc.b $E4, 4, 0, 0, $F4	
		dc.b $EC, $D, 0, $35, $EC	
SME_iOzII_54:	dc.b 3	
		dc.b $E4, 8, 0, $3D, $F4	
		dc.b $EC, 9, 0, $40, $EC	
		dc.b $EC, 5, 0, $46, 4	
SME_iOzII_64:	dc.b 3	
		dc.b $E4, 8, 0, $4A, $F4	
		dc.b $EC, 9, 0, $4D, $EC	
		dc.b $EC, 5, 0, $53, 4	
SME_iOzII_74:	dc.b 3	
		dc.b $E4, 8, 0, $57, $F4	
		dc.b $EC, 9, 0, $5A, $EC	
		dc.b $EC, 5, 0, $60, 4	
SME_iOzII_84:	dc.b 3	
		dc.b $E4, 4, 0, $64, 4	
		dc.b $E4, 4, 0, 0, $F4	
		dc.b $EC, $D, 0, $35, $EC	
SME_iOzII_94:	dc.b 4	
		dc.b $E4, 9, 0, $66, $F4	
		dc.b $E4, 8, 0, $57, $F4	
		dc.b $EC, 9, 0, $5A, $EC	
		dc.b $EC, 5, 0, $60, 4	
SME_iOzII_A9:	dc.b 1	
		dc.b 4, 5, 0, $2D, $1A	
SME_iOzII_AF:	dc.b 1	
		dc.b 4, 5, 0, $31, $1A	
SME_iOzII_B5:	dc.b 0	
SME_iOzII_B6:	dc.b 2	
		dc.b 0, 8, 1, $2A, $1A	
		dc.b 8, 8, $11, $2A, $1A	
SME_iOzII_C1:	dc.b 2	
		dc.b $F8, $B, 1, $2D, $1A	
		dc.b 0, 1, 1, $39, $32	
		even