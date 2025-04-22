; ---------------------------------------------------------------------------
; Subroutine to make Sonic perform a spindash
; ---------------------------------------------------------------------------
 
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
 
 
Sonic_SpinDash:
		tst.b	(v_character).w
		beq.s	.continue
		jmp	SCDSpindash

.continue
		tst.b	f_spindash(a0)			; already Spin Dashing?
		bne.s	loc2_1AC8E		; if set, branch
		cmpi.b	#$8,obAnim(a0)		; is anim duck
		bne.s	locret2_1AC8C		; if not, return
		move.b	(v_jpadpress2).w,d0	; read controller
		andi.b	#btnABC,d0			; pressing A/B/C ?
		beq.w	locret2_1AC8C		; if not, return
		move.b	#id_Roll,obAnim(a0)	; set Spin Dash anim
		move.b	#1,(v_playerdust+obAnim).w
		move.b	#0,(v_playerdust+obTimeFrame).w
		move.w	#sfx_Spindash,d0	; spindash sound
		jsr	(PlaySound_Special).l	; play spin sound
		addq.l	#4,sp			; Add 4 bytes to the stack return address to skip Sonic_Jump on next rts to Obj01_MdNormal, preventing conflicts with button presses.
		move.b	#1,f_spindash(a0)	; set Spin Dash flag
		move.b	#2,(v_playerdust+obAnim).w	; is used for the smoke/dust object

loc2_1AC84:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos

locret2_1AC8C:
		rts

; ---------------------------------------------------------------------------

loc2_1AC8E:
		move.b	#$1F,obAnim(a0)
		move.b	(v_jpadhold2).w,d0	; read controller
		btst	#bitDn,d0		; check down button
		bne.w	loc2_1AD30		; if set, branch
		move.b	#$E,obHeight(a0)	; $16(a0) is height/2
		move.b	#7,obWidth(a0)		; $17(a0) is width/2
		move.b	#$2,obAnim(a0)		; set animation to roll
		addq.w	#5,obY(a0)		; $C(a0) is Y coordinate
		move.b	#0,f_spindash(a0)	; clear Spin Dash flag
		moveq	#0,d0
		move.b	$3A(a0),d0		; copy charge count
		add.w	d0,d0			; double it
		move.w	Dash_Speeds(pc,d0.w),obInertia(a0) ; get normal speed
		move.w	obInertia(a0),d0		; get inertia
		subi.w	#$800,d0		; subtract $800
		lsr.w	#7,d0
		neg.w	d0
		addi.w	#$20,d0
		move.b	d0,($FFFFC904).w
		; Back up the position array index for later.
		move.b	(v_trackpos+1).w,($FFFFC904+1).w
		btst	#0,$22(a0)		; is sonic facing right?
		beq.s	loc2_1ACF4		; if not, branch
		neg.w	obInertia(a0)			; negate inertia

loc2_1ACF4:
		bset	#2,$22(a0)		; set unused (in s1) flag
		move.b	#0,($FFFFD1DC).w	; clear $D1DC (smoke)
		move.w	#sfx_Teleport,d0	; spin release sound
		jsr	(PlaySound_Special).l	; play it!
		bra.s	loc2_1AD78
; ===========================================================================
Dash_Speeds:
		dc.w  $800		; 0
		dc.w  $880		; 1
		dc.w  $900		; 2
		dc.w  $980		; 3
		dc.w  $A00		; 4
		dc.w  $A80		; 5
		dc.w  $B00		; 6
		dc.w  $B80		; 7
		dc.w  $C00		; 8
; ===========================================================================

loc2_1AD30:				; If still charging the dash...
		tst.w	$3A(a0)		; check charge count
		beq.s	loc2_1AD48	; if zero, branch
		move.w	$3A(a0),d0	; otherwise put it in d0
		lsr.w	#5,d0		; shift right 5 (divide it by 32)
		sub.w	d0,$3A(a0)	; subtract from charge count
		bcc.s	loc2_1AD48	; branch if carry clear
		move.w	#0,$3A(a0)	; set charge count to 0

loc2_1AD48:
		move.b	(v_jpadpress2).w,d0	; read controller
		andi.b	#$70,d0			; pressing A/B/C?
		beq.w	loc2_1AD78		; if not, branch
		move.w	#$1F00,obAnim(a0)	; reset spdsh animation
		move.b	#2,$FFFFD1DC.w	; Set the Spin Dash dust animation to $2.
		move.w	#sfx_Spindash,d0	; was $E0 in sonic 2
		jsr	(PlaySound_Special).l	; play charge sound
		addi.w	#$200,$3A(a0)		; increase charge count
		cmpi.w	#$800,$3A(a0)		; check if it's maxed
		bcs.s	loc2_1AD78		; if not, then branch
		move.w	#$800,$3A(a0)		; reset it to max

loc2_1AD78:
		addq.l	#4,sp			; increase stack ptr
		cmpi.w	#$60,($FFFFF73E).w
		beq.s	loc2_1AD8C
		bcc.s	loc2_1AD88
		addq.w	#4,($FFFFF73E).w

loc2_1AD88:
		subq.w	#2,($FFFFF73E).w

loc2_1AD8C:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
		rts
; End of subroutine Sonic_SpinDash

; ---------------------------------------------------------------------------
; Subroutine to make Sonic perform a Spindash
; ---------------------------------------------------------------------------
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

SCDSpindash:
		btst	#0,$39(a0)
		bne.s	SCDSpindash_Launch
		cmpi.b	#8,obAnim(a0) ;check to see if your ducking
		bne.s	.return
		move.b	(v_jpadpress2).w,d0
		andi.b	#%01110000,d0
		beq.w	.return
		move.w	#0,$3A(a0)
		move.w	#sfx_Spindash,d0	; spindash sound
		jsr	(PlaySound_Special).l	; play spin sound
		addq.l	#4,sp
		bset	#0,$39(a0)
		move.w	#$16,$14(a0)

		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,obAnim(a0)	; use "rolling"	animation
		addq.w	#5,$C(a0)
		clr.w	$14(a0)
 
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
 
	.return:
		rts	
; ---------------------------------------------------------------------------
 
SCDSpindash_Launch:
		move.b	(v_jpadhold2).w,d0
		btst	#1,d0
		bne.w	SCDSpindash_Charge
		bclr	#0,$39(a0)	; stop Dashing
		move.b	#$22,obAnim(a0) ;charging spindash animation (walking to running to spindash sprites)

SCDSpindash_Launch2:
		move.b	#2,obAnim(a0)	; launches here (spindash sprites)
		bset	#2,$22(a0)	; set rolling bit
		move.w	#1,$10(a0)	; force X speed to nonzero for camera lag's benefit
		move.w	$14(a0),d0
		subi.w	#$800,d0
		add.w	d0,d0
		andi.w	#$1F00,d0
		neg.w	d0
		addi.w	#$2000,d0
		btst	#0,$22(a0)
		beq.s	.dontflip
		neg.w	$14(a0)
 
.dontflip:
		bclr	#7,$22(a0)
		move.w	#sfx_Teleport,d0	; spin release sound
		jsr	(PlaySound_Special).l	; play it!
		bra.w	SCDSpindash_ResetScr
; ---------------------------------------------------------------------------
 
SCDSpindash_Charge:				; If still charging the dash...
		move.w	($FFFFF760).w,d1	; get top spindash speed
		move.w	d1,d2
		add.w	d1,d1
		tst.b   ($FFFFFE2E).w 		; test for speed shoes
		beq.s	.noshoes
		asr.w	#1,d2
		sub.w	d2,d1

.noshoes:
		addi.w	#$64,$14(a0)		; increment speed
		cmp.w	$14(a0),d1
		bgt.s	.inctimer
		move.w	d1,$14(a0)

.inctimer:
		addq.b	#1,$3A(a0)		; increment timer
		cmpi.b	#$2D,$3A(a0)
		bcs.s	SCDSpindash_ResetScr
		move.b	#$2D,$3A(a0)
		jmp 	SCDSpindash_ResetScr
		
SCDSpindash_Stop_Sound:
		clr.w	$14(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#5,obAnim(a0)		; use "standing" animation
		subq.w	#5,$C(a0)

SCDSpindash_ResetScr:
		addq.l	#4,sp			; increase stack ptr
		cmpi.w	#$60,($FFFFF73E).w
		beq.s	.finish
		bcc.s	.skip
		addq.w	#4,($FFFFF73E).w
 
	.skip:
		subq.w	#2,($FFFFF73E).w
 
	.finish:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
		rts
