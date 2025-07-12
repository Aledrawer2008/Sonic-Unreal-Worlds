; ---------------------------------------------------------------------------
; Title screen
; ---------------------------------------------------------------------------

GM_Title:
		move.b	#bgm_Stop,d0
		bsr.w	PlaySound_Special ; stop music
		bsr.w	ClearPLC
		bsr.w	PaletteFadeOut
		disable_ints
		lea	(vdp_control_port).l,a6
		move.w	#$8004,(a6)	; 8-colour mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$9001,(a6)	; 64-cell hscroll size
		move.w	#$9200,(a6)	; window vertical position
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)	; set background colour (palette line 2, entry 0)
		clr.b	(f_wtr_state).w
		bsr.w	ClearScreen
        ResetDMAQueue

		lea	(v_objspace).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

Tit_ClrObj1:
		move.l	d0,(a1)+
		dbf	d1,Tit_ClrObj1	; fill object space ($D000-$EFFF) with 0

		locVRAM	0
		lea	(Nem_JapNames).l,a0 ; load Japanese credits
		bsr.w	NemDec
		locVRAM	$14C0
		lea	(Nem_IntroText).l,a0 ;	load alphabet
		bsr.w	NemDec
		lea	($FF0000).l,a1
		lea	(Eni_JapNames).l,a0 ; load mappings for	Japanese credits
		move.w	#0,d0
		bsr.w	EniDec

		copyTilemap	$FF0000,$C000,$27,$1B

		lea	(v_pal_dry_dup).w,a1
		moveq	#cBlack,d0
		move.w	#$1F,d1

Tit_ClrPal:
		move.l	d0,(a1)+
		dbf	d1,Tit_ClrPal	; fill palette with 0 (black)

		moveq	#palid_Sonic,d0	; load Sonic's palette
		bsr.w	PalLoad1
		move.b	#id_SonicTeam,(v_sonicteam).w	 ; load text object
		jsr	(ExecuteObjects).l
		jsr	(BuildSprites).l
		bsr.w	PaletteFadeIn
		disable_ints
		locVRAM	$4000
		lea	(Nem_TitleFg).l,a0 ; load title	screen patterns
		btst	#7,(v_megadrive).w
		bne.s	.skip
		lea	(Nem_TitleFgJP).l,a0

.skip:
		bsr.w	NemDec
		locVRAM $6000
		lea	(Nem_TitleChars).l,a0 ; load Sonic & Amy's patterns
		bsr.w	NemDec
		lea	(vdp_data_port).l,a6
		locVRAM	$D000,4(a6)
		lea	(Art_Text).l,a5	; load level select font
		move.w	#(40*$8)-1,d1

Tit_LoadText:
		move.l	(a5)+,(a6)
		dbf	d1,Tit_LoadText	; load level select font

		moveq	#0,d0
		move.b	d0,(v_zone).w
		move.b	d0,(v_lastlamp).w ; clear lamppost counter
		move.w	d0,(v_debuguse).w ; disable debug item placement mode
		move.b	d0,(v_lastspecial).w	; clear special stage number
		move.b	d0,(v_emeralds).w		; clear emerald count
		move.b	d0,(v_emldlist).w		; clear emerald array

		move.w	d0,(v_pcyc_time).w ; disable palette cycling
		bsr.w	LevelSizeLoad
		bsr.w	DeformLayers
		move.l	#Blk16_TS,(v_256x256+4).l	; store the ROM address for the block mappings
		move.l	#Blk256_TS,(v_256x256).l	; store the ROM address for the chunk mappings
		bsr.w	TitleScreen_LayoutLoad
		bsr.w	PaletteFadeOut
		disable_ints
		bsr.w	ClearScreen
		lea	(vdp_control_port).l,a5
		lea	(vdp_data_port).l,a6
		lea	(v_bgscreenposx).w,a3
		lea	(v_lvllayout+$40).w,a4
		move.w	#$6000,d2
		bsr.w	DrawChunks

		lea	(Eni_Title).l,a1
		btst	#7,(v_megadrive).w
		bne.s	.skip1
		lea	(Eni_JapTitle).l,a1

.skip1:
		move.l	#$40000000+(($C206&$3FFF)<<16)+(($C206&$C000)>>14),d0
		moveq	#$21,d1
		moveq	#$15,d2
		bsr.w	TilemapToVRAM

		locVRAM	0
		lea	(Nem_Title).l,a0 ; load GHZ patterns
		bsr.w	NemDec
		locVRAM $2A00
		lea	(Nem_Planet).l,a0 ; load planet patterns
		bsr.w	NemDec
		move.b	#bgm_Title,d0
		bsr.w	PlaySound_Special	; play title screen music
		move.b	#0,(f_debugmode).w ; disable debug mode

		clearRAM v_titlesonic,v_ttlsonichide+object_size

		move.b	#id_TitleStuff,(v_ttlsonichide).w ; load object which hides part of Sonic
		move.b	#4,(v_ttlsonichide+obRoutine).w
		move.b	#id_TitleCharacters,(v_titlesonic).w ; load big Sonic object

		include	"Sonic CD Fade.asm"

		move.b	#id_TitleStuff,(v_titlemenu).w ; load Title Menu object
		move.b	#id_Planet,(v_titleplanet).w ; load Planet object
		jsr	(ExecuteObjects).l
		bsr.w	DeformLayers
		jsr	(BuildSprites).l
		clr.w	(v_title_dcount).w
		move.b	#0,(v_emeralds).w ; clear emeralds
		move.w	(v_vdp_buffer1).w,d0
		ori.b	#$40,d0
		move.w	d0,(vdp_control_port).l

Tit_MainLoop:
		move.b	#4,(v_vbla_routine).w
		bsr.w	WaitForVBla
		jsr	(ExecuteObjects).l
		bsr.w	DeformLayers
		jsr	(BuildSprites).l

		lea	(v_spritetablebuffer+4).w,a1
		moveq	#0,d0
		moveq	#14,d6 ; dumb optimizations

	.maskloop:
		tst.w	(a1)	; The masking sprite has its art-tile set to $0000.
		bne.s	.not_mask
		bchg	#2,d0	; Alternate between X positions of 0 and 4.
		move.w	d0,2(a1)

	.not_mask:
		addq.w	#8,a1
		dbf	d6,.maskloop

		bsr.w	PCycle_Title
		bsr.w	RunPLC
		lea	(LevSelect_Code).l,a0 ; load US code
		move.w	(v_title_dcount).w,d0
		adda.w	d0,a0
		move.b	(v_jpadpress1).w,d0 ; get button press
		andi.b	#btnDir+btnABC,d0	; read only UDLR buttons
		cmp.b	(a0),d0		; does button press match the cheat code?
		bne.s	Tit_ResetCheat	; if not, branch
		addq.w	#1,(v_title_dcount).w ; next button press
		tst.b	d0
		bne.s	Tit_MenuLogic
		move.b	#1,(f_levselcheat).w	; activate cheat
		move.b	#sfx_Ring,d0	; play ring sound when code is entered
		bsr.w	PlaySound_Special
		bra.w	Tit_MenuLogic
; ===========================================================================

Tit_ResetCheat:
		tst.b	d0
		beq.s	Tit_MenuLogic
		cmpi.w	#9,(v_title_dcount).w
		beq.s	Tit_MenuLogic
		move.w	#0,(v_title_dcount).w ; reset UDLR counter

Tit_MenuLogic:
		move.b	(v_jpadpress1).w,d0
		andi.b	#btnStart,(v_jpadpress1).w ; check if Start is pressed
		beq.w	Tit_MainLoop	; if not, branch
		tst.b	(f_levselcheat).w ; check if level select code is on
		bne.w	LevSelectLoad	; if yes, load level select
		move.b	(Title_screen_option).w,d0
		add.b	d0,d0
		move.w	Tit_Index(pc,d0.w),d1
		jmp	Tit_Index(pc,d1.w)
; ===========================================================================
Tit_Index:
		dc.w GoToSaveMenu-Tit_Index
		dc.w GotoTutorial-Tit_Index
; ===========================================================================
; ---------------------------------------------------------------------------
; Level	select codes
; ---------------------------------------------------------------------------
LevSelect_Code:
		dc.b btnUp,btnUp,btnDn,btnDn,btnL,btnR,btnL,btnR,btnB,btnA,0,$FF
		even
; ---------------------------------------------------------------------------

GotoTutorial:
		jsr	(PlayLevel).l
		move.w	#3,(v_zone).w
		clr.b	(v_save)
		rts

GoToSaveMenu:
		move.b	#id_SaveMenu,(v_gamemode).w
		rts
; ---------------------------------------------------------------------------
; Level	Select init
; ---------------------------------------------------------------------------

LevSelectLoad:
        move.w	#bgm_Fade,d0
		jsr	(PlaySound_Special).w
        jsr	PaletteFadeOut

		lea	(v_hscrolltablebuffer).w,a1
		moveq	#0,d0
		move.w	#$DF,d1

LevSel_ClrScroll1:
		move.l	d0,(a1)+
		dbf	d1,LevSel_ClrScroll1 ; clear scroll data (in RAM)

		move.l	d0,(v_screenposy_dup).w
		disable_ints
		lea	(vdp_data_port).l,a6
		locVRAM	$E000
		move.w	#$3FF,d1

LevSel_ClrScroll2:
		move.l	d0,(a6)
		dbf	d1,LevSel_ClrScroll2 ; clear scroll data (in VRAM)

        lea    (v_spritetablebuffer).w,a2 ; set address for sprite table
        move.w    #$A0,d5
        
LevSel_ClrSprites:
        move.l    #0,(a2)+
        dbf.w d5, LevSel_ClrSprites

		moveq	#palid_LevelSel,d0
		bsr.w	PalLoad1	; load level select palette
		locVRAM	0
		lea	(Nem_Menu).l,a0 ; load Japanese credits
		bsr.w	NemDec
		lea	($FF0000).l,a1
		lea	(Eni_Menu).l,a0 ; load mappings for	Japanese credits
		move.w	#0,d0
		bsr.w	EniDec

		copyTilemap    v_256x256&$FFFFFF,$C000,$27,$1B

        jsr PaletteFadeIn

		move.b  #bgm_Options,d0
		jsr PlaySound
		bsr.w	LevSelTextLoad
		move.b	#0,(v_save).w

; ---------------------------------------------------------------------------
; Level	Select
; ---------------------------------------------------------------------------

LevelSelect:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		bsr.w	LevSelControls
		bsr.w	RunPLC
		
		tst.l	(v_plc_buffer).w
		bne.s	LevelSelect

		move.w	(v_levselitem).w,d0
		cmpi.w	#6,d0
		beq.s	LevSel_Ending
		cmpi.w	#8,d0
		beq.s	LevSel_Credits
		cmpi.w	#9,d0		; have you selected item $9 (Free Emeralds)?
		beq.s	LevSel_FreeEmeralds	; if yes, give the player all emeralds
		cmpi.w	#$14,d0		; have you selected item $14 (sound test)?
		bne.s	LevSelLevCheckStart; if not, go to	Level/SS subroutine
		cmpi.b	#btnStart,(v_jpadpress1).w ; is	Start pressed?
		beq.s	LevSelStartPress	; if true, branch
		cmpi.b	#btnC,(v_jpadpress1).w ; is C pressed?
		beq.s	LevSelBCPress	; if not, branch
		bra.w	LevelSelect
; ===========================================================================

LevSelLevCheckStart:
		andi.b	#$80,(v_jpadpress1).w ; is Start pressed?
		beq.s	LevelSelect	; if not, branch
		bra.w	LevSel_Level_SS

LevSelBCPress:
		move.w	(v_levselsound).w,d0
		bsr.w	PlaySound_Special
		bra.w	LevelSelect
		
LevSelStartPress:
		move.b	#id_Sega,(v_gamemode).w
		rts
; ===========================================================================

LevSel_FreeEmeralds:
		cmpi.b	#btnStart,(v_jpadpress1).w ; is	Start pressed?
		bne.w	LevelSelect	; if true, branch
		move.b	#7,(v_emeralds).w
		move.b	#1,(True_Ending_Flag).w
		move.b	#sfx_Bonus,d0
		bsr.w	PlaySound_Special ; play credits music
		bra.w	LevelSelect

LevSel_Ending:
		cmpi.b	#btnStart,(v_jpadpress1).w ; is	Start pressed?
		bne.w	LevelSelect	; if true, branch
		move.b	#id_Ending,(v_gamemode).w ; set screen mode to Ending
		move.w	#(id_EndZ<<8),(v_zone).w ; set level to 0600 (Ending)
		rts	
; ===========================================================================

LevSel_Credits:
		cmpi.b	#btnStart,(v_jpadpress1).w ; is	Start pressed?
		bne.w	LevelSelect	; if true, branch
		move.b	#id_Credits,(v_gamemode).w ; set screen mode to Credits
		move.b	#bgm_Credits,d0
		add.b	(True_Ending_Flag).w,d0
		bsr.w	PlaySound_Special ; play credits music
		move.w	#0,(v_creditsnum).w
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Level	select - level pointers
; ---------------------------------------------------------------------------
no_stage:	equ $80
LevSel_Ptrs:
		dc.b id_GHZ
		dc.b id_MZ
		dc.b id_SYZ
		dc.b id_LZ
		dc.b id_SLZ
		dc.b id_SBZ
		dc.b id_EndZ	; Ending Zone
		dc.b id_SS	; Special Stage
		dc.b id_Credits
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage
		dc.b no_stage	; Sound Test
		even
; ===========================================================================

LevSel_Level_SS:
		move.b	LevSel_Ptrs(pc,d0.w),d0 ; load level number
		bmi.w	LevelSelect
		
		cmpi.b	#id_SS,d0	; check	if level is 0700 (Special Stage)
		bne.w	LevSel_Level	; if not, branch
		
		move.b	#id_Special,(v_gamemode).w ; set screen mode to $10 (Special Stage)
		clr.w	(v_zone).w	; clear	level
		move.b	#3,(v_lives).w	; set lives to 3
		moveq	#0,d0
		move.w	d0,(v_rings).w	; clear rings
		move.l	d0,(v_time).w	; clear time
		move.l	d0,(v_score).w	; clear score
		move.l	#5000,(v_scorelife).w ; extra life is awarded at 50000 points
		rts	
; ===========================================================================

LevSel_Level:
		move.b	d0,(v_zone).w	; set level number
		jmp	(PlayLevel).l

; ---------------------------------------------------------------------------
; Subroutine to	change what you're selecting in the level select
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSelControls:
		move.b	(v_jpadpress1).w,d1
		andi.b	#btnUp+btnDn,d1	; is up/down pressed and held?
		bne.s	LevSel_UpDown	; if yes, branch
		subq.w	#1,(v_levseldelay).w ; subtract 1 from time to next move
		bpl.s	LevSel_SndTest	; if time remains, branch

LevSel_UpDown:
		move.w	#$B,(v_levseldelay).w ; reset time delay
		move.b	(v_jpadhold1).w,d1
		andi.b	#btnUp+btnDn,d1	; is up/down pressed?
		beq.s	LevSel_SndTest	; if not, branch
		move.w	(v_levselitem).w,d0
		btst	#bitUp,d1	; is up	pressed?
		beq.s	LevSel_Down	; if not, branch
		subq.w	#1,d0		; move up 1 selection
		bhs.s	LevSel_Down
		moveq	#$14,d0		; if selection moves below 0, jump to selection	$14

LevSel_Down:
		btst	#bitDn,d1	; is down pressed?
		beq.s	LevSel_Refresh	; if not, branch
		addq.w	#1,d0		; move down 1 selection
		cmpi.w	#$15,d0
		blo.s	LevSel_Refresh
		moveq	#0,d0		; if selection moves above $14,	jump to	selection 0

LevSel_Refresh:
		move.w	d0,(v_levselitem).w ; set new selection
		bsr.w	LevSelTextLoad	; refresh text
		rts
; ===========================================================================

LevSel_SndTest:
		move.b	(v_jpadpress1).w,d1
		andi.b	#btnA+btnB+btnR+btnL,d1	; is left/right	pressed?
		beq.s	LevSel_NoMove	; if not, branch
		cmpi.w	#$14,(v_levselitem).w ; is item $14 selected?
		bne.s	LevSel_ActMove	; if not, branch
		move.w	(v_levselsound).w,d0
		btst	#bitA,d1		; is A pressed?
		bne.s	LevSel_A	; if so, branch
		btst	#bitB,d1		; is B pressed?
		bne.s	LevSel_B	; if so, branch
		btst	#bitL,d1	; is left pressed?
		beq.s	LevSel_Right	; if not, branch
		subq.w	#1,d0		; subtract 1 from sound	test

LevSel_A:
		btst	#bitA,d1		; is A button pressed?
		beq.s	LevSel_Right	; if not, branch
		addi.w	#16,d0		; add $10 to sound test

LevSel_Right:
		btst	#bitR,d1	; is right pressed?
		beq.s	LevSel_B	; if not, branch
		addq.w	#1,d0		; add 1	to sound test

LevSel_B:
		btst	#bitB,d1		; is A button pressed?
		beq.s	LevSel_Refresh2	; if not, branch
		subi.w	#16,d0		; substract $10 to sound test

LevSel_Refresh2:
		move.w	d0,(v_levselsound).w ; set sound test number
		bsr.w	LevSelTextLoad	; refresh text

LevSel_NoMove:
		rts	
		
LevSel_ActMove:
		cmpi.w	#$6,(v_levselitem).w ; is item above $6 selected?
		bgt.s	LevSel_CharMove	; if true, branch
		
		move.b	(v_act).w,d0
		btst	#bitL,d1	; is left pressed?
		beq.s	LevSel_ActRight	; if not, branch
		subq.b	#1,d0		; subtract 1 from sound	test
		bhs.s	LevSel_ActRight 
		move.b	#$3,d0		; if sound test	moves below 0, set to $3

LevSel_ActRight:
		btst	#bitR,d1	; is right pressed?
		beq.s	LevSel_ActRefresh2	; if not, branch
		addq.b	#1,d0		; add 1	to sound test
		cmpi.b	#$4,d0
		blo.s	LevSel_ActRefresh2
		moveq	#0,d0		; if sound test	moves above $3, set to	0

LevSel_ActRefresh2:
		move.b	d0,(v_act).w ; set sound test number
		bra.s	LevSelTextLoad	; refresh text
		
LevSel_CharMove:
		bchg	#0,(v_character).w ; haha bit flips get it
		move.l	#char_thing_pos,d4
		move.w	#Pal4_MenuTile,d3
		move.w	#0,d2 ; the loop thing for normal rendering
		lea	(vdp_data_port).l,a6
		move.l	d4,4(a6)
		bra.w	LevSel_CharOk.sonic_amy
		
; End of function LevSelControls

; ---------------------------------------------------------------------------
; Subroutine to load level select text
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSelTextLoad:

textpos:	= ($40000000+(($E210&$3FFF)<<16)+(($E210&$C000)>>14))

char_thing_pos:	= textpos+($800000*$A)+($5*$20000)
					; $E210 is a VRAM address

		lea	(LevelMenuText).l,a1
		lea	(vdp_data_port).l,a6
		move.l	#textpos,d4	; text position on screen
		moveq	#$14,d1		; number of lines of text

LevSel_DrawAll:
		move.l	d4,4(a6)
		bsr.w	LevSel_ChgLine	; draw line of text
		addi.l	#$800000,d4	; jump to next line
		dbf	d1,LevSel_DrawAll
		
		move.w	#Pal3_MenuTile_Raw,d3
		cmpi.w	#$14,(v_levselitem).w
		bne.s	LevSel_DrawSnd
		move.w	#Pal4_MenuTile_Raw,d3

LevSel_DrawSnd:
		locVRAM	$EC30		; sound test position on screen
		move.w	(v_levselsound).w,d0
		move.b	d0,d2
		lsr.b	#4,d0
		bsr.w	LevSel_ChgSnd	; draw 1st digit
		move.b	d2,d0
		bsr.w	LevSel_ChgSnd	; draw 2nd digit
		rts	
; End of function LevSelTextLoad


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSel_ChgSnd:
		andi.w	#$F,d0
		cmpi.b	#$A,d0		; is digit $A-$F?
		blo.s	LevSel_Numb	; if not, branch
		addq.b	#4,d0		; use alpha characters

LevSel_Numb:
		add.w	d3,d0
		move.w	d0,(a6)
		rts	
; End of function LevSel_ChgSnd


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSel_ChgLine:
		move.w	#$14,d0
		sub.w	(v_levselitem),d0
		sub.w	d1,d0
		tst.w	d0
		beq.s	.selected
		move.w	#Pal3_MenuTile,d3
		bra.s 	.done
	.selected:
		move.w	#Pal4_MenuTile,d3
	.done:
		moveq	#$17,d2		; number of characters per line

LevSel_LineLoop:
		moveq	#0,d0
		move.b	(a1)+,d0	; get character
		bpl.s	LevSel_CharOk	; branch if valid
		move.w	#0,(a6)		; use blank character
		dbf	d2,LevSel_LineLoop
		rts	


LevSel_CharOk:
		cmpi.w	#'!',d0		; check if !
		beq.s .sonic_amy
		cmpi.w	#'#',d0		; check if #
		beq.s .act_x_text
		cmpi.w	#'@',d0		; check if @
		blt.s	.no_skip
		subq.w	#3,d0
	.no_skip:
		add.w	d3,d0		; combine char with VRAM setting
		move.w	d0,(a6)		; send to VRAM
		dbf	d2,LevSel_LineLoop
		rts	
; End of function LevSel_ChgLine
	.act_x_text:
		cmpi.w	#Pal3_MenuTile,d3
		beq.s	.act_x_empty
		
		move.w	#$E+Pal4_MenuTile_Raw,(a6)		; send to VRAM
		move.w	#$10+Pal4_MenuTile_Raw,(a6)		; send to VRAM
		move.w	#$21+Pal4_MenuTile_Raw,(a6)		; send to VRAM
		move.w	#0,(a6)		; send to VRAM
		moveq	#0,d0
		move.b	(v_act).w,d0
		add.w	#Pal4_MenuTile_Raw+1,d0		; combine char with VRAM setting
		move.w	d0,(a6)		; send to VRAM
		rts
	.sonic_amy:
		moveq	#0,d2
		move.b	(v_character).w,d2
		lea		(SaveMenu_TxtChars),a5
		move.w	#SaveMenu_TxtChars.start-SaveMenu_TxtChars,d6
		jsr	TextTableGenerate
	.act_x_empty:
		move.w	#0,(a6)		; send to VRAM
		dbf	d2,.act_x_empty
		rts	

; ===========================================================================
; ---------------------------------------------------------------------------
; Level	select menu text
; ---------------------------------------------------------------------------
emptyline: macro amm
		rept amm
			dc.b    "                        "
			endm
		endm

LevelMenuText:
	dc.b    "EMERALD ISLAND     #"
	dc.b    "BURNING TEMPLE     #"
	dc.b    "BUMPING CITY       #"
	dc.b    "HYDRO PALACE       #"
	dc.b    "SPEEDY PARK        #"
	dc.b    "MECHA FORTRESS     #"
	dc.b    "ENDING CUTSCENE         "
	dc.b    "EMERALD CHALLENGE       "
	dc.b    "CREDITS SEQUENCE        "
	dc.b	"FREE EMERALDS           "
	dc.b    "CHAR !"
	emptyline 9
	dc.b    "SOUND TEST              "     
        even