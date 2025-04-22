; ---------------------------------------------------------------------------
; Subroutine to	prevent	Sonic leaving the boundaries of	a level
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_LevelBound:
		move.l	obX(a0),d1
		move.w	obVelX(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap	d1
		move.w	(v_limitleft2).w,d0
		addi.w	#$10,d0
		cmp.w	d1,d0		; has Sonic touched the	side boundary?
		bhi.w	.sides		; if yes, branch
		move.w	(v_limitright2).w,d0
		addi.w	#$128,d0
		tst.b	(f_lockscreen).w
		bne.s	.screenlocked
		addi.w	#$40,d0

.screenlocked:
		cmp.w	d1,d0		; has Sonic touched the	side boundary?
		bls.w	.CHKfinalbattle		; if yes, branch

.chkbottom:
		move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has Sonic touched the	bottom boundary?
		blt.s	.bottom		; if yes, branch
		rts	
; ===========================================================================

.bottom:
        tst.b   ($FFFFF7A7).w       ; GIO: has a boss fight been defeated?
        bne.s   .afterboss          ; GIO: if yes, branch
		move.w (v_limitbtm1).w,d0 
		move.w (v_limitbtm2).w,d1 
		cmp.w d0,d1 ; screen still scrolling down? 
		blt.s .dontkill; if so, don't kill Sonic
		cmpi.w	#(id_SBZ<<8)+1,(v_zone).w
		bne.s	.kill
		cmpi.w	#$2000,obX(a0)
		bcs.w	.kill
		clr.b	(v_lastlamp).w	; clear	lamppost counter
		move.b	#1,(f_restart).w ; restart the level
		move.w	#(id_LZ<<8)+3,(v_zone).w ; set level to SBZ3 (LZ4)
		rts	
.kill
        jmp     KillSonic
.dontkill:
        rts

.afterboss:
        btst    #2,obStatus(a0)
    	beq.s    .skip
    	bclr    #2,obStatus(a0)
    	move.b    #$13,obHeight(a0)
        move.b    #9,obWidth(a0)
    	subq.w    #5,obY(a0)
 
    .skip:
        clr.b   obJumping(a0)            ; GIO: clear the jumping flag
        addq.w    #8,obY(a0)        ; GIO: from this point on, this is an excerpt of code from the upwards facing spring's code
        move.w    #-$A00,obVelY(a0)    ; move Sonic upwards
        bset    #1,obStatus(a0)
        bclr    #3,obStatus(a0)
        move.b    #id_Spring,obAnim(a0)    ; use "bouncing" animation
        move.b    #2,obRoutine(a0)
        move.w    #sfx_Spring,d0
        jmp    (PlaySound_Special).l ;    play spring sound

; ===========================================================================

.CHKfinalbattle:
		cmpi.w	#$502,(v_zone).w ; is level FZ ?
		bne.w	.sides	; if not, branch
		cmpi.w	#$2700,(v_limitright2).w
		bne.w	.sides
		cmpi.b	#7,(v_emeralds).w
		bne.s	.NOTallemeralds
		move.w	#id_UBZ,(v_zone).w
		move.b	#1,(f_restart).w
		bra.w	.chkbottom

.NOTallemeralds:
		move.b	#id_Ending,(v_gamemode).w
		rts

; ===========================================================================

.sides:
		move.w	d0,obX(a0)
		move.w	#0,obX+2(a0)
		move.w	#0,obVelX(a0)	; stop Sonic moving
		move.w	#0,obInertia(a0)
		bra.w	.chkbottom
; End of function Sonic_LevelBound