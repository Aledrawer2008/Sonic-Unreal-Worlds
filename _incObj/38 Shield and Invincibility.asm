; ---------------------------------------------------------------------------
; Object 38 - shield and invincibility stars
; ---------------------------------------------------------------------------
 
ShieldItem:
       	moveq   #0,d0
        move.b  obRoutine(a0),d0
        move.w  Shi_Index(pc,d0.w),d1
        jmp Shi_Index(pc,d1.w)
; ===========================================================================
Shi_Index:
  		dc.w Shi_Main-Shi_Index
        dc.w Shi_Shield-Shi_Index
        dc.w Shi_Stars-Shi_Index
; ===========================================================================
 
Shi_Main:   ; Routine 0
		addq.b  #2,obRoutine(a0)
		move.l  #Map_Shield,mappings(a0)
		move.b  #4,obRender(a0)
		move.b  #1,obPriority(a0)
		move.b  #$10,obActWid(a0)
		move.w  #$6CA,obGfx(a0)
		tst.b   anim(a0)    ; is object a shield?
		beq.s   .shield     ; if yes, branch
		addq.b  #2,obRoutine(a0) ; Stars specific code: goto Shi_Stars next
.shield
		rts
; ===========================================================================
 
Shi_Shield: ; Routine 2
		tst.b	(f_supersonic).w	; is Sonic Super?
		bne.s	.delete			; if yes, branch
		tst.b	(v_invinc).w	; does Sonic have invincibility?
		bne.s	.remove		; if yes, branch
		tst.b	(v_shield).w	; does Sonic have shield?
		beq.s	.delete		; if not, branch
        move.w  (v_player+obX).w,obX(a0)
        move.w  (v_player+obY).w,obY(a0)
        move.b  (v_player+obStatus).w,obStatus(a0)
        tst.b   ($FFFFD3C0).w       ; Check for Bonus Stage entry
        beq.s   .novanish       ; if Sonic is not entering a Bonus Stage, skip
        rts		 ; return, and don't display shield
    .novanish:
        lea (Ani_Shield).l,a1
	   	jsr AnimateSprite
        bsr.w   Shield_LoadGfx
    	jmp DisplaySprite
    .remove:
    	rts
    .delete:
        jmp DeleteObject
; ===========================================================================
 
Shi_Stars:  ; Routine 4
		tst.b	(f_supersonic).w	; is Sonic Super?
		bne.s	.delete	; if yes, branch
		tst.b	(v_invinc).w	; does Sonic have invincibility?
		beq.s	.delete		; if not, branch
        move.w  (v_trackpos).w,d0 ; get index value for tracking data
        move.b  anim(a0),d1
        subq.b  #1,d1
		lsl.b   #3,d1       ; multiply animation number by 8
		move.b  d1,d2
		add.b   d1,d1
		add.b   d2,d1       ; multiply by 3
		addq.b  #4,d1
		sub.b   d1,d0
		move.b  $30(a0),d1
		sub.b   d1,d0       ; use earlier tracking data to create trail
		addq.b  #4,d1
		cmpi.b  #$18,d1
		bcs.s   .a
		moveq   #0,d1
 
    .a:
		move.b  d1,$30(a0)
		lea (v_tracksonic).w,a1
		lea (a1,d0.w),a1
		move.w  (a1)+,obX(a0)
		move.w  (a1)+,obY(a0)
		move.b  (v_player+obStatus).w,obStatus(a0)
 
		tst.b   ($FFFFD3C0).w       ; Check for Bonus Stage entry
		beq.s   .novanish       ; if Sonic is not entering a Bonus Stage, skip
		rts		 ; return, and don't display invincibility stars
    .novanish:
		lea (Ani_Shield).l,a1
		jsr AnimateSprite
		bsr.s   Stars_LoadGfx
		jmp DisplaySprite
; ===========================================================================
 
.delete:
		jmp DeleteObject
 
; ---------------------------------------------------------------------------
; Shield and Stars dynamic pattern loading subroutine
; ---------------------------------------------------------------------------
 
Stars_LoadGfx:
		moveq   #0,d0
		move.b  ($FFFFD21A).w,d0    ; load frame number
		move.l  #Art_Stars,d6
		bra.s   ShieldPLC_Cont
 
Shield_LoadGfx:
		moveq   #0,d0
		move.b  ($FFFFD19A).w,d0    ; load frame number
		move.l  #Art_Shield,d6
 
ShieldPLC_Cont:
		lea (DPLC_Shield).l,a2
		add.w   d0,d0
		adda.w  (a2,d0.w),a2
		moveq   #0,d5
		move.b  (a2)+,d5          ; read "number of entries" value
		subq.w  #1,d5
		bmi.s   ShieldDPLC_Return ; if zero, branch
		move.w  #$D940,d4
		jmp	Generic_LoadGfx

ShieldDPLC_Return:
		rts