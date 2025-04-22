; ---------------------------------------------------------------------------
; Object 4A - Train Boss from Train Assault Zone
; ---------------------------------------------------------------------------

TrainBoss:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	BTAZ_Index(pc,d0.w),d1
		jsr	BTAZ_Index(pc,d1.w)
		jmp	(DisplaySprite).l
; ===========================================================================
BTAZ_Index:
		dc.w BTAZ_Init-BTAZ_Index
		dc.w BTAZ_Main-BTAZ_Index
		dc.w BTAZ_Defeated-BTAZ_Index
		dc.w BTAZ_Explode-BTAZ_Index
; ===========================================================================

BTAZ_Init:
		addq.b	#2,obRoutine(a0)
		move.l	#Map_Train,obMap(a0)
		move.w	#$4400,obGfx(a0)
		move.b	#4,obRender(a0)
		move.b	#$20,obActWid(a0)
		move.b	#3,obPriority(a0)
		move.b	#$3F,obColType(a0)
		move.b	#8,obColProp(a0) ; set number of hits to 8

BTAZ_Main:
		tst.b	obStatus(a0)
		bmi.s	BTAZ_Defeated
		tst.b	obColType(a0)
		bne.s	BTAZ_SpawnBomb
		tst.b	$3E(a0)
		bne.s	BTAZ_Flash
		move.b	#$20,$3E(a0)	; set number of	times for the train to flash
		move.w	#sfx_HitBoss,d0
		jsr	(PlaySound_Special).l	; play boss damage sound

BTAZ_Flash:
		lea	(v_pal_dry+$3C).w,a1 ; load 3rd palette , 13th entry
		moveq	#0,d0		; move 0 (black) to d0
		tst.w	(a1)
		bne.s	.skip
		move.w	#cWhite,d0	; move 0EEE (white) to d0

.skip:
		move.w	d0,(a1)		; load colour stored in	d0
		subq.b	#1,$3E(a0)
		bne.s	BTAZ_SpawnBomb
		move.b	#$3F,obColType(a0)

BTAZ_SpawnBomb:
		tst.b	objoff_39(a0)
		bne.s	.number_countdown
		jsr	(RandomNumber).l
		addq.b	#2,objoff_39(a0)
		swap	d1
		andi.b	#$80,d1

.number_countdown:
		subq.b	#1,d1
		bne.s	.NotLaunch

		jsr	(FindFreeObj).l
		bne.s	.NotLaunch
		_move.b	#id_TAZSpikeBall,(a1)
		clr.b	obRoutine(a1)
		clr.b	objoff_39(a0)
		move.w	obX(a0),obX(a1)
		move.w	obY(a0),obY(a1)

.NotLaunch
		rts	
; ===========================================================================

BTAZ_Defeated:
		moveq	#100,d0
		jsr	AddPoints
		move.b	#4,objoff_39(a0)
		move.b	#1,(v_bossstatus).w
		clr.b	(f_timecount).w
		move.w	#$B4,$3C(a0)
		clr.w	obVelX(a0)
		addq.b	#2,obRoutine(a0)
		rts	

BTAZ_Explode:
		subq.w	#1,$3C(a0)
		bmi.s	BTAZ_Delete
		bra.w	BossDefeated

BTAZ_Delete:
        move.b  #2,(f_victorypose).w ; Set Victory Flag to 2
		clr.b	(v_jpadhold2).w
		jsr	GotThroughAct
		jmp	(DeleteObject).l