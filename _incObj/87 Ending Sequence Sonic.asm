; ---------------------------------------------------------------------------
; Object 87 - Sonic on ending sequence
; ---------------------------------------------------------------------------

EndSonic:
		moveq	#0,d0
		move.b	ob2ndRout(a0),d0
		move.w	ESon_Index(pc,d0.w),d1
		jsr	ESon_Index(pc,d1.w)
		jmp	(DisplaySprite).l
; ===========================================================================
ESon_Index:	dc.w ESon_Main-ESon_Index	;0
		dc.w ESon_MakeEmeralds-ESon_Index ;2
		dc.w ESon_Animate-ESon_Index	;4
		dc.w ESon_LookUp-ESon_Index		;6
		dc.w ESon_ClrObjRam-ESon_Index	;8
		dc.w ESon_Animate-ESon_Index	;$A
		dc.w ESon_MakeLogo-ESon_Index	;$C
		dc.w ESon_Animate-ESon_Index	;$E
		dc.w ESon_Leap-ESon_Index		;$10
		dc.w ESon_Animate2-ESon_Index	;$12
		dc.w ESon_Delay-ESon_Index		;$14
		dc.w ESon_GotoCredits-ESon_Index ;$16

eson_time = $30	; time to wait between events
; ===========================================================================

ESon_Main:	; Routine 0
		cmpi.b	#7,(v_emeralds).w ; do you have all 7 emeralds?
		beq.s	ESon_Main2	; if yes, branch
		addi.b	#$10,ob2ndRout(a0) ; else, skip emerald sequence
		move.w	#216,eson_time(a0)
		rts	
; ===========================================================================

ESon_Main2:
		addq.b	#2,ob2ndRout(a0)
		move.l	#Map_ESon,obMap(a0)
		tst.b	(v_character)
		beq.s	.common
		move.l	#Map_EAmy,obMap(a0)
.common:
		move.w	#$3E1,obGfx(a0)
		move.b	#4,obRender(a0)
		clr.b	obStatus(a0)
		move.b	#2,obPriority(a0)
		move.b	#0,obFrame(a0)
		move.w	#80,eson_time(a0) ; set duration for Sonic to pause

ESon_MakeEmeralds:
		; Routine 2
		subq.w	#1,eson_time(a0) ; subtract 1 from duration
		bne.s	ESon_Wait
		addq.b	#2,ob2ndRout(a0)
		move.w	#1,obAnim(a0)
		move.b	#id_EndChaos,(v_endemeralds).w ; load chaos emeralds objects

ESon_Wait:
		rts	
; ===========================================================================

ESon_LookUp:	; Routine 6
		cmpi.w	#$2000,(v_endemeralds+$3C).l
		bne.s	locret_5480
		move.b	#1,(f_restart).w ; set level to	restart (causes flash)
		move.w	#90,eson_time(a0)
		addq.b	#2,ob2ndRout(a0)

locret_5480:
		rts	
; ===========================================================================

ESon_ClrObjRam:
		; Routine 8
		subq.w	#1,eson_time(a0)
		bne.s	ESon_Wait2
		lea	(v_endemeralds).w,a1
		move.w	#$FF,d1

ESon_ClrLoop:
		clr.l	(a1)+
		dbf	d1,ESon_ClrLoop ; clear the object RAM
		move.b	#1,(f_restart).w
		addq.b	#2,ob2ndRout(a0)
		move.b	#1,obAnim(a0)
		move.w	#60,eson_time(a0)

ESon_Wait2:
		rts	
; ===========================================================================

ESon_MakeLogo:	; Routine $C
		subq.w	#1,eson_time(a0)
		bne.s	ESon_Wait3
		addq.b	#4,ob2ndRout(a0)
		move.w	#180,eson_time(a0)
		move.b	#2,obAnim(a0)

ESon_Wait3:
		rts	
; ===========================================================================

ESon_Animate2:	; Rountine $12
		addq.b	#2,ob2ndRout(a0)

ESon_Animate:	; Rountine 4, $A, $E
		lea	(AniScript_ESon).l,a1
		jmp	(AnimateSprite).l
; ===========================================================================

ESon_Leap:	; Routine $10
		subq.w	#1,eson_time(a0)
		bne.s	ESon_Wait4
		addq.b	#2,ob2ndRout(a0)
		move.l	#Map_ESon,obMap(a0)
		tst.b	(v_character)
		beq.s	.common
		move.l	#Map_EAmy,obMap(a0)
.common:
		move.w	#$3E1,obGfx(a0)
		move.b	#4,obRender(a0)
		clr.b	obStatus(a0)
		move.b	#2,obPriority(a0)
		move.b	#5,obFrame(a0)
		move.b	#2,obAnim(a0)	; use "leaping"	animation
		bra.s	ESon_Animate
ESon_Wait4:
		rts	
; ===========================================================================

ESon_Delay:
		addq.b	#2,ob2ndRout(a0)
		move.w	#300,eson_time(a0) ; set duration for delay (5 seconds)

ESon_GotoCredits:
		; Routine $16
		subq.w	#1,eson_time(a0) ; subtract 1 from duration
		bpl.w	ESon_Animate
		move.b	#id_Credits,(v_gamemode).w ; exit to credits
		bra.w	ESon_Animate