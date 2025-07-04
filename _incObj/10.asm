; ===========================================================================
; ----------------------------------------------------------------------------
; Object 10 - Speed booster from CPZ
; ----------------------------------------------------------------------------
speedbooster_boostspeed =	$30
; ---------------------------------------------------------------------------
; word_222BE:
Booster_BoosterSpeeds:
		dc.w $1000
		dc.w  $A00
; ===========================================================================
Speed_Booster:
		tst.b	obRoutine(a0)
		bne.s	Booster_Main
; ===========================================================================

Booster_Init:
		addq.b	#2,obRoutine(a0) ; => Booster_Main
		move.l	#Map_Booster,obMap(a0)
		move.w	#$3C0,obGfx(a0)
		tst.b	(v_zone).w
		bne.s	.skip
		move.w	#$471,obGfx(a0)

.skip:
		ori.b	#4,obRender(a0)
		move.b	#$20,obWidth(a0)
		move.b	#1,obPriority(a0)
		move.b	obSubtype(a0),d0
		andi.w	#2,d0
		move.w	Booster_BoosterSpeeds(pc,d0.w),speedbooster_boostspeed(a0)

Booster_Main:
		move.w	obX(a0),d0
		move.w	d0,d1
		subi.w	#$10,d0
		addi.w	#$10,d1
		move.w	obY(a0),d2
		move.w	d2,d3
		subi.w	#$10,d2
		addi.w	#$10,d3

		lea	(v_player).w,a1 ; a1=character
		btst	#1,obStatus(a1)
		bne.s	.skip
		move.w	obX(a1),d4
		cmp.w	d0,d4
		blo.w	.skip
		cmp.w	d1,d4
		bhs.w	.skip
		move.w	obY(a1),d4
		cmp.w	d2,d4
		blo.w	.skip
		cmp.w	d3,d4
		bhs.w	.skip
		move.w	d0,-(sp)
		bsr.w	Booster_GiveBoost
		move.w	(sp)+,d0
.skip
		jmp	RememberState
; ===========================================================================

Booster_GiveBoost:
		move.w	obVelX(a1),d0
		btst	#0,obStatus(a0)
		beq.s	.skip1
		neg.w	d0 ; d0 = absolute value of character's x velocity
.skip1
		cmpi.w	#$1000,d0		; is the character already going super fast?
		bge.s	.Done	; if yes, branch to not change the speed
		move.w	speedbooster_boostspeed(a0),obVelX(a1) ; make the character go super fast
		bclr	#0,obStatus(a1)	; turn him right
		btst	#0,obStatus(a0)	; was that the correct direction?
		beq.s	.skip2		; if yes, branch
		bset	#0,obStatus(a1)	; turn him left
		neg.w	obVelX(a1)	; make the boosting direction left
.skip2
		move.w	obVelX(a1),obInertia(a1)	; update his inertia value
		bclr	#5,obStatus(a0)
		bclr	#6,obStatus(a0)
		bclr	#5,obStatus(a1)

.Done:
		move.w	#sfx_Spring,d0 ; spring boing sound
		jmp	(PlaySound).l
; ===========================================================================