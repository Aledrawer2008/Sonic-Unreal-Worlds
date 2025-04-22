; ---------------------------------------------------------------------------
; Palette cycling routine loading subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PaletteCycle:
		bsr.w	PalCycle_SuperSonic
		moveq	#0,d2
		moveq	#0,d0
		move.b	(v_zone).w,d0	; get level number
		add.w	d0,d0
		move.w	PCycle_Index(pc,d0.w),d0
		jmp	PCycle_Index(pc,d0.w) ; jump to relevant palette routine
; End of function PaletteCycle

; ===========================================================================
; ---------------------------------------------------------------------------
; Palette cycling routines
; ---------------------------------------------------------------------------
PCycle_Index:	dc.w PCycle_GHZ-PCycle_Index
		dc.w PCycle_LZ-PCycle_Index
		dc.w PCycle_MZ-PCycle_Index
		dc.w PalCycle_SLZ-PCycle_Index
		dc.w PalCycle_SYZ-PCycle_Index
		dc.w PalCycle_SBZ-PCycle_Index
		zonewarning PCycle_Index,2
		dc.w PCycle_GHZ-PCycle_Index	; Ending

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PCycle_Title:
PCycle_GHZ:
		lea	(Pal_GHZCyc).l,a0
		cmpi.b	#id_Ending,(v_gamemode).w
		beq.w	PCycGHZ_Skip
		subq.w	#1,(v_pcyc_time).w ; decrement timer
		bpl.s	PCycGHZ_Skip	; if time remains, branch

		move.w	#5,(v_pcyc_time).w ; reset timer to 5 frames
		move.w	(v_pcyc_num).w,d0 ; get cycle number
		addq.w	#1,(v_pcyc_num).w ; increment cycle number
		andi.w	#3,d0		; if cycle > 3, reset to 0
		lsl.w	#3,d0
		lea	(v_pal_dry+$50).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)	; copy palette data to RAM

PCycGHZ_Skip:
		rts	
; End of function PCycle_GHZ


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PCycle_LZ:
; Waterfalls
		subq.w	#1,(v_pcyc_time).w ; decrement timer
		bpl.s	PCycLZ_Skip1	; if time remains, branch

		move.w	#2,(v_pcyc_time).w ; reset timer to 2 frames
		move.w	(v_pcyc_num).w,d0
		addq.w	#1,(v_pcyc_num).w ; increment cycle number
		andi.w	#3,d0		; if cycle > 3, reset to 0
		lsl.w	#3,d0
		lea	(Pal_LZCyc1).l,a0
		lea	(v_pal_dry+$56).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)
		jsr	DynaWater_Update

PCycLZ_Skip1:
; Conveyor belts
		move.w	(v_framecount).w,d0
		andi.w	#7,d0
		move.b	PCycLZ_Seq(pc,d0.w),d0 ; get byte from palette sequence
		beq.s	PCycLZ_Skip2	; if byte is 0, branch
		moveq	#1,d1
		tst.b	(f_conveyrev).w	; have conveyor belts been reversed?
		beq.s	PCycLZ_NoRev	; if not, branch
		neg.w	d1

PCycLZ_NoRev:
		move.w	(v_pal_buffer).w,d0
		andi.w	#3,d0
		add.w	d1,d0
		cmpi.w	#3,d0
		bcs.s	loc_1A0A
		move.w	d0,d1
		moveq	#0,d0
		tst.w	d1
		bpl.s	loc_1A0A
		moveq	#2,d0

loc_1A0A:
		move.w	d0,(v_pal_buffer).w
		add.w	d0,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		lea	(Pal_LZCyc2).l,a0
		lea	(v_pal_dry+$76).w,a1
		move.l	(a0,d0.w),(a1)+
		move.w	4(a0,d0.w),(a1)
		jsr	DynaWater_Update

PCycLZ_Skip2:
		rts	
; End of function PCycle_LZ

; ===========================================================================
PCycLZ_Seq:	dc.b 1,	0, 0, 1, 0, 0, 1, 0
; ===========================================================================

PCycle_MZ:
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PalCycle_SLZ:
		cmpi.b	#3,(v_act).w
		beq.w	locret_1A80
		subq.w	#1,(v_pcyc_time).w
		bpl.s	locret_1A80
		move.w	#7,(v_pcyc_time).w
		move.w	(v_pcyc_num).w,d0
		addq.w	#1,d0
		cmpi.w	#6,d0
		bcs.s	loc_1A60
		moveq	#0,d0

loc_1A60:
		move.w	d0,(v_pcyc_num).w
		move.w	d0,d1
		add.w	d1,d1
		add.w	d1,d0
		add.w	d0,d0
		lea	(Pal_SLZCyc).l,a0
		lea	(v_pal_dry+$56).w,a1
		move.w	(a0,d0.w),(a1)
		move.l	2(a0,d0.w),4(a1)

locret_1A80:
		rts	
; End of function PalCycle_SLZ


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PalCycle_SYZ:
		subq.w	#1,(v_pcyc_time).w
		bpl.s	locret_1AC6
		move.w	#5,(v_pcyc_time).w
		move.w	(v_pcyc_num).w,d0
		addq.w	#1,(v_pcyc_num).w
		andi.w	#3,d0
		lsl.w	#2,d0
		move.w	d0,d1
		add.w	d0,d0
		lea	(Pal_SYZCyc1).l,a0
		lea	(v_pal_dry+$6E).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)
		lea	(Pal_SYZCyc2).l,a0
		lea	(v_pal_dry+$76).w,a1
		move.w	(a0,d1.w),(a1)
		move.w	2(a0,d1.w),4(a1)

locret_1AC6:
		rts	
; End of function PalCycle_SYZ


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PalCycle_SBZ:
		lea	(Pal_SBZCycList1).l,a2
		tst.b	(v_act).w
		beq.s	loc_1ADA
		lea	(Pal_SBZCycList2).l,a2

loc_1ADA:
		lea	(v_pal_buffer).w,a1
		move.w	(a2)+,d1

loc_1AE0:
		subq.b	#1,(a1)
		bmi.s	loc_1AEA
		addq.l	#2,a1
		addq.l	#6,a2
		bra.s	loc_1B06
; ===========================================================================

loc_1AEA:
		move.b	(a2)+,(a1)+
		move.b	(a1),d0
		addq.b	#1,d0
		cmp.b	(a2)+,d0
		bcs.s	loc_1AF6
		moveq	#0,d0

loc_1AF6:
		move.b	d0,(a1)+
		andi.w	#$F,d0
		add.w	d0,d0
		movea.w	(a2)+,a0
		movea.w	(a2)+,a3
		move.w	(a0,d0.w),(a3)

loc_1B06:
		dbf	d1,loc_1AE0
		subq.w	#1,(v_pcyc_time).w
		bpl.s	locret_1B64
		lea	(Pal_SBZCyc4).l,a0
		move.w	#1,(v_pcyc_time).w
		tst.b	(v_act).w
		beq.s	loc_1B2E
		lea	(Pal_SBZCyc10).l,a0
		move.w	#0,(v_pcyc_time).w

loc_1B2E:
		moveq	#-1,d1
		tst.b	(f_conveyrev).w
		beq.s	loc_1B38
		neg.w	d1

loc_1B38:
		move.w	(v_pcyc_num).w,d0
		andi.w	#3,d0
		add.w	d1,d0
		cmpi.w	#3,d0
		bcs.s	loc_1B52
		move.w	d0,d1
		moveq	#0,d0
		tst.w	d1
		bpl.s	loc_1B52
		moveq	#2,d0

loc_1B52:
		move.w	d0,(v_pcyc_num).w
		add.w	d0,d0
		lea	(v_pal_dry+$58).w,a1
		move.l	(a0,d0.w),(a1)+
		move.w	4(a0,d0.w),(a1)

locret_1B64:
		rts	
; End of function PalCycle_SBZ

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


PCycle_Null:
		rts	
; End of function PalCycle_Null

; ---------------------------------------------------------------------------
; Palette Cycling Super Sonic
; ---------------------------------------------------------------------------
PalCycle_SuperSonic:
		move.b	(pal_superform).w,d0
		beq.w	.return	; return, if Sonic isn't super
		bmi.w	.normal	; branch, if fade-in is done
		subq.b	#1,d0
		bne.w	.revert	; branch for values greater than 1

		; fade from Sonic's to Super Sonic's palette
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	.return
		move.b	#3,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(CyclingPal_SS).l,a0
		tst.b	(v_character)
		beq.s	.sonic1
		lea	(CyclingPal_SA).l,a0
.sonic1:
		move.w	(Palette_frame).w,d0
		addq.w	#8,(Palette_frame).w	; 1 palette entry = 1 word, Sonic uses 4 shades of blue
		cmpi.w	#$30,(Palette_frame).w	; has palette cycle reached the 6th frame?
		blo.s	.skip1			; if not, branch
		move.b	#-1,(pal_superform).w	; mark fade-in as done
		move.b	#0,(v_player+obControl).w	; restore Sonic's movement
.skip1:
		lea	(v_pal_dry+4).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)
		; underwater palettes
		jmp	DynaWater_Update
; ===========================================================================
.revert:	; runs the fade in transition backwards
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	.return
		move.b	#3,(Palette_timer).w

		; decrement palette frame and update Sonic's palette
		lea	(CyclingPal_SS).l,a0
		tst.b	(v_character)
		beq.s	.sonic2
		lea	(CyclingPal_SA).l,a0
.sonic2:
		move.w	(Palette_frame).w,d0
		subq.w	#8,(Palette_frame).w	; previous frame
		bcc.s	.skip2			; branch, if it isn't the first frame
		move.w	#0,(Palette_frame).w
		move.b	#0,(pal_superform).w	; stop palette cycle
.skip2:
		lea	(v_pal_dry+4).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)
		; underwater palettes
		jmp	DynaWater_Update
; ===========================================================================
.normal:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	.return
		move.b	#7,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(CyclingPal_SS).l,a0
		tst.b	(v_character)
		beq.s	.sonic3
		lea	(CyclingPal_SA).l,a0
.sonic3:
		move.w	(Palette_frame).w,d0
		addq.w	#8,(Palette_frame).w	; next frame
		cmpi.w	#$78,(Palette_frame).w	; is it the last frame?
		bls.s	.skip3			; if not, branch
		move.w	#$30,(Palette_frame).w	; reset frame counter
.skip3:
		lea	(v_pal_dry+4).w,a1
		move.l	(a0,d0.w),(a1)+
		move.l	4(a0,d0.w),(a1)
		; underwater palettes
		jmp	DynaWater_Update
.return:
		rts
; End of function PalCycle_SuperSonic
;----------------------------------------------------------------------------
;Palette for transformation to Super Sonic and Super Amy
;----------------------------------------------------------------------------
CyclingPal_SS:
	binclude	"palette/Super Sonic transformation.bin"
	even
CyclingPal_SA:
	binclude	"palette/Super Amy transformation.bin"
	even