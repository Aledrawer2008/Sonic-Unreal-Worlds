; ---------------------------------------------------------------------------
; Palette pointers
; ---------------------------------------------------------------------------

palp:	macro paladdress,ramaddress,colours
	dc.l paladdress
	dc.w ramaddress, (colours>>1)-1
	endm

PalPointers:

; palette address, RAM address, colours

ptr_Pal_SegaBG:		palp	Pal_SegaBG,v_pal_dry,$40		; 0 - Sega logo
ptr_Pal_TEncore:		palp	Pal_TEncore,v_pal_dry,$40		; 1 - Team Encore screen
ptr_Pal_LevelSel:	palp	Pal_LevelSel,v_pal_dry,$40	; 2 - level select
ptr_Pal_Sonic:		palp	Pal_Sonic,v_pal_dry,$10		; 3 - Sonic
Pal_Levels:
ptr_Pal_GHZ:		palp	Pal_GHZ,v_pal_dry+$20, $30	; 4 - GHZ
ptr_Pal_LZ:		palp	Pal_LZ,v_pal_dry+$20,$30	; 5 - LZ
ptr_Pal_MZ:		palp	Pal_MZ,v_pal_dry+$20,$30	; 6 - MZ
ptr_Pal_SLZ:		palp	Pal_SLZ,v_pal_dry+$20,$30	; 7 - SLZ
ptr_Pal_SYZ:		palp	Pal_SYZ,v_pal_dry+$20,$30	; 8 - SYZ
ptr_Pal_SBZ1:		palp	Pal_SBZ1,v_pal_dry+$20,$30	; 9 - SBZ1
			zonewarning Pal_Levels,8
ptr_Pal_Special:	palp	Pal_Special,v_pal_dry,$40	; $A (10) - special stage
ptr_Pal_SSResult:	palp	Pal_SSResult,v_pal_dry,$40	; $B (11) - special stage results
ptr_Pal_Continue:	palp	Pal_Continue,v_pal_dry,$20	; $C (12) - special stage results continue
ptr_Pal_Ending:		palp	Pal_Ending,v_pal_dry,$40	; $D (13) - ending sequence
ptr_Pal_Amy:		palp	Pal_Amy,v_pal_dry,$10		; $E (14) - Amy
ptr_Pal_BZ:			palp	Pal_BZ,v_pal_dry+$20, $30	; $F (15) - Tutorial
ptr_Pal_SpecialAmy:	palp	Pal_SpecialAmy,v_pal_dry,$40	; $10 (16) - special stage
ptr_Pal_ContinueAlt:	palp	Pal_ContinueAlt,v_pal_dry,$20	; $11 (17) - special stage results continue
ptr_Pal_SonAmy:		palp	Pal_SonAmy,v_pal_dry,$20	; $12 (18) - Sonic & Amy
ptr_Pal_UBZ:		palp	Pal_UBZ,v_pal_dry+$20,$30	; $13 (19) - UBZ
ptr_Pal_TAZ:		palp	Pal_TAZ,v_pal_dry+$20,$30	; $14 (20) - TAZ
ptr_Pal_SBZ3:		palp	Pal_SBZ3,v_pal_dry+$20,$30	; $15 (21) - SBZ3
ptr_Pal_SBZ2:		palp	Pal_SBZ2,v_pal_dry+$20,$30	; $16 (22) - SBZ2
			even


palid_SegaBG:		equ (ptr_Pal_SegaBG-PalPointers)/8
palid_TEncore:		equ (ptr_Pal_TEncore-PalPointers)/8
palid_LevelSel:		equ (ptr_Pal_LevelSel-PalPointers)/8
palid_Sonic:		equ (ptr_Pal_Sonic-PalPointers)/8
palid_GHZ:		equ (ptr_Pal_GHZ-PalPointers)/8
palid_LZ:		equ (ptr_Pal_LZ-PalPointers)/8
palid_MZ:		equ (ptr_Pal_MZ-PalPointers)/8
palid_SLZ:		equ (ptr_Pal_SLZ-PalPointers)/8
palid_SYZ:		equ (ptr_Pal_SYZ-PalPointers)/8
palid_SBZ1:		equ (ptr_Pal_SBZ1-PalPointers)/8
palid_Special:		equ (ptr_Pal_Special-PalPointers)/8
palid_SSResult:		equ (ptr_Pal_SSResult-PalPointers)/8
palid_Continue:		equ (ptr_Pal_Continue-PalPointers)/8
palid_Ending:		equ (ptr_Pal_Ending-PalPointers)/8
palid_Amy:		equ (ptr_Pal_Amy-PalPointers)/8
palid_BZ:		equ (ptr_Pal_BZ-PalPointers)/8
palid_SpecialAmy:		equ (ptr_Pal_SpecialAmy-PalPointers)/8
palid_ContinueAlt:		equ (ptr_Pal_ContinueAlt-PalPointers)/8
palid_SonAmy:		equ (ptr_Pal_SonAmy-PalPointers)/8
palid_UBZ:		equ (ptr_Pal_UBZ-PalPointers)/8
palid_TAZ:		equ (ptr_Pal_TAZ-PalPointers)/8
palid_SBZ3:		equ (ptr_Pal_SBZ3-PalPointers)/8
palid_SBZ2:		equ (ptr_Pal_SBZ2-PalPointers)/8
