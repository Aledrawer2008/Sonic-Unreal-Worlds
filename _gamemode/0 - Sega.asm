; ---------------------------------------------------------------------------
; Sega screen
; ---------------------------------------------------------------------------

GM_Sega:
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

		move.l	d1,-(sp)
		fillVRAM	0,$FFFF,0

.waitforDMA:
		move.w	(a5),d1
		btst	#1,d1		; is DMA (fillVRAM) still running?
		bne.s	.waitforDMA	; if yes, branch
		move.l	(sp)+,d1

		bsr.w	ClearScreen
		ResetDMAQueue
        move.l  #$40000000,(vdp_control_port).l
        lea     (Nem_Sega).l,a0
        bsr.w   NemDec
		lea	($FF0000).l,a1		; load destination
        lea     (Eni_Sega).l,a0
        move.w  #0,d0
        bsr.w   EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
        moveq   #palid_SegaBG,d0
        bsr.w   PalLoad2
        move.w  #$28,(v_pcyc_num).w
        move.w  #0,(f_echallenge).w
        move.w  #$B4,(v_demolength).w
        move.w  (v_vdp_buffer1).w,d0
        ori.b   #$40,d0
        move.w  d0,(vdp_control_port).l
		move.b	#dSega,d0   ; play Sega scream
		jsr	MegaPCM_PlaySample

.mainloop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla	
        bsr.w   PalCycle_SEGA
        tst.w   (v_demolength).w
        beq.s   .return
		andi.b	#$80,(v_jpadpress1).w ; is Start button pressed?
        beq.s   .mainloop

.return:
		move.b	#id_Encore,(v_gamemode).w	; go to Team Encore Screen
        rts

Nem_Sega:     
        binclude   "artnem/segaart.bin"
		even

Eni_Sega:
        binclude   "tilemaps/New Sega Logo.bin"
		even		
; ===========================================================================