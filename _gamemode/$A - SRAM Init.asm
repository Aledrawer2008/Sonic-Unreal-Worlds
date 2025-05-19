; ---------------------------------------------------------------------------
; SRAM Init
; ---------------------------------------------------------------------------

GM_InitSRAM:
		move.b	#bgm_Stop,d0
		bsr.w	PlaySound_Special ; stop music
		bsr.w	ClearPLC
        bsr.w   PaletteFadeOut
        lea     (vdp_control_port).l,a6
        move.w  #$8004,(a6)
		move.w	#$8134,(a6)
        move.w  #$8230,(a6)
        move.w  #$8407,(a6)
        move.w  #$8700,(a6)
        move.w  #$8B00,(a6)
        move.w  (v_vdp_buffer1).w,d0
        andi.b  #$BF,d0
        move.w  d0,(vdp_control_port).l

        gotoSRAM
        lea ($200001).l,a0		; Load SRAM memory into a0
        movep.l sr_suw(a0),d0	; Get the existing string at the start of SRAM
        move.l  #"SUWV",d1		; Write the string "SUWV" to d1
        cmp.l   d0,d1			; Was it already in SRAM?
        beq.s   .checkver		; If so, skip
        movep.l d1,sr_suw(a0)	; Write string "SUWV"

		move.l	#SaveTxt_None,d6
		bsr.w	SaveWarning
.redo_save:
        ; SRAM Initialize
		move.w	#SaveVersion,d1
		movep.w d1,sr_ver(a0)	; Write version
		
		move.w	#8-1,d0 ; there are 8 saves
		addi.w	#sr_header_end,a0
	.clr_saves:
		move.b	#0,(a0)		; clear save flag
		addi.w	#sr_size,a0
		dbf.w	d0,.clr_saves
		bra.s	.save_is_ok
.checkver:
		movep.w	sr_ver(a0),d0
		move.w	#SaveVersion,d1
		cmp.w   d1,d0
		beq.s	.save_is_ok
		bgt.s	.uncompatible
		
		move.l	#SaveTxt_Old,d6
		bsr.w	SaveWarning
		; there are no past version to convert so we kill the save for now
		bra.s	.redo_save
.uncompatible:
		move.l	#SaveTxt_Late,d6
		bsr.w	SaveWarning
		bra.s	.redo_save
.save_is_ok:
        gotoROM
		move.b	#id_Sega,(v_gamemode).w
		rts
; ===============================================================================
SaveTxt_Late:	dc.b "NEWER VERSION SAVE WILL BE ERASED",0
	even
SaveTxt_None:	dc.b "NO SAVE FOUND CREATING NEW ONE",0
	even
SaveTxt_Old:	dc.b "UPDATING SAVE TO CURRENT VERSION",0
	even
SaveTxt_Warning:	dc.b "WARNING",0
	even
SaveTxt_Press:	dc.b "PRESS ANYTHING TO CONTINUE",0
	even
SaveTxt_LOL:	dc.b "EXCEPT FOR THE RESET AND POWER BUTTON",0
	even
; ===============================================================================
SaveWarning:
		gotoROM
		lea	(Art_Text).l,a5	; load level select font
		lea	(vdp_data_port).l,a6
		move.w	#$8170,4(a6)
		
		move.w	#(40*$8)-1,d1
		locVRAM	$D000,4(a6)
.font:
		move.l	(a5)+,(a6)
		dbf	d1,.font	; load level select font
		
		lea SaveTxt_Warning(pc),a5
		
		locVRAM	($C000+($80*1)+(2*1)),4(a6) ; y x
		moveq	#0,d0
		add.w	#$2600,d0
		bsr.w	TextGenerate
		
		movea.l	d6,a5
		
		locVRAM	($C000+($80*3)+(2*2)),4(a6) ; y x
		move.w	#$600,d0
		bsr.w	TextGenerate
		
		lea SaveTxt_Press(pc),a5
		
		locVRAM	($C000+($80*26)+(2*7)),4(a6) ; y x
		move.w	#$600,d0
		bsr.w	TextGenerate
		
		lea SaveTxt_LOL(pc),a5
		
		locVRAM	($C000+($80*27)+(2*2)),4(a6) ; y x
		move.w	#$C600,d0
		bsr.w	TextGenerate

		move.b	#palid_Warning,d0
		jsr	(PalLoad1).l

		bsr.w	PaletteFadeIn
		disable_ints
.loop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.b	(v_jpadpress1).w
		beq.s	.loop
		
		gotoSRAM
		lea ($200001).l,a0		; Load SRAM memory into a0
		rts

TextGenerate:
		move.b (a5)+,d0
		cmpi.b    #$30,d0    ; Check for $40 
        blt.s    .skip    ; If not a valid ASCII character, branch
		
		cmpi.b    #$40,d0    ; Check for $40 
        blt.s    .check    ; If not an ASCII text character, branch
		subq.w    #$3,d0        ; Subtract an extra 3
	.check:
		
		add.w	#$80-$30,d0
		move.w	d0,(a6)
		tst.b	(a5)
		bne.s	TextGenerate
		rts
	.skip:
		move.w	#0,(a6)
		tst.b	(a5)
		bne.s	TextGenerate
		rts