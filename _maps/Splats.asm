; ---------------------------------------------------------------------------
; Sprite mappings - Splats enemy (SLZ)
; ---------------------------------------------------------------------------
Map_Splats_internal:
		dc.w byte_D310-Map_Splats_internal
		dc.w byte_D31B-Map_Splats_internal

byte_D310:	dc.b 2
		dc.b $EC, $B, 0, 0, $F4
		dc.b $C, 8, 0, $C, $F4

byte_D31B:	dc.b 2
		dc.b $EC, $B, 0, $F, $F4
		dc.b $C, 4, 0, $1B, $FB
		even
