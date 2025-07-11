; ---------------------------------------------------------------------------
; Object 84 - cylinder Eggman hides in (FZ)
; ---------------------------------------------------------------------------

Obj84_Delete:
		jmp	(DeleteObject).l
; ===========================================================================

EggmanCylinder:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Obj84_Index(pc,d0.w),d0
		jmp	Obj84_Index(pc,d0.w)
; ===========================================================================
Obj84_Index:	dc.w Obj84_Main-Obj84_Index
		dc.w loc_1A4CE-Obj84_Index
		dc.w loc_1A57E-Obj84_Index

Obj84_PosData:	dc.w $24D0, $620
		dc.w $2550, $620
		dc.w $2490, $4C0
		dc.w $2510, $4C0
; ===========================================================================

Obj84_Main:	; Routine
		lea	Obj84_PosData(pc),a1
		moveq	#0,d0
		move.b	obSubtype(a0),d0
		add.w	d0,d0
		adda.w	d0,a1
		move.b	#4,obRender(a0)
		bset	#7,obRender(a0)
		bset	#4,obRender(a0)
		move.w	#$300,obGfx(a0)
		move.l	#Map_EggCyl,obMap(a0)
		move.w	(a1)+,obX(a0)
		move.w	(a1),obY(a0)
		move.w	(a1)+,$38(a0)
		move.b	#$20,obHeight(a0)
		move.b	#$60,obWidth(a0)
		move.b	#$20,obActWid(a0)
		move.b	#$60,obHeight(a0)
		move.b	#3,obPriority(a0)
		addq.b	#2,obRoutine(a0)

loc_1A4CE:	; Routine 2
		cmpi.b	#2,obSubtype(a0)
		ble.s	loc_1A4DC
		bset	#1,obRender(a0)

loc_1A4DC:
		clr.l	$3C(a0)
		tst.b	$29(a0)
		beq.s	loc_1A4EA
		addq.b	#2,obRoutine(a0)

loc_1A4EA:
		move.l	$3C(a0),d0
		move.l	$38(a0),d1
		add.l	d0,d1
		swap	d1
		move.w	d1,obY(a0)
		cmpi.b	#4,obRoutine(a0)
		bne.s	loc_1A524
		tst.w	$30(a0)
		bpl.s	loc_1A524
		moveq	#-$A,d0
		cmpi.b	#2,obSubtype(a0)
		ble.s	loc_1A514
		moveq	#$E,d0

loc_1A514:
		add.w	d0,d1
		movea.l	$34(a0),a1
		move.w	d1,obY(a1)
		move.w	obX(a0),obX(a1)

loc_1A524:
		move.w	#$2B,d1
		move.w	#$60,d2
		move.w	#$61,d3
		move.w	obX(a0),d4
		jsr	(SolidObject).l
		moveq	#0,d0
		move.w	$3C(a0),d1
		bpl.s	loc_1A550
		neg.w	d1
		subq.w	#8,d1
		bcs.s	loc_1A55C
		addq.b	#1,d0
		asr.w	#4,d1
		add.w	d1,d0
		bra.s	loc_1A55C
; ===========================================================================

loc_1A550:
		subi.w	#$27,d1
		bcs.s	loc_1A55C
		addq.b	#1,d0
		asr.w	#4,d1
		add.w	d1,d0

loc_1A55C:
		move.b	d0,obFrame(a0)
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0
		bmi.s	loc_1A578
		subi.w	#$140,d0
		bmi.s	loc_1A578
		tst.b	obRender(a0)
		bpl.w	Obj84_Delete

loc_1A578:
		jmp	(DisplaySprite).l
; ===========================================================================

loc_1A57E:	; Routine 4
		moveq	#0,d0
		move.b	obSubtype(a0),d0		; Based on cylinder
		move.w	.subtypes(pc,d0.w),d0
		jsr	.subtypes(pc,d0.w)
		bra.w	loc_1A4EA
; ===========================================================================
.subtypes:	dc.w FZ_Cyl_Bottom-.subtypes
		dc.w FZ_Cyl_Bottom-.subtypes
		dc.w FZ_Cyl_Top-.subtypes
		dc.w FZ_Cyl_Top-.subtypes
; ===========================================================================

FZ_Cyl_Bottom:
		movea.l	$34(a0),a1
		tst.b	$29(a0)
		bne.s	.elongate
		;movea.l	$34(a0),a1
		tst.b	obColProp(a1)
		bne.s	.undefeated
		bsr.w	BossDefeated
		subi.l	#$10000,$3C(a0)

.undefeated:
		addi.l	#$20000,$3C(a0)
		bcc.s	.rts
		clr.l	$3C(a0)
		movea.l	$34(a0),a1
		subq.w	#1,$32(a1)
		clr.w	$30(a1) ; clear delay
		subq.b	#2,obRoutine(a0)
		rts	
; ===========================================================================

.elongate:
		
		; pinch mode
		cmpi.b	#2,obColProp(a1)
		bgt.s	.not_pinch
		subi.l	#$30000,$3C(a0)
	.not_pinch:
	
		cmpi.w	#-$10,$3C(a0)
		bge.s	.wait2speedup
		subi.l	#$28000,$3C(a0)

.wait2speedup:
		subi.l	#$8000,$3C(a0)
		cmpi.w	#-$A0,$3C(a0)
		bgt.s	.rts
		clr.w	$3E(a0)
		move.w	#-$A0,$3C(a0)
		clr.b	$29(a0)

.rts:
		rts	
; ===========================================================================

FZ_Cyl_Top:
		movea.l	$34(a0),a1
		bset	#1,obRender(a0)
		tst.b	$29(a0)
		bne.s	.elongate
		;movea.l	$34(a0),a1
		tst.b	obColProp(a1)
		bne.s	.undefeated
		bsr.w	BossDefeated
		addi.l	#$10000,$3C(a0)

.undefeated:
		subi.l	#$20000,$3C(a0)
		bcc.s	.rts
		clr.l	$3C(a0)
		movea.l	$34(a0),a1
		subq.w	#1,$32(a1)
		clr.w	$30(a1) ; clear delay
		subq.b	#2,obRoutine(a0)
		rts	
; ===========================================================================

.elongate:

		; pinch mode
		cmpi.b	#2,obColProp(a1)
		bgt.s	.not_pinch
		addi.l	#$30000,$3C(a0)
	.not_pinch:

		cmpi.w	#$10,$3C(a0)
		blt.s	.wait2speedup
		addi.l	#$28000,$3C(a0)

.wait2speedup:
		addi.l	#$8000,$3C(a0)
		cmpi.w	#$A0,$3C(a0)
		blt.s	.rts
		clr.w	$3E(a0)
		move.w	#$A0,$3C(a0)
		clr.b	$29(a0)

.rts:
		rts	
