; ---------------------------------------------------------------------------
; Subroutine to perform a Dropdash
; ---------------------------------------------------------------------------

Sonic_DropDash:
		tst.b	(v_character).w
		beq.s	.valid
		rts
.valid:
		tst.b	(f_supersonic).w
		bne.s	Sonic_JumpDash
        cmpi.b  #id_Warp,obAnim(a0)      ; are we already in dropdash animation
        beq.s   .back   ; if yes, return
        move.b    (v_jpadpress2).w,d0
        andi.b    #btnC,d0    ; is C pressed?
        beq.w    .back    ; if not, branch

        move.w    #sfx_DropDash,d0
        jsr    (PlaySound_Special).l ;    play Sonic rolling sound

        move.b    #id_Warp,obAnim(a0) 
        move.b     #1,f_spindash(a0)
.back:
        rts


; End of function Sonic_DropDash

; -----------------------------------------------------------------------------
; Subroutine to make Amy perform a stop in midair
; -----------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||
Amy_Midair_Stop:
		tst.b	(v_character).w
		bne.s	.valid
		rts
.valid:
		btst	#7,obStatus(a0)	; is the stop in midair flag set?
		bne.s 	.back			; if yes, branch
		cmpi.b 	#id_Roll,obAnim(a0)	; is amy using roll animation?
		bne.w 	.back			; if yes, branch
		move.b 	(v_jpadpress1).w,d0
		andi.b 	#$70,d0			; is ABC button pressed?
		beq.s 	.back			; if not, branch
		bset	#2,obStatus(a0)
		bset	#7,obStatus(a0)	; set the stop in midair flag
		clr.w 	obVelY(a0)			; move Amy upwards
		move.b 	#9,obAnim(a0)	; use "hammer" animation
.back:
		rts

; ---------------------------------------------------------------------------
; Subroutine to perform a Jumpdash
; ---------------------------------------------------------------------------

Sonic_JumpDash:
		move.b (v_jpadpress2).w,d0 ; is ABC pressed? (part 1)
		andi.b #btnABC,d0 ; is ABC pressed? (part 2)
		beq.w .End ; if not, branch
		tst.b (f_jumpdash).w ; was jumpdash flag set?
		bne.w .End ; if yes, branch
		move.b #1,(f_jumpdash).w ; if not, set jumpdash flag
		move.b #sfx_Teleport,d0 ; set jumpdash sound
		jsr (PlaySound_Special).l ; play jumpdash sound
		bclr #4,obStatus(a0) ; clear double jump flag
		move.w #$A00,d0 ; set normal jumpdash speed
		tst.b (v_shoes).w ; do you have speed shoes?
		beq.s .ChkUW ; if not, branch
		move.w #$B00,d0 ; set speed shoes jumpdash speed

.ChkUW:
		btst #6,obStatus(a0) ; is Sonic underwater?
		beq.s .ChkDirection ; if not, branch
		move.w #$600,d0 ; set underwater jumpdash speed

.ChkDirection:
		btst #0,obStatus(a0) ; is sonic facing left?
		beq.s .Move ; if yes, branch
		neg.w d0 ; if not, negate d0 (for jumping to the right)

.Move:
		move.w d0,obVelX(a0) ; move Sonic forward with the selected speed (obVelX(a0) = Sonic's X-velocity)
		clr.w obVelY(a0) ; clear Sonic's Y-velocity to move sonic directly down

.End:
		rts ; return
; End of function Sonic_JumpDash