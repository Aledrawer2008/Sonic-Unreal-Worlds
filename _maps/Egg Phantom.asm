; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_bXApn:	
		dc.w SME_bXApn_A-SME_bXApn, SME_bXApn_B-SME_bXApn	
		dc.w SME_bXApn_3E-SME_bXApn, SME_bXApn_49-SME_bXApn	
		dc.w SME_bXApn_59-SME_bXApn	
SME_bXApn_A:	dc.b 0	
SME_bXApn_B:	dc.b $A	
		dc.b 0, $C, 0, $C, $D8	
		dc.b $E0, $F, 0, $10, $F8	
		dc.b 0, $C, 0, $20, $F8	
		dc.b $E0, $F, 0, $24, $18	
		dc.b 0, $C, 0, $34, $18	
		dc.b $E0, $F, 0, $38, $38	
		dc.b 0, $C, 0, $48, $38	
		dc.b $F8, 0, 0, 0, $D8	
		dc.b $E8, 2, 0, 1, $E0	
		dc.b $E0, 7, 0, 4, $E8	
SME_bXApn_3E:	dc.b 2	
		dc.b $F0, $D, 0, $4C, $F8	
		dc.b $F0, $D, 0, $54, $18	
SME_bXApn_49:	dc.b 3	
		dc.b $F0, $D, 0, $4C, $F8	
		dc.b $F0, 9, 0, $5C, $30	
		dc.b $F0, 9, 0, $54, $18	
SME_bXApn_59:	dc.b 2	
		dc.b $E8, $F, 0, $62, 8	
		dc.b $F4, $F, 0, $62, $18	
		even