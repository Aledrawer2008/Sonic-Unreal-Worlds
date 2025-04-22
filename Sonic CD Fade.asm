
		lea	(Pal_Title+($10*2)),a1		; Fade in Sonic palette
		lea	((v_pal_dry_dup)+($10*2)).w,a2
		movem.l	(a1)+,d0-d7
		movem.l	d0-d7,(a2)
		move.w	#($10<<9)|($10-1),(v_pfade_start).w
		jsr	(PalFadeIn_Alt).l

.WaitSonicTurn:
		move.b	#1,(titleMode).w			; Set to "Sonic turning" mode

		jsr	(ExecuteObjects).l			; Run objects
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


		btst	#7,(titleMode).w			; Has Sonic turned around?
		bne.s	.FlashWhite			; If so, branch
		move.b	#4,(v_vbla_routine).w		; WaitForVBla
		bsr.w	WaitForVBla
		bra.w	.WaitSonicTurn			; Loop

.FlashWhite:
		bclr	#7,(titleMode).w			; Clear Sonic turned flag

		lea	(Pal_Title).l,a1			; Flash white and fade in title screen paltte
		lea	(v_pal_dry_dup).w,a2
		movem.l	(a1)+,d0-d5/a3-a4
		movem.l	d0-d5/a3-a4,(a2)
		movem.l	(a1)+,d0-d5/a3-a4
		movem.l	d0-d5/a3-a4,$20(a2)
		movem.l	(a1)+,d0-d5/a3-a4
		movem.l	d0-d5/a3-a4,$40(a2)
		movem.l	(a1)+,d0-d5/a3-a4
		movem.l	d0-d5/a3-a4,$60(a2)
		lea	$80(a2),a2
		bsr.w	PaletteWhiteIn