; ---------------------------------------------------------------------------
; Subroutine to draw the HUD
; Blinking function refactored by RetroKoH
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc_17178:
BuildHUD:
		moveq	#0,d1
		tst.w	(v_rings).w
		bne.s	.chktime					; blink ring counter if 0
		btst	#3,(v_framebyte).w
		bne.s	.chktime					; only blink on certain frames
		addq.w	#1,d1						; set mapping frame for ring count blink

.chktime:
		cmpi.b	#id_Special,(v_gamemode).w	; is this the Special Stage?
		bne.s	.countup					; if no, behave like normal

	; blink at under 30 seconds
		cmpi.l	#$1E00,(v_time).w			; under 30 seconds remaining?
		bcc.s	.goahead
		btst	#3,(v_framebyte).w
		bne.s	.goahead					; only blink on certain frames
		addq.w	#2,d1						; set mapping frame time counter blink
		bra.s	.goahead

.countup:
	; Blink at 9 minutes
		btst	#3,(v_framebyte).w
		bne.s	.goahead					; only blink on certain frames
		cmpi.b	#9,(v_timemin).w			; have 9 minutes elapsed?
		bne.s	.goahead					; if not, branch
		addq.w	#2,d1						; set mapping frame time counter blink

.goahead:
		moveq	#0,d3
		move.b	(v_hudscrollpos).w,d3		; set X pos. Will scroll to $90.

		move.w	#128+136,d2					; set Y pos
		lea		(Map_HUD).l,a1
		movea.w	#$6CA,a3	; set art tile and flags
	
		cmpi.b	#2,(f_levelstarted).w		; are we building the Sp. Stage HUD?
		bne.s	.notSS						; if not, branch ahead
		lea		(Map_HUD_SS).l,a1
		movea.w	#$1F9,a3			; set art tile and flags

.notSS:
		add.w	d1,d1
		adda.w	(a1,d1.w),a1				; load frame
		move.w	(a1)+,d1					; load # of pieces in frame ; S2 BuildSprites .b > .w
		subq.w	#1,d1						; S2 BuildSprites .b > .w
		bmi.s	.end
		bra.w	BuildSpr_Normal				; draw frame
.end:
		rts
; End of function BuildHUD

