; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to curl up in the air
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

Sonic_AirRoll:
		tst.b	f_spindash(a0)		; is Sonic charging his spin dash?
		bne.w	.end					; if yes, branch
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnB,d0				; is buttons B being pressed?
		beq.s	.noAirRoll				; if not, branch
		
; Air Roll
		bset	#staSpin,obStatus(a0)	; set spin status
		move.b	#$E,obHeight(a0)
		move.b	#7,obWidth(a0)
		move.b	#id_Roll,obAnim(a0)	; enter rolling animation
		bset	#7,obStatus(a0)	; disable shield abilities and/or enable Drop Dash transition
		move.b	#1,obJumping(a0)		; enable this for potential drop dash transition
		move.w	#sfx_Roll,d0
		jsr	(PlaySound_Special).l	; play rolling sound

.noAirRoll:
		cmpi.w	#-$FC0,obVelY(a0)
		bge.s	.end
		move.w	#-$FC0,obVelY(a0)

.end:
		rts	
; End of function Sonic_ChkAirRoll
; ===========================================================================
