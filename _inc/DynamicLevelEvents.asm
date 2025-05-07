; ---------------------------------------------------------------------------
; Dynamic level events
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DynamicLevelEvents:
		moveq	#0,d0
		move.b	(v_zone).w,d0
		add.w	d0,d0
		move.w	DLE_Index(pc,d0.w),d0
		jsr	DLE_Index(pc,d0.w) ; run level-specific events
		moveq	#2,d1
		move.w	(v_limitbtm1).w,d0
		sub.w	(v_limitbtm2).w,d0 ; has lower level boundary changed recently?
		beq.s	DLE_NoChg	; if not, branch
		bcc.s	loc_6DAC

		neg.w	d1
		move.w	(v_screenposy).w,d0
		cmp.w	(v_limitbtm1).w,d0
		bls.s	loc_6DA0
		move.w	d0,(v_limitbtm2).w
		andi.w	#$FFFE,(v_limitbtm2).w

loc_6DA0:
		add.w	d1,(v_limitbtm2).w
		move.b	#1,(f_bgscrollvert).w

DLE_NoChg:
		rts	
; ===========================================================================

loc_6DAC:
		move.w	(v_screenposy).w,d0
		addq.w	#8,d0
		cmp.w	(v_limitbtm2).w,d0
		bcs.s	loc_6DC4
		btst	#1,(v_player+obStatus).w
		beq.s	loc_6DC4
		add.w	d1,d1
		add.w	d1,d1

loc_6DC4:
		add.w	d1,(v_limitbtm2).w
		move.b	#1,(f_bgscrollvert).w
		rts	
; End of function DynamicLevelEvents

; ===========================================================================
; ---------------------------------------------------------------------------
; Offset index for dynamic level events
; ---------------------------------------------------------------------------
DLE_Index:	dc.w DLE_GHZ-DLE_Index, DLE_LZ-DLE_Index
		dc.w DLE_MZ-DLE_Index, DLE_SLZ-DLE_Index
		dc.w DLE_SYZ-DLE_Index, DLE_SBZ-DLE_Index
		zonewarning DLE_Index,2
		dc.w DLE_Ending-DLE_Index
; ===========================================================================
; ---------------------------------------------------------------------------
; Green	Hill Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_GHZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:
		dc.w DLE_GHZ1-.index
		dc.w DLE_GHZ2-.index
		dc.w DLE_GHZ3-.index
		dc.w DLE_Tuto-.index
; ===========================================================================

DLE_GHZ1:
		move.w	#$300,(v_limitbtm1).w ; set lower y-boundary
        move.w    #$300,(v_limitbtm2).w ; set lower y-boundary
		cmpi.w	#$1780,(v_screenposx).w ; has the camera reached $1780 on x-axis?
		bcs.s	.return	; if not, branch
		move.w	#$400,(v_limitbtm1).w ; set lower y-boundary
        move.w    #$400,(v_limitbtm2).w ; set lower y-boundary

.return:
		rts	
; ===========================================================================

DLE_GHZ2:
		move.w	#$300,(v_limitbtm1).w
		cmpi.w	#$1450,(v_screenposx).w
		bcs.s	locret_6E3A
		move.w	#$400,(v_limitbtm1).w
		cmpi.w	#$1d60,(v_screenposx).w
		bcs.s	locret_6E3A
		move.w	#$300,(v_limitbtm1).w

locret_6E3A:
		rts	
; ===========================================================================

DLE_GHZ3:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.subindex(pc,d0.w),d0
		jmp	.subindex(pc,d0.w)
; ===========================================================================
.subindex:	dc.w DLE_GHZ3main-.subindex
		dc.w DLE_GHZ3boss-.subindex
		dc.w DLE_GHZ3end-.subindex
; ===========================================================================

DLE_GHZ3main:
		move.w	#$300,(v_limitbtm1).w
		cmpi.w	#$380,(v_screenposx).w
		bcs.s	locret_6E96
		move.w	#$310,(v_limitbtm1).w
		cmpi.w	#$960,(v_screenposx).w
		bcs.s	locret_6E96
		cmpi.w	#$280,(v_screenposy).w
		bcs.s	loc_6E98
		move.w	#$400,(v_limitbtm1).w
		cmpi.w	#$1380,(v_screenposx).w
		bcc.s	loc_6E8E
		move.w	#$4C0,(v_limitbtm1).w
		move.w	#$4C0,(v_limitbtm2).w

loc_6E8E:
		cmpi.w	#$1700,(v_screenposx).w
		bcc.s	loc_6E98

locret_6E96:
		rts	
; ===========================================================================

loc_6E98:
		move.w	#$300,(v_limitbtm1).w
		addq.b	#2,(v_dle_routine).w
		rts	
; ===========================================================================

DLE_GHZ3boss:
		cmpi.w	#$960,(v_screenposx).w
		bcc.s	loc_6EB0
		subq.b	#2,(v_dle_routine).w

loc_6EB0:
		cmpi.w	#$2960,(v_screenposx).w
		bcs.s	locret_6EE8
		jsr	FindFreeObj
		bne.s	loc_6ED0
		_move.b	#id_BossGreenHill,0(a1) ; load GHZ boss	object
		move.w	#$2A60,obX(a1)
		move.w	#$280,obY(a1)

loc_6ED0:
		move.w	#bgm_EGG,d0
		tst.b	(v_character).w
		beq.s	.skip
		move.b	#bgm_EGG2,d0
.skip:
		jsr	PlaySound	; play boss music
		move.b	#1,(f_lockscreen).w ; lock screen
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_Boss,d0
		tst.b	(v_character).w
		beq.s	.skip2
		moveq	#plcid_BossAlt,d0
.skip2:
		jmp	AddPLC		; load boss patterns
; ===========================================================================

locret_6EE8:
		rts	
; ===========================================================================

DLE_GHZ3end:
		move.w	(v_screenposx).w,(v_limitleft2).w
		rts	
; ===========================================================================

DLE_Tuto:
		cmpi.w	#$2C0,(v_screenposx).w ; has the camera reached $2C0 on x-axis?
		bcs.s	.locret	; if not, branch
		move.b	#1,(v_character).w	; Change character to Amy Rose
		move.l	#Map_Amy,(v_player+obMap)
		moveq	#palid_Amy,d0
		jsr	PalLoad2	; load ending palette
		cmpi.w	#$400,(v_screenposx).w ; has the camera reached $400 on x-axis?
		bcs.s	.locret	; if not, branch
		clr.b	(v_character).w	; Change character to Sonic
		move.l	#Map_Sonic,(v_player+obMap)
		moveq	#palid_Sonic,d0
		jsr	PalLoad2	; load ending palette
.locret
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Labyrinth Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_LZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_LZ12-.index
		dc.w DLE_LZ12-.index
		dc.w DLE_LZ3-.index
		dc.w DLE_SBZ3-.index
; ===========================================================================

DLE_LZ12:
		rts	
; ===========================================================================

DLE_LZ3:
		tst.b	(f_switch+$F).w	; has switch $F	been pressed?
		beq.s	loc_6F28	; if not, branch
		lea	(v_lvllayout+$106).w,a1
		cmpi.b	#7,(a1)
		beq.s	loc_6F28
		move.b	#7,(a1)		; modify level layout
		move.w	#sfx_Rumbling,d0
		jsr	PlaySound_Special ; play rumbling sound

loc_6F28:
		tst.b	(v_dle_routine).w
		bne.s	locret_6F64
		cmpi.w	#$1CA0,(v_screenposx).w
		bcs.s	locret_6F62
		cmpi.w	#$600,(v_screenposy).w
		bcc.s	locret_6F62
		jsr	FindFreeObj
		bne.s	loc_6F4A
		_move.b	#id_BossLabyrinth,0(a1) ; load LZ boss object

loc_6F4A:
		move.w	#bgm_EGG,d0
		tst.b	(v_character).w
		beq.s	.skip
		move.b	#bgm_EGG2,d0
.skip:
		jsr	PlaySound	; play boss music
		move.b	#1,(f_lockscreen).w ; lock screen
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_Boss,d0
		tst.b	(v_character).w
		beq.s	.skip2
		moveq	#plcid_BossAlt,d0
.skip2:
		jmp	AddPLC		; load boss patterns
; ===========================================================================

locret_6F62:
		rts	
; ===========================================================================

locret_6F64:
		rts	
; ===========================================================================

DLE_SBZ3:
		cmpi.w	#$D00,(v_screenposx).w
		blo.s	locret_6F8C
		cmpi.w	#$18,(v_player+obY).w ; has Sonic reached the top of the level?
		bhs.s	locret_6F8C	; if not, branch
		clr.b	(v_lastlamp).w
		move.b	#1,(f_restart).w ; restart level
		move.w	#(id_SBZ<<8)+2,(v_zone).w ; set level number to 0502 (FZ)
		move.b	#1,(f_playerctrl).w ; lock controls

locret_6F8C:
		rts	
; ===========================================================================
; ---------------------------------------------------------------------------
; Marble Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_MZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_MZ1-.index
		dc.w DLE_MZ2-.index
		dc.w DLE_MZ3-.index
; ===========================================================================

DLE_MZ1:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	off_6FB2(pc,d0.w),d0
		jmp	off_6FB2(pc,d0.w)
; ===========================================================================
off_6FB2:	dc.w loc_6FBA-off_6FB2
		dc.w loc_6FEA-off_6FB2
		dc.w loc_702E-off_6FB2
		dc.w loc_7050-off_6FB2
; ===========================================================================

loc_6FBA:
		move.w	#$1D0,(v_limitbtm1).w
		cmpi.w	#$700,(v_screenposx).w
		bcs.s	locret_6FE8
		move.w	#$220,(v_limitbtm1).w
		cmpi.w	#$D00,(v_screenposx).w
		bcs.s	locret_6FE8
		move.w	#$340,(v_limitbtm1).w
		cmpi.w	#$340,(v_screenposy).w
		bcs.s	locret_6FE8
		addq.b	#2,(v_dle_routine).w

locret_6FE8:
		rts	
; ===========================================================================

loc_6FEA:
		cmpi.w	#$340,(v_screenposy).w
		bcc.s	loc_6FF8
		subq.b	#2,(v_dle_routine).w
		rts	
; ===========================================================================

loc_6FF8:
		move.w	#0,(v_limittop2).w
		cmpi.w	#$E00,(v_screenposx).w
		bcc.s	locret_702C
		move.w	#$340,(v_limittop2).w
		move.w	#$340,(v_limitbtm1).w
		cmpi.w	#$A90,(v_screenposx).w
		bcc.s	locret_702C
		move.w	#$500,(v_limitbtm1).w
		cmpi.w	#$370,(v_screenposy).w
		bcs.s	locret_702C
		addq.b	#2,(v_dle_routine).w

locret_702C:
		rts	
; ===========================================================================

loc_702E:
		cmpi.w	#$370,(v_screenposy).w
		bcc.s	loc_703C
		subq.b	#2,(v_dle_routine).w
		rts	
; ===========================================================================

loc_703C:
		cmpi.w	#$500,(v_screenposy).w
		bcs.s	locret_704E
		cmpi.w	#$B80,(v_screenposx).w
		bcs.s	locret_704E
		move.w	#$500,(v_limittop2).w
		addq.b	#2,(v_dle_routine).w

locret_704E:
		rts	
; ===========================================================================

loc_7050:
		cmpi.w	#$B80,(v_screenposx).w
		bcc.s	locj_76B8
		cmpi.w	#$340,(v_limittop2).w
		beq.s	locret_7072
		subq.w	#2,(v_limittop2).w
		rts
locj_76B8:
		cmpi.w	#$500,(v_limittop2).w
		beq.s	locj_76CE
		cmpi.w	#$500,(v_screenposy).w
		bcs.s	locret_7072
		move.w	#$500,(v_limittop2).w
locj_76CE:

		cmpi.w	#$E70,(v_screenposx).w
		bcs.s	locret_7072
		move.w	#0,(v_limittop2).w
		move.w	#$500,(v_limitbtm1).w
		cmpi.w	#$1430,(v_screenposx).w
		bcs.s	locret_7072
		move.w	#$210,(v_limitbtm1).w

locret_7072:
		rts	
; ===========================================================================

DLE_MZ2:
		move.w	#$520,(v_limitbtm1).w
		cmpi.w	#$1500,(v_screenposx).w
		bcs.s	locret_4B66
		move.w	#$540,(v_limitbtm1).w

locret_4B66:
		rts
; ===========================================================================

DLE_MZ3:
		tst.b	(v_dle_routine).w
		bne.w	DLE_MZ3end
		move.w	#$720,(v_limitbtm1).w
		cmpi.w	#$1560,(v_screenposx).w
		bcs.s	locret_70E8
		move.w	#$210,(v_limitbtm1).w
		cmpi.w	#$17F0,(v_screenposx).w
		bcs.s	locret_70E8
		jsr	FindFreeObj
		bne.s	loc_70D0
		_move.b	#id_BossMarble,0(a1) ; load MZ boss object
		move.w	#$19F0,obX(a1)
		move.w	#$22C,obY(a1)

loc_70D0:
		move.w	#bgm_EGG,d0
		tst.b	(v_character).w
		beq.s	.skip
		move.b	#bgm_EGG2,d0
.skip:
		jsr	PlaySound	; play boss music
		move.b	#1,(f_lockscreen).w ; lock screen
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_Boss,d0
		tst.b	(v_character).w
		beq.s	.skip2
		moveq	#plcid_BossAlt,d0
.skip2:
		jmp	AddPLC		; load boss patterns
; ===========================================================================

locret_70E8:
		rts	
; ===========================================================================

DLE_MZ3end:
		move.w	(v_screenposx).w,(v_limitleft2).w
		rts	
; ===========================================================================
; ---------------------------------------------------------------------------
; Star Light Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_SLZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:
		dc.w DLE_SLZ12-.index
		dc.w DLE_SLZ12-.index
		dc.w DLE_SLZ3-.index
		dc.w DLE_TAZ-.index
; ===========================================================================

DLE_SLZ12:
		rts	
; ===========================================================================

DLE_TAZ:
		tst.b	(v_dle_routine).w
		bne.s	.return
		cmpi.w	#$1980,(v_screenposx).w
		ble.s	.return
		move.b	#plcid_Train,d0
		jsr	AddPLC
		addq.b	#2,(v_dle_routine).w
.return:
		rts
; ===========================================================================

DLE_SLZ3:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_SLZ3main-.index
		dc.w DLE_SLZ3boss-.index
		dc.w DLE_SLZ3end-.index
; ===========================================================================

DLE_SLZ3main:
		cmpi.w	#$1E70,(v_screenposx).w
		bcs.s	locret_7130
		move.w	#$210,(v_limitbtm1).w
		addq.b	#2,(v_dle_routine).w

locret_7130:
		rts	
; ===========================================================================

DLE_SLZ3boss:
		cmpi.w	#$2000,(v_screenposx).w
		bcs.s	locret_715C
		jsr	FindFreeObj
		bne.s	loc_7144
		move.b	#id_BossStarLight,(a1) ; load SLZ boss object

loc_7144:
		move.w	#bgm_EGG,d0
		tst.b	(v_character).w
		beq.s	.skip
		move.b	#bgm_EGG2,d0
.skip:
		jsr	PlaySound	; play boss music
		move.b	#1,(f_lockscreen).w ; lock screen
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_Boss,d0
		tst.b	(v_character).w
		beq.s	.skip2
		moveq	#plcid_BossAlt,d0
.skip2:
		jmp	AddPLC		; load boss patterns
; ===========================================================================

locret_715C:
		rts	
; ===========================================================================

DLE_SLZ3end:
		move.w	(v_screenposx).w,(v_limitleft2).w
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Spring Yard Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_SYZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_SYZ1-.index
		dc.w DLE_SYZ2-.index
		dc.w DLE_SYZ3-.index
; ===========================================================================

DLE_SYZ1:
		rts	
; ===========================================================================

DLE_SYZ2:
		move.w	#$520,(v_limitbtm1).w
		cmpi.w	#$25A0,(v_screenposx).w
		bcs.s	locret_71A2
		move.w	#$420,(v_limitbtm1).w
		cmpi.w	#$4D0,(v_player+obY).w
		bcs.s	locret_71A2
		move.w	#$520,(v_limitbtm1).w

locret_71A2:
		rts	
; ===========================================================================

DLE_SYZ3:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_SYZ3main-.index
		dc.w DLE_SYZ3boss-.index
		dc.w DLE_SYZ3end-.index
; ===========================================================================

DLE_SYZ3main:
		cmpi.w	#$2AC0,(v_screenposx).w
		bcs.s	locret_71CE
		jsr	FindFreeObj
		bne.s	locret_71CE
		move.b	#id_BossBlock,(a1) ; load blocks that boss picks up
		addq.b	#2,(v_dle_routine).w

locret_71CE:
		rts	
; ===========================================================================

DLE_SYZ3boss:
		cmpi.w	#$2C00,(v_screenposx).w
		bcs.s	locret_7200
		move.w	#$4CC,(v_limitbtm1).w
		jsr	FindFreeObj
		bne.s	loc_71EC
		move.b	#id_BossSpringYard,(a1) ; load SYZ boss	object
		addq.b	#2,(v_dle_routine).w

loc_71EC:
		move.w	#bgm_EGG,d0
		tst.b	(v_character).w
		beq.s	.skip
		move.b	#bgm_EGG2,d0
.skip:
		jsr	PlaySound	; play boss music
		move.b	#1,(f_lockscreen).w ; lock screen
		moveq	#plcid_Boss,d0
		tst.b	(v_character).w
		beq.s	.skip2
		moveq	#plcid_BossAlt,d0
.skip2:
		jmp	AddPLC		; load boss patterns
; ===========================================================================

locret_7200:
		rts	
; ===========================================================================

DLE_SYZ3end:
		move.w	(v_screenposx).w,(v_limitleft2).w
		rts	
; ===========================================================================
; ---------------------------------------------------------------------------
; Scrap	Brain Zone dynamic level events
; ---------------------------------------------------------------------------

DLE_SBZ:
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	d0,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_SBZ1-.index
		dc.w DLE_SBZ2-.index
		dc.w DLE_FZ-.index
		dc.w DLE_UBZ-.index
; ===========================================================================

DLE_SBZ1:
		move.w	#$720,(v_limitbtm1).w
		cmpi.w	#$1880,(v_screenposx).w
		bcs.s	.return
		move.w	#$620,(v_limitbtm1).w
		cmpi.w	#$2000,(v_screenposx).w
		bcs.s	.return
		move.w	#$2A0,(v_limitbtm1).w

.return:
		rts	
; ===========================================================================

DLE_SBZ2:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.index(pc,d0.w),d0
		jmp	.index(pc,d0.w)
; ===========================================================================
.index:	dc.w DLE_SBZ2main-.index
		dc.w DLE_SBZ2boss-.index
		dc.w DLE_SBZ2boss2-.index
		dc.w DLE_SBZ2end-.index
; ===========================================================================

DLE_SBZ2main:
		move.w	#$800,(v_limitbtm1).w
		cmpi.w	#$1800,(v_screenposx).w
		bcs.s	locret_727A
		move.w	#$510,(v_limitbtm1).w
		cmpi.w	#$1E00,(v_screenposx).w
		bcs.s	locret_727A
		addq.b	#2,(v_dle_routine).w

locret_727A:
		rts	
; ===========================================================================

DLE_SBZ2boss:
		cmpi.w	#$1EB0,(v_screenposx).w
		bcs.s	.return
		jsr	FindFreeObj
		bne.s	.return
		move.b	#id_FalseFloor,(a1) ; load collapsing block object
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_EggmanSBZ2,d0
		jmp	AddPLC		; load SBZ2 Eggman patterns
; ===========================================================================

.return:
		rts	
; ===========================================================================

DLE_SBZ2boss2:
		cmpi.w	#$1F60,(v_screenposx).w
		bcs.s	loc_72B6
		jsr	FindFreeObj
		bne.s	loc_72B0
		move.b	#id_ScrapEggman,(a1) ; load SBZ2 Eggman object
		addq.b	#2,(v_dle_routine).w

loc_72B0:
		move.b	#1,(f_lockscreen).w ; lock screen

loc_72B6:
		bra.w	loc_72C2
; ===========================================================================

DLE_SBZ2end:
		cmpi.w	#$2050,(v_screenposx).w
		bcs.s	loc_72C2
		rts	
; ===========================================================================

loc_72C2:
		move.w	(v_screenposx).w,(v_limitleft2).w
		rts	
; ===========================================================================

DLE_FZ:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.subindex(pc,d0.w),d0
		jmp	.subindex(pc,d0.w)
; ===========================================================================
.subindex:	dc.w DLE_FZmain-.subindex	; 0
		dc.w DLE_FZboss-.subindex	; 2
		dc.w DLE_FZend-.subindex	; 4
		dc.w locret_7322-.subindex	; 6
		dc.w DLE_FZ_Epilogue-.subindex	; 8
		dc.w DLE_FZ_Epilogue2-.subindex	; $A
		dc.w DLE_FZ_NoEmerald-.subindex	; $C
		dc.w DLE_FZ_SevenInHand-.subindex	; $E
		dc.w DLE_FZ_SevenInHandSUPER-.subindex	; $10
		dc.w DLE_FZ_SevenInHandSUPER2-.subindex	; $12
; ===========================================================================

DLE_FZmain:
		cmpi.w	#$2148,(v_screenposx).w
		bcs.s	.skip
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_FZBoss,d0
		jsr	AddPLC		; load FZ boss patterns

.skip:
		bra.w	loc_72C2
; ===========================================================================

DLE_FZboss:
		cmpi.w	#$2300,(v_screenposx).w
		bcs.s	.skip
		jsr	FindFreeObj
		bne.s	.skip
		move.b	#id_BossFinal,(a1) ; load FZ boss object
		addq.b	#2,(v_dle_routine).w
		move.b	#1,(f_lockscreen).w ; lock screen

.skip:
		bra.w	loc_72C2

DLE_FZend:
		cmpi.w	#$2450,(v_screenposx).w
		bcs.w	loc_72C2
		addq.b	#2,(v_dle_routine).w

		bra.w	loc_72C2
; ===========================================================================

locret_7322:
		rts	
; ===========================================================================

DLE_FZ_Epilogue:
		move.b	(v_framebyte),d0
		andi.b	#$F,d0
		cmpi.b	#8,d0
		bne.w	DLE_FZ_Epilogue2.dont_go_boom
		
DLE_FZ_Epilogue2:
		; WE ARE GONNA EXPLODE EVERYTHING GODDAMNIT
		jsr	FindFreeObj
		tst.b	d0
		beq.s	.dont_go_boom ; nvm there's no space
		
		move.b	#id_ExplosionBomb,(a1)
		move.b	#0,obRoutine(a1)
		jsr	RandomNumber
		andi.w	#$FF,d0
		add.w	(v_screenposx),d0
		move.w	d0,obX(a1)
		
		jsr	RandomNumber
		andi.w	#$FF,d0
		add.w	(v_screenposy),d0
		move.w	d0,obY(a1)
		
	.dont_go_boom:
		cmpi.b	#$A,(v_dle_routine).w
		bne.s	.rts
		cmpi.l	#600,(v_time).w
		blt.s	.rts
		cmpi.b	#7,(v_emeralds).w
		bne.s	.NOTallemeralds
		addq.b	#4,(v_dle_routine).w
	.rts:
		rts
	.NOTallemeralds:
		addq.b	#2,(v_dle_routine).w
		rts
		
DLE_FZ_NoEmerald:
		move.w	#0,(v_jpadhold2).w ; make sonic stop
		cmpi.l	#800,(v_time).w
		blt.s	DLE_FZ_Epilogue2
		move.w	#(btnR<<8),(v_jpadhold2).w ; make sonic run
		cmpi.l	#900,(v_time).w
		blt.s	DLE_FZ_Epilogue2
		move.w	#(btnR<<8)+(btnB<<8),(v_jpadhold2).w ; make sonic jump too
		btst	#staSpin,(v_player+obStatus) ; check if rolling/jumping
		bne.w	DLE_FZ_Epilogue2
		add.w	#btnB,(v_jpadhold2).w ; trigger sonic jump
		bra.w	DLE_FZ_Epilogue2
		
DLE_FZ_SevenInHand:
		cmpi.l	#1000,(v_time).w
		blt.w	DLE_FZ_Epilogue2
		move.w	#(btnA<<8),(v_jpadhold2).w ; make sonic stop
		
		btst	#staSpin,(v_player+obStatus) ; check if rolling/jumping
		beq.w	.ok1
		
		cmpi.l	#1100,(v_time).w
		blt.w	DLE_FZ_Epilogue2
		addq.b	#2,(v_dle_routine).w
	.ok1:
		add.w	#btnA,(v_jpadhold2).w ; trigger sonic jump
		bra.w	DLE_FZ_Epilogue2

DLE_FZ_SevenInHandSUPER:
		move.w	#0,(v_jpadhold2).w ; make sonic GO RIGHT
		move.w	#0,(v_player+obVelX)
		bclr	#staSpin,(v_player+obStatus) 
		move.b	#id_Run,(v_player+obAnim)
		sub.w	#$100,(v_player+obVelY)
		move.w	#$600,(v_player+obInertia)
		tst.w	(v_player+obVelY).w
		bpl.w	DLE_FZ_Epilogue2
		addq.b	#2,(v_dle_routine).w

DLE_FZ_SevenInHandSUPER2:
		add.w	#$10,(v_player+obVelX)
		sub.w	#$60,(v_player+obVelY)
		move.w	#$600,(v_player+obInertia)
		bra.w	DLE_FZ_Epilogue2
; ===========================================================================

DLE_UBZ:
		moveq	#0,d0
		move.b	(v_dle_routine).w,d0
		move.w	.subindex(pc,d0.w),d0
		jmp	.subindex(pc,d0.w)
; ===========================================================================
.subindex:
		dc.w DLE_UBZmain-.subindex, DLE_UBZboss-.subindex
		dc.w DLE_UBZend-.subindex, locret_UBZ-.subindex
		dc.w DLE_UBZend2-.subindex
; ===========================================================================

DLE_UBZmain:
		cmpi.w	#$2000,(v_screenposx).w
		bcs.s	.skip
		addq.b	#2,(v_dle_routine).w
		moveq	#plcid_Boss,d0
		jsr	AddPLC		; load boss patterns

.skip:
		bra.w	loc_72C2
; ===========================================================================

DLE_UBZboss:
		cmpi.w	#$2300,(v_screenposx).w
		bcs.s	.skip
		jsr	FindFreeObj
		bne.s	.skip
		move.b	#id_TrueFinalBoss,(a1) ; load FZ boss object
		addq.b	#2,(v_dle_routine).w

.skip:
		bra.w	loc_72C2
; ===========================================================================

DLE_UBZend:
		cmpi.w	#$2450,(v_screenposx).w
		bcs.s	.skip
		addq.b	#2,(v_dle_routine).w

.skip:
		bra.w	loc_72C2
; ===========================================================================

locret_UBZ:
		rts	
; ===========================================================================

DLE_UBZend2:
		bra.w	loc_72C2
; ===========================================================================
; ---------------------------------------------------------------------------
; Ending sequence dynamic level events (empty)
; ---------------------------------------------------------------------------

DLE_Ending:
		rts	
