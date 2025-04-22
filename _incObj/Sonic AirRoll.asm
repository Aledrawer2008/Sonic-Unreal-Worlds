; ---------------------------------------------------------------------------
; Subroutine allowing Sonic roll in mid-air
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_AirRoll:
		tst.b	(v_character).w
		beq.s	AirRoll_Valid
		rts
AirRoll_Valid
		move.b	(v_jpadpress2).w,d0 ; Move v_jpadpress2 to d0
		andi.b	#$70,d0 ; Has A/B/C been pressed?
		bne.w	AirRoll_Checks ; If so, branch.
		rts	; Return.
 
AirRoll_Checks:
        	cmpi.b	#2,$1C(a0) ; Is animation 2 active?
        	bne.s	AirRoll_Set ; If not, branch.
        	btst	#1,$22(a0) ; Is bit 1 in the status bitfield enabled?
        	bne.s	AirRoll_Set ; If so, branch.
        	rts                  ; Return.
AirRoll_Set:
        	move.b	#2,$1C(a0) ; Set Sonic's animation to rolling animation.
		move.b	#sfx_SpikesMove,d0
		jsr	(PlaySound_Special).l