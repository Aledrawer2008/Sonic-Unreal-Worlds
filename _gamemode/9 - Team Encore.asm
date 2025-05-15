; ---------------------------------------------------------------------------
; Team Encore screen
; ---------------------------------------------------------------------------

GM_Encore:
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
        lea    (v_spritetablebuffer).w,a2 ; set address for sprite table
        move.w    #$A0,d5
        
    .ClrSprites:
        move.l    #0,(a2)+
        dbf.w d5,.ClrSprites

        move.l  #$40000000,(vdp_control_port).l
        lea     (Nem_Encore).l,a0
        bsr.w   NemDec
		lea	($FF0000).l,a1		; load destination
        lea     (Eni_Encore).l,a0
        move.w  #0,d0
        bsr.w   EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
        moveq   #palid_TEncore,d0
        bsr.w   PalLoad1
        move.b  #plcid_TeamEncore,d0
        jsr NewPLC
        move.w  #$100,(v_demolength).w
        move.w  (v_vdp_buffer1).w,d0
        ori.b   #$40,d0
        move.w  d0,(vdp_control_port).l
        move.b  #id_TEncore,(v_oring).w
        move.b  #id_TEncore,(v_flame).w
        move.b  #4,(v_flame+obRoutine)
		jsr	(ExecuteObjects).l
        jsr (BuildSprites).l
		move.b	#bgm_Encore,d0; play Encore screen music
		jsr	(PlaySound_Special).l
        jsr PaletteFadeIn

.mainloop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla	
		jsr	(ExecuteObjects).l
        jsr (BuildSprites).l
        tst.w   (v_demolength).w
        beq.s   .return
		andi.b	#btnStart,(v_jpadpress1).w ; is Start button pressed?
        beq.s   .mainloop

.return:
		move.b	#id_Title,(v_gamemode).w	; go to Title Screen
        rts

Nem_Encore:     
        binclude   "artnem/Team Encore Screen.bin"
		even

Eni_Encore:
        binclude   "tilemaps/Team Encore Screen.bin"
		even		
; ===========================================================================