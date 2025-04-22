; ---------------------------------------------------------------------------
; Animation script - The ring and fire in Team Encore's splash screen
; ---------------------------------------------------------------------------
Ani_TEncore_Int:
		dc.w .ring-Ani_TEncore_Int
		dc.w .fire-Ani_TEncore_Int
.ring:
		dc.b 4,	1, 2, 3, 4, afEnd
.fire:
		dc.b 4,	0, 5, afEnd
		even