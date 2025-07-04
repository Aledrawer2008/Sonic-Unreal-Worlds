; ---------------------------------------------------------------------------
; Object 1A - GHZ collapsing ledge
; ---------------------------------------------------------------------------

CollapseLedge:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Ledge_Index(pc,d0.w),d1
		jmp	Ledge_Index(pc,d1.w)
; ===========================================================================
Ledge_Index:	dc.w Ledge_Main-Ledge_Index, Ledge_Touch-Ledge_Index
		dc.w Ledge_Collapse-Ledge_Index, Ledge_Display-Ledge_Index
		dc.w Ledge_Delete-Ledge_Index, Ledge_WalkOff-Ledge_Index
; ===========================================================================

Ledge_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.l	#Map_Ledge,obMap(a0)
		move.w	#$4260,obGfx(a0)
		ori.b	#4,obRender(a0)
		move.b	#4,obPriority(a0)
		move.b	#7,ledge_timedelay(a0) ; set time delay for collapse
		move.b	#$30,obActWid(a0)
		move.b	obSubtype(a0),obFrame(a0)
		move.b	#$38,obHeight(a0)
		bset	#4,obRender(a0)

Ledge_Touch:	; Routine 2
		tst.b	ledge_collapse_flag(a0)	; is ledge collapsing?
		beq.s	.slope		; if not, branch
		tst.b	ledge_timedelay(a0)	; has time reached zero?
		beq.w	Ledge_Fragment	; if yes, branch
		subq.b	#1,ledge_timedelay(a0) ; subtract 1 from time

.slope:
		moveq	#$30,d1
		lea	Ledge_SlopeData(pc),a2
		jsr	SlopeObject
		jsr	RememberState
; ===========================================================================

Ledge_Collapse:	; Routine 4
		tst.b	ledge_timedelay(a0)
		beq.w	loc_847A
		move.b	#1,ledge_collapse_flag(a0)	; set collapse flag
		subq.b	#1,ledge_timedelay(a0)

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Ledge_WalkOff:	; Routine $A
		moveq	#$30,d1
		jsr	ExitPlatform
		moveq	#$30,d1
		lea	Ledge_SlopeData(pc),a2
		move.w	obX(a0),d2
		jsr	SlopeObject2
		jsr	RememberState
; End of function Ledge_WalkOff

; ===========================================================================

Ledge_Display:	; Routine 6
		tst.b	ledge_timedelay(a0)	; has time delay reached zero?
		beq.s	Ledge_TimeZero	; if yes, branch
		tst.b	ledge_collapse_flag(a0)	; is ledge collapsing?
		bne.s	loc_82D0	; if yes, branch
		subq.b	#1,ledge_timedelay(a0) ; subtract 1 from time
		jsr	DisplaySprite
; ===========================================================================

loc_82D0:
		subq.b	#1,ledge_timedelay(a0)
		bsr.s	Ledge_WalkOff
		lea	(v_player).w,a1
		btst	#3,obStatus(a1)
		beq.s	loc_82FC
		tst.b	ledge_timedelay(a0)
		bne.s	locret_8308
		bclr	#3,obStatus(a1)
		bclr	#5,obStatus(a1)
		move.b	#id_Run,obNextAni(a1) ; restart Sonic's animation

loc_82FC:
		clr.b	ledge_collapse_flag(a0)
		move.b	#6,obRoutine(a0) ; run "Ledge_Display" routine

locret_8308:
		rts
; ===========================================================================

Ledge_TimeZero:
		jsr	ObjectFall
		tst.b	obRender(a0)
		bpl.s	Ledge_Delete
		jsr	DisplaySprite
; ===========================================================================

Ledge_Delete:	; Routine 8
		jsr	DeleteObject