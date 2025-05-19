; ---------------------------------------------------------------------------
; Level
; ---------------------------------------------------------------------------

GM_Level:
		bset	#7,(v_gamemode).w			; add $80 to screen mode (for pre level sequence)
		cmpi.b	#$80+id_Level,(v_gamemode).w			; is game mode = 3 (standard level)?
		bne.s	.noSRAM						; if not, branch
		; the game doesn't go back here at any moment unless the level resets
		
		moveq	#0,d0
		move.b	(v_save),d0
		subq.b	#1,d0
		bmi.s	.noSRAM

		gotoSRAM
		moveq	#0,d0
		move.b	(v_save),d0
		subq.b	#1,d0
		lea		($200001+sr_header_end).l,a1		; base of usable SRAM 
		lsl.w	#4,d0
		add.w	d0,a1
		move.b	#1,sr_save(a1)
		move.w	(v_zone).w,d0			; move zone and act number to d0 (we can't do it directly)
		movep.w	d0,sr_zone(a1)			; save zone and act to SRAM	
		move.b	(v_character).w,d0
		move.b	d0,sr_char(a1)
		move.b	(v_lives).w,d0
		move.b	d0,sr_life(a1)
		move.b	(v_continues).w,d0
		move.b	d0,sr_cont(a1)
		move.w	(v_emeralds).w,d0
		movep.w	d0,sr_emer(a1)
		move.b	(v_lastspecial).w,d0
		move.b	d0,sr_lspe(a1)
		gotoROM

	.noSRAM:
		bsr.w	ClearPLC
		moveq	#plcid_Main,d0
		tst.b	(v_character)
		beq.s	.skip
		moveq	#plcid_Main2,d0

.skip:
		bsr.w	NewPLC
		bsr.w	PaletteFadeOut

		disable_ints
		locVRAM	$B000
		lea	Nem_TitleCard,a0 ; load title card patterns
		move.l	#((Nem_TitleCard_End-Nem_TitleCard)/32)-1,d0
		jsr	LoadUncArt
		enable_ints
		moveq	#0,d0
		move.w	(v_zone).w,d0
		ror.b	#2,d0
		lsr.w	#2,d0
		lea	(LevelHeaders).l,a2
		lea	(a2,d0.w),a2
		moveq	#0,d0
		move.b	(a2),d0
		beq.s	Level_ClrRam
		bsr.w	AddPLC		; load level patterns

Level_ClrRam:
		lea	(v_objspace).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

Level_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,Level_ClrObjRam ; clear object RAM

		clr.b    (f_keycheck).w    ; key is redeemed
		clr.b	(f_echallenge)
		clr.b   (f_victorypose)
		lea	(v_pfade_size+1).w,a1
		moveq	#0,d0
		move.w	#$15,d1

Level_ClrVars1:
		move.l	d0,(a1)+
		dbf	d1,Level_ClrVars1 ; clear misc variables

		lea	(v_screenposx).w,a1
		moveq	#0,d0
		move.w	#$3F,d1

Level_ClrVars2:
		move.l	d0,(a1)+
		dbf	d1,Level_ClrVars2 ; clear misc variables

		lea	(v_oscillate+2).w,a1
		moveq	#0,d0
		move.w	#$47,d1

Level_ClrVars3:
		move.l	d0,(a1)+
		dbf	d1,Level_ClrVars3 ; clear object variables

		disable_ints
		bsr.w	ClearScreen
		lea	(vdp_control_port).l,a6
		move.w	#$8B03,(a6)	; line scroll mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$8500+(vram_sprites>>9),(a6) ; set sprite table address
		move.w	#$9001,(a6)		; 64-cell hscroll size
		move.w	#$8004,(a6)		; 8-colour mode
		move.w	#$8720,(a6)		; set background colour (line 3; colour 0)
		move.w	#$8A00+223,(v_hbla_hreg).w ; set palette change position (for water)
		move.w	(v_hbla_hreg).w,(a6)
		ResetDMAQueue
; ---------------------------------------------------------------------------
; Water reading routine
		move.w    #$1E,(v_air).w     ; set Sonic air left
		jsr     (LoadWaterLevel).l     ; init water
		tst.b    (f_water).w		 ; in water level?
		beq.s    Level_LoadPal		  ; if not, branch
		move.w    #$8014,(a6)		    ; load water internal features
		lea    ($FFFFFAA0).w,a1       ; fix palette
		moveq    #0,d0
		move.w    #$17,d1

.loop
		move.l    d0,(a1)+
		dbf    d1,.loop
; ---------------------------------------------------------------------------

Level_LoadPal:
		enable_ints
		moveq	#palid_Sonic,d0
		tst.b	(v_character).w
		beq.s	.continue
		moveq	#palid_Amy,d0
.continue:
		bsr.w	PalLoad2	; load Sonic/Amy's palette
		moveq	#0,d0
		move.w	(v_zone).w,d0
		ror.b   #2,d0
		lsr.w   #6,d0
		lea	(MusicList).l,a1 ; load	music playlist
		move.b	(a1,d0.w),d0
      	move.b    d0,(Saved_music).w
		jsr	(PlaySound).l	; play music
		move.w    #bgm_Slowdown,d0
		jsr  (PlaySound_Special).l    ; run the music at normal speed 
		move.b	#id_TitleCard,(v_titlecard).w ; load title card object

Level_TtlCardLoop:
		move.b	#$C,(v_vbla_routine).w
		bsr.w	WaitForVBla
		jsr	(ExecuteObjects).l
		jsr	(BuildSprites).l
		bsr.w	RunPLC
		move.w	(v_ttlcardact+obX).w,d0
		cmp.w	(v_ttlcardact+$30).w,d0 ; has title card sequence finished?
		bne.s	Level_TtlCardLoop ; if not, branch
		tst.l	(v_plc_buffer).w ; are there any items in the pattern load cue?
		bne.s	Level_TtlCardLoop ; if yes, branch
		jsr	(Hud_Base).l	; load basic HUD gfx

Level_SkipTtlCard:
		jsr	LoadRingFrame
		moveq	#palid_Sonic,d0
		tst.b	(v_character).w
		beq.s	.continue
		moveq	#palid_Amy,d0
.continue:
		bsr.w	PalLoad1	; load Sonic's palette
		bsr.w	LevelSizeLoad
		bsr.w	DeformLayers
		bset	#2,(v_fg_scroll_flags).w
		bsr.w	LoadZoneTiles	; load level art
		bsr.w	LevelDataLoad	; load block mappings and palettes
		bsr.w	LoadTilesFromStart
		jsr	(ConvertCollisionArray).l
		bsr.w	ColIndexLoad
		bsr.w	LZWaterFeatures
		move.b	#id_SonicPlayer,(v_player).w ; load Sonic object
		move.w	#0,(v_rings).w	; clear rings
		cmpi.w	#id_UBZ,(v_zone).w
		bne.s	.skip
		move.b	#id_SuperSonic,(v_player).w ; load Super Sonic object
		move.w	#50,(v_rings).w

.skip:
		cmpi.w	#$303,(v_zone).w
		beq.s	.trainassault
		move.b	#id_HUD,(v_hud).w ; load HUD object

.trainassault
    if TestingMode = 0
		tst.b	(f_debugcheat).w ; has debug cheat been entered?
		beq.s	Level_ChkWater
    endif
		btst	#bitC,(v_jpadhold1).w ; is C button held?
		beq.s	Level_ChkWater	; if not, branch
		move.b	#1,(f_debugmode).w ; enable debug mode

Level_ChkWater:
		move.w	#0,(v_jpadhold2).w
		move.w	#0,(v_jpadhold1).w
		move.w	#0,(Timer_Boredom).w	; Reset boredom timers

Level_LoadObj:
		jsr	(ObjPosLoad).l
		jsr	(ExecuteObjects).l
		jsr	(BuildSprites).l
		moveq	#0,d0
		tst.b	(v_lastlamp).w	; are you starting from	a lamppost?
		bne.s	Level_SkipClr	; if yes, branch
		move.l	d0,(v_time).w	; clear time
		move.b	d0,(v_lifecount).w ; clear lives counter

Level_SkipClr:
		move.b	d0,(f_timeover).w
		move.b	d0,(v_shield).w	; clear shield
		move.b	d0,(v_invinc).w	; clear invincibility
		move.b	d0,(v_shoes).w	; clear speed shoes
		move.b	d0,($FFFFFE2F).w
		move.w	d0,(v_debuguse).w
		move.b	d0,(f_restart).w
		move.w	d0,(v_framecount).w
		bsr.w	OscillateNumInit
		move.b	#1,(f_scorecount).w ; update score counter
		move.b	#1,(f_ringcount).w ; update rings counter
		move.b	#1,(f_timecount).w ; update time counter
		move.w	#0,(v_btnpushtime1).w
		moveq	#0,d0
		move.b	(v_zone).w,d0
		lsl.w	#2,d0
		movea.l	(a1,d0.w),a1
		move.w	#3,d1

Level_DelayLoop:
		move.b	#8,(v_vbla_routine).w
		bsr.w	WaitForVBla
		dbf	d1,Level_DelayLoop

		move.w	#$202F,(v_pfade_start).w ; fade in 2nd, 3rd & 4th palette lines
		bsr.w	PalFadeIn_Alt
		addq.b	#2,(v_ttlcardname+obRoutine).w ; make title card move
		addq.b	#4,(v_ttlcardzone+obRoutine).w
		addq.b	#4,(v_ttlcardact+obRoutine).w
		addq.b	#4,(v_ttlcardoval+obRoutine).w
		bclr	#7,(v_gamemode).w ; subtract $80 from mode to end pre-level stuff

; ---------------------------------------------------------------------------
; Main level loop (when	all title card and loading sequences are finished)
; ---------------------------------------------------------------------------

Level_MainLoop:
		bsr.w	PauseGame
		move.b	#8,(v_vbla_routine).w
		cmpi.w	#id_UBZ,(v_zone).w
		bne.s	.not_UBZ
		move.b	#$1A,(v_vbla_routine).w
.not_UBZ:
		bsr.w	WaitForVBla
		addq.w	#1,(v_framecount).w ; add 1 to level timer
		bsr.w	LZWaterFeatures
		jsr	(ExecuteObjects).l
		tst.b   (f_restart).w
		bne.w	GM_Level
		bsr.w	DeformLayers
		jsr	(BuildSprites).l
		jsr	(ObjPosLoad).l
		bsr.w	PaletteCycle
		bsr.w	RunPLC
		bsr.w	OscillateNumDo
		bsr.w	SynchroAnimate
		bsr.w	SignpostArtLoad
		cmpi.b	#id_Level,(v_gamemode).w
		beq.w	Level_MainLoop	; if mode is level, branch
		rts	
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to work with water
; ---------------------------------------------------------------------------

LoadWaterLevel:
; Initially check which zones work with this
		cmpi.b    #id_LZ,(v_zone).w   ; Check Labyrinth Zone
		bne.s   .NotWater		; If LZ, continue

		move.b  #1,(f_water).w  ; Enable water in the checked level
		moveq    #0,d0
		move.w    (v_zone).w,d0   ; Now this check every zone and act
		lsl.b    #6,d0
		lsr.w    #5,d0
		andi.w  #$FFFE,d0
		lea    (WaterHeight).l,a1 ; load water height array
		move.w    (a1,d0.w),d0
		move.w    d0,(v_waterpos1).w   ; set water heights
		move.w    d0,(v_waterpos2).w
		move.w    d0,(v_waterpos3).w
		clr.b    (v_wtr_routine).w       ; clear water routine counter
		clr.b    (f_wtr_state).w      ; clear water movement
		move.b    #1,(f_water).w   ; enable water

		move.b    #$1B,($FFFFD780).w ; load water surface objects
		move.w    #$60,($FFFFD788).w
		move.b    #$1B,($FFFFD7C0).w
		move.w    #$120,($FFFFD7C8).w
; Load underwater palettes
		bsr.w    DynaWater_Init
		tst.b    (f_water).w
		beq.s    .End
		move.b    ($FFFFFE53).w,(f_wtr_state).w
.End:
		rts

.NotWater
		move.b  #0,(f_water).w  ; Prevent water from appearing outside the above stages.
		rts