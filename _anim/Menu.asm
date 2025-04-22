; ---------------------------------------------------------------------------
; Animation script - Menu
; ---------------------------------------------------------------------------
.offsets:
		;dc.w .Sonic-.offsets
		;dc.w .Amy-.offsets
		dc.w .Start-.offsets
		dc.w .Tutorial-.offsets

;.Sonic:		dc.b 5,	0, 1, 2, 1, afEnd
;		even
;.Amy:		dc.b 5,	3, 4, 5, 4, afEnd
;		even
.Start:		dc.b 5,	9, $A, $B, $A, afEnd
		even
.Tutorial:	dc.b 5,	6, 7, 8, 7, afEnd
		even