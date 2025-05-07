; ----------------------------------------------------------------------------
; Object 2C - Chop Chop (piranha/shark badnik) from ARZ
; ----------------------------------------------------------------------------
; OST Variables:
ChopChop_move_timer	= $2A	; time to wait before turning around
ChopChop_bubble_timer	= $2C	; time to wait before producing a bubble
; Sprite_36DAC:
ChopChop:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	ChopChop_Index(pc,d0.w),d1
		jmp	ChopChop_Index(pc,d1.w)
; ===========================================================================
; off_36DBA:
ChopChop_Index:
		dc.w ChopChop_Init-ChopChop_Index		; 0 - Initialize object variables
		dc.w ChopChop_Main-ChopChop_Index		; 2 - Moving back and forth until Sonic or Tails approach
		dc.w ChopChop_Waiting-ChopChop_Index	; 4 - Stopped, opening and closing mouth
		dc.w ChopChop_Charge-ChopChop_Index	; 6 - Charging at Sonic or Tails
; ===========================================================================
; loc_36DC2:
ChopChop_Init:
		addq.b	#2,obRoutine(a0)
		move.l	#Map_Jaws,obMap(a0)
		move.w	#$2486,obGfx(a0)
		ori.b	#4,obRender(a0)
		move.b	#$A,obColType(a0)
		move.b	#4,obPriority(a0)
		move.b	#$10,obActWid(a0)
		move.w	#$200,ChopChop_move_timer(a0)
		move.w	#$50,ChopChop_bubble_timer(a0)
		moveq	#$40,d0		; enemy speed
		btst	#0,obStatus(a0)	; is enemy facing left?
		bne.s	.skip		; if not, branch
		neg.w	d0		; else reverse movement direction
.skip:
		move.w	d0,obVelX(a0)	; set speed
		rts
; ===========================================================================
; loc_36DE4:
ChopChop_Main:
		subq.b	#1,ChopChop_bubble_timer(a0)
		bne.s	.skip1			; branch, if timer isn't done counting down
		bsr.w	ChopChop_MakeBubble
.skip1:
		subq.w	#1,ChopChop_move_timer(a0)
		bpl.s	.skip2			; branch, if timer isn't done counting down
		move.w	#$200,ChopChop_move_timer(a0)	; else, reset timer...
		bchg	#0,obStatus(a0)		; ...change direction...
		bchg	#0,obRender(a0)
		neg.w	obVelX(a0)		; ...and reverse movement
.skip2:
		jsr	SpeedToPos
		bsr.w	Obj_GetOrientationToPlayer
		move.w	d2,d4
		move.w	d3,d5
		bsr.w	ChopChop_TestCharacterPos	; are Sonic or Tails close enough to attack?
		bne.s	ChopChop_PrepareCharge	; if yes, prepare to charge at them
		jmp	RememberState
; ===========================================================================
; loc_36E20
ChopChop_PrepareCharge:
		addq.b	#2,obRoutine(a0)	; => ChopChop_Waiting
		move.b	#$10,ChopChop_move_timer(a0)	; time to wait before charging at the player
		clr.w	obVelX(a0)		; stop movement
		jmp	RememberState
; ===========================================================================
; loc_36E32:
ChopChop_Waiting:
		subq.b	#1,ChopChop_move_timer(a0)
		bmi.s	ChopChop_MoveTowardsPlayer		; branch, if wait time is over
		bra.w	ChopChop_Animate
; ===========================================================================
; loc_36E3C:
ChopChop_MoveTowardsPlayer:
		addq.b	#2,obRoutine(a0)	; => ChopChop_Charge
		bsr.w	Obj_GetOrientationToPlayer
		lsr.w	#1,d0		; set speed based on closest character
		move.b	ChopChop_HorizontalSpeeds(pc,d0.w),obVelX(a0)	; horizontal
		addi.w	#$10,d3
		cmpi.w	#$20,d3		; is closest character withing $10 pixels above or $F pixels below?
		blo.s	.skip		; if not, branch
		lsr.w	#1,d1		; set speed based on closest character
		move.b	ChopChop_VerticalSpeeds(pc,d1.w),1+y_vel(a0)	; vertical
.skip:
		bra.w	ChopChop_Animate
; ===========================================================================
; byte_36E62:
ChopChop_HorizontalSpeeds:
		dc.b  -2	; 0 - player is left from object -> move left
		dc.b   2	; 1 - player is right from object -> move right
; byte_36E64:
ChopChop_VerticalSpeeds:
		dc.b $80	; 0 - player is above object -> ...move down?
		dc.b $80	; 1 - player is below object -> move down
; ===========================================================================
; loc_36E66:
ChopChop_Charge:
		jsr	SpeedToPos
; loc_36E6A:
ChopChop_Animate:
		lea	(Ani_ChopChop).l,a1
		jsr	AnimateSprite
		jmp	RememberState
; ===========================================================================
; loc_36E78:
ChopChop_MakeBubble:
		move.w	#$50,ChopChop_bubble_timer(a0)	; reset timer
		jsr	FindFreeObj
		bne.s	.return
		_move.b	#id_DrownCount,(a1) ; load obj
		move.b	#id_Drown_Display,obSubtype(a1) ; <== Obj90_SubObjData2
		move.w	obX(a0),obX(a1)	; align objects horizontally
		moveq	#$14,d0			; load x-offset
		btst	#0,obRender(a0)	; is object facing left?
		beq.s	.skip			; if not, branch
		neg.w	d0			; else mirror offset
.skip:
		add.w	d0,obX(a1)		; add horizontal offset
		move.w	obY(a0),obY(a1)	; align objects vertically
		addq.w	#6,obY(a1)		; move object 6 pixels down

.return:
		rts
; ===========================================================================
; loc_36EB2:
ChopChop_TestCharacterPos:
		addi.w	#$20,d3
		cmpi.w	#$40,d3			; is character too low?
		bhs.s	ChopChop_DoNotCharge	; if yes, branch
		tst.w	d2			; is character to the left?
		bmi.s	ChopChop_TestPosLeft	; if yes, branch
		tst.w	obVelX(a0)		; is object moving left, towards character?
		bpl.s	ChopChop_DoNotCharge	; if not, branch
		bra.w	ChopChop_TestHorizontalDist
; ===========================================================================
; loc_36ECA:
ChopChop_TestPosLeft:
		tst.w	obVelX(a0)		; is object moving right, towards character?
		bmi.s	ChopChop_DoNotCharge	; if not, branch
		neg.w	d2			; get absolute value

; loc_36ED2:
ChopChop_TestHorizontalDist:
		cmpi.w	#$20,d2			; is distance less than $20?
		blo.s	ChopChop_DoNotCharge	; if yes, don't attack
		cmpi.w	#$A0,d2			; is distance less than $A0?
		blo.s	ChopChop_PlayerInRange	; if yes, attack

; loc_36EDE:
ChopChop_DoNotCharge:
		moveq	#0,d2			; -> don't charge at player
		rts
; ===========================================================================
; loc_36EE2:
ChopChop_PlayerInRange:
		moveq	#1,d2			; -> charge at player
		rts
; ===========================================================================