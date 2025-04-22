; --------------------------------------------------------------------------------
; Sprite mappings - output from ClownMapEd - MapMacros format
; --------------------------------------------------------------------------------

.offsets:	mappingsTable
	mappingsTableEntry.w	.frame0
	mappingsTableEntry.w	.frame1

.frame0:	spriteHeader
	spritePiece -32, -12, 3, 4, 0, 0, 0, 0, 0
	spritePiece -8, -12, 2, 4, 4, 0, 0, 0, 0
	spritePiece 8, -12, 2, 4, 4, 0, 0, 0, 0
	spritePiece 24, -12, 1, 4, 12, 0, 0, 0, 0
.frame0_End

.frame1:	spriteHeader
	spritePiece -32, -12, 4, 4, 16, 0, 0, 0, 0
	spritePiece -32, 4, 4, 4, 32, 0, 0, 0, 0
	spritePiece -32, 36, 4, 4, 32, 0, 0, 0, 0
	spritePiece -32, 68, 4, 4, 32, 0, 0, 0, 0
	spritePiece -32, 100, 4, 4, 32, 0, 0, 0, 0
	spritePiece 0, -12, 4, 4, 16, 1, 0, 0, 0
	spritePiece 0, 4, 4, 4, 32, 1, 0, 0, 0
	spritePiece 0, 36, 4, 4, 32, 1, 0, 0, 0
	spritePiece 0, 68, 4, 4, 32, 1, 0, 0, 0
	spritePiece 0, 100, 4, 4, 32, 1, 0, 0, 0
.frame1_End

	even
