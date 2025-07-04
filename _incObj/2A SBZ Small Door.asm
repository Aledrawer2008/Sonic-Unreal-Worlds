; ---------------------------------------------------------------------------
; Object 2A - small vertical door (SBZ)
; ---------------------------------------------------------------------------

AutoDoor:
	; LavaGaming Object Routine Optimization
		tst.b	obRoutine(a0)
		bne.s	ADoor_OpenShut
	; Object Routine Optimization End

ADoor_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.l	#Map_ADoor,obMap(a0)
		move.w	#$42E8,obGfx(a0)
		ori.b	#4,obRender(a0)
		move.b	#8,obActWid(a0)
		move.b	#4,obPriority(a0)

ADoor_OpenShut:	; Routine 2
		move.w	#$40,d1		; set range for door detection
		clr.b	obAnim(a0)	; use "closing"	animation
		move.w	(v_player+obX).w,d0
		add.w	d1,d0
		cmp.w	obX(a0),d0
		blo.s	ADoor_Animate
		sub.w	d1,d0
		sub.w	d1,d0
		cmp.w	obX(a0),d0	; is Sonic > $40 pixels from door?
		bhs.s	ADoor_Animate	; close door
		add.w	d1,d0
		cmp.w	obX(a0),d0	; is Sonic left of the door?
		bhs.s	loc_899A	; if yes, branch
		btst	#0,obStatus(a0)
		bne.s	ADoor_Animate
		bra.s	ADoor_Open
; ===========================================================================

loc_899A:
		btst	#0,obStatus(a0)
		beq.s	ADoor_Animate

ADoor_Open:
		move.b	#1,obAnim(a0)	; use "opening"	animation

ADoor_Animate:
		lea		Ani_ADoor(pc),a1
		jsr	AnimateSprite
		tst.b	obFrame(a0)	; is the door open?
		bne.s	.remember	; if yes, branch
		move.w	#$11,d1
		move.w	#$20,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	obX(a0),d4
		jsr	SolidObject

.remember:
		bra.w	RememberState
; ===========================================================================
