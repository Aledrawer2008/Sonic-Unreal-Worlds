; ---------------------------------------------------------------------------
; Object 85 - Eggman (FZ)
; ---------------------------------------------------------------------------

Obj85_Delete:
		jmp	(DeleteObject).l
; ===========================================================================

BossFinal:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Obj85_Index(pc,d0.w),d0
		jmp	Obj85_Index(pc,d0.w)
; ===========================================================================
Obj85_Index:
		dc.w Obj85_Main-Obj85_Index
		dc.w Obj85_Eggman-Obj85_Index
		dc.w loc_1A38E-Obj85_Index
		dc.w loc_1A346-Obj85_Index
		dc.w loc_1A2C6-Obj85_Index
		dc.w loc_1A3AC-Obj85_Index
		dc.w loc_1A264-Obj85_Index

Obj85_ObjData:
		dc.w $100, $100, $470	; X pos, Y pos,	VRAM setting
		dc.l Map_SEgg		; mappings pointer
		dc.w $25B0, $590, $300
		dc.l Map_EggCyl
		dc.w $26E0, $596, $3A0
		dc.l Map_FZLegs
		dc.w $26E0, $596, $470
		dc.l Map_SEgg
		dc.w $26E0, $596, $400
		dc.l Map_Eggman
		dc.w $26E0, $596, $400
		dc.l Map_Eggman

Obj85_ObjData2:
		dc.b 2,	0, 4, $20, $19	; routine num, animation, sprite priority, width, height
		dc.b 4,	0, 1, $12, 8
		dc.b 6,	0, 3, 0, 0
		dc.b 8,	0, 3, 0, 0
		dc.b $A, 0, 3, $20, $20
		dc.b $C, 0, 3, 0, 0
; ===========================================================================

Obj85_Main:	; Routine 0
		lea	Obj85_ObjData(pc),a2
		lea	Obj85_ObjData2(pc),a3
		movea.l	a0,a1
		moveq	#5,d1
		bra.s	Obj85_LoadBoss
; ===========================================================================

Obj85_Loop:
		jsr	(FindNextFreeObj).l
		bne.s	loc_19E20

Obj85_LoadBoss:
		move.b	#id_BossFinal,(a1)
		move.w	(a2)+,obX(a1)
		move.w	(a2)+,obY(a1)
		move.w	(a2)+,obGfx(a1)
		move.l	(a2)+,obMap(a1)
		move.b	(a3)+,obRoutine(a1)
		move.b	(a3)+,obAnim(a1)
		move.b	(a3)+,obPriority(a1)
		move.b	(a3)+,obActWid(a1)
		move.b	(a3)+,obHeight(a1)
		move.b	#4,obRender(a1)
		bset	#7,obRender(a0)
		move.l	a0,$34(a1)
		dbf	d1,Obj85_Loop

loc_19E20:
		lea	$36(a0),a2
		jsr	(FindFreeObj).l
		bne.s	loc_19E5A
		move.b	#id_BossPlasma,(a1) ; load energy ball object
		move.w	a1,(a2)
		move.l	a0,$34(a1)
		lea	$38(a0),a2
		moveq	#0,d2
		moveq	#3,d1

loc_19E3E:
		jsr	(FindNextFreeObj).l
		bne.s	loc_19E5A
		move.w	a1,(a2)+
		move.b	#id_EggmanCylinder,(a1) ; load 4 crushing	cylinder object
		move.l	a0,$34(a1)
		move.b	d2,obSubtype(a1)
		addq.w	#2,d2
		dbf	d1,loc_19E3E

loc_19E5A:
		move.w	#0,$34(a0)
	if SkipFZBoss
		move.b	#1,obColProp(a0) ; set number of hits to 1
	else
		move.b	#8,obColProp(a0) ; set number of hits to 8
	endif
		move.w	#-1,$30(a0)

Obj85_Eggman:	; Routine 2
		moveq	#0,d0
		move.b	$34(a0),d0
		move.w	off_19E80(pc,d0.w),d0
		jsr	off_19E80(pc,d0.w)
		jmp	(DisplaySprite).l
; ===========================================================================
off_19E80:	dc.w FZEgg_Static-off_19E80, FZ_EggCrusher-off_19E80
		dc.w FZEgg_Electrocute-off_19E80, FZEgg_Fleeing-off_19E80
		dc.w loc_1A074-off_19E80, loc_1A112-off_19E80
		dc.w EggmanFleeingMobile-off_19E80, EggmanFleeingMobileHit-off_19E80
		dc.w EggmanEscapeMobile-off_19E80
; ===========================================================================

FZEgg_Static:
		tst.l	(v_plc_buffer).w
		bne.s	loc_19EA2
		cmpi.w	#boss_fz_x,(v_screenposx).w
		bcs.s	loc_19EA2
		addq.b	#2,$34(a0)

loc_19EA2:
		addq.l	#1,(v_random).w
		rts	
; ===========================================================================
; $30 -> Delay to crush
; $35 -> Invulnerability frames
FZ_EggCrusher:
		tst.w	$30(a0)		; rumbling state i guess
		bpl.s	FZ_EggCrusher_Crushing
		clr.w	$30(a0)
		jsr	(RandomNumber).l
		andi.w	#$C,d0
		move.w	d0,d1
		addq.w	#2,d1
		tst.l	d0
		bpl.s	FZ_EggCrusher_CylGenerate
		exg	d1,d0
		
		; what is even going on lmao
FZ_EggCrusher_CylGenerate:
		lea	word_19FD6(pc),a1 ; randomly generated delays
		move.w	(a1,d0.w),d0
		move.w	(a1,d1.w),d1
		
		
		; pinch mode
		cmpi.b	#2,obColProp(a0)
		bgt.s	.not_pinch
		move.w	#0,$30(a0)
		bra.s	.pinch
	.not_pinch:
		move.w	d0,$30(a0)
	.pinch:
		moveq	#-1,d2
		move.w	$38(a0,d0.w),d2
		movea.l	d2,a1
		move.b	#-1,$29(a1)
		move.w	#-1,$30(a1)
		move.w	$38(a0,d1.w),d2
		movea.l	d2,a1
		move.b	#1,$29(a1)
		move.w	#0,$30(a1)
		move.w	#1,$32(a0)
		clr.b	$35(a0)
		move.w	#sfx_Rumbling,d0
		jsr	(PlaySound_Special).l	; play rumbling sound

FZ_EggCrusher_Crushing:
		tst.w	$32(a0)
		bmi.w	loc_19FA6
		
		; Face player i think
		bclr	#0,obStatus(a0)
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0
		bcs.s	loc_19F2E
		bset	#0,obStatus(a0)

loc_19F2E:
		move.w	#$2B,d1
		move.w	#$14,d2
		move.w	#$14,d3
		move.w	obX(a0),d4
		jsr	(SolidObject).l
		tst.w	d4
		bgt.s	FZ_EggCrusher_PlayerHit

loc_19F48:
		tst.b	$35(a0)
		bne.s	FZ_EggCrusher_PlayerHit.cant_touch_yet
		bra.s	loc_19F96
; ===========================================================================

FZ_EggCrusher_PlayerHit:
		addq.w	#7,(v_random).w
		cmpi.b	#id_Roll,(v_player+obAnim).w
		bne.s	loc_19F48
		
		; PLAYER BOUNCE
		move.w	#$300,d0
		
		; pinch mode
		cmpi.b	#2,obColProp(a0)
		bgt.s	.not_pinch
		move.w	#$600,d0 ; even stronger
		
	.not_pinch:
	
		btst	#0,obStatus(a0)
		bne.s	.positive
		neg.w	d0

.positive:
		move.w	d0,(v_player+obVelX).w
		tst.b	$35(a0)
		bne.s	.cant_touch_yet
		subq.b	#1,obColProp(a0) ; obColProp is health btw
		move.b	#$64,$35(a0)
		move.w	#sfx_HitBoss,d0
		jsr	(PlaySound_Special).l	; play boss damage sound

.cant_touch_yet:
		subq.b	#1,$35(a0)
		beq.s	loc_19F96
		move.b	#3,obAnim(a0) ; in tube damage
		bra.s	FZ_EggAnim
; ===========================================================================

loc_19F96:
		move.b	#1,obAnim(a0) ;TEEHEEHEE

FZ_EggAnim:
		lea	Ani_SEgg(pc),a1
		jmp	(AnimateSprite).l
; ===========================================================================

loc_19FA6:
		; Branch if health is depleted
		tst.b	obColProp(a0)
		beq.s	FZEgg_FinishHim
		
		addq.b	#2,$34(a0)
		move.w	#-1,$30(a0)
		clr.w	$32(a0)
		rts	
; ===========================================================================

FZEgg_FinishHim:
		moveq	#100,d0
		bsr.w	AddPoints
		move.b	#6,$34(a0)
        move.b  #1,(v_bossstatus).w
		clr.b	(f_timecount).w
		move.w	#$25C0,obX(a0)
		move.w	#$53C,obY(a0)
		move.b	#$14,obHeight(a0)
		rts	
; ===========================================================================
word_19FD6:	dc.w 0,	2, 2, 4, 4, 6, 6, 0
; ===========================================================================

; $36 -> Eletric generator
FZEgg_Electrocute:
		moveq	#-1,d0
		move.w	$36(a0),d0
		movea.l	d0,a1
		tst.w	$30(a0)
		bpl.s	.loc_1A000
		clr.w	$30(a0)
		move.b	#-1,$29(a1)
		bsr.s	.sfx

.loc_1A000:
		moveq	#$F,d0
		and.w	(v_vbla_word).w,d0
		bne.s	.loc_1A00A
		bsr.s	.sfx

.loc_1A00A:
		tst.w	$32(a0)
		beq.s	.rts
		subq.b	#2,$34(a0)
		move.w	#-1,$30(a0)
		clr.w	$32(a0)

.rts:
		rts	
; ===========================================================================

.sfx:
		move.w	#sfx_Electric,d0
		jmp	(PlaySound_Special).l	; play electricity sound
; ===========================================================================

FZEgg_Fleeing:
		move.b	#$30,obActWid(a0)
		bset	#0,obStatus(a0)
		jsr	(SpeedToPos).l
		move.b	#6,obFrame(a0)
		addi.w	#$10,obVelY(a0)
		cmpi.w	#$59C,obY(a0)
		bcs.s	loc_1A070
		move.w	#$59C,obY(a0)
		addq.b	#2,$34(a0)
		move.b	#$20,obActWid(a0)
		move.w	#$100,obVelX(a0)
		move.w	#-$100,obVelY(a0)
		addq.b	#2,(v_dle_routine).w

loc_1A070:
		bra.w	loc_1A166
; ===========================================================================

loc_1A074:
		bset	#0,obStatus(a0)
		move.b	#4,obAnim(a0)
		jsr	(SpeedToPos).l
		addi.w	#$10,obVelY(a0)
		cmpi.w	#$5A3,obY(a0)
		bcs.s	loc_1A09A
		move.w	#-$40,obVelY(a0)

loc_1A09A:
		move.w	#$400,obVelX(a0)
		move.w	obX(a0),d0
		sub.w	(v_player+obX).w,d0
		bpl.s	loc_1A0B4
		move.w	#$500,obVelX(a0)
		bra.w	loc_1A0F2
; ===========================================================================

loc_1A0B4:
		subi.w	#$70,d0
		bcs.s	loc_1A0F2
		subi.w	#$100,obVelX(a0)
		subq.w	#8,d0
		bcs.s	loc_1A0F2
		subi.w	#$100,obVelX(a0)
		subq.w	#8,d0
		bcs.s	loc_1A0F2
		subi.w	#$80,obVelX(a0)
		subq.w	#8,d0
		bcs.s	loc_1A0F2
		subi.w	#$80,obVelX(a0)
		subq.w	#8,d0
		bcs.s	loc_1A0F2
		subi.w	#$80,obVelX(a0)
		subi.w	#$38,d0
		bcs.s	loc_1A0F2
		clr.w	obVelX(a0)

loc_1A0F2:
		cmpi.w	#$26A0,obX(a0)
		bcs.s	loc_1A110
		move.w	#$26A0,obX(a0)
		move.w	#$240,obVelX(a0)
		move.w	#-$4C0,obVelY(a0)
		addq.b	#2,$34(a0)

loc_1A110:
		bra.s	FZBoss_Animate
; ===========================================================================

loc_1A112:
		jsr	(SpeedToPos).l
		cmpi.w	#$26E0,obX(a0)
		bcs.s	loc_1A124
		clr.w	obVelX(a0)

loc_1A124:
		addi.w	#$34,obVelY(a0)
		tst.w	obVelY(a0)
		bmi.s	loc_1A142
		cmpi.w	#$592,obY(a0)
		bcs.s	loc_1A142
		move.w	#$592,obY(a0)
		clr.w	obVelY(a0)

loc_1A142:
		move.w	obVelX(a0),d0
		or.w	obVelY(a0),d0
		bne.s	FZBoss_Animate
		addq.b	#2,$34(a0)
		move.w	#-$180,obVelY(a0)
		move.b	#1,obColProp(a0)

FZBoss_Animate:
		lea	Ani_SEgg(pc),a1
		jsr	(AnimateSprite).l

loc_1A166:
		cmpi.w	#$2700,(v_limitright2).w
		bge.s	loc_1A172
		addq.w	#2,(v_limitright2).w

loc_1A172:
		cmpi.b	#$C,$34(a0)
		bge.s	locret_1A190
		move.w	#$1B,d1
		move.w	#$70,d2
		move.w	#$71,d3
		move.w	obX(a0),d4
		jmp	(SolidObject).l
; ===========================================================================

locret_1A190:
		rts	
; ===========================================================================

EggmanFleeingMobile:
		move.l	#Map_Eggman,obMap(a0)
		move.w	#$400,obGfx(a0)
		move.b	#0,obAnim(a0)
		bset	#0,obStatus(a0)
		jsr	(SpeedToPos).l
		cmpi.w	#$544,obY(a0)
		bcc.s	loc_1A1D0
		move.w	#$180,obVelX(a0)
		move.w	#-$18,obVelY(a0)
		move.b	#$F,obColType(a0)
		addq.b	#2,$34(a0)

loc_1A1D0:
		bra.w	FZBoss_Animate
; ===========================================================================

EggmanFleeingMobileHit:
		bset	#0,obStatus(a0)
		jsr	(SpeedToPos).l
		tst.w	$30(a0)
		bne.s	loc_1A1FC
		tst.b	obColType(a0)
		bne.s	loc_1A216
		move.w	#$1E,$30(a0)
		move.w	#sfx_HitBoss,d0
		jsr	(PlaySound_Special).l	; play boss damage sound

loc_1A1FC:
		subq.w	#1,$30(a0)
		bne.s	loc_1A216
		tst.b	obStatus(a0)
		bpl.s	loc_1A210
		move.w	#$60,obVelY(a0)
		bra.s	loc_1A216
; ===========================================================================

loc_1A210:
		move.b	#$F,obColType(a0)

loc_1A216:
		cmpi.w	#$2790,(v_player+obX).w
		blt.s	loc_1A23A
		move.b	#1,(f_lockctrl).w
		move.w	#0,(v_jpadhold2).w
		clr.w	(v_player+obInertia).w
		clr.w	(v_player+obVelX)
		tst.w	obVelY(a0)
		bpl.s	loc_1A248
		move.w	#$100,(v_jpadhold2).w

loc_1A23A:
		cmpi.w	#$27E0,(v_player+obX).w
		blt.s	loc_1A248
		move.w	#$27E0,(v_player+obX).w

loc_1A248:
		cmpi.w	#$2900,obX(a0)
		bcs.s	loc_1A260
		tst.b	obRender(a0)
		bmi.s	loc_1A260
        move.b  #2,(f_victorypose) ;Set Victory Flag to 2
		jsr		GotThroughAct
		
		cmpi.b	#7,(v_emeralds).w
		bne.w	Obj85_Delete
		move.b	#$10,$34(a0)
		
		moveq	#plcid_EggBg,d0
		jsr	(AddPLC).l	; load egg patterns
		move.l	#Map_BgEggman,obMap(a0)
		move.w	#$3A0,obGfx(a0)
		move.b	#0,obAnim(a0)
		move.w	#$18,obVelX(a0)
		move.w	#-$100,obVelY(a0)
		move.w	#$27B4,obX(a0)
		move.w	#$05E2,obY(a0)
		
EggmanEscapeMobile:
		cmpi.b	#$E,(v_dle_routine).w
		blt.s	.rts
		jsr	(SpeedToPos).l
		lea	Ani_BgEgg(pc),a1
		jmp	(AnimateSprite).l
	.rts:
		rts
loc_1A260:
		bra.w	FZBoss_Animate
; ===========================================================================
; ---------------------------------------------------------------------------
; Animation script - bg eggman
; ---------------------------------------------------------------------------
Ani_BgEgg:	dc.w .eggman-Ani_BgEgg
		dc.w	.dust-Ani_BgEgg
.eggman:	dc.b $F, 0, 1, 0, 2, afEnd
		even
.dust:		dc.b 1,	3, 4, 5, 6, 7, afEnd
		even

; ===========================================================================

loc_1A264:	; Routine 4
		movea.l	$34(a0),a1
		move.b	(a1),d0
		cmp.b	(a0),d0
		bne.w	Obj85_Delete
		move.b	#7,obAnim(a0)
		cmpi.b	#$C,$34(a1)
		bge.s	loc_1A280
		bra.s	loc_1A2A6
; ===========================================================================

loc_1A280:
		movea.l	$34(a0),a1
		cmpi.l	#Map_BgEggman,obMap(a1)
		beq.s	loc_1A280_Alt
		
		tst.w	obVelX(a1)
		beq.s	loc_1A28C
		move.b	#$B,obAnim(a0)

loc_1A28C:
		lea	Ani_Eggman(pc),a1
		jsr	(AnimateSprite).l
		bra.s	loc_1A296
; alt for anim
loc_1A280_Alt:
		move.w	#$3A0,obGfx(a0)
		move.l	#Map_BgEggman,obMap(a0)
		move.b	#1,obAnim(a0)
		lea	Ani_BgEgg(pc),a1
		jsr	(AnimateSprite).l

loc_1A296:
		movea.l	$34(a0),a1
		move.w	obX(a1),obX(a0)
		move.w	obY(a1),obY(a0)

loc_1A2A6:
		movea.l	$34(a0),a1
		move.b	obStatus(a1),obStatus(a0)
		moveq	#3,d0
		and.b	obStatus(a0),d0
		andi.b	#$FC,obRender(a0)
		or.b	d0,obRender(a0)
		jmp	(DisplaySprite).l
; ===========================================================================

loc_1A2C6:	; Routine 6
		movea.l	$34(a0),a1
		move.b	(a1),d0
		cmp.b	(a0),d0
		bne.w	Obj85_Delete
		cmpi.l	#Map_Eggman,obMap(a1)
		beq.s	loc_1A2E4
		move.b	#$A,obFrame(a0)
		bra.s	loc_1A2A6
; ===========================================================================

loc_1A2E4:
		move.b	#1,obAnim(a0)
		tst.b	obColProp(a1)
		ble.s	loc_1A312
		move.b	#6,obAnim(a0)
		move.l	#Map_Eggman,obMap(a0)
		move.w	#$400,obGfx(a0)
		lea	Ani_Eggman(pc),a1
		jsr	(AnimateSprite).l
		bra.w	loc_1A296
; ===========================================================================

loc_1A312:
		tst.b	1(a0)
		bpl.w	Obj85_Delete
		bsr.w	BossDefeated
		move.b	#2,obPriority(a0)
		move.b	#0,obAnim(a0)
		move.l	#Map_FZDamaged,obMap(a0)
		move.w	#$3A0,obGfx(a0)
		lea	Ani_FZEgg(pc),a1
		jsr	(AnimateSprite).l
		bra.w	loc_1A296
; ===========================================================================

loc_1A346:	; Routine 8
		bset	#0,obStatus(a0)
		movea.l	$34(a0),a1
		cmpi.l	#Map_Eggman,obMap(a1)
		beq.s	loc_1A35E
		bra.w	loc_1A2A6
; ===========================================================================

loc_1A35E:
		move.w	obX(a1),obX(a0)
		move.w	obY(a1),obY(a0)
		tst.b	obTimeFrame(a0)
		bne.s	loc_1A376
		move.b	#$14,obTimeFrame(a0)

loc_1A376:
		subq.b	#1,obTimeFrame(a0)
		bgt.s	loc_1A38A
		addq.b	#1,obFrame(a0)
		cmpi.b	#2,obFrame(a0)
		bgt.w	Obj85_Delete

loc_1A38A:
		bra.w	loc_1A296
; ===========================================================================

loc_1A38E:	; Routine $A
		move.b	#$B,obFrame(a0)
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0
		bcs.s	loc_1A3A6
		tst.b	obRender(a0)
		bpl.w	Obj85_Delete

loc_1A3A6:
		jmp	(DisplaySprite).l
; ===========================================================================

loc_1A3AC:	; Routine $C
		move.b	#0,obFrame(a0)
		bset	#0,obStatus(a0)
		movea.l	$34(a0),a1
		cmpi.b	#$C,$34(a1)
		bne.s	loc_1A3D0
		cmpi.l	#Map_Eggman,obMap(a1)
		beq.w	Obj85_Delete

loc_1A3D0:
		bra.w	loc_1A2A6
