; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_KVRLs:	
		dc.w SME_KVRLs_18-SME_KVRLs, SME_KVRLs_1E-SME_KVRLs	
		dc.w SME_KVRLs_29-SME_KVRLs, SME_KVRLs_34-SME_KVRLs	
		dc.w SME_KVRLs_3F-SME_KVRLs, SME_KVRLs_4A-SME_KVRLs	
		dc.w SME_KVRLs_55-SME_KVRLs, SME_KVRLs_65-SME_KVRLs	
		dc.w SME_KVRLs_75-SME_KVRLs, SME_KVRLs_80-SME_KVRLs	
		dc.w SME_KVRLs_8B-SME_KVRLs, SME_KVRLs_9B-SME_KVRLs	
SME_KVRLs_18:	dc.b 1	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_1E:	dc.b 2	
		dc.b $F4, 5, 0, $10, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_29:	dc.b 2	
		dc.b $F4, 5, 0, $14, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_34:	dc.b 2	
		dc.b $F4, 5, 0, $18, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_3F:	dc.b 2	
		dc.b $F4, 5, $20, $1C, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_4A:	dc.b 2	
		dc.b $F4, 5, 0, $20, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_55:	dc.b 3	
		dc.b $F4, 1, 0, $24, $F8	
		dc.b $EF, $F, 0, 0, $F0	
		dc.b $F4, 1, 8, $24, 0	
SME_KVRLs_65:	dc.b 3	
		dc.b $EF, $F, 0, 0, $F0	
		dc.b $F4, 1, 0, $26, $F8	
		dc.b $F4, 1, 8, $26, 0	
SME_KVRLs_75:	dc.b 2	
		dc.b $F4, 5, $20, $28, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_80:	dc.b 2	
		dc.b $F4, 5, 0, $2C, $F8	
		dc.b $EF, $F, 0, 0, $F0	
SME_KVRLs_8B:	dc.b 3	
		dc.b $F4, 1, 8, $30, 0	
		dc.b $EF, $F, 0, 0, $F0	
		dc.b $F4, 1, 0, $30, $F8	
SME_KVRLs_9B:	dc.b 1	
		dc.b $FF, $D, 0, $32, $F0	
		even