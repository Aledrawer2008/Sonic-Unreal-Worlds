; ---------------------------------------------------------------------------
; Object 4B - giant ring for entry to special stage
; ---------------------------------------------------------------------------

GiantRing:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	GRing_Index(pc,d0.w),d1
		jmp		GRing_Index(pc,d1.w)
; ===========================================================================
GRing_Index:	
		dc.w GRing_Main-GRing_Index
		dc.w GRing_Animate-GRing_Index
		dc.w GRing_Collect-GRing_Index
		dc.w GRing_Flash-GRing_Index		; Formerly the Ring Flash Object ($7C)
		dc.w GRing_Delete-GRing_Index
; ===========================================================================

GRing_Main:	; Routine 0
		move.l	#Map_GRing,obMap(a0)
		move.w	#$25A0,obGfx(a0)
		ori.b	#4,obRender(a0)
		move.b	#2,obPriority(a0)
		move.b	#$40,obActWid(a0)
		move.b	#$FF,$3F(a0)			; Added for DPLC frame check
		tst.b	obRender(a0)
		bpl.s	GRing_Animate
		addq.b	#2,obRoutine(a0)
		move.b	#$52,obColType(a0)

GRing_Animate:	; Routine 2
		move.b	(v_ani1_frame).w,obFrame(a0)
		bsr.w	GRing_LoadGfx
		out_of_range.w	DeleteObject
		jmp	DisplaySprite
; ===========================================================================

GRing_Collect:	; Routine 4
		addq.b	#2,obRoutine(a0)		; Routine -> GRing_Flash
		ori.b	#4,obRender(a0)
		move.b	#0,obPriority(a0)
		move.b	#$20,obActWid(a0)

		move.b	#7,obFrame(a0)			; this will be incremented soon
		clr.b	obColType(a0)
		move.w	(v_player+obX).w,d0
		cmp.w	obX(a0),d0				; has Sonic come from the left?
		blo.s	GRing_PlaySnd			; if yes, branch
		bset	#0,obRender(a0)			; reverse flash	object

GRing_PlaySnd:
		move.w	#sfx_GiantRing,d0
		jsr		(PlaySound_Special).l	; play giant ring sound
; ===========================================================================

GRing_Flash:	; Routine 6
		subq.b	#1,obTimeFrame(a0)
		bpl.s	.skip
		move.b	#1,obTimeFrame(a0)
		addq.b	#1,obFrame(a0)
		cmpi.b	#$10,obFrame(a0)		; has animation	finished?
		bhs.s	Flash_End				; if yes, branch
		cmpi.b	#$B,obFrame(a0)			; is 3rd flash frame displayed?
		bne.s	.skip					; if not, branch
		cmpi.b	#7,(v_emeralds).w
		beq.s	.skip
		tst.b	(f_specials).w
		bne.s	.skip
		clr.b	(v_player).w		; remove Sonic Object
		move.b	#1,(f_bigring).w
		clr.b	(v_invinc).w	; remove invincibility
		clr.b	(v_shield).w	; remove shield

.skip:
		bsr.w	GRing_LoadGfx			; RetroKoH VRAM Overhaul
		out_of_range.w	DeleteObject
		bra.w	DisplaySprite
; ===========================================================================

Flash_End:
		addq.b	#2,obRoutine(a0)
		cmpi.w	#$003,(v_zone)
		beq.w	Flash_Tutorial
		cmpi.b	#7,(v_emeralds).w
		beq.s	.GiveRings
		tst.b	(f_specials).w
		bne.s	.GiveRings
        move.b	#1,(f_specials).w
        move.b	#id_Special,(v_gamemode).w ; set game mode to Special Stage (10)
		rts

.GiveRings:
		addi.w	#50,(v_rings).w
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
		cmpi.w	#100,(v_rings).w ; check if you have 100 rings
		bcs.s	.return
		bset	#1,(v_lifecount).w
		beq.w	.ExtraLife
		cmpi.w	#200,(v_rings).w ; check if you have 200 rings
		bcs.s	.return
		bset	#2,(v_lifecount).w
		beq.w	.ExtraLife

.return:
		rts

.ExtraLife:
		addq.b	#1,(v_lives).w	; add 1 to the number of lives you have
		addq.b	#1,(f_lifecount).w ; update the lives counter
		move.w	#bgm_ExtraLife,d0
		add.b	(v_character).w,d0
		jmp	(PlaySound_Special).l	; play extra life music

; End of function Flash_Collect
; ===========================================================================

Flash_Tutorial:
        move.b	#id_Sega,(v_gamemode).w ; set game mode to Sega Screen (0)
		rts
; ===========================================================================

GRing_Delete:	; Routine 8
		bra.w	DeleteObject
; ===========================================================================

; ---------------------------------------------------------------------------
; Giant Ring dynamic pattern loading subroutine
; RetroKoH VRAM Overhaul
; ---------------------------------------------------------------------------

GRing_LoadGfx:
		moveq	#0,d0
		move.b	obFrame(a0),d0	; load frame number
		cmp.b	$3F(a0),d0 ; has frame changed?
		beq.w	.nochange	; if not, branch

		move.b	d0,$3F(a0)
		lea	(GRingDynPLC).l,a2 ; load PLC script
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		moveq	#0,d5
		move.b	(a2)+,d5	; read "number of entries" value
		subq.w	#1,d5
		bmi.s	.nochange	; if zero, branch
		move.w	#$B400,d4
		move.l	#Art_BigRing,d6

.readentry:
		moveq	#0,d1
		move.b	(a2)+,d1
		lsl.w	#8,d1
		move.b	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(QueueDMATransfer).l
		dbf	d5,.readentry	; repeat for number of entries

.nochange:
		rts	