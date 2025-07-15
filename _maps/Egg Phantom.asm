; --------------------------------------------------------------------------------
; Sprite mappings - output from ClownMapEd - MapMacros format
; --------------------------------------------------------------------------------

.offsets:	mappingsTable
	mappingsTableEntry.w	.frame0
	mappingsTableEntry.w	.frame1
	mappingsTableEntry.w	.frame2
	mappingsTableEntry.w	.frame3
	mappingsTableEntry.w	.frame4

.frame0:	spriteHeader
.frame0_End

.frame1:	spriteHeader
	spritePiece -24, -32, 2, 4, 4, 0, 0, 0, 0
	spritePiece 32, -32, 4, 4, 40, 0, 0, 0, 0
	spritePiece -32, -8, 1, 1, 3, 0, 0, 0, 0
	spritePiece 64, -32, 4, 4, 60, 0, 0, 0, 0
	spritePiece 64, 0, 4, 1, 76, 0, 0, 0, 0
	spritePiece -32, 0, 4, 1, 16, 0, 0, 0, 0
	spritePiece -8, -32, 1, 4, 12, 0, 0, 0, 0
	spritePiece 0, 0, 4, 1, 36, 0, 0, 0, 0
	spritePiece 32, 0, 4, 1, 56, 0, 0, 0, 0
	spritePiece 0, -32, 4, 4, 20, 0, 0, 0, 0
.frame1_End

.frame2:	spriteHeader
	spritePiece -8, -16, 4, 2, 80, 0, 0, 0, 0
	spritePiece 24, -16, 3, 2, 88, 0, 0, 0, 0
	spritePiece 48, -16, 1, 2, 94, 0, 0, 0, 0
.frame2_End

.frame3:	spriteHeader
	spritePiece -8, -16, 4, 2, 80, 0, 0, 0, 0
	spritePiece 24, -16, 3, 2, 88, 0, 0, 0, 0
	spritePiece 48, -16, 3, 2, 96, 0, 0, 0, 0
.frame3_End

.frame4:	spriteHeader
	spritePiece 8, -24, 4, 4, 102, 0, 0, 0, 0
	spritePiece 24, -12, 4, 4, 102, 0, 0, 0, 0
.frame4_End

	even
