; ---------------------------------------------------------------------------
; Secret screen
; ---------------------------------------------------------------------------

GM_Secret:
		move.b	#bgm_Stop,d0
		bsr.w	PlaySound_Special ; stop music
		bsr.w	ClearPLC
        bsr.w   PaletteFadeOut
        lea     (vdp_control_port).l,a6
        move.w  #$8004,(a6)
        move.w  #$8230,(a6)
        move.w  #$8407,(a6)
        move.w  #$8700,(a6)
        move.w  #$8B00,(a6)
        move.w  (v_vdp_buffer1).w,d0
        andi.b  #$BF,d0
        move.w  d0,(vdp_control_port).l

		bsr.w	ClearScreen
		ResetDMAQueue
        move.l  #$40000000,(vdp_control_port).l
        lea     (Nem_Secret).l,a0
        bsr.w   NemDec
		lea	($FF0000).l,a1		; load destination
        lea     (Eni_Secret).l,a0
        move.w  #0,d0
        bsr.w   EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
        moveq   #palid_SonAmy,d0
        bsr.w   PalLoad2
        move.w  #1000,(v_demolength).w
        move.w  (v_vdp_buffer1).w,d0
        ori.b   #$40,d0
        move.w  d0,(vdp_control_port).l
        jsr (RandomNumber).l
        btst    #1,d1
        beq.s   .Secret
    	move.b  #dThankYou,d0
        bra.s   .Skip

.Secret
		move.b	#dMeAndoM,d0

.Skip:
    	jsr     MegaPCM_PlaySample

.mainloop:
		move.b	#4,(v_vbla_routine).w
		bsr.w	WaitForVBla
        tst.w   (v_demolength).w
        beq.s   .return
        bra.s   .mainloop

.return:
		move.b	#id_Sega,(v_gamemode).w	; go to Title Screen
        rts

Nem_Secret:     
        binclude   "artnem/Secret Screen.bin"
		even

Eni_Secret:
        binclude   "tilemaps/Secret Screen.bin"
		even