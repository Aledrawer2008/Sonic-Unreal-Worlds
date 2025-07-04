; ---------------------------------------------------------------------------
; Object 25 - rings
; ---------------------------------------------------------------------------

Rings:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Ring_Index(pc,d0.w),d1
		jmp	Ring_Index(pc,d1.w)
; ===========================================================================
Ring_Index:
ptr_Ring_Main:		dc.w Ring_Main-Ring_Index
ptr_Ring_Animate:	dc.w Ring_Animate-Ring_Index
ptr_Ring_Collect:	dc.w Ring_Collect-Ring_Index
ptr_Ring_Sparkle:	dc.w Ring_Sparkle-Ring_Index
ptr_Ring_Delete:	dc.w Ring_Delete-Ring_Index

id_Ring_Main = ptr_Ring_Main-Ring_Index	; 0
id_Ring_Animate = ptr_Ring_Animate-Ring_Index	; 2
id_Ring_Collect = ptr_Ring_Collect-Ring_Index	; 4
id_Ring_Sparkle = ptr_Ring_Sparkle-Ring_Index	; 6
id_Ring_Delete = ptr_Ring_Delete-Ring_Index	; 8
; ---------------------------------------------------------------------------
; Distances between rings (format: horizontal, vertical)
; ---------------------------------------------------------------------------
Ring_PosData:	dc.b $10, 0		; horizontal tight
		dc.b $18, 0		; horizontal normal
		dc.b $20, 0		; horizontal wide
		dc.b 0,	$10		; vertical tight
		dc.b 0,	$18		; vertical normal
		dc.b 0,	$20		; vertical wide
		dc.b $10, $10		; diagonal
		dc.b $18, $18
		dc.b $20, $20
		dc.b $F0, $10
		dc.b $E8, $18
		dc.b $E0, $20
		dc.b $10, 8
		dc.b $18, $10
		dc.b $F0, 8
		dc.b $E8, $10
; ===========================================================================

Ring_Main:	; Routine 0
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		lea	2(a2,d0.w),a2
		move.b	(a2),d4
		move.b	obSubtype(a0),d1
		move.b	d1,d0
		andi.w	#7,d1
		cmpi.w	#7,d1
		bne.s	loc_9B80
		moveq	#6,d1

loc_9B80:
		swap	d1
		move.w	#0,d1
		lsr.b	#4,d0
		add.w	d0,d0
		move.b	Ring_PosData(pc,d0.w),d5 ; load ring spacing data
		ext.w	d5
		move.b	Ring_PosData+1(pc,d0.w),d6
		ext.w	d6
		movea.l	a0,a1
		move.w	obX(a0),d2
		move.w	obY(a0),d3
		lsr.b	#1,d4
		bcs.s	loc_9C02
		bclr	#7,(a2)
		bra.s	loc_9BBA
; ===========================================================================

Ring_MakeRings:
		swap	d1
		lsr.b	#1,d4
		bcs.s	loc_9C02
		bclr	#7,(a2)
		bsr.w	FindFreeObj
		bne.s	loc_9C0E

loc_9BBA:
		_move.b	#id_Rings,0(a1)	; load ring object
		addq.b	#2,obRoutine(a1)
		move.w	d2,obX(a1)	; set x-axis position based on d2
		move.w	obX(a0),$32(a1)
		move.w	d3,obY(a1)	; set y-axis position based on d3
		move.l	#Map_Ring,obMap(a1)
		move.w	#$27B2,obGfx(a1)
		move.b	#4,obRender(a1)
		move.b	#2,obPriority(a1)
		move.b	#$47,obColType(a1)
		move.b	#8,obActWid(a1)
		move.b	obRespawnNo(a0),obRespawnNo(a1)
		move.b	d1,$34(a1)

loc_9C02:
		addq.w	#1,d1
		add.w	d5,d2		; add ring spacing value to d2
		add.w	d6,d3		; add ring spacing value to d3
		swap	d1
		dbf	d1,Ring_MakeRings ; repeat for	number of rings

loc_9C0E:
		btst	#0,(a2)
		bne.w	DeleteObject

Ring_Animate:	; Routine 2
		out_of_range.s	Ring_Delete,$32(a0)
		bra.w	DisplaySprite
; ===========================================================================

Ring_Collect:	; Routine 4
		addq.b	#2,obRoutine(a0)
		move.b	#0,obColType(a0)
		move.b	#1,obPriority(a0)
		bsr.w	CollectRing
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		move.b	$34(a0),d1
		bset	d1,2(a2,d0.w)

Ring_Sparkle:	; Routine 6
		lea	(Ani_Ring).l,a1
		bsr.w	AnimateSprite
		bra.w	DisplaySprite
; ===========================================================================

Ring_Delete:	; Routine 8
		bra.w	DeleteObject

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


CollectRing:
		addq.w	#1,(v_rings).w	; add 1 to rings
		ori.b	#1,(f_ringcount).w ; update the rings counter
		move.w	#sfx_Ring,d0	; play ring sound        
		cmpi.w	#100,(v_rings).w ; do you have < 100 rings?
		bcs.w	.playsnd	; if yes, branch
		bset	#1,(v_lifecount).w ; update lives counter
		beq.s	.got100
		cmpi.w	#200,(v_rings).w ; do you have < 200 rings?
		bcs.w	.playsnd	; if yes, branch
		bset	#2,(v_lifecount).w ; update lives counter
		bne.w	.playsnd

.got100:
		addq.b	#1,(v_lives).w	; add 1 to the number of lives you have
		addq.b	#1,(f_lifecount).w ; update the lives counter
		move.w	#bgm_ExtraLife,d0 ; play extra life music
		add.b	(v_character).w,d0

.playsnd:
		jmp	(PlaySound_Special).l
; End of function CollectRing

; ===========================================================================
; ---------------------------------------------------------------------------
; Object 37 - rings flying out of Sonic	when he's hit
; ---------------------------------------------------------------------------

RingLoss:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	RLoss_Index(pc,d0.w),d1
		jmp	RLoss_Index(pc,d1.w)
; ===========================================================================
RLoss_Index:	dc.w RLoss_Count-RLoss_Index
		dc.w RLoss_Bounce-RLoss_Index
		dc.w RLoss_Collect-RLoss_Index
		dc.w RLoss_Sparkle-RLoss_Index
		dc.w RLoss_Delete-RLoss_Index
; ===========================================================================

RLoss_Count:	; Routine 0
		movea.l	a0,a1
		moveq	#0,d5
		move.w	(v_rings).w,d5	; check number of rings you have
		move.w	#20,d0
		cmp.w	d0,d5		; do you have 20 or more?
		bcs.s	.belowmax	; if not, branch
		move.w	d0,d5		; if yes, set d5 to 20
.belowmax:
		subq.w	#1,d5
		lea 	SpillRingData,a3 ; load the address in a3
		bra.s	.makerings
; ===========================================================================

.loop:
		bsr.w	FindFreeObj
		bne.w	.resetcounter

.makerings:
		_move.b	#id_RingLoss,0(a1) ; load bouncing ring object
		addq.b	#2,obRoutine(a1)
		move.b	#8,obHeight(a1)
		move.b	#8,obWidth(a1)
		move.w	obX(a0),obX(a1)
		move.w	obY(a0),obY(a1)
		move.l	#Map_Ring,obMap(a1)
		move.w	#$27B6,obGfx(a1)
		move.b	#4,obRender(a1)
		move.b	#3,obPriority(a1)
		move.b	#$47,obColType(a1)
		move.b	#8,obActWid(a1)
		move.b	#-1,(v_ani3_time).w
		move.w (a3)+,$12(a1) ; move the data contained in the array to the y velocity and increment the address in a3
		move.w (a3)+,$10(a1) ; move the data contained in the array to the x velocity and increment the address in a3
		dbf	d5,.loop	; repeat for number of rings (max 31)

.resetcounter:
		move.b	#$80,(f_ringcount).w ; update ring counter
		move.b	#0,(v_lifecount).w
		move.w	#sfx_RingLoss,d0
		jsr	(PlaySound_Special).l	; play ring loss sound
		cmpi.w	#20,(v_rings).w
		bgt.s	.subtract
		move.w	#0,(v_rings).w	; reset number of rings to zero
		bra.s	RLoss_Bounce

.subtract:
		subi.w	#20,(v_rings)

RLoss_Bounce:	; Routine 2
		tst.b	$3F(a0)
		beq.w	.skip
		move.b	#8,obHeight(a0)
		move.b	#8,obWidth(a0)
		move.l	#Map_Ring,obMap(a0)
		move.w	#$27B6,obGfx(a0)
		move.b	#4,obRender(a0)
		move.b	#3,obPriority(a0)
		move.b	#$47,obColType(a0)
		move.b	#8,obActWid(a0)
		move.b	#-1,(v_ani3_time).w
.skip
		bsr.w	SpeedToPos
		addi.w	#$18,obVelY(a0)
		bmi.s	.chkdel
		move.b	(v_vbla_byte).w,d0
		add.b	d7,d0
		andi.b	#3,d0
		bne.s	.chkdel
		move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has object moved below level boundary?
		blt.s	.bounce		; if yes, branch
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	.chkdel
		add.w	d1,obY(a0)
.bounce
		move.w	obVelY(a0),d0
		asr.w	#2,d0
		sub.w	d0,obVelY(a0)
		neg.w	obVelY(a0)

.chkdel:
		tst.b	(v_ani3_time).w
		beq.s	RLoss_Delete
		cmpi.w	#$FF00,(v_limittop2).w		; is vertical wrapping enabled?
		beq.w	DisplaySprite			; if so, branch
		move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has object moved below level boundary?
		bcs.s	RLoss_Delete	; if yes, branch
		move.b	(v_ani3_time).w,d0
		btst	#0,d0
		beq.w	DisplaySprite
		cmpi.b	#LostRingsFlashTime,d0
		bhi.w	DisplaySprite
		rts
; ===========================================================================

RLoss_Collect:	; Routine 4
		addq.b	#2,obRoutine(a0)
		move.b	#0,obColType(a0)
		move.b	#1,obPriority(a0)
		bsr.w	CollectRing

RLoss_Sparkle:	; Routine 6
		move.w  #$27B2,obGfx(a0)
		lea	(Ani_Ring).l,a1
		bsr.w	AnimateSprite
		bra.w	DisplaySprite
; ===========================================================================

RLoss_Delete:	; Routine 8
		bra.w	DeleteObject

; ===========================================================================

; ---------------------------------------------------------------------------
; Ring Spawn Array
; ---------------------------------------------------------------------------

SpillRingData:	
	dc.w	$FF3C, $FC14, $00C4, $FC14, $FDC8, $FCB0, $0238, $FCB0
	dc.w	$FCB0, $FDC8, $0350, $FDC8, $FC14, $FF3C, $03EC, $FF3C
	dc.w	$FC14, $00C4, $03EC, $00C4, $FCB0, $0238, $0350, $0238
	dc.w	$FDC8, $0350, $0238, $0350, $FF3C, $03EC, $00C4, $03EC
	dc.w	$FF9E, $FE0A, $0062, $FE0A, $FEE4, $FE58, $011C, $FE58
	dc.w	$FE58, $FEE4, $01A8, $FEE4, $FE0A, $FF9E, $01F6, $FF9E
	dc.w	$FE0A, $0062, $01F6, $0062, $FE58, $011C, $01A8, $011C
	dc.w	$FEE4, $01A8, $011C, $01A8, $FF9E, $01F6, $0062, $01F6
		even

; ===========================================================================

