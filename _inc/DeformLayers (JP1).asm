; ---------------------------------------------------------------------------
; Background layer deformation subroutines
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DeformLayers:
		tst.b	(f_nobgscroll).w
		beq.s	.bgscroll
		rts	
; ===========================================================================

	.bgscroll:
		clr.w	(v_fg_scroll_flags).w
		clr.w	(v_bg1_scroll_flags).w
		clr.w	(v_bg2_scroll_flags).w
		clr.w	(v_bg3_scroll_flags).w
		bsr.w	ScrollHoriz
		bsr.w	ScrollVertical
		bsr.w	DynamicLevelEvents
		move.w	(v_screenposy).w,(v_scrposy_vdp).w
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		cmpi.b	#id_Title,(v_gamemode).w
		bne.s	.nottitle
		clr.w	(v_scrposy_vdp).w
		clr.w	(v_bgscrposy_vdp).w

    .nottitle:
		moveq	#0,d0
		move.b	(v_zone).w,d0
		add.w	d0,d0
		move.w	Deform_Index(pc,d0.w),d0
		jmp	Deform_Index(pc,d0.w)
; End of function DeformLayers

; ===========================================================================
; ---------------------------------------------------------------------------
; Offset index for background layer deformation	code
; ---------------------------------------------------------------------------
Deform_Index:	dc.w Deform_GHZ-Deform_Index, Deform_LZ-Deform_Index
		dc.w Deform_MZ-Deform_Index, Deform_SLZ-Deform_Index
		dc.w Deform_SYZ-Deform_Index, Deform_SBZ-Deform_Index
		zonewarning Deform_Index,2
		dc.w Deform_LZ-Deform_Index
; ---------------------------------------------------------------------------
; Green	Hill Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_GHZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#5,d4
		move.l	d4,d1
		asl.l	#1,d4
		add.l	d1,d4		; 13.28% scrolling
		moveq	#0,d6
		bsr.w	BGScroll_Block3	; for mountains
		
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4		; 50% scrolling
		moveq	#0,d6
		bsr.w	BGScroll_Block2	; for hill & waterfall

		lea	($FFFFA810).w,a1
		move.w	(v_screenposy).w,d0
		andi.w	#$7FF,d0
		lsr.w	#5,d0		; (y mod $800) / 32
		neg.w	d0
		addi.w	#$20,d0		; + 32
		bpl.s	.notOverflow
		moveq	#0,d0		; keep background y >= 0
	.notOverflow:
		move.w	d0,d4
		move.w	d0,(v_bgscrposy_vdp).w	; no need to reload tiles vertically
		
		move.w	(v_screenposx).w,d0
		move.w	d0,-(sp)	; save screen position for deformation
		cmpi.b	#id_Title,(v_gamemode).w
		bne.s	.notTitle
		move.w	#0,(v_screenposx).w	; don't move the sonic banner
	.notTitle:
		neg.w	d0
		swap	d0
		lea	($FFFFA800).w,a2		; auto-scroll clouds
		addi.l	#$10000,(a2)+		; 1px / frame
		addi.l	#$C000,(a2)+		; 0.75px / frame
		addi.l	#$8000,(a2)+		; 0.5px / frame
		lea	($FFFFA800).w,a2
	; write cloud positions (+ mountain position)
		move.w	(v_bg3screenposx).w,d0	; upper cloud
		add.w	(a2)+,d0
		addq.w	#2,a2
		move.w	d0,(a1)+

		move.w	(v_bg3screenposx).w,d0	; middle cloud
		add.w	(a2)+,d0
		addq.w	#2,a2
		move.w	d0,(a1)+

		move.w	(v_bg3screenposx).w,d0	; lower cloud
		add.w	(a2)+,d0
		move.w	d0,(a1)+
	; copy from the 3 scroll blocks	
		move.w	(v_bg3screenposx).w,d0
		move.w	d0,(a1)+		; distant mountains

		move.w	(v_bg2screenposx).w,d0
		move.w	d0,(a1)+		; hills & waterfall

		move.w	(v_bg2screenposx).w,d0	; water
		move.w	(sp),d2
		sub.w	d0,d2
		ext.l	d2
		asl.l	#8,d2
		divs.w	#$68,d2
		ext.l	d2		; (hill_x / 256) / water_height
		asl.l	#8,d2		; * 256
		moveq	#0,d3
		move.w	d0,d3
		moveq	#$67,d1
.waterLoop:		
		move.w	d3,d0
		move.w	d0,(a1)+	; pixelwise water scroll
		swap	d3
		add.l	d2,d3
		swap	d3
		dbf	d1,.waterLoop
		
		lea	(BGScrollSize_GHZ).l,a4
		lea	($FFFFA810).w,a5
		jsr	ProcessBGScroll
		move.w	(sp)+,(v_screenposx).w	; restore screen position
		rts
; End of function Deform_GHZ

; ---------------------------------------------------------------------------
; Labyrinth Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_LZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4		; 50% horizontal scrolling
		move.w	($FFFFF73C).w,d5
		ext.l	d5
		asl.l	#7,d5		; 50% vertical scrolling
		bsr.w	BGScroll_Uniform
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		
		cmpi.b	#id_Ending,(v_gamemode)
		beq.w	.ending
		lea	(Lz_Scroll_Data).l,a3
		lea	(Drown_WobbleData).l,a2
		move.b	($FFFFF7D8).w,d2	; water deformation offset
		move.b	d2,d3
		addi.w	#$80,($FFFFF7D8).w
		
		add.w	(v_bgscreenposy).w,d2
		andi.w	#$FF,d2
		add.w	(v_screenposy).w,d3
		andi.w	#$FF,d3
	; copy fg and bg position to hscroll table
		lea	(v_hscrolltablebuffer).w,a1
		move.w	#$DF,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		move.w	d0,d6
		swap	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0
		move.w	(v_waterpos1).w,d4
		move.w	(v_screenposy).w,d5
	.overWater:		
		cmp.w	d4,d5		; is current y >= water y?
		bge.s	.underWater	; if yes, branch
		move.l	d0,(a1)+	; copy fg & bg position
		
		addq.w	#1,d5		; advance current y for water check
		addq.b	#1,d2		; advance fg & bg positions
		addq.b	#1,d3		; for deformation offset table
		dbf	d1,.overWater
		rts
	.underWater:
		move.b	(a3,d3),d4	; load deformation offset
		ext.w	d4
		add.w	d6,d4		; add fg x-position
		move.w	d4,(a1)+	; write to hscroll table
		
		move.b	(a2,d2),d4	; load deformation offset
		ext.w	d4
		add.w	d0,d4		; add bg x-position
		move.w	d4,(a1)+	; write to hscroll table
		
		addq.b	#1,d2		; advance fg & bg y positions
		addq.b	#1,d3		; for deformation offset table
		dbf	d1,.underWater
		rts

	.ending:
		move.w	(v_screenposx).w,d0
		move.w	d0,-(sp)	; save screen position for deformation

		lea	(BGScrollSize_Ending).l,a4
		lea	($FFFFA800).w,a5
		jsr	ProcessBGScroll
		move.w	(sp)+,(v_screenposx).w	; restore screen position
		rts

Lz_Scroll_Data:		; water deformation offset table for foreground
		dc.b $01,$01,$02,$02,$03,$03,$03,$03,$02,$02,$01,$01,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $FF,$FF,$FE,$FE,$FD,$FD,$FD,$FD,$FE,$FE,$FF,$FF,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $01,$01,$02,$02,$03,$03,$03,$03,$02,$02,$01,$01,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; End of function Deform_LZ

; ---------------------------------------------------------------------------
; Marble Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_MZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4
		move.l	d4,d1
		asl.l	#1,d4
		add.l	d1,d4		; 25.78% scrolling
		moveq	#2,d6
		bsr.w	BGScroll_Block1	; for inner background
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4		; 25% scrolling
		moveq	#6,d6
		bsr.w	BGScroll_Block3
		move.w	(v_scrshiftx).w,d4	; for mountains
		ext.l	d4
		asl.l	#7,d4		; 50% scrolling
		moveq	#4,d6
		bsr.w	BGScroll_Block2		; for bushes
		
		move.w	#$200,d0		; add offset of 512px for background y
		move.w	(v_screenposy).w,d1
		subi.w	#$1C8,d1		; 56px before inner sections
		bcs.s	.setYPos	; 0% scrolling if y < 56px
		move.w	d1,d2
		add.w	d1,d1
		add.w	d2,d1		; y * 3
		asr.w	#2,d1
		add.w	d1,d0		; 75% scrolling
	.setYPos:
		move.w	d0,(v_bg2screenposy).w
		move.w	d0,(v_bg3screenposy).w
		bsr.w	BGScroll_VerticalSet
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		move.b	(v_bg1_scroll_flags).w,d0
		or.b	(v_bg2_scroll_flags).w,d0
		or.b	d0,(v_bg3_scroll_flags).w
		clr.b	(v_bg1_scroll_flags).w
		clr.b	(v_bg2_scroll_flags).w
		
		lea	($FFFFA800).w,a1
		clr.w	(a1)+		; unused 2 chunks
		
		move.w	(v_screenposx).w,d2
		neg.w	d2
		
		move.w	d2,d0		; clouds
		asr.w	#2,d0
		sub.w	d2,d0
		ext.l	d0
		asl.l	#3,d0
		divs.w	#5,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#6,d0
		moveq	#0,d3
		move.w	d2,d3
		asr.w	#1,d3		; start with 50% scrolling
		moveq	#9,d1
		neg.w	d3
	.cloudLoop:		
		move.w	d3,(a1)+	; clouds (8px instead of 16px)
		swap	d3
		sub.l	d0,d3
		swap	d3
		dbf	d1,.cloudLoop
		
		move.w	(v_bg3screenposx).w,d0	
		move.w	d0,(a1)+	; mountains
		move.w	(v_bg2screenposx).w,d0	
		move.w	d0,(a1)+	; bushes & buildings
		move.w	(v_bgscreenposx).w,d0	
		move.w	d0,(a1)+	; inner background
		
		lea	(BGScrollSize_MZ).l,a4
		lea	($FFFFA800).w,a5
		jmp	ProcessBGScroll
; End of function Deform_MZ

; ---------------------------------------------------------------------------
; Star Light Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SLZ:
		cmpi.b	#3,(v_act).w
		beq.w	Deform_GHZ
		move.w	($FFFFF73C).w,d5
		ext.l	d5
		asl.l	#7,d5
		bsr.w	Bg_Scroll_Y	; 50% vertical scrolling
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		
		lea	($FFFFA800).w,a1
		clr.w	(a1)+	; unused $C0 pixels
		
		move.w	(v_screenposx).w,d2
		neg.w	d2
		
		move.w	d2,d0		; stars
		asr.w	#3,d0
		sub.w	d2,d0
		ext.l	d0
		asl.l	#4,d0
		divs.w	#$1C,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#8,d0
		moveq	#0,d3
		move.w	d2,d3		; start with 100% scrolling
		moveq	#$1B,d1
		neg.w	d3
	.starsLoop:		
		move.w	d3,(a1)+	; stars
		swap	d3
		sub.l	d0,d3
		swap	d3
		dbf	d1,.starsLoop
		
		move.w	d2,d0
		asr.w	#3,d0
		move.w	d0,d1
		asr.w	#1,d1
		add.w	d1,d0		; 62.5% scrolling
		neg.w	d0
		move.w	d0,(a1)+	; upper buildings

		move.w	d2,d0
		asr.w	#2,d0		; 25% scrolling
		neg.w	d0
		move.w	d0,(a1)+	; lower buildings

		move.w	d2,d0
		asr.w	#1,d0		; 50% scrolling
		neg.w	d0
		move.w	d0,(a1)+	; lower large buildings

	; process SLZ scroll
		lea	(BGScrollSize_SLZ).l,a4
		lea	($FFFFA800).w,a5
		jmp	ProcessBGScroll

; ---------------------------------------------------------------------------
; Spring Yard Zone background layer deformation	code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SYZ:
		move.w	($FFFFF73C).w,d5
		ext.l	d5
		asl.l	#4,d5
		move.l	d5,d1
		asl.l	#1,d5
		add.l	d1,d5		; 7.03% vertical scrolling
		bsr.w	Bg_Scroll_Y
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		
		lea	($FFFFA800).w,a1
		move.w	(v_screenposx).w,d2
		neg.w	d2
		
		move.w	d2,d0		; clouds
		asr.w	#3,d0
		sub.w	d2,d0
		ext.l	d0
		asl.l	#3,d0
		asr.w	#3,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#8,d0
		moveq	#0,d3
		move.w	d2,d3
		asr.w	#1,d3		; start with 50% scrolling
		moveq	#7,d1
		neg.w	d3
	.cloudLoop:		
		move.w	d3,(a1)+	; clouds
		swap	d3
		sub.l	d0,d3
		swap	d3
		dbf	d1,.cloudLoop
		
		move.w	d2,d0
		asr.w	#3,d0		; 12.5% scrolling
		neg.w	d0		; mountains
		move.w	d0,(a1)+

		move.w	d2,d0
		asr.w	#2,d0		; 25% scrolling
		neg.w	d0		; buildings
		move.w	d0,(a1)+

		move.w	d2,d0
		move.w	d2,d1
		asr.w	#1,d1
		sub.w	d1,d0
		ext.l	d0
		asl.l	#4,d0
		divs.w	#$E,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#8,d0
		moveq	#0,d3
		move.w	d2,d3
		asr.w	#1,d3		; start with 50% scrolling
		moveq	#$D,d1
		neg.w	d3
	.bushLoop:		
		move.w	d3,(a1)+	; bushes
		swap	d3
		sub.l	d0,d3
		swap	d3
		dbf	d1,.bushLoop
		
		lea	(BGScrollSize_SYZ).l,a4
		lea	($FFFFA800).w,a5
		jmp	ProcessBGScroll
; End of function Deform_SYZ

; ---------------------------------------------------------------------------
; Scrap	Brain Zone background layer deformation	code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SBZ:
		tst.b	(v_act).w		; is it act 2?
		bne.w	Bg_Scroll_SBz_2		; go to SBZ2 deformation
		
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4		; 50% scrolling
		moveq	#2,d6
		bsr.w	BGScroll_Block1	; for lower black buildings
		
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4		; 25% scrolling
		moveq	#6,d6
		bsr.w	BGScroll_Block3	; for distant brown buildings
		
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#5,d4
		move.l	d4,d1
		asl.l	#1,d4
		add.l	d1,d4		; 13.28% scrolling
		moveq	#4,d6
		bsr.w	BGScroll_Block2	; for upper black buildings
		
		moveq	#0,d4
		move.w	($FFFFF73C).w,d5
		ext.l	d5
		asl.l	#5,d5		; 12.5% vertical scrolling
		bsr.w	BGScroll_VerticalAdd
		
		move.w	(v_bgscreenposy).w,d0
		move.w	d0,(v_bg2screenposy).w
		move.w	d0,(v_bg3screenposy).w
		move.w	d0,(v_bgscrposy_vdp).w
		move.b	(v_bg1_scroll_flags).w,d0
		or.b	(v_bg3_scroll_flags).w,d0
		or.b	d0,(v_bg2_scroll_flags).w
		clr.b	(v_bg1_scroll_flags).w
		clr.b	(v_bg3_scroll_flags).w
	; block deformation
		lea	($FFFFA800).w,a1
		move.w	(v_screenposx).w,d2
		neg.w	d2
		asr.w	#2,d2
		move.w	d2,d0
		asr.w	#1,d0
		sub.w	d2,d0
		ext.l	d0
		asl.l	#3,d0
		asr.w	#2,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#8,d0
		moveq	#0,d3
		move.w	d2,d3
		move.w	#3,d1
		neg.w	d3
.cloudLoop:		
		move.w	d3,(a1)+	; clouds
		swap	d3
		sub.l	d0,d3
		swap	d3
		dbf	d1,.cloudLoop
		
		move.w	(v_bg3screenposx).w,d0
		move.w	d0,(a1)+	; distant brown buildings

		move.w	(v_bg2screenposx).w,d0		
		move.w	d0,(a1)+	; upper black buildings

		move.w	(v_bgscreenposx).w,d0	
		move.w	d0,(a1)+	; lower black buildings

		lea	(BGScrollSize_SBZ1).l,a4
		lea	($FFFFA800).w,a5
		jmp	ProcessBGScroll
;-------------------------------------------------------------------------------
Bg_Scroll_SBz_2:;loc_68A2:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4		
		asl.l	#6,d4		; 25% horizontal scrolling
		move.w	($FFFFF73C).w,d5
		ext.l	d5
		asl.l	#5,d5		; 12.5% vertical scrolling
		bsr.w	BGScroll_Uniform
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		
		lea	(v_hscrolltablebuffer).w,a1	; copy fg and bg positions to hscroll
		move.w	#223,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		swap	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0
loc_68D2:		
		move.l	d0,(a1)+
		dbf	d1,loc_68D2
		rts
; End of function Deform_SBZ
; ---------------------------------------------------------------------------

Deform_Ending:
            	rts

; ---------------------------------------------------------------------------
; Subroutine to	scroll the level horizontally as Sonic moves
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollHoriz:
		move.w	(v_screenposx).w,d4 ; save old screen position
		bsr.s	MoveScreenHoriz
		move.w	(v_screenposx).w,d0
		andi.w	#$10,d0
		move.b	($FFFFF74A).w,d1
		eor.b	d1,d0
		bne.s	locret_65B0
		eori.b	#$10,($FFFFF74A).w
		move.w	(v_screenposx).w,d0
		sub.w	d4,d0		; compare new with old screen position
		bpl.s	SH_Forward

		bset	#2,(v_fg_scroll_flags).w ; screen moves backward
		rts	

	SH_Forward:
		bset	#3,(v_fg_scroll_flags).w ; screen moves forward

locret_65B0:
		rts	
; End of function ScrollHoriz


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


MoveScreenHoriz:
		move.b	($FFFFC904).w,d1	; should scrolling be delayed?
		beq.s	.cont1				; if not, branch
		lsl.b	#2,d1		; multiply by 4, the size of a position buffer entry
		subq.b	#1,($FFFFC904).w	; reduce delay value
		move.b	(v_trackpos+1).w,d0
		sub.b	($FFFFC904+1).w,d0
		cmp.b	d0,d1
		blo.s	.doNotCap
		move.b	d0,d1
.doNotCap:
		move.w	(v_trackpos).w,d0
		sub.b	d1,d0
		lea	(v_tracksonic).w,a1
		move.w	(a1,d0.w),d0
		and.w	#$3FFF,d0
		bra.s	.cont2
		
.cont1:
		move.w	($FFFFD008).w,d0
		
.cont2:
		sub.w	(v_screenposx).w,d0
        sub.w    (v_camera_pan).w,d0    ; Horizontal camera pan value
        beq.s    SH_ProperlyFramed    ; if zero, branch
        bcs.s    SH_BehindMid    ; if less than, branch
        bra.s    SH_AheadOfMid    ; branch
; ===========================================================================

SH_ProperlyFramed:
        clr.w    (v_scrshiftx).w
        rts 
; ===========================================================================

SH_AheadOfMid:
        cmpi.w    #16,d0        ; is Sonic within 16px of middle area?
        blt.s    SH_Ahead16    ; if yes, branch
        move.w    #16,d0        ; set to 16 if greater

SH_Ahead16:
        add.w    (v_screenposx).w,d0
        cmp.w    (v_limitright2).w,d0
        blt.s    SH_SetScreen
        move.w    (v_limitright2).w,d0

SH_SetScreen:
        move.w    d0,d1
        sub.w    (v_screenposx).w,d1
        asl.w    #8,d1
        move.w    d0,(v_screenposx).w ; set new screen position
        move.w    d1,(v_scrshiftx).w ; set distance for screen movement
        rts

; ===========================================================================

SH_BehindMid:
        cmpi.w    #-16,d0        ; is Sonic within 16px of middle area?
        bge.s    SH_Behind16    ; if no, branch
        move.w    #-16,d0        ; set to -16 if less

SH_Behind16:
		cmpi.w	#-$10,d0
		bgt.s	.cont
		move.w	#-$10,d0	
		
.cont:
		add.w	(v_screenposx).w,d0
		cmp.w	(v_limitleft2).w,d0
		bgt.s	SH_SetScreen
		move.w	(v_limitleft2).w,d0
		bra.s	SH_SetScreen
; End of function MoveScreenHoriz

; ===========================================================================
		tst.w	d0
		bpl.s	loc_6610
		move.w	#-2,d0
		bra.s	SH_BehindMid

loc_6610:
		move.w	#2,d0
		bra.s	SH_AheadOfMid

; ---------------------------------------------------------------------------
; Subroutine to	scroll the level vertically as Sonic moves
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollVertical:
		moveq	#0,d1
		move.w	(v_player+obY).w,d0
		sub.w	(v_screenposy).w,d0 ; Sonic's distance from top of screen
		btst	#2,(v_player+obStatus).w ; is Sonic rolling?
		beq.s	SV_NotRolling	; if not, branch
		subq.w	#5,d0

	SV_NotRolling:
		btst	#1,(v_player+obStatus).w ; is Sonic jumping?
		beq.s	loc_664A	; if not, branch

		addi.w	#32,d0
		sub.w	(v_lookshift).w,d0
		bcs.s	loc_6696
		subi.w	#64,d0
		bcc.s	loc_6696
		tst.b	(f_bgscrollvert).w
		bne.s	loc_66A8
		bra.s	loc_6656
; ===========================================================================

loc_664A:
		sub.w	(v_lookshift).w,d0
		bne.s	loc_665C
		tst.b	(f_bgscrollvert).w
		bne.s	loc_66A8

loc_6656:
		clr.w	($FFFFF73C).w
		rts	
; ===========================================================================

loc_665C:
		cmpi.w	#$60,(v_lookshift).w
		bne.s	loc_6684
		move.w	(v_player+obInertia).w,d1
		bpl.s	loc_666C
		neg.w	d1

loc_666C:
		cmpi.w	#$800,d1
		bcc.s	loc_6696
		move.w	#$600,d1
		cmpi.w	#6,d0
		bgt.s	loc_66F6
		cmpi.w	#-6,d0
		blt.s	loc_66C0
		bra.s	loc_66AEa
; ===========================================================================

loc_6684:
		move.w	#$200,d1
		cmpi.w	#2,d0
		bgt.s	loc_66F6
		cmpi.w	#-2,d0
		blt.s	loc_66C0
		bra.s	loc_66AEa
; ===========================================================================

loc_6696:
		move.w	#$1000,d1
		cmpi.w	#$10,d0
		bgt.s	loc_66F6
		cmpi.w	#-$10,d0
		blt.s	loc_66C0
		bra.s	loc_66AEa
; ===========================================================================

loc_66A8:
		moveq	#0,d0
		move.b	d0,(f_bgscrollvert).w

loc_66AEa:
		moveq	#0,d1
		move.w	d0,d1
		add.w	(v_screenposy).w,d1
		tst.w	d0
		bpl.w	loc_6700
		bra.w	loc_66CC
; ===========================================================================

loc_66C0:
		neg.w	d1
		ext.l	d1
		asl.l	#8,d1
		add.l	(v_screenposy).w,d1
		swap	d1

loc_66CC:
		cmp.w	(v_limittop2).w,d1
		bgt.s	loc_6724
		cmpi.w	#-$100,d1
		bgt.s	loc_66F0
		andi.w	#$7FF,d1
		andi.w	#$7FF,(v_player+obY).w
		andi.w	#$7FF,(v_screenposy).w
		andi.w	#$3FF,(v_bgscreenposy).w
		bra.s	loc_6724
; ===========================================================================

loc_66F0:
		move.w	(v_limittop2).w,d1
		bra.s	loc_6724
; ===========================================================================

loc_66F6:
		ext.l	d1
		asl.l	#8,d1
		add.l	(v_screenposy).w,d1
		swap	d1

loc_6700:
		cmp.w	(v_limitbtm2).w,d1
		blt.s	loc_6724
		subi.w	#$800,d1
		bcs.s	loc_6720
		andi.w	#$7FF,(v_player+obY).w
		subi.w	#$800,(v_screenposy).w
		andi.w	#$3FF,(v_bgscreenposy).w
		bra.s	loc_6724
; ===========================================================================

loc_6720:
		move.w	(v_limitbtm2).w,d1

loc_6724:
		move.w	(v_screenposy).w,d4
		swap	d1
		move.l	d1,d3
		sub.l	(v_screenposy).w,d3
		ror.l	#8,d3
		move.w	d3,($FFFFF73C).w
		move.l	d1,(v_screenposy).w
		move.w	(v_screenposy).w,d0
		andi.w	#$10,d0
		move.b	($FFFFF74B).w,d1
		eor.b	d1,d0
		bne.s	locret_6766
		eori.b	#$10,($FFFFF74B).w
		move.w	(v_screenposy).w,d0
		sub.w	d4,d0
		bpl.s	loc_6760
		bset	#0,(v_fg_scroll_flags).w
		rts	
; ===========================================================================

loc_6760:
		bset	#1,(v_fg_scroll_flags).w

locret_6766:
		rts	
; End of function ScrollVertical


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_Uniform:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74C).w,d3
		eor.b	d3,d1
		bne.s	BGScroll_VerticalAdd
		eori.b	#$10,($FFFFF74C).w
		sub.l	d2,d0
		bpl.s	.positiveX
		bset	#2,(v_bg1_scroll_flags).w
		bra.s	BGScroll_VerticalAdd
	.positiveX:
		bset	#3,(v_bg1_scroll_flags).w
BGScroll_VerticalAdd:
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	.return
		eori.b	#$10,($FFFFF74D).w
		sub.l	d3,d0
		bpl.s	.positiveY
		bset	#0,(v_bg1_scroll_flags).w
		rts
	.positiveY:
		bset	#1,(v_bg1_scroll_flags).w
	.return:
		rts
; End of function BGScroll_Uniform

Bg_Scroll_Y:
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	.return
		eori.b	#$10,($FFFFF74D).w
		sub.l	d3,d0
		bpl.s	.positive
		bset	#4,(v_bg1_scroll_flags).w
		rts
	.positive:
		bset	#5,(v_bg1_scroll_flags).w
	.return:
		rts


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_VerticalSet:
		move.w	(v_bgscreenposy).w,d3
		move.w	d0,(v_bgscreenposy).w
		move.w	d0,d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	.return
		eori.b	#$10,($FFFFF74D).w
		sub.w	d3,d0
		bpl.s	.positive
		bset	#0,(v_bg1_scroll_flags).w
		rts
	.positive:
		bset	#1,(v_bg1_scroll_flags).w
	.return:
		rts
; End of function BGScroll_VerticalSet


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_Block1:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74C).w,d3
		eor.b	d3,d1
		bne.s	.return
		eori.b	#$10,($FFFFF74C).w
		sub.l	d2,d0
		bpl.s	.positive
		bset	d6,(v_bg1_scroll_flags).w
		bra.s	.return
	.positive:
		addq.b	#1,d6
		bset	d6,(v_bg1_scroll_flags).w
	.return:
		rts
; End of function BGScroll_Block1


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_Block2:
		move.l	(v_bg2screenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bg2screenposx).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74E).w,d3
		eor.b	d3,d1
		bne.s	.return
		eori.b	#$10,($FFFFF74E).w
		sub.l	d2,d0
		bpl.s	.positive
		bset	d6,(v_bg2_scroll_flags).w
		bra.s	.return
	.positive:
		addq.b	#1,d6
		bset	d6,(v_bg2_scroll_flags).w
	.return:
		rts
;-------------------------------------------------------------------------------
BGScroll_Block3:
		move.l	(v_bg3screenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bg3screenposx).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF750).w,d3
		eor.b	d3,d1
		bne.s	.return
		eori.b	#$10,($FFFFF750).w
		sub.l	d2,d0
		bpl.s	.positive
		bset	d6,(v_bg3_scroll_flags).w
		bra.s	.return
	.positive:
		addq.b	#1,d6
		bset	d6,(v_bg3_scroll_flags).w
	.return:
		rts