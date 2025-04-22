; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to jump
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Jump:
		btst	#bitUp,(v_jpadhold2).w
		bne.w	locret_1348E
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		beq.w	locret_1348E	; if not, branch
		moveq	#0,d0
		moveq	#0,d1
		move.b	obAngle(a0),d0
		addi.b	#$80,d0
		bsr.w	sub_14D48
		cmpi.w	#6,d1
		blt.w	locret_1348E
		move.w	#$680,d2
		btst	#6,obStatus(a0)
		beq.s	loc_1341C
		move.w	#$380,d2

loc_1341C:
		tst.b	(f_supersonic)
		beq.s	.notSuper
		addi.w	#$280,d2				; set higher jump speed if super
.notSuper:
		moveq	#0,d0
		move.b	obAngle(a0),d0
		subi.b	#$40,d0
		jsr	(CalcSine).l
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,obVelX(a0)	; make Sonic jump
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,obVelY(a0)	; make Sonic jump
		bset	#1,obStatus(a0)
		bclr	#5,obStatus(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		bclr	#7,obStatus(a0)		; clear DoubleJump flag
		clr.b	$38(a0)
		move.w	#sfx_Jump,d0
		jsr	(PlaySound_Special).l	; play jumping sound
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		move.b	#$E,obHeight(a0)
		move.b	#7,obWidth(a0)
        btst    #2,obStatus(a0)
        bne.s   locret_1348E
		move.b	#id_Roll,obAnim(a0) ; use "jumping" animation
		tst.b	(f_victorypose).w
		beq.s	.skip
		tst.b	(v_character).w
		bne.s	.skip
		move.b	#id_Leap2,obAnim(a0) ; use "leaping" animation
.skip:
		bset	#2,obStatus(a0)
		addq.w	#5,obY(a0)

locret_1348E:
		rts	
; End of function Sonic_Jump