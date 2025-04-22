; ---------------------------------------------------------------------------
; Save Select
; ---------------------------------------------------------------------------

GM_SaveMenu:
		bsr.w	PaletteFadeOut		;Fade-out is necesarry now
		jsr	ClearScreen
		
		lea	(v_spritetablebuffer).w,a1
		moveq	#0,d0
		move.w	#$7F,d1

	.ClrSprTable:
		move.l	d0,(a1)+
		dbf	d1,.ClrSprTable
		
		moveq	#palid_LevelSel,d0
		jsr		PalLoad1
		
		move.b	#bgm_Options,d0
		jsr		(PlaySound).l

		move.b	#0,(f_delete_mode).w
		move.w	#1,(v_levselitem).w
		move.w	#0,(v_saveypos).w
		
		bsr.w	SaveMenu_Render
		move.w	#$C680,d3	; VRAM setting (4th palette, $680th tile)
		moveq	#1,d0
		bsr.w	SaveMenu_RenderSingle
		gotoROM
		
		locVRAM	0
		lea	(Nem_Menu).l,a0 ; load Menu BG
		bsr.w	NemDec
		lea	($FF0000).l,a1
		lea	(Eni_Menu).l,a0 ; load mappings for	Menu BG
		move.w	#0,d0
		bsr.w	EniDec

		copyTilemap    v_256x256&$FFFFFF,$C000,$27,$1B
		
		jsr		PaletteFadeIn
		bra.s	SaveMenu_Loop

SaveMenu_MoveScreen:
		move.w	(v_scrposy_vdp+2).w,d0
		move.w	(v_saveypos),d1
		sub.w 	d0,d1
		beq.s	.ok
		bmi.s	.sub
		addq.w	#8,d0
	.sub:
		subq.w	#4,d0
		move.w	d0,(v_scrposy_vdp+2).w
	.ok:
		rts

SaveMenu_DelModeTog:
		eor.b	#1,(f_delete_mode).w
		
		lea		(vdp_data_port).l,a6
		locVRAM	($E090+$80*27),4(a6)
		
		
		move.w	#sfx_Warning,d0
		lea (SaveMenu_TxtCancel),a5
		
		
		tst.b	(f_delete_mode)
		bne.s	.cancel
		
		move.w	#sfx_Lamppost,d0
		lea (SaveMenu_TxtDelete),a5
	.cancel:
		jsr	(PlaySound_Special).l
		move.w	#$C680,d0
		jsr	(TextGenerate).l ; generate delete save

SaveMenu_Loop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		bsr.s	SaveMenuControls
		bsr.s	SaveMenu_MoveScreen
		
		andi.b	#btnABC+btnStart,(v_jpadpress1).w ; is A, B, C, or Start pressed?
		beq.s	SaveMenu_Loop	; if not, branch
		move.w	(v_levselitem),d1
		cmpi.w	#9,d1
		beq.s	SaveMenu_DelModeTog
		tst.w	d1
		bne.s	.save
		tst.b	(f_delete_mode).w
		beq.s	.ok
		move.w	#sfx_AB,d0
		jsr	(PlaySound_Special).l
		bra.s	SaveMenu_Loop
	.ok:
		; NO SAVE
		move.b	#0,(v_save).w
		locVRAM	$E110,d4	; text position on screen
		bra.w	SaveMenu_NewGameLoop_FromNoSave
	.save:
		tst.b	(f_delete_mode)
		bne.s	.delete
		; LOAD SAVE
		bra.w	SaveMenu_Load
	.delete:
		; DELETE SAVE
		bsr.w	SaveMenu_DeleteSave
		bra.s	SaveMenu_Loop
		
SaveMenuControls:
		move.b	(v_jpadpress1).w,d1
		andi.b	#btnUp+btnDn,d1
		beq.w	.return
		moveq	#0,d0
		move.w	(v_levselitem).w,d2
		move.w	d2,d0
		btst	#bitDn,d1
		beq.s	.moveup
		addq.w	#1,d2
		cmpi.w	#10,d2
		blt.s	.draw
		move.w	#0,d2
		bra.s	.draw
	.moveup:
		subq.w	#1,d2
		bpl.s	.draw
		move.w	#9,d2
	.draw:
		
		move.w	d2,(v_levselitem).w
		move.w	#0,(v_saveypos).w
		cmpi.w	#4,d2
		blt.s	.above
		move.w	#24,(v_saveypos).w
		
	.above:
		move.w	#$E680,d3	; VRAM setting (4th palette, $680th tile)
		bsr.w	SaveMenu_RenderSingle
		moveq	#0,d0
		move.w	(v_levselitem).w,d0
		move.w	#$C680,d3	; VRAM setting (4th palette, $680th tile)
		bsr.w	SaveMenu_RenderSingle
		gotoROM
		move.w	#sfx_Switch,d0
		jsr	(PlaySound_Special).l
	.return:
		rts
SaveMenu_DeleteSave:
		gotoSRAM
		lea 	($200000+sr_header_end).l,a0		; Load SRAM memory into a0
		subq.w	#1,d1
		lsl.w	#4,d1
		add.w	d1,a0
		tst.b	sr_save(a0)
		beq.s	.nope
		move.b	#0,sr_save(a0)
		gotoROM
		
		move.w	#sfx_BreakItem,d0
		jsr	(PlaySound_Special).l
		
		move.w	(v_levselitem).w,d0
		move.w	#$C680,d3	; VRAM setting (4th palette, $680th tile)
		bsr.w	SaveMenu_RenderSingle
		gotoROM
		
		subi.l	#$1000000-$1A0000,d4			; jump to next line
		move.l	d4,4(a6)
		move.w	#7,d1
	.cleartop:
		move.l	#0,(a6)
		dbf.w	d1,.cleartop
		addi.l	#$800000-$1A0000,d4			; jump to next line
		move.l	d4,4(a6)
	
		move.w	#10,d1
	.clearbottom:
		move.l	#0,(a6)
		dbf.w	d1,.clearbottom
		
		move.b	#0,(f_delete_mode).w
		locVRAM	($E090+$80*27),4(a6)
		lea (SaveMenu_TxtDelete),a5
		move.w	#$E680,d0
		jmp	(TextGenerate).l ; generate delete save
	.nope:
		gotoROM
		move.w	#sfx_AB,d0
		jsr	(PlaySound_Special).l
		rts
	
SaveMenu_Render:
		gotoSRAM
		lea 	($200000+sr_header_end).l,a0		; Load SRAM memory into a0
		lea		(vdp_data_port).l,a6
		locVRAM	$E090,d4	; text position on screen
		move.w	#$E680,d3	; VRAM setting (4th palette, $680th tile)
		
		move.l	d4,4(a6)
		move.w	d3,d0
		lea SaveMenu_TxtNoSave(pc),a5
		jsr	(TextGenerate).l ; generate delete save
		addi.l	#$1800000,d4			; jump to next line
		
		moveq	#8-1,d1		; number of saves-1
		
.draw_all:
		move.l	d4,4(a6)
		bsr.w	SaveMenu_ChgSave	; draw line of text
		addi.l	#$800000,d4			; jump to next line
		add.w	#sr_size,a0
		dbf	d1,.draw_all
		
		gotoROM
		move.l	d4,4(a6)
		move.w	d3,d0
		lea SaveMenu_TxtDelete(pc),a5
		jmp	(TextGenerate).l ; generate delete save

SaveMenu_TxtDelete: dc.b 'DELETE SAVE',0
	even
SaveMenu_TxtCancel: dc.b 'CANCEL     ',0
	even
SaveMenu_TxtNoSave: dc.b 'NO SAVE',0
	even
	
SaveMenu_RenderSingle:
		gotoSRAM
		lea		(vdp_data_port).l,a6
		locVRAM	$E090,d4	; text position on screen
		move.w	#8,d1
		sub.w	d0,d1
		
		move.w	d0,d5
		lsl.w	#7,d0
		swap	d0
		
		add.l	d0,d4
		add.l	d0,d0
		add.l	d0,d4
		
		move.l	d4,4(a6)
		tst.w	d5
		beq.s	.nosave
		cmpi.w	#9,d5
		bne.s	.offsetA0
		move.w	d3,d0
		lea SaveMenu_TxtCancel(pc),a5
		tst.b	(f_delete_mode)
		bne.s	.jmp
		lea SaveMenu_TxtDelete(pc),a5
	.jmp:
		jmp	(TextGenerate).l ; generate delete save
	.offsetA0:
		subq.w	#1,d5
		lea 	($200000+sr_header_end).l,a0		; Load SRAM memory into a0
		lsl.w	#4,d5
		add.w	d5,a0
		bra.s	SaveMenu_ChgSave
	.nosave:
		move.w	d3,d0
		lea SaveMenu_TxtNoSave(pc),a5
		jmp	(TextGenerate).l ; generate delete save
SaveMenu_TxtSave: dc.b 'SAVE ',0
		even
SaveMenu_TxtAvailable: dc.b '< EMPTY',0
		even

SaveMenu_ChgEmpty:
		lea SaveMenu_TxtAvailable(pc),a5
		jsr	(TextGenerate).l ; generate empty
		addi.l	#$1000000,d4			; jump 2 lines
		rts

SaveMenu_ChgSave:
		move.w	d3,d0
		lea SaveMenu_TxtSave(pc),a5
		jsr	(TextGenerate).l ; generate SAVE
		
		move.w	d3,d0
		add.w	#8,d0
		sub.w	d1,d0
		move.w	d0,(a6)
		
		tst.b	sr_save(a0)
		beq.s	SaveMenu_ChgEmpty
		
		movep.w	sr_zone(a0),d2
		cmpi.w	#(id_LZ<<8)+3,d2
		bne.s	.not_sbz3
		move.w	#5,d2
		move.w	#2,d5
		bra.s	.zone_except
	.not_sbz3:
		cmpi.w	#(id_SBZ<<8)+2,d2
		bne.s	.not_fz
		move.w	#6,d2
		move.w	#-1,d5
		bra.s	.zone_except
	.not_fz:
		moveq	#0,d5
		move.b	d2,d5
		moveq	#0,d2
		move.b	sr_zone(a0),d2
	.zone_except:
		lea		(SaveMenu_TxtZones),a5
		move.w	#SaveMenu_TxtZones.start-SaveMenu_TxtZones,d6
		bsr.s	TextTableGenerate
		tst.b	d5
		bmi.s	.noact
		addq.w	#1,d5
		add.w	d3,d5
		move.w	d5,(a6)
		
	.noact:
		addi.l	#$800000,d4			; jump a line
		move.l	d4,4(a6)
		
		moveq	#0,d2
		move.b	sr_char(a0),d2
		lea		(SaveMenu_TxtChars),a5
		move.w	#SaveMenu_TxtChars.start-SaveMenu_TxtChars,d6
		bsr.s	TextTableGenerate
		
		move.w	#0,d0
		move.b	sr_life(a0),d0
		bsr.s	NumeralGenerate
		
		lea SaveMenu_TxtCont(pc),a5
		jsr	(TextGenerate).l ; generate empty
		
		move.w	#0,d0
		move.b	sr_cont(a0),d0
		bsr.s	NumeralGenerate
		
		addi.l	#$800000,d4			; jump a line
		rts
SaveMenu_TxtCont: dc.b ' CONTINUES:',0
	even

NumeralGenerate:
		moveq	#0,d2
		
		cmpi.b	#10,d0
		blt.s	.not_above10
	.loop:
		sub.b	#10,d0
		addq.b	#1,d2
		cmpi.b	#10,d0
		bge.s	.loop
	.not_above10:
		add.w	d3,d0
		add.w	d3,d2
		move.w	d2,(a6)
		move.w	d0,(a6)
		rts
TextTableGenerate:
		moveq	#0,d0
		
		move.b	(a5,d2.w),d0
		add.b	d0,d0
		add.w	d6,d0
		add.w	d0,a5
		move.w	d3,d0
		jmp	(TextGenerate).l ; generate zone name
SaveMenu_TxtZones: 
		dc.b	0
		dc.b	(.hydropalace-.start)/2
		dc.b	(.burtningtemple-.start)/2
		dc.b	(.speedypark-.start)/2
		dc.b	(.bumpingcity-.start)/2
		dc.b	(.mechafortress-.start)/2
		dc.b	(.finalbattle-.start)/2
		even
.start:
.emeraldisland: dc.b '< EMERALD ISLAND ACT ',0
		even
.burtningtemple: dc.b '< BURNING TEMPLE ACT ',0
		even
.bumpingcity: dc.b '< BUMPING CITY ACT ',0
		even
.hydropalace: dc.b '< HYDRO PALACE ACT ',0
		even
.speedypark: dc.b '< SPEEDY PARK ACT ',0
		even
.mechafortress: dc.b '< MECHA FORTRESS ACT ',0
		even
.finalbattle: dc.b '< FINAL BATTLE',0
		even
	
SaveMenu_TxtChars: 
		dc.b	0
		dc.b	(.amy-.start)/2
		even
.start:
.sonic: dc.b 'SONIC:',0
		even
.amy: 	dc.b 'AMY  :',0
		even
	
SaveMenu_Load:
		gotoSRAM
		move.w	(v_levselitem),d0
		move.b	d0,(v_save).w
		move.b	#id_Level,(v_gamemode).w ; set screen mode to level
		move.l	#0,(v_score).w			; clear score
		move.l	#5000,(v_scorelife).w	; extra life is awarded at 50000 points
	
		subq.w	#1,d0
		lea		($200000+sr_header_end).l,a1		; base of usable SRAM 
		lsl.w	#4,d0
		add.w	d0,a1
		tst.b	sr_save(a1)
		beq.s	.gotonew
		move.w	#sfx_EnterSS,d0
		jsr	(PlaySound_Special).l

		movep.w	sr_zone(a1),d0			; save zone and act to SRAM	
		move.w	d0,(v_zone).w			; move zone and act number to d0 (we can't do it directly)
		move.b	sr_char(a1),d0
		move.b	d0,(v_character).w
		move.b	sr_life(a1),d0
		move.b	d0,(v_lives).w
		move.b	sr_cont(a1),d0
		move.b	d0,(v_continues).w
		movep.w	sr_emer(a1),d0
		move.w	d0,(v_emeralds).w
		move.b	sr_lspe(a1),d0
		move.b	d0,(v_lastspecial).w
		gotoROM
		rts
.gotonew:
		gotoROM
		locVRAM	$E090,d4	; text position on screen
	
		move.b	#0,(v_character)
		move.w	(v_levselitem),d0
		lsl.w	#7,d0
		swap	d0
	
		add.l	d0,d4
		add.l	d0,d0
		add.l	d0,d4
		addi.l	#$800000,d4			; jump a line

SaveMenu_NewGameLoop_FromNoSave:
		move.w	#sfx_Lamppost,d0
		jsr	(PlaySound_Special).l
		move.w	#$C680,d3
		move.w	d3,d0
		move.l	d4,4(a6)
		lea		(SaveMenu_TxtChars.sonic),a5
		jsr		(TextGenerate)

SaveMenu_NewGameLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		move.b	(v_jpadpress1).w,d1
		andi.b	#btnL+btnR,d1
		beq.s	.nocharchange
		move.w	#sfx_Switch,d0
		jsr	(PlaySound_Special).l
		eor.b	#1,(v_character).w ; if there were more than 2 characters then we would need more code
		move.l	d4,4(a6)
		moveq	#0,d2
		move.b	(v_character).w,d2
		lea		(SaveMenu_TxtChars),a5
		move.w	#SaveMenu_TxtChars.start-SaveMenu_TxtChars,d6
		bsr.w	TextTableGenerate
.nocharchange:	
		andi.b	#btnABC+btnStart,(v_jpadpress1).w ; is A, B, C, or Start pressed?
		beq.s	SaveMenu_NewGameLoop	; if not, branch
		move.w	#(id_GHZ<<8),(v_zone).w	; set level to GHZ (00)
		move.w	#sfx_EnterSS,d0
		jsr	(PlaySound_Special).l
		jmp	PlayLevel