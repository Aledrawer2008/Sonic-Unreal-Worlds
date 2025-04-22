; ----------------------------------------------------------------------------
; Object 0F - Title screen menu
; ----------------------------------------------------------------------------
menuoptions = 2

PSBTM:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	PSBTM_Index(pc,d0.w),d1
		jsr	PSBTM_Index(pc,d1.w)
		jmp	DisplaySprite
; ===========================================================================
PSBTM_Index:
		dc.w	PSBTM_Init-PSBTM_Index	; 0
		dc.w	PSBTM_Main-PSBTM_Index	; 2
		dc.w	PSBTM_Mask-PSBTM_Index	; 4
		dc.w	PSBTM_None-PSBTM_Index	; 8
; ===========================================================================

PSBTM_Init:
		addq.b	#2,obRoutine(a0) ; => PSBTM_Main
		move.w	#128+320/2+16,obX(a0)
		move.w	#128+224/2+92,obScreenY(a0)
		move.l	#Map_Menu,obMap(a0)
		move.w	#$680,obGfx(a0)
		move.b	(Title_screen_option).w,obAnim(a0)

PSBTM_Main:
		moveq	#0,d2
		move.b	(Title_screen_option).w,d2
		move.b	(v_jpadpress1).w,d0
		btst	#bitUp,d0
		beq.s	.skip1
		subq.b	#1,d2
		bcc.s	.skip1
		move.b	#menuoptions-1,d2
.skip1:
		btst	#bitDn,d0
		beq.s	.skip2
		addq.b	#1,d2
		cmpi.b	#menuoptions,d2
		blo.s	.skip2
		moveq	#0,d2
.skip2:
		move.b	d2,obAnim(a0)
		move.b	d2,(Title_screen_option).w
		andi.b	#btnUp|btnDn,d0
		beq.s	.return	; skip sound
		move.b	#sfx_Switch,d0 ; selection beep sound
		jmp	(PlaySound).l
.return:
		lea	(Ani_Menu).l,a1
		jmp	AnimateSprite
; ===========================================================================

Ani_Menu:
		include	"_anim/Menu.asm"
; ===========================================================================

PSBTM_Mask:
		addq.b	#2,obRoutine(a0)	; dont repeat the init of the sprite
		move.l	#Map_Mask,obMap(a0)
		move.w	#0,obGfx(a0)
		move.b	#0,obFrame(a0)
		move.b	#0,obPriority(a0)
		move.w	#0,obX(a0)
		move.w	#232,obScreenY(a0)
PSBTM_None:
		rts
; ===========================================================================

Map_Mask:
		include	"_maps/Masking Sprite.asm"
		even
; ===========================================================================
