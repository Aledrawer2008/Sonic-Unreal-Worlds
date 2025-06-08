; ---------------------------------------------------------------------------
; Object 01 - Sonic/Amy
; ---------------------------------------------------------------------------

SonicPlayer:
		tst.w	(v_debuguse).w	; is debug mode	being used?
		beq.s	Sonic_Normal	; if not, branch
		jmp	(DebugMode).l
; ===========================================================================

Sonic_Normal:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Sonic_Index(pc,d0.w),d1
		jmp	Sonic_Index(pc,d1.w)
; ===========================================================================
Sonic_Index:	dc.w Sonic_Main-Sonic_Index
		dc.w Sonic_Control-Sonic_Index
		dc.w Sonic_Hurt-Sonic_Index
		dc.w Sonic_Death-Sonic_Index
		dc.w Sonic_ResetLevel-Sonic_Index
        dc.w Sonic_Drowned-Sonic_Index
; ===========================================================================

Sonic_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		clr.b	(f_supersonic).w
		jsr		Character_Mappings		; Load the player's mappings
		move.w	#$780,obGfx(a0)
		move.b	#2,obPriority(a0)
		move.b	#$18,obActWid(a0)
		move.b	#4,obRender(a0)
		move.w	#$600,(v_sonspeedmax).w ; Sonic's top speed
		move.w	#$C,(v_sonspeedacc).w ; Sonic's acceleration
		move.w	#$80,(v_sonspeeddec).w ; Sonic's deceleration
		move.b	#id_SpinDust,(v_playerdust).w

Sonic_Control:	; Routine 2
        bsr.w	Sonic_PanCamera
		tst.w	(f_debugmode).w	; is debug cheat enabled?
		beq.s	loc_12C58	; if not, branch
		btst	#bitB,(v_jpadpress1).w ; is button B pressed?
		beq.s	loc_12C58	; if not, branch
		move.w	#1,(v_debuguse).w ; change Sonic into a ring/item
		clr.b	(f_lockctrl).w
		rts	

        include    "_incObj/Sonic_PanCamera.asm"
; ===========================================================================

loc_12C58:
		tst.b	(f_lockctrl).w	; are controls locked?
		bne.s	loc_12C64	; if yes, branch
		move.w	(v_jpadhold1).w,(v_jpadhold2).w ; enable joypad control

loc_12C64:
		btst	#0,(f_playerctrl).w ; are controls locked?
		bne.s	loc_12C7E	; if yes, branch
		moveq	#0,d0
		move.b	obStatus(a0),d0
		andi.w	#6,d0
		move.w	Sonic_Modes(pc,d0.w),d1
		jsr		Sonic_Modes(pc,d1.w)

loc_12C7E:
		bsr.w	Sonic_Display
		bsr.w	Sonic_Super
		bsr.w	Sonic_RecordPosition
		bsr.w	Sonic_Water
		move.b	(v_anglebuffer).w,$36(a0)
		move.b	(v_anglebuffer+2).w,$37(a0)
		tst.b	(f_wtunnelmode).w
		beq.s	loc_12CA6
		tst.b	obAnim(a0)
		bne.s	loc_12CA6
		move.b	obNextAni(a0),obAnim(a0)

loc_12CA6:
		jsr	Sonic_Animate
		tst.b	(f_playerctrl).w
		bmi.s	loc_12CB6
		jsr	(ReactToItem).l

loc_12CB6:
		bsr.w	Sonic_Loops
		bsr.w	Sonic_LoadGfx
		rts	
; ===========================================================================
Sonic_Modes:
		dc.w Sonic_MdNormal-Sonic_Modes
		dc.w Sonic_MdJump-Sonic_Modes
		dc.w Sonic_MdRoll-Sonic_Modes
		dc.w Sonic_MdJump2-Sonic_Modes
; ===========================================================================
; ---------------------------------------------------------------------------
; Modes	for controlling	Sonic
; ---------------------------------------------------------------------------

Sonic_MdNormal:
		move.b	(f_supersonic).w,d0
		add.b	(v_character).w,d0
		tst.b	d0
		bne.w	.NotGivingUp
		bsr.w	Sonic_ChkBoredom		; Check boredom timer
		cmpi.b	#id_GiveUp,obAnim(a0)	; Are we giving up from boredom?
		bne.s	.NotGivingUp			; If not, branch
		cmpi.b	#fr_Fall2,obFrame(a0)	; Are we jumping?
		bhi.s	.End				; If not, branch
		jsr	Sonic_LevelBound		; Handle level boundary collision
		jmp	ObjectFall		; Apply velocity

.NotGivingUp:
		moveq	#0,d0
		jsr	Sonic_Peelout
        bsr.w   Sonic_SpinDash
		bsr.w	AmyHighJump
		bsr.w	Sonic_Jump
		bsr.w	Sonic_SlopeResist
		bsr.w	Sonic_Move
		bsr.w	Sonic_Roll
		bsr.w	Sonic_LevelBound
		jsr	(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel

.End:
		rts	
; ===========================================================================

Sonic_MdJump:
        bsr.w   Sonic_DropDash
		tst.b	(v_character)
		bne.s	.dropdashing
        cmpi.b	#id_Warp,obAnim(a0)
        beq.s	.dropdashing
        clr.b	f_spindash(a0)

.dropdashing:
		bsr.w	Amy_Midair_Stop
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_JumpDirection
		bsr.w	Sonic_LevelBound
		jsr		(ObjectFall).l
		btst	#6,obStatus(a0)
		beq.s	loc_12E5C
		subi.w	#$28,obVelY(a0)

loc_12E5C:
		bsr.w	Sonic_JumpAngle
		bsr.w	Sonic_Floor
        bsr.w   Sonic_AirRoll
		rts	
; ===========================================================================

Sonic_MdRoll:
		bsr.w	Sonic_Jump
		bsr.w	Sonic_RollRepel
		bsr.w	Sonic_RollSpeed
		bsr.w	Sonic_LevelBound
		jsr		(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel
		rts	
; ===========================================================================

Sonic_MdJump2:
        bsr.w   Sonic_DropDash
		tst.b	(v_character)
		bne.s	.dropdashing
        cmpi.b	#id_Warp,obAnim(a0)
        beq.s	.dropdashing
        clr.b	f_spindash(a0)
.dropdashing:
		bsr.w	Amy_Midair_Stop
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_JumpDirection
		bsr.w	Sonic_LevelBound
		jsr		(ObjectFall).l
		btst	#6,obStatus(a0)
		beq.s	loc_12EA6
		subi.w	#$28,obVelY(a0)

loc_12EA6:
		bsr.w	Sonic_JumpAngle
		bsr.w	Sonic_Floor
        bsr.w   Sonic_AirRoll
		rts	