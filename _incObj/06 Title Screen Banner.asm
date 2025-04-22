; -------------------------------------------------------------------------
; Sonic CD (1993) Disassembly
; By Devon Artmeier
; -------------------------------------------------------------------------
; Banner object (title screen)
; -------------------------------------------------------------------------

TitleBanner:
		tst.b	obRoutine(a0)
		beq.s	.Skip
		move.l	#MapSpr_Banner,obMap(a0)		; Set mappings
		move.w	#$150,obGfx(a0)	; Set sprite tile ID
		move.b	#0,obPriority(a0)	; Set priority
		move.w	#$7F,obX(a0)	; Set X position
		move.w	#$7F,obY(a0)	; Set Y position
		move.b	#1,obRoutine(a0)
.Skip
		jmp	DisplaySprite

; -------------------------------------------------------------------------
; Banner mappings
; -------------------------------------------------------------------------

MapSpr_Banner:
		include	"_maps/Title Screen Banner.asm"
		even

; -------------------------------------------------------------------------
