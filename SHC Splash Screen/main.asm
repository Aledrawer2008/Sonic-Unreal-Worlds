; ===========================================================================
; SHC Splash Screen v1.0.0 by Naoto_NTP
; ===========================================================================
; This is a re-implementation of the 'lite' SHC splash screen created
; by MarkeyJester for use in SHC entries from 2021-2023. 
;
; This new version is open-source and strives to minimize any disruptions that
; may arise from modifying the main program's state; it does not require any
; additional RAM beyond the stack and restores CPU registers to what they 
; are prior to running the splash screen. 
; 
; It also attempts to restore any VDP registers used by the splash screen to 
; their default value in the base mainline sonic games (S1-S3K). If you have 
; modified the VDP configuration in any way, you may need to modify this code
; to reflect those changes. See you next contest!
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Macros
; ---------------------------------------------------------------------------
SHC_intsOff	macro
		ori	#$700,sr		; disables CPU interrupts
		endm
; ---------------------------------------------------------------------------
SHC_intsOn	macro
		andi	#$F8FF,sr		; enables CPU interrupts
		endm
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Plane A nametable address VDP register value equates
; ---------------------------------------------------------------------------
SHC_frame0	equ ($6000>>10)			; address of the 1st splash screen animation frame (unlit sonic logo)
SHC_frame1	equ ($8000>>10)			; address of the 2nd splash screen animation frame (half-lit sonic logo)
SHC_frame2	equ ($A000>>10)			; address of the 3rd splash screen animation frame (fully-lit sonic logo)

SHC_gamePlnA	equ ($C000>>10)			; default address of the plane A nametable used in the main-line sonic games
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Program Entry Point (Run the Splash Screen)
; ---------------------------------------------------------------------------
SHC_RunSplash:
		SHC_intsOff			; disable interrupts
		movem.l	d0-a6,-(sp)		; back-up registers

		lea	(vdp_control_port).l,a6	; load the base address of the VDP ports into a6
		move.w	#$8134,(a6)		; disable display

		bsr.w	SHC_ClearScreen		; Clear VRAM, CRAM, and VSRAM
		
		move.w	#$8200+SHC_frame0,d5	; initialize the animation frame value
		move.w	d5,(a6)			; set the plane A nametable address to $6000

		lea	SHC_Art(pc),a0		; decompress the splash screen art
		moveq	#0,d7			; ^
		bsr.w	SHC_CompDec		; ^

		lea	SHC_Map(pc),a0		; decompress the splash screen nametables
		move.w	#$6000,d7		; ^
		bsr.w	SHC_CompDec		; ^

		move.w	#$8174,(a6)		; enable display
		
		moveq	#0,d6			; initialize the palette fade counter
		moveq	#20-1,d7		; set the duration of the fade in

.fadeIn:
		addq.w	#1,d6			; increment the palette fade counter
		bsr.s	SHC_UpdateScreen	; send the screen updates for this frame
		dbf	d7,.fadeIn		; loop until the screen has completely faded in from black

		lea	SHC_Anim(pc),a0		; load the address of the animation script into a0
		lea	(z80_port_1_data+1).l,a1; load the base address of the IO ports into a1

.loadAnim:
		clr.w	d7			; clear the frame duration counter
		move.b	(a0)+,d7		; load the duration of the current frame
		bmi.s	.endAnim		; if the duration's sign bit it set, we've reached the end; branch to fade-out
		move.b	(a0)+,d5		; otherwise, update the VDP register value of the next frame to display

.runAnim:
		bsr.s	SHC_UpdateScreen	; send the screen updates for this frame

		move.b	#0,(a1)			; request controller 1 input
		or.l	d0,d0			; wait 8 cycles
		btst.b	#5,(a1)			; is start pressed on controller 1?
		beq.s	.endAnim		; if so, skip to the fade out
		
		move.b	#0,2(a1)		; request controller 2 input
		or.l	d0,d0			; wait 8 cycles
		btst.b	#5,2(a1)		; is start pressed on controller 2?
		beq.s	.endAnim		; if so, skip to the fade out

		dbf	d7,.runAnim		; loop until the timer for this animation frame has expired
		bra.s	.loadAnim		; branch back and load the parameters for the next animation frame 

.endAnim:		
		move.w	d6,d7			; use the palette fade couter as the duration of the fade out

.fadeOut:
		subq.w	#1,d6			; decrement the palette fade counter
		bsr.s	SHC_UpdateScreen	; send the screen updates for this frame
		dbf	d7,.fadeOut		; loop until the screen has completely faded to black

		move.w	#$8200+SHC_gamePlnA,(a6); restore the plane A address to $C000 (default plane A address in S1, S2, and S3K)
		bsr.s	SHC_ClearScreen		; clear VRAM, CRAM, and VSRAM

		movem.l	(sp)+,d0-a6		; restore registers
		SHC_intsOn			; enable interrupts
		rts				; return to normal game execution
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Update The Screen
; ---------------------------------------------------------------------------
SHC_UpdateScreen:
		move.w	(a6),ccr		; is v-blank active?
		bpl.s	SHC_UpdateScreen	; if not, wait for it to start

		move.w	d5,(a6)			; update the animation frame (plane A nametable address)

.updatePalette:
		move.l	#$9400930A,(a6)		; set the DMA transfer size (10 colors)
		
		lea	SHC_Pal(pc),a5		; load the base address of the palette data (pc relative)
		move.l	a5,d0			; move the address to a data register so we can modify it
		add.l	d6,d0			; add the displacement specified by the fade counter
		lsr.l	#1,d0			; divide by two (also aligns the displacement to be even)

		move.w	#$9500,d1		; set the low byte of the transfer source address
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		lsr.l	#8,d0			; set the middle byte of the transfer source address
		move.w	#$9600,d1		; ^
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		lsr.l	#8,d0			; set the high byte of the transfer source address
		move.w	#$9700,d1		; ^
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		move.l	#$C0020080,(a6)		; set the destination palette index and begin the transfer

.waitForScan:	move.w	(a6),ccr		; is v-blank still active?
		bmi.s	.waitForScan		; if so, wait for active scan before returning
		rts				; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Clear The Screen
; ---------------------------------------------------------------------------
SHC_ClearScreen:
		move.w	#$8F01,(a6)		; set auto-incremement size to byte

		move.l	#$94FF93FF,(a6)		; Clear the VRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$40000080,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitVRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitVRAMClr		; if so, loop until DMA is complete

		move.l	#$9400937F,(a6)		; Clear the CRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$C0000080,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitCRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitCRAMClr		; if so, loop until DMA is complete

		move.l	#$9400935F,(a6)		; Clear the VSRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$40000090,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitVSRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitVSRAMClr		; if so, loop until DMA is complete

		move.w	#$8F02,(a6)		; set auto-incremement size to word
		rts				; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Modified COMPER Decompressor (allows for direct to VRAM decompression)
; ---------------------------------------------------------------------------
; INPUT:
;	a0  - Source (COMPER compressed data)
;	d7  - Destination VRAM Address
;
; USED:
;	d0-d3/d6-d7/a0
; ---------------------------------------------------------------------------
SHC_CompDec:
		move.w	#$8F02,(a6)		; set auto-incremement size to word
		
		bsr.s	.convertAddress		; build and send the VRAM write mode command
		ori.l	#$40000000,d6		; VRAM write mode
		move.l	d6,(a6)			; send the command to the VDP control port

; ---------------------------------------------------------------------------
.newBlock:	move.w	(a0)+,d0		; fetch description field
		moveq	#15,d3			; set bits counter to 16
 
.mainLoop:	add.w	d0,d0			; roll description field
		bcs.s	.flag			; if a flag issued, branch

		move.w	(a0)+,-4(a6)		; otherwise, move uncompressed data to vram
		addq.w	#2,d7			; increment the destination VRAM address
		dbf	d3,.mainLoop		; if bits counter remains, parse the next word
		bra.s	.newBlock		; start a new block 
; ---------------------------------------------------------------------------
.flag:		moveq	#-1,d1
		move.b	(a0)+,d1		; load displacement
		add.w	d1,d1
		add.w	d7,d1
		
		moveq	#0,d2
		move.b	(a0)+,d2		; load copy length
		beq.s	.end			; if zero, branch
		add.w	d2,d2
		bsr.s	.performCopy		; perform a VRAM copy DMA 

		add.w	d2,d7
		addq.w	#2,d7
		bsr.s	.convertAddress		; update our VRAM position
		ori.l	#$40000000,d6		; VRAM write mode
		move.l	d6,(a6)			; send the command to the VDP control port

		dbf	d3,.mainLoop		; if bits counter remains, parse the next word
		bra.s	.newBlock		; start a new block
; ---------------------------------------------------------------------------
.convertAddress:
		moveq	#0,d6			; initialize data register 6	[---- ---- ---- ---- ---- ---- ---- ----]
		move.w	d7,d6			; copy destination VRAM address	[---- ---- ---- ---- FEDC BA98 7654 3210]
		rol.l	#2,d6			; rotate left by two (long)	[---- ---- ---- --FE DCBA 9876 5432 10--]
		lsr.w	#2,d6			; shift right by two (word)	[---- ---- ---- --FE --DC BA98 7654 3210]
		swap	d6			; swap upper and lower words	[--DC BA98 7654 3210 ---- ---- ---- --FE]
.end:		rts
; ---------------------------------------------------------------------------
.performCopy:
		move.w	#$8F01,(a6)		; set auto-incremement size to byte

		move.w	#$9500,d6		; set the source address of the VRAM copy
		move.b	d1,d6
		move.w	d6,(a6)
		lsr.w	#8,d1
		move.l	#$97C09600,d6
		move.b	d1,d6
		move.l	d6,(a6)

		move.w	d2,d1			; set the length of the VRAM copy
		addq.w	#2,d1
		move.l	#$94009300,d6
		move.b	d1,d6
		lsr.w	#8,d1
		swap	d6
		move.b	d1,d6
		move.l	d6,(a6)

		bsr.s	.convertAddress		; convert the destination address of the VRAM copy to VDP command format
		ori.b	#$000000C0,d6		; apply the VDP command base for VRAM copy DMA
		move.l	d6,(a6)			; send the command to the VDP control port

.waitDMA:	move.w	(a6),ccr		; is the VRAM copy still in progress?
		bvs.s	.waitDMA		; if so, loop until the VRAM copy is complete

		move.w	#$8F02,(a6)		; restore auto-incremement size to word
		rts
; ---------------------------------------------------------------------------

SHC_Pal:	; the first set of entries are null on purpose to allow for a simpler fade-to/from-black logic
	dc.w	$000, $000, $000, $000, $000, $000, $000, $000, $000, $000
	dc.w	$200, $400, $600, $800, $A00, $C00, $E00, $E80, $EC8, $EEE

SHC_Anim:	; duration, frame
	dc.b	96-1, SHC_frame0
	
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	2-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	3-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	3-1, SHC_frame1
	dc.b	5-1, SHC_frame2
	dc.b	3-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame1
	dc.b	9-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	4-1, SHC_frame1
	dc.b	3-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame1
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	6-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1

	dc.b	96-1, SHC_frame2

	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	4-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	3-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	2-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	10-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame0

	dc.b	96-1, SHC_frame2

	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	4-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	2-1, SHC_frame0
	dc.b	4-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	3-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame2
	dc.b	2-1, SHC_frame0
	dc.b	4-1, SHC_frame2
	dc.b	1-1, SHC_frame1
	dc.b	3-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	5-1, SHC_frame2
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	2-1, SHC_frame0
	dc.b	1-1, SHC_frame1
	dc.b	1-1, SHC_frame0
	dc.b	1-1, SHC_frame2

	dc.b	96-1, SHC_frame0
	dc.b	-1, -1				; end flag

SHC_Art:	binclude "art.comp"
		even

SHC_Map:	binclude "map.comp"
		even