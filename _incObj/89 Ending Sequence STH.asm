; ---------------------------------------------------------------------------
; Object 89 - True final boss seen only when getting all emeralds
; ---------------------------------------------------------------------------

TrueFinalBoss:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	.index(pc,d0.w),d1
		jmp	.index(pc,d1.w)
; ===========================================================================
.index:
		dc.w TFB_Main-.index
		dc.w TFB_HeadMain-.index
		dc.w TFB_FlameMain-.index
		dc.w TFB_MissileMain-.index

TFB_ObjData:
		dc.b 2,	0		; routine counter, animation
		dc.b 4,	1
; ===========================================================================

TFB_Main:
		lea	(TFB_ObjData).l,a2
		movea.l	a0,a1
		moveq	#1,d1
		bra.s	.LoadBoss
; ===========================================================================

.Loop:
		jsr	(FindNextFreeObj).l
		bne.w	.skipObject

.LoadBoss:
		move.b	(a2)+,obRoutine(a1)
		_move.b	#id_TrueFinalBoss,0(a1)
		move.w	obX(a0),obX(a1)
		move.w	obY(a0),obY(a1)
		move.l	#Map_TFB,obMap(a1)
		move.w	#$2400,obGfx(a1)
		move.b	#4,obRender(a1)
		move.b	#$20,obActWid(a1)
		move.b	#3,obPriority(a1)
		move.b	(a2)+,obAnim(a1)
		move.l	a0,$34(a1)
		dbf	d1,.Loop	; repeat sequence 1 more time

.skipObject:
		move.w	obX(a0),$30(a0)
		move.w	obY(a0),$38(a0)
		move.b	#$F,obColType(a0)
		move.b	#8,obColProp(a0) ; set number of hits to 8

TFB_HeadMain:
		moveq	#0,d0
		move.b	ob2ndRout(a0),d0
		move.w	.subindex(pc,d0.w),d1
		jsr	.subindex(pc,d1.w)
		lea	(Ani_EggPhantom).l,a1
		jsr	(AnimateSprite).l
		jmp	(DisplaySprite).l
; ===========================================================================
.subindex:
		dc.w .main-.subindex
		dc.w .Defeated-.subindex
		dc.w .explode-.subindex
; ===========================================================================

.main:
		tst.b	obStatus(a0)
		bmi.w	.Defeated
		tst.b	obColType(a0)
		bne.w	.spawnmissile
		tst.b	$3E(a0)
		bne.s	.flash
		move.b	#$20,$3E(a0)	; set number of	times for the train to flash
		move.w	#sfx_HitBoss,d0
		jsr	(PlaySound_Special).l	; play boss damage sound

.flash:
		lea	(v_pal_dry+$22).w,a1 ; load 2nd pallet, 2nd entry
		moveq	#0,d0		; move 0 (black) to d0
		tst.w	(a1)
		bne.s	.skip
		move.w	#cWhite,d0	; move 0EEE (white) to d0

.skip:
		move.w	d0,(a1)		; load colour stored in	d0
		subq.b	#1,$3E(a0)
		bne.s	.spawnmissile
		move.b	#$3F,obColType(a0)

.spawnmissile:
		tst.b	objoff_39(a0)
		bne.s	.number_countdown
		jsr	(RandomNumber).l
		addq.b	#2,objoff_39(a0)
		swap	d1
		andi.b	#$7F,d1

.number_countdown:
		subq.b	#1,d1
		bne.s	.NotLaunch

		jsr	(FindFreeObj).l
		bne.s	.NotLaunch
		clr.b	objoff_39(a0)	
		_move.b	#id_TrueFinalBoss,(a1)
		move.b	#6,obRoutine(a1)
		move.b	#$F,obColType(a1)
		move.w	obX(a0),obX(a1)
		move.w	obY(a0),obY(a1)
		move.l	#Map_TFB,obMap(a1)
		move.w	#$2400,obGfx(a1)
		move.b	#4,obRender(a1)
		move.b	#$20,obActWid(a1)
		move.b	#3,obPriority(a1)
		move.b	#1,obAnim(a1)
		move.l	a0,$34(a1)

.NotLaunch
		rts	
; ===========================================================================

.Defeated:
		moveq	#100,d0
		jsr	AddPoints
		move.b	#4,ob2ndRout(a0)
		move.b	#1,(v_bossstatus).w
		clr.b	(f_timecount).w
		move.w	#$B4,$3C(a0)
		clr.w	obVelX(a0)
		addq.b	#2,ob2ndRout(a0)
		rts	

.explode:
		subq.w	#1,$3C(a0)
		bmi.s	TFB_Delete
		jmp	BossDefeated

TFB_Delete:
		move.b	#2,(v_bossstatus).w
		jmp	(DeleteObject).l
; ===========================================================================

TFB_FlameMain:
		addi.w	#$E00,obY(a0)
		subi.w	#$400,obX(a0)
		move.b	#2,obAnim(a0)
		lea	(Ani_EggPhantom).l,a1
		jsr	(AnimateSprite).l
		jmp	(DisplaySprite).l
; ===========================================================================

TFB_MissileMain:
		out_of_range.w	TFB_Delete
		move.w	#$400,obVelX(a0)
		jsr	(SpeedToPos).l
		lea	(Ani_EggPhantom).l,a1
		jsr	(AnimateSprite).l
		jmp	(DisplaySprite).l