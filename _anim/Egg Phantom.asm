; ---------------------------------------------------------------------------
; Animation script - Egg Phantom (extra final boss)
; ---------------------------------------------------------------------------
Ani_EggPhantom:
		dc.w .head-Ani_Eggman
		dc.w .missile-Ani_Eggman
		dc.w .flame-Ani_Eggman

.head:		dc.b $F, 1, afEnd
		even
.missile:	dc.b 3,	2, 3, afEnd
		even
.flame:		dc.b 3,	4, 0, afEnd
		even