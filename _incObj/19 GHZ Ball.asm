; ---------------------------------------------------------------------------
; Object 19 - Spike ball thrown by the Train
; ---------------------------------------------------------------------------
 
Obj19_Delete:
		jmp	(DeleteObject).l
; ==========================================================================

TAZSpikeBall:
		tst.b	obRoutine(a0)
		bne.s	Obj19_Move
		move.l	#Map_SSawBall,obMap(a0)
		move.w	#$518,obGfx(a0)
		move.b	#1,obFrame(a0)
		ori.b	#4,obRender(a0)
		move.b	#4,obPriority(a0)
		move.b	#$8B,obColType(a0)
		move.b	#$C,obActWid(a0)
		addq.b	#2,obRoutine(a0)

Obj19_Move:
		move.w	#-$100,obVelX(a0) ; move object to the left
		bsr.w	SpeedToPos
		jmp	(DisplaySprite).l