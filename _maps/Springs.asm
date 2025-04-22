; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_jBWJW:	
		dc.w SME_jBWJW_C-SME_jBWJW, SME_jBWJW_1C-SME_jBWJW	
		dc.w SME_jBWJW_27-SME_jBWJW, SME_jBWJW_37-SME_jBWJW	
		dc.w SME_jBWJW_51-SME_jBWJW, SME_jBWJW_66-SME_jBWJW	
SME_jBWJW_C:	dc.b 3	
		dc.b $F0, $C, 0, 0, $F0	
		dc.b $F8, $C, 0, 4, $F0	
		dc.b 0, $C, 0, $C, $F0	
SME_jBWJW_1C:	dc.b 2	
		dc.b $F8, $C, 0, 0, $F0	
		dc.b 0, $C, 0, $C, $F0	
SME_jBWJW_27:	dc.b 3	
		dc.b $E8, $C, 0, 0, $F0	
		dc.b $F0, 5, 0, 8, $F8	
		dc.b 0, $C, 0, $C, $F0	
SME_jBWJW_37:	dc.b 5	
		dc.b $F8, 1, 0, 8, $F8	
		dc.b $F8, 1, 0, 1, 0	
		dc.b $F0, 3, 0, 4, 8	
		dc.b $F0, 0, 0, 0, $F8	
		dc.b 8, 0, 0, 3, $F8	
SME_jBWJW_51:	dc.b 4	
		dc.b $F0, 3, 0, 4, 0	
		dc.b $F8, 1, 0, 8, $F8	
		dc.b $F0, 0, 0, 0, $F8	
		dc.b 8, 0, 0, 3, $F8	
SME_jBWJW_66:	dc.b 4	
		dc.b $F0, 3, 0, 4, $10	
		dc.b $F8, 9, 0, 8, $F8	
		dc.b $F0, 0, 0, 0, $F8	
		dc.b 8, 0, 0, 3, $F8	
		even