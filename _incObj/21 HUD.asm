; ---------------------------------------------------------------------------
; Object 21 - SCORE, TIME, RINGS
; ---------------------------------------------------------------------------

HUD:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	HUD_Index(pc,d0.w),d1
		jmp	HUD_Index(pc,d1.w)
; ===========================================================================
HUD_Index:	dc.w HUD_Main-HUD_Index
		dc.w Hud_Move-HUD_Index
		dc.w HUD_Flash-HUD_Index
		dc.w Hud_MoveOfScreen-HUD_Index
; ===========================================================================

HUD_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.w  #0,obX(a0)
		move.w	#$B8,obScreenY(a0)
		move.l	#Map_HUD,obMap(a0)
		move.w	#$541,obGfx(a0)
		cmpi.b	#id_SonicSpecial,(v_player).w ; test if Special Stage Sonic is present
		bne.s	.normal
		move.l	#Map_HUD_SS,obMap(a0)
		move.w	#$1D2,obGfx(a0)

.normal:
		move.b	#0,obRender(a0)
		move.b	#0,obPriority(a0)

Hud_Move:
        addq.w #$2,obX(a0)
		cmpi.w #$A0,obX(a0)
		bne.s  HUD_Flash
		addq.b #2,$24(a0)
		jmp HUD_Flash
		
Hud_MoveOfScreen
        subq.w  #2,obX(a0)
		cmpi.w  #$0,obX(a0)
		bne.w   HUD_Flash
        jmp     DeleteObject

HUD_Flash:	; Routine 2
		moveq	#0,d0	; d0 will be the frame to display; default is 0
		btst	#3,(v_framebyte).w	; check the third bit of the frame counter byte. It's 0 for 4 frames, and then 1 for frames, and then repeats - perfect for flashing the HUD every 4 frames.
		bne.s	.display	; if it's on, skip straight to displaying the sprite using frame 0
		tst.w	(v_rings).w	; do you have any rings?
		bne.s	.skip	; if so, skip the line that adds 1 to the frame (making RINGS red) 
		addq.w	#1,d0		; make ring counter flash red
	.skip:
		cmpi.b	#id_SonicSpecial,(v_player).w ; test if Special Stage Sonic is present
		bne.s	.normaltl
		cmpi.l	#TimeLimitInSpecialStagePinch,(v_time).w
		bcc.s	.display
		bra.s	.add2
		
	.normaltl:
		cmpi.b	#9,(v_timemin).w ; have	9 minutes elapsed?
		bne.s	.display	; if not, skip the line that adds 2 to the frame (making TIME red) 
		
	.add2:
		addq.w	#2,d0		; make time counter flash red
		tst.w	(v_rings).w	; do you have any rings?
		beq.s	.norings	; if not, branch
		clr.b	obFrame(a0)	; make all counters yellow
		jmp	DisplaySprite
; ===========================================================================

.norings:
		moveq	#0,d0
		btst	#3,(v_framebyte).w
		bne.s	.display
		addq.w	#1,d0		; make ring counter flash red
		cmpi.b	#9,(v_timemin).w ; have	9 minutes elapsed?
		bne.s	.display	; if not, branch
		addq.w	#2,d0		; make time counter flash red
	.display:
		move.b	d0,obFrame(a0)
		jmp	DisplaySprite