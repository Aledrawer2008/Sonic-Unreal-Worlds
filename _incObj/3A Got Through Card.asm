; ---------------------------------------------------------------------------
; Object 3A - "SONIC GOT THROUGH" title	card
; ---------------------------------------------------------------------------

GotThroughCard:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Got_Index(pc,d0.w),d1
		jmp	Got_Index(pc,d1.w)
; ===========================================================================
Got_Index:	dc.w Got_ChkPLC-Got_Index
		dc.w Got_Move-Got_Index
		dc.w Got_Wait-Got_Index
		dc.w Got_TimeBonus-Got_Index
		dc.w Got_Wait-Got_Index
		dc.w Got_NextLevel-Got_Index
		dc.w Got_Wait-Got_Index
		dc.w Got_Move2-Got_Index
		dc.w loc_C766-Got_Index

got_mainX = $30		; position for card to display on
got_finalX = $32		; position for card to finish on
; ===========================================================================

Got_ChkPLC:	; Routine 0
		tst.l	(v_plc_buffer).w ; are the pattern load cues empty?
		beq.s	Got_Main	; if yes, branch
		rts	
; ===========================================================================

Got_Main:
		cmpi.w	#$502,(v_zone).w
		bne.s	.notFZend
		move.b	#6,(v_dle_routine).w
	.notFZend:
        move.w    #bgm_Fade,d0
        jsr    (PlaySound_Special).l ;    fade out music
		movea.l	a0,a1
		lea	(Got_Config).l,a2
		moveq	#3,d1

Got_Loop:
		_move.b	#id_GotThroughCard,0(a1)
		move.w	(a2),obX(a1)	; load start x-position
		move.w	(a2)+,got_finalX(a1) ; load finish x-position (same as start)
		move.w	(a2)+,got_mainX(a1) ; load main x-position
		move.w	(a2)+,obScreenY(a1) ; load y-position
		move.b	(a2)+,obRoutine(a1)
		move.b	(a2)+,d0
		cmpi.b	#6,d0
		bne.s	loc_C5CA
		add.b	(v_act).w,d0	; add act number to frame number

loc_C5CA:
		move.b	d0,obFrame(a1)
		move.l	#Map_Got,obMap(a1)
		move.w	#$8580,obGfx(a1)
		move.b	#0,obRender(a1)
		lea	$40(a1),a1
		dbf	d1,Got_Loop	; repeat 6 times

Got_Move:	; Routine 2
		moveq	#$10,d1		; set horizontal speed
		move.w	got_mainX(a0),d0
		cmp.w	obX(a0),d0	; has item reached its target position?
		beq.s	loc_C61A	; if yes, branch
		bge.s	Got_ChgPos
		neg.w	d1

Got_ChgPos:
		add.w	d1,obX(a0)	; change item's position

loc_C5FE:
		move.w	obX(a0),d0
		bmi.s	locret_C60E
		cmpi.w	#$200,d0	; has item moved beyond	$200 on	x-axis?
		bcc.s	locret_C60E	; if yes, branch
		bra.w	DisplaySprite

locret_C60E:
		rts	
; ===========================================================================

loc_C610:
		move.b	#$E,obRoutine(a0)
		bra.w	Got_Move2
; ===========================================================================

loc_C61A:
		cmpi.b	#$E,($FFFFD724).w
		beq.s	loc_C610
		cmpi.b	#2,obFrame(a0)
		bne.s	loc_C5FE
        move.w	#bgm_ActClear,d0
		add.b	(v_character).w,d0
    	jsr	(PlaySound_Special).l ;    play Got-Through Act music
        clr.b   (f_specials).w
		addq.b	#2,obRoutine(a0)
		move.w	#300,$34(a0) ; set time delay to 3 seconds

Got_Wait:	; Routine 4, 8, $C
		subq.w	#1,$34(a0) ; subtract 1 from time delay
		bne.s	Got_Display
		addq.b	#2,obRoutine(a0)

Got_Display:
		bra.w	DisplaySprite
; ===========================================================================

Got_TimeBonus:	; Routine 6
        bsr.w	DisplaySprite
		move.b	#1,(f_endactbonus).w ; set time/ring bonus update flag
		moveq	#0,d0            ; clear d0 to initialize it
		add.w	(v_timebonus),d0	; add the entire bonus to d0
        clr.w	(v_timebonus).w 	; clear the time bonus

Got_RingBonus:
        add.w	(v_ringbonus).w,d0        ; add the entire bonus to d0
        clr.w	(v_ringbonus).w ; clear the ring bonus
Got_ChkBonus:
        jsr	AddPoints            ; adds the points stored in d0.
        move.w	#sfx_Cash,d0
        jsr	(PlaySound_Special).l ;    play "ker-ching" sound
        addq.b	#2,obRoutine(a0)
        cmpi.w	#$501,(v_zone).w
        blt.s	Got_SetDelay
        addq.b	#4,obRoutine(a0)

Got_SetDelay:
		move.w	#180,$34(a0) ; set time delay to 3 seconds

locret_C692:
		rts	
; ===========================================================================

Got_NextLevel:	; Routine $A
		cmpi.w	#$502,(v_zone)
		beq.s	Got_Ending
		move.b	(v_zone).w,d0
		andi.w	#7,d0
		lsl.w	#3,d0
		move.b	(v_act).w,d1
		andi.w	#3,d1
		add.w	d1,d1
		add.w	d1,d0
		move.w	LevelOrder(pc,d0.w),d0 ; load level from level order array
		move.w	d0,(v_zone).w	; set level number
		clr.b	(v_lastlamp).w	; clear	lamppost counter
		move.b	#1,(f_restart).w ; restart level
		bra.w	DisplaySprite
; ===========================================================================

Got_Ending:
		move.b	#id_Ending,(v_gamemode).w
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Level	order array
; ---------------------------------------------------------------------------
LevelOrder:
		; Green Hill Zone
		dc.b id_GHZ, 1	; Act 1
		dc.b id_GHZ, 2	; Act 2
		dc.b id_MZ, 0	; Act 3
		dc.b id_GHZ, 0	; Tutorial (Unused)

		; Labyrinth Zone
		dc.b id_LZ, 1	; Act 1
		dc.b id_LZ, 2	; Act 2
		dc.b id_SLZ, 0	; Act 3
		dc.b id_SBZ, 2	; Scrap Brain Zone Act 3

		; Marble Zone
		dc.b id_MZ, 1	; Act 1
		dc.b id_MZ, 2	; Act 2
		dc.b id_SYZ, 0	; Act 3
		dc.b id_GHZ, 0	; (Unused)

		; Star Light Zone
		dc.b id_SLZ, 1	; Act 1
		dc.b id_SLZ, 2	; Act 2
		dc.b id_SLZ, 3	; Act 3
		dc.b id_SBZ, 0	; Train Assault

		; Spring Yard Zone
		dc.b id_SYZ, 1	; Act 1
		dc.b id_SYZ, 2	; Act 2
		dc.b id_LZ, 0	; Act 3
		dc.b id_GHZ, 0	; (Unused)

		; Scrap Brain Zone
		dc.b id_SBZ, 1	; Act 1
		dc.b id_LZ, 3	; Act 2
		dc.b id_SBZ, 3	; Final Zone
		dc.b id_GHZ, 0	; Unreal Battle (Unused)
		even
		zonewarning LevelOrder,8
; ===========================================================================

Got_Move2:	; Routine $E
		moveq	#$20,d1		; set horizontal speed
		move.w	got_finalX(a0),d0
		cmp.w	obX(a0),d0	; has item reached its finish position?
		beq.s	Got_SBZ2	; if yes, branch
		bge.s	Got_ChgPos2
		neg.w	d1

Got_ChgPos2:
		add.w	d1,obX(a0)	; change item's position
		move.w	obX(a0),d0
		bmi.s	locret_C748
		cmpi.w	#$200,d0	; has item moved beyond	$200 on	x-axis?
		bcc.s	locret_C748	; if yes, branch
		bra.w	DisplaySprite
; ===========================================================================

locret_C748:
		rts	
; ===========================================================================

Got_SBZ2:
		cmpi.b	#4,obFrame(a0)
		bne.w	DeleteObject
		addq.b	#2,obRoutine(a0)
		clr.b	(f_lockctrl).w	; unlock controls
		clr.b	(f_victorypose)
		cmpi.w	#$502,(v_zone).w
		beq.s	locret_C748
		move.w	#bgm_Cutscene,d0
		jmp	(PlaySound).l	; play cutscene music
; ===========================================================================

loc_C766:	; Routine $10
		cmpi.w	#$502,(v_zone).w
		beq.s	.UBZ
		cmpi.w	#$2100,(v_limitright2).w
		bge.w	DeleteObject
		addq.w	#2,(v_limitright2).w
		rts
.UBZ:
		moveq	#plcid_Explode,d0
		jsr	(AddPLC).l	; load explosion patterns
		move.w	#50,(v_rings).w
		move.b	#1,(f_timecount).w
		move.l	#0,(v_time).w
		move.b	#1,(f_lockctrl).w ; lock controls
		move.b	#$A,(v_dle_routine).w
		move.w	#(btnUp<<8),(v_jpadhold2).w ; make sonic look up
		jmp	DeleteObject

; ===========================================================================

Got_Config:		; routine number, frame number (changes)
           	; x-start, x-main, y-main
        	dc.w 0,    $D0, $BC ; "results" text
        	dc.b 2,    0
        	dc.w $528,    $188,    $F2 ; time bonus
        	dc.b 2,    1
        	dc.w $528,    $188,    $112 ; ring bonus
        	dc.b 2,    2