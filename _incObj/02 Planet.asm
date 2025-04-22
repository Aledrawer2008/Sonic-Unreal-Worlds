; -------------------------------------------------------------------------
; Sonic CD (1993) Disassembly
; By Devon Artmeier
; -------------------------------------------------------------------------
; Planet object (title screen)
; -------------------------------------------------------------------------

obPlanetOff	equ	$30			; Offset
obPlanetDelay	equ	$31			; Delay counter
obPlanetY	equ	$32			; Y position

; -------------------------------------------------------------------------

Planet:
		tst.b	obRoutine(a0)
		bne.s	.Main
		addq.b	#1,obRoutine(a0)
		move.b	#6,obPriority(a0)
		move.l	#Map_Planet,obMap(a0)		; Set mappings
		move.w	#$150,obGfx(a0)	; Set sprite tile ID
		move.b	#%1,obRender(a0)	; Set flags
		move.w	#$180,obX(a0)	; Set X position
		move.w	#$80,obScreenY(a0)	; Set Y position
		move.w	obScreenY(a0),obPlanetY(a0)

; -------------------------------------------------------------------------

.Main:
		addi.b	#$40,obPlanetDelay(a0)		; Increment delay counter
		bcc.s	.Exit				; If it hasn't overflowed, branch

		moveq	#0,d0				; Get offset value
		move.b	obPlanetOff(a0),d0
		move.b	.Offsets(pc,d0.w),d0
		ext.w	d0
		add.w	d0,obScreenY(a0)

		move.b	obPlanetOff(a0),d0		; Next offset
		addq.b	#1,d0
		andi.b	#$1F,d0
		move.b	d0,obPlanetOff(a0)

.Exit:
		jmp	DisplaySprite

; -------------------------------------------------------------------------

.Offsets:
		dc.b	0, 0, 0, -1
		dc.b	0, 0, 0, -1
		dc.b	0, 0, 0, -1
		dc.b	0, 0, 0, 0
		dc.b	0, 0, 0, 0
		dc.b	1, 0, 0, 0
		dc.b	1, 0, 0, 0
		dc.b	1, 0, 0, 0

; -------------------------------------------------------------------------
; Planet mappings
; -------------------------------------------------------------------------

Map_Planet:
		include	"_maps/Planet.asm"
		even

; -------------------------------------------------------------------------
