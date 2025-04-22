; ---------------------------------------------------------------------------
; Subroutine to make Amy jump higher
; ---------------------------------------------------------------------------
AmyHighJump:
		tst.b	(v_character)
		beq.w	.return
		btst	#bitUp,(v_jpadhold2).w ; check to see if your looking up
		beq.w	.return
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		beq.w	.return	; if not, branch
		moveq	#0,d0
		moveq	#0,d1
		move.b	obAngle(a0),d0
		addi.b	#$80,d0
		bsr.w	sub_14D48
		cmpi.w	#6,d1
		blt.w	.return
		move.w	#$680,d2
		btst	#6,obStatus(a0)
		beq.s	.skip
		move.w	#$380,d2

.skip:
		moveq	#0,d0
		jsr	(CalcSine).l
		muls.w	d2,d1
		asr.l	#8,d1
		;add.w	d1,obVelX(a0)	; make Amy jump
		move.w #-$C00,$12(a0); move Amy upwards
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
        btst    #2,$22(a0)
        bne.s   .return
		move.b	#id_Spindash,obAnim(a0) ; use "high-jumping" animation
		bset	#2,obStatus(a0)
		addq.w	#5,obY(a0)

.return:
		rts	
; End of function Sonic_Jump
