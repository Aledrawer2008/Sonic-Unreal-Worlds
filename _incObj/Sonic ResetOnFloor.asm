; ---------------------------------------------------------------------------
; Subroutine to	reset Sonic's mode when he lands on the floor
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

Sonic_ResetOnFloor:
		bclr	#5,obStatus(a0)
		bclr	#1,obStatus(a0)
		clr.b	(f_jumpdash).w ; clear jumpdash flag
		move.b	#id_Walk,obAnim(a0) 	; use running/walking animation
		btst	#2,obStatus(a0)
		beq.s	loc_137E4
		bclr	#2,obStatus(a0)
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		bclr	#7,obStatus(a0)		
		subq.w	#5,obY(a0)

loc_137E4:
		move.b	#0,$3C(a0)
		move.w	#0,(v_itembonus).w
		rts	
; End of function Sonic_ResetOnFloor