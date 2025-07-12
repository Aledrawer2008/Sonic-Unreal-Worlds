; ---------------------------------------------------------------------------
; Subroutine controlling Sonic's jump height/duration
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_JumpHeight:
		tst.b	obJumping(a0)
		beq.s	loc_134C4
		move.w	#-$400,d1
		btst	#6,obStatus(a0)
		beq.s	loc_134AE
		move.w	#-$200,d1

loc_134AE:
		cmp.w	obVelY(a0),d1
		ble.s	locret_134C2
		move.b	(v_jpadhold2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		bne.s	locret_134C2	; if yes, branch
		move.w	d1,obVelY(a0)

locret_134C2:
        move.b  (v_jpadpress1).w,d0
        andi.b  #btnA,d0 ; is a jump button pressed?
        bne.s   Sonic_CheckGoSuper      ; if yes, test for turning into Super Sonic
        rts

; ===========================================================================

loc_134C4:
		tst.w   obVelY(a0)
		bne.s   locret_134D2 
		cmpi.b	#id_Spring,obAnim(a0)
		beq.s   locret_134D2
		cmpi.b	#id_Roll,obAnim(a0)
		beq.s   locret_134D2
		cmpi.b	#id_Shrink,obAnim(a0)
		beq.s   locret_134D2
		cmpi.b	#id_Warp,obAnim(a0)
		beq.s   locret_134D2
		move.b  #id_Surf,obAnim(a0)
		cmpi.w	#-$FC0,obVelY(a0)
		bge.s	locret_134D2
		move.w	#-$FC0,obVelY(a0)

locret_134D2:
		rts	
; End of function Sonic_JumpHeight
; ---------------------------------------------------------------------------
; Subroutine called at the peak of a jump that transforms Sonic into Super
; Sonic if he has enough rings and emeralds
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc_1AB38: test_set_SS:
Sonic_CheckGoSuper:
		tst.b	(f_supersonic).w	; is Sonic already Super?
		bne.w	Sonic_RevertToNormal	; if yes, branch (This allows for reverting manually)
		tst.b	(f_timecount).w
		beq.w	return_1ABA4
	if DefaultSuperForm = 0
		cmpi.b	#7,(v_emeralds).w	; does Sonic have exactly 7 emeralds?
		bne.w	return_1ABA4		; if not, branch
	endif
		cmpi.w	#50,(v_rings).w	; does Sonic have at least 50 rings?
		bcs.w	return_1ABA4		; if not, branch	

		move.b	#1,(pal_superform).w
		move.b	#$F,(Palette_timer).w
		move.b	#1,(f_supersonic).w
		lea	(SprSonicDynPLC).l,a2	; Load the Super Sonic DPLC.
		tst.b	(v_character).w
		bne.s	.common
		lea	(SprAmyDynPLC).l,a2	; Load the Super Amy DPLC.
.common:
		jsr	Character_Mappings
		move.b	#id_Shrink,obAnim(a0)			; use transformation ObAnimation
		move.b	#bgm_Slowdown,d0
		jsr		(PlaySound).l
		move.b	#id_SuperStars,(v_sstarsobj).w	; load super sonic stars object
		move.w	#sfx_Transform,d0
		jsr		(PlaySound_Special).l	; Play transform sound effect.
		move.w	#$C00,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#$18,(v_sonspeedacc).w	; change Sonic's acceleration
		move.w	#$80,(v_sonspeeddec).w	; change Sonic's deceleration
		btst	#6,obStatus(a0)	; Check if underwater, return if not
		beq.s	.skip
		move.w	#$500,(v_sonspeedmax).w
		move.w	#$18,(v_sonspeedacc).w
		move.w	#$80,(v_sonspeeddec).w
.skip:
		move.w	#0,(v_player+$34).w	; time limit for the power-up
		bset	#1,(v_invinc).w	; make Sonic invincible
		cmpi.w	#$502,(v_zone).w
		beq.s	return_1ABA4
		move.w	#bgm_SuperTheme,d0
		add.b	(v_character).w,d0
		jmp	(PlaySound).l	; load the super theme

; ---------------------------------------------------------------------------
return_1ABA4:
		rts
; End of subroutine Sonic_CheckGoSuper


; ---------------------------------------------------------------------------
; Subroutine doing the extra logic for Super Sonic
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc_1ABA6:
Sonic_Super:
		tst.b	(f_supersonic).w	; Ignore all this code if not Super Sonic
		beq.w	return_1AC3C
		tst.b	(f_timecount).w
		beq.s	Sonic_RevertToNormal
		subq.b	#1,(super_framecount).w
		bhi.w	return_1AC3C
		move.b	#60,(super_framecount).w	; Reset frame counter to 60
		tst.w	(v_rings).w
		beq.s	Sonic_RevertToNormal
		ori.b	#1,(f_ringcount).w
		cmpi.w	#1,(v_rings).w
		beq.s	.update
		cmpi.w	#10,(v_rings).w
		beq.s	.update
		cmpi.w	#100,(v_rings).w
		bne.s	.update2
.update
		ori.b	#$80,(f_ringcount).w
.update2
		subq.w	#1,(v_rings).w
		bne.s	return_1AC3C
; loc_1ABF2:
Sonic_RevertToNormal:
		move.b	#0,obControl(a0)	; restore Sonic's movement
		move.b	#2,(pal_superform).w	; Remove rotating palette
		move.w	#$28,(Palette_timer).w
		move.b	#0,(f_supersonic).w
		tst.b	(v_character).w
		bne.s	.Amy
		move.l	#Map_Sonic,obMap(a0)	; Load the Sonic map.
		lea	(SonicDynPLC).l,a2	; Load the Sonic DPLC.
		bra.s	.common
.Amy
		move.l	#Map_Amy,obMap(a0)
		lea	(AmyDynPLC).l,a2	; Load the Amy DPLC.
.common:
		move.b	#1,obNextAni(a0)	; Change ObAnim back to normal
		bclr	#1,(v_invinc).w	; remove invincibility
		move.w	#$600,(v_sonspeedmax).w
		move.w	#$C,(v_sonspeedacc).w
		move.w	#$80,(v_sonspeeddec).w
		btst	#6,obStatus(a0)	; Check if underwater, return if not
		beq.s	return_1AC3C
		move.w	#$300,(v_sonspeedmax).w
		move.w	#6,(v_sonspeedacc).w
		move.w	#$40,(v_sonspeeddec).w

return_1AC3C:
		rts
; End of subroutine Sonic_Super