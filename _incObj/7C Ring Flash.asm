; ---------------------------------------------------------------------------
; Object 7C - Super Sonic in Unreal Battle Zone
; ---------------------------------------------------------------------------

SuperSonic:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	SuperS_Index(pc,d0.w),d1
		jmp	SuperS_Index(pc,d1.w)
; ===========================================================================
SuperS_Index:
		dc.w SuperS_Init-SuperS_Index
		dc.w SuperS_Main-SuperS_Index
		dc.w SuperS_Death-SuperS_Index
		dc.w SuperS_ResetLevel-SuperS_Index
; ===========================================================================

SuperS_Init:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		move.b	#1,(pal_superform).w
		move.b	#$F,(Palette_timer).w
		move.b	#1,(f_supersonic).w
		jsr	Character_Mappings		; Load the character map
		move.w	#$780,obGfx(a0)
		move.b	#2,obPriority(a0)
		move.b	#$18,obActWid(a0)
		move.b	#4,obRender(a0)
		move.b	#id_Run,obAnim(a0)
		move.b	#id_SuperStars,(v_sstarsobj).w	; load super sonic stars object
		move.b	#60,(super_framecount).w	; Reset frame counter to 60

; ===========================================================================

SuperS_Main:	; Routine 2
		move.w	(v_jpadhold1).w,(v_jpadhold2).w ; enable joypad control
		jsr	(DisplaySprite).l
		bsr.w	SuperS_Move
		jsr	(SpeedToPos).l
		bsr.w	SuperS_LevelBound
		jsr	Sonic_RecordPosition
		subq.b	#1,(super_framecount).w
		bhi.w	.continue
		move.b	#60,(super_framecount).w	; Reset frame counter to 60
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
		bne.s	.continue
		jmp	Kill_SuperS

.continue:
		tst.b	obAnim(a0)
		bne.s	.skip
		move.b	obNextAni(a0),obAnim(a0)

.skip:
		jsr	SuperS_Animate
		jsr	(ReactToItem).l
		jmp	Sonic_LoadGfx

; ---------------------------------------------------------------------------
; Subroutine to	make Super Sonic move
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SuperS_Move:
		tst.b	(f_lockctrl).w
		bne.s	.return
		move.w	#$900,d0
		moveq	#0,d1
		move.b	(v_jpadhold2).w,d2
		btst	#bitL,d2 ; is left being pressed?
		beq.s	.notleft	; if not, branch
		move.w	#$600,d0
		bra.s	.LookUp

.notleft:
		btst	#bitR,d2 ; is right being pressed?
		beq.s	.LookUp	; if not, branch
		move.w	#$C00,d0

.LookUp:
		btst	#bitUp,d2 ; is up being pressed?
		beq.s	.Duck	; if not, branch
		move.w	#-$500,d1
		bra.s	.End

.Duck:
		btst	#bitDn,d2 ; is down being pressed?
		beq.s	.End	; if not, branch
		move.w	#$500,d1

.End:
		move.w	d0,obVelX(a0)
		move.w	d1,obVelY(a0)

.return:
		rts	
; End of function SuperS_MoveRight

; ---------------------------------------------------------------------------
; Subroutine to	prevent	Sonic leaving the boundaries of	a level
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SuperS_LevelBound:
		move.l	obX(a0),d1
		move.w	obVelX(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap	d1
		move.w	(v_limitleft2).w,d0
		addi.w	#$10,d0
		cmp.w	d1,d0		; has Sonic touched the	side boundary?
		bhi.w	.sides		; if yes, branch
		move.w	(v_limitright2).w,d0
		addi.w	#$128,d0
		tst.b	(f_lockscreen).w
		bne.s	.screenlocked
		addi.w	#$40,d0

.screenlocked:
		cmp.w	d1,d0		; has Sonic touched the	side boundary?
		bls.w	.sides		; if yes, branch

.chkbottom:
		move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has Sonic touched the	bottom boundary?
		blt.s	.bottom		; if yes, branch
		rts	
; ===========================================================================

.bottom:
        jmp	Kill_SuperS
    
; ===========================================================================

.sides:
		move.w	d0,obX(a0)
		move.w	#0,obX+2(a0)
		move.w	#0,obVelX(a0)	; stop Sonic moving
		move.w	#0,obInertia(a0)
		bra.w	.chkbottom
; End of function Sonic_LevelBound

; ---------------------------------------------------------------------------
; Subroutine to	animate	Sonic's sprites
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SuperS_Animate:
		lea	(Ani_SprSonic).l,a1
		tst.b	(v_character).w ; if player flag set?
        beq.s	.continue
        lea	(Ani_Amy).l,a1
.continue
		moveq	#0,d0
		move.b	obAnim(a0),d0
		cmp.b	obNextAni(a0),d0 ; is animation set to restart?
		beq.s	.do		; if not, branch
		move.b	d0,obNextAni(a0) ; set to "no restart"
		move.b	#0,obAniFrame(a0) ; reset animation
		move.b	#0,obTimeFrame(a0) ; reset frame duration

.do:
		add.w	d0,d0
		adda.w	(a1,d0.w),a1	; jump to appropriate animation	script
		move.b	(a1),d0
		bmi.s	.walkrunroll	; if animation is walk/run/roll/jump, branch
		move.b	obStatus(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,obRender(a0)
		or.b	d1,obRender(a0)
		subq.b	#1,obTimeFrame(a0) ; subtract 1 from frame duration
		bpl.s	.delay		; if time remains, branch
		move.b	d0,obTimeFrame(a0) ; load frame duration

.loadframe:
		moveq	#0,d1
		move.b	obAniFrame(a0),d1 ; load current frame number
		move.b	1(a1,d1.w),d0	; read sprite number from script
		cmp.b	#$FD,d0		; is it a flag from FD to FF?
		bhs	.end_FF		; if so, branch to flag routines

.next:
		move.b	d0,obFrame(a0)	; load sprite number
		addq.b	#1,obAniFrame(a0) ; next frame number

.delay:
		rts	
; ===========================================================================

.end_FF:
		addq.b	#1,d0		; is the end flag = $FF	?
		bne.s	.end_FE		; if not, branch
		move.b	#0,obAniFrame(a0) ; restart the animation
		move.b	1(a1),d0	; read sprite number
		bra.s	.next
; ===========================================================================

.end_FE:
		addq.b	#1,d0		; is the end flag = $FE	?
		bne.s	.end_FD		; if not, branch
		move.b	2(a1,d1.w),d0	; read the next	byte in	the script
		sub.b	d0,obAniFrame(a0) ; jump back d0 bytes in the script
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0	; read sprite number
		bra.s	.next
; ===========================================================================

.end_FD:
		addq.b	#1,d0		; is the end flag = $FD	?
		bne.s	.end		; if not, branch
		move.b	2(a1,d1.w),obAnim(a0) ; read next byte, run that animation

.end:
		rts	
; ===========================================================================

.walkrunroll:
		subq.b	#1,obTimeFrame(a0) ; subtract 1 from frame duration
		bpl.s	.delay		; if time remains, branch
		addq.b	#1,d0		; is animation walking/running?
		bne.w	.rolljump	; if not, branch
		moveq	#0,d1
		move.b	obAngle(a0),d0	; get Sonic's angle
		move.b	obStatus(a0),d2
		andi.b	#1,d2		; is Sonic mirrored horizontally?
		bne.s	.flip		; if yes, branch
		not.b	d0		; reverse angle

.flip:
		addi.b	#$10,d0		; add $10 to angle
		bpl.s	.noinvert	; if angle is $0-$7F, branch
		moveq	#3,d1

.noinvert:
		andi.b	#$FC,obRender(a0)
		eor.b	d1,d2
		or.b	d2,obRender(a0)

		lsr.b	#4,d0		; divide angle by $10
		andi.b	#6,d0		; angle	must be	0, 2, 4	or 6
		move.w	obInertia(a0),d2 ; get Sonic's speed
		bpl.s	.nomodspeed
		neg.w	d2		; modulus speed

.nomodspeed:
		lea	(SprAni_Run).l,a1 ; use	running	animation
		tst.b (v_character).w ; if player flag set?
		beq.s .continue_1
		lea (RoseAni_Run).l,a1 ; use running animation

.continue_1:
		add.b	d0,d0
		move.b	d0,d3
		neg.w	d2
		addi.w	#$800,d2
		bpl.s	.belowmax
		moveq	#0,d2		; max animation speed

.belowmax:
		lsr.w	#8,d2
		move.b	d2,obTimeFrame(a0) ; modify frame duration
		bsr.w	.loadframe
		add.b	d3,obFrame(a0)	; modify frame number
		rts	
; ===========================================================================

.rolljump:
		addq.b	#1,d0		; is animation rolling/jumping?
		move.w	obInertia(a0),d2 ; get Sonic's speed
		bpl.s	.nomodspeed2
		neg.w	d2

.nomodspeed2:
		lea	(SprAni_Roll2).l,a1 ; use fast animation
		tst.b 	(v_character).w ; if player flag set?
		beq.s 	.continue_3
		lea 	(RoseAni_Roll2).l,a1 ; use walking animation

.continue_3:
		cmpi.w	#$600,d2	; is Sonic moving fast?
		bcc.s	.rollfast	; if yes, branch
		lea	(SprAni_Roll).l,a1 ; use slower	animation
		tst.b (v_character).w ; if player flag set?
		beq.s .rollfast
		lea (RoseAni_Roll).l,a1 ; use walking animation

.rollfast:
		neg.w	d2
		addi.w	#$400,d2
		bpl.s	.belowmax2
		moveq	#0,d2

.belowmax2:
		lsr.w	#8,d2
		move.b	d2,obTimeFrame(a0) ; modify frame duration
		move.b	obStatus(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,obRender(a0)
		or.b	d1,obRender(a0)
		bra.w	.loadframe

; End of function SuperS_Animate
; ===========================================================================

Kill_SuperS:
		move.b	#0,(v_invinc).w	; remove invincibility
		move.b	#1,(f_lockctrl).w ; lock controls
		addq.b	#2,obRoutine(a0)
		bset	#1,obStatus(a0)
		move.w	#-$700,obVelY(a0)
		move.w	#0,obVelX(a0)
		move.w	#0,obInertia(a0)
		move.w	obY(a0),$38(a0)
		bset	#7,obGfx(a0)
		move.b	#id_Death,obAnim(a0)
		move.w	#sfx_Death,d0	; play normal death sound
		jsr	(PlaySound_Special).l    

.dontdie:
		moveq	#-1,d0
		rts	
; End of function KillSonic

; ---------------------------------------------------------------------------
; Super Sonic when he dies
; ---------------------------------------------------------------------------

SuperS_Death:	; Routine 6
		jsr	GameOver
		jsr	(ObjectFall).l
		jsr	Sonic_RecordPosition
		jsr	SuperS_Animate
		jsr	Sonic_LoadGfx
		move.w	#60,$3A(a0)	; set time delay to 1 second
		jmp	(DisplaySprite).l

; ---------------------------------------------------------------------------
; Super Sonic when the level is restarted
; ---------------------------------------------------------------------------

SuperS_ResetLevel:	; Routine 8
		tst.w	$3A(a0)
		beq.s	.return
		subq.w	#1,$3A(a0)	; subtract 1 from time delay
		bne.s	.return
		move.b	#1,(f_restart).w ; restart the level

.return:
		rts	