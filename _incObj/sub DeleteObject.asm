; ---------------------------------------------------------------------------
; Subroutine to	delete an object
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DeleteObject:
		movea.l	a0,a1		; move object RAM address to (a1)

DeleteChild:				; child objects are already in (a1)
		moveq	#0,d1
		moveq	#$F,d0

DelObj_Loop:
		move.l	d1,(a1)+	; clear	the object RAM
		dbf	d0,DelObj_Loop	; repeat for length of object RAM
		rts	

; End of function DeleteObject

; ---------------------------------------------------------------
; Executes delete objects queue
; ---------------------------------------------------------------

DeleteQueue_Execute:
		movea.w	DeleteQueue_Ptr, a5
		clr.w	(a5)

		lea	DeleteQueue, a0

		move.w	(a0)+, d0
		beq.s	.done

		moveq	#0, d4
		moveq	#0, d5
		moveq	#0, d6
		moveq	#0, d7
		move.l	d4, a2
		move.l	d5, a3
		move.l	d6, a4
		move.l	d7, a5

	.loop:
		movea.w	d0, a1
		movem.l	d4-d7/a2-a5, (a1)		; clear $20 bytes
		movem.l	d4-d7/a2-a5, $20(a1)		; clear $20 bytes
		lea	$40(a1), a1
		move.w	(a0)+, d0
		bne.s	.loop

.done:
		rts