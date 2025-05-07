; ---------------------------------------------------------------------------
; Object 0E - Sonic on the title screen
; ---------------------------------------------------------------------------

TitleCharacters:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	TSon_Index(pc,d0.w),d1
		jmp	TSon_Index(pc,d1.w)
; ===========================================================================
TSon_Index:
		dc.w TSon_Main-TSon_Index
		dc.w TSon_Delay-TSon_Index
		dc.w TSon_Move-TSon_Index
		dc.w TSon_SpawnAmy-TSon_Index
		dc.w TSon_Animate-TSon_Index
; ===========================================================================

TSon_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.w	#$F0,obX(a0)
		move.w	#$D0,obScreenY(a0) ; position is fixed to screen
		move.l	#Map_TSon,obMap(a0)
		move.w	#$2300,obGfx(a0)
		move.b	#1,obPriority(a0)
		move.b	#29,obDelayAni(a0) ; set time delay to 0.5 seconds
		tst.b	obSubtype(a0)
		beq.s	.skip
		move.b	#1,obAnim(a0)
.skip:
		lea	(Ani_TSon).l,a1
		jsr	AnimateSprite

TSon_Delay:	; Routine 2
		subq.b	#1,obDelayAni(a0) ; subtract 1 from time delay
		bpl.s	.wait		; if time remains, branch
		addq.b	#2,obRoutine(a0) ; go to next routine
		jmp	DisplaySprite

.wait:
		rts	
; ===========================================================================

TSon_Move:	; Routine 4
		subq.w	#8,obScreenY(a0) ; move Sonic up
		tst.b	obSubtype(a0)
		beq.s	.Sonic
		subq.w	#5,obX(a0)
		bra.s	.continue

.Sonic:
		addq.w	#5,obX(a0)

.continue:
		cmpi.w	#$98,obScreenY(a0) ; has Sonic reached final position?
		bne.s	.display	; if not, branch
		addq.b	#2,obRoutine(a0)

.display:
		jmp	DisplaySprite
; ===========================================================================

TSon_SpawnAmy:	; Routine 6
		addq.b	#2,obRoutine(a0)
		tst.b	obSubtype(a0)
		bne.s	TSon_Animate
		move.b	#id_TitleCharacters,(v_titleamy)
		move.b	#1,(v_titleamy+obSubtype)
		bset	#7,(titleMode).w			; Mark Sonic as turned around
; ===========================================================================

TSon_Animate:	; Routine 8
		tst.b	obSubtype(a0)
		beq.s	TSon_Animate2
		move.b	#1,obAnim(a0)
TSon_Animate2:
		lea	(Ani_TSon).l,a1
		jsr	AnimateSprite
		jmp	DisplaySprite
; ===========================================================================