; ----------------------------------------------------------------------------
; Object 03 - Team Encore Screen Stuff
; ----------------------------------------------------------------------------

TEncoreStuff:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	TES_Index(pc,d0.w),d1
		jmp	TES_Index(pc,d1.w)
; ===========================================================================
TES_Index:
		dc.w	TES_Ring_Init-TES_Index	; 0
		dc.w	TES_Main-TES_Index	; 2
		dc.w	TES_Fire_Init-TES_Index	; 4
		dc.w	TES_Main-TES_Index	; 6
; ===========================================================================

TES_Ring_Init:
		addq.b	#2,obRoutine(a0)	; dont repeat the init of the sprite
		move.w	#$E9,obX(a0)
		move.w	#$110,obScreenY(a0)
		move.l	#Map_TeamEncore,obMap(a0)
		move.w	#$200,obGfx(a0)

TES_Main:
		lea	(Ani_TEncore).l,a1
		jsr	AnimateSprite
		jmp	DisplaySprite
; ===========================================================================

Ani_TEncore:
		include	"_anim/Team Encore Stuff.asm"
; ===========================================================================

TES_Fire_Init:
		addq.b	#2,obRoutine(a0)	; dont repeat the init of the sprite
		move.l	#Map_TeamEncore,obMap(a0)
		move.w	#$200,obGfx(a0)
		move.w	#$142,obX(a0)
		move.w	#$10A,obScreenY(a0)
		move.b	#1,obAnim(a0)
		bra.w	TES_Main
; ===========================================================================

Map_TeamEncore:
		include	"_maps/Team Encore Stuff.asm"
		even
; ===========================================================================
