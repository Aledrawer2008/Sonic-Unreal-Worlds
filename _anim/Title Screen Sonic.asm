; ---------------------------------------------------------------------------
; Animation script - Sonic and Amy on the title screen
; ---------------------------------------------------------------------------
Ani_TSon:
		dc.w .sonic-Ani_TSon
		dc.w .amy-Ani_TSon
.sonic:
		dc.b 7,	0, 1, 2, 3, 4, 5, 4, afBack, 4
.amy:
		dc.b 9,	6, 7, 8, 9, $A, afBack, 2
		even