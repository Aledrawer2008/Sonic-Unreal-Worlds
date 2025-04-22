; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME__EDgO:	
		dc.w SME__EDgO_C-SME__EDgO, SME__EDgO_D-SME__EDgO	
		dc.w SME__EDgO_13-SME__EDgO, SME__EDgO_19-SME__EDgO	
		dc.w SME__EDgO_1F-SME__EDgO, SME__EDgO_25-SME__EDgO	
SME__EDgO_C:	dc.b 0	
SME__EDgO_D:	dc.b 1	
		dc.b $E0, $A, 0, 0, $F8	
SME__EDgO_13:	dc.b 1	
		dc.b $E0, $A, 0, 9, $F8	
SME__EDgO_19:	dc.b 1	
		dc.b $E0, 2, 0, $12, 0	
SME__EDgO_1F:	dc.b 1	
		dc.b $E0, $A, 8, 9, $F8	
SME__EDgO_25:	dc.b $B	
		dc.b $D8, 2, 0, $15, $F8	
		dc.b $D0, 7, 0, $18, 0	
		dc.b $D8, 2, 0, $33, $10	
		dc.b $D0, 3, 0, $36, $18	
		dc.b $E8, 0, 0, $3A, $20	
		dc.b $F0, $A, 0, $29, $10	
		dc.b 0, 0, 0, $32, $28	
		dc.b $F0, 1, 0, $20, $F0	
		dc.b $F0, 1, 0, $22, $F8	
		dc.b $F0, 1, 0, $24, 0	
		dc.b $F0, 2, 0, $26, 8	
		even