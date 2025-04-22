; ---------------------------------------------------------------------------
; Level Headers
; ---------------------------------------------------------------------------

LevelHeaders:

lhead:	macro plc1,lvlgfx,plc2,sixteen,twofivesix,music,pal
	dc.l (plc1<<24)+lvlgfx
	dc.l (plc2<<24)+sixteen
	dc.l twofivesix
	dc.b 0, music, pal, pal
	endm

; 1st PLC, level gfx (unused), 2nd PLC, 16x16 data, 256x256 data,
; music (unused), palette (unused), palette

;			1st PLC					2nd PLC					256x256 data			palette
;						level gfx*				16x16 data				music*

    lhead    plcid_GHZ,    Kos_GHZ,    plcid_GHZ2,    Blk16_GHZ,    Blk256_GHZ,    bgm_EIZ1,    palid_GHZ    ; Green Hill Act 1
    lhead    plcid_GHZ,    Kos_GHZ,    plcid_GHZ2,    Blk16_GHZ,    Blk256_GHZ,    bgm_EIZ1,    palid_GHZ    ; Act 2
    lhead    plcid_GHZ,    Kos_GHZ,    plcid_GHZ2,    Blk16_GHZ,    Blk256_GHZ,    bgm_EIZ1,    palid_GHZ    ; Act 3
    lhead    plcid_GHZ,    Kos_GHZ,    plcid_GHZ2,    Blk16_BZ,    Blk256_BZ,    bgm_EIZ1,    palid_BZ    ; Tutorial
    lhead    plcid_LZ,    Kos_LZ,        plcid_LZ2,    Blk16_LZ,    Blk256_LZ,    bgm_SPZ1,        palid_LZ    ; Labyrinth Act 1
    lhead    plcid_LZ,    Kos_LZ,        plcid_LZ2,    Blk16_LZ,    Blk256_LZ,    bgm_SPZ1,        palid_LZ    ; Act 2
    lhead    plcid_LZ,    Kos_LZ,        plcid_LZ2,    Blk16_LZ,    Blk256_LZ,    bgm_SPZ1,        palid_LZ    ; Act 3
    lhead    plcid_GHZ,   Kos_OgGHZ,     plcid_GHZ2,   Blk16_ogGHZ, Blk256_ogGHZ, bgm_SPZ1,        palid_SBZ3    ; Scrap Brain Act 3
    lhead    plcid_MZ,    Kos_MZ,        plcid_MZ2,    Blk16_MZ,    Blk256_MZ,    bgm_BTZ1,        palid_MZ    ; Marble Act 1
    lhead    plcid_MZ,    Kos_MZ,        plcid_MZ2,    Blk16_MZ,    Blk256_MZ,    bgm_BTZ1,        palid_MZ    ; Act 2
    lhead    plcid_MZ,    Kos_MZ,        plcid_MZ2,    Blk16_MZ,    Blk256_MZ,    bgm_BTZ1,        palid_MZ    ; Act 3
    lhead    plcid_MZ,    Kos_MZ,        plcid_MZ2,    Blk16_MZ,    Blk256_MZ,    bgm_BTZ1,        palid_MZ    ; Act 4 (Unused)
    lhead    plcid_SLZ,    Kos_SLZ,    plcid_SLZ2,    Blk16_SLZ,    Blk256_SLZ,    bgm_SPA1,    palid_SLZ    ; Star Light Act 1
    lhead    plcid_SLZ,    Kos_SLZ,    plcid_SLZ2,    Blk16_SLZ,    Blk256_SLZ,    bgm_SPA1,    palid_SLZ    ; Act 2
    lhead    plcid_SLZ,    Kos_SLZ,    plcid_SLZ2,    Blk16_SLZ,    Blk256_SLZ,    bgm_SPA1,    palid_SLZ    ; Act 3
    lhead    plcid_SLZ,    Kos_TAZ,    plcid_SLZ2,    Blk16_TAZ,    Blk256_TAZ,    bgm_SPA1,    palid_TAZ    ; Train Assault
    lhead    plcid_SYZ,    Kos_SYZ,    plcid_SYZ2,    Blk16_SYZ,    Blk256_SYZ,    bgm_BCZ1,    palid_SYZ    ; Spring Yard Act 1
    lhead    plcid_SYZ,    Kos_SYZ,    plcid_SYZ2,    Blk16_SYZ,    Blk256_SYZ,    bgm_BCZ1,    palid_SYZ    ; Act 2
    lhead    plcid_SYZ,    Kos_SYZ,    plcid_SYZ2,    Blk16_SYZ,    Blk256_SYZ,    bgm_BCZ1,    palid_SYZ    ; Act 3
    lhead    plcid_SYZ,    Kos_SYZ,    plcid_SYZ2,    Blk16_SYZ,    Blk256_SYZ,    bgm_BCZ1,    palid_SYZ    ; Act 4 (Unused)
    lhead    plcid_SBZ,    Kos_SBZ,    plcid_SBZ2,    Blk16_SBZ,    Blk256_SBZ,    bgm_BTZ1,    palid_SBZ1    ; Scrap Brain Act 1
    lhead    plcid_SBZ,    Kos_SBZ,    plcid_SBZ2,    Blk16_SBZ,    Blk256_SBZ,    bgm_BTZ1,    palid_SBZ2    ; Act 2
    lhead    plcid_SBZ,    Kos_SBZ,    plcid_SBZ2,    Blk16_SBZ,    Blk256_SBZ,    bgm_FBZ,    palid_SBZ2    ; Final Zone
    lhead    plcid_UBZ,    Kos_UBZ,    0,       Blk16_UBZ,    Blk256_UBZ,    bgm_UBZ,     palid_UBZ    ; Unreal Battle
    lhead    0,        Kos_Ending,    0,        Blk16_End,    Blk256_End,    bgm_BTZ1,    palid_Ending    ; Ending Act 1
    lhead    0,        Kos_Ending,    0,        Blk16_End,    Blk256_End,    bgm_BTZ1,    palid_Ending    ; Act 2 (Unused)
    lhead    0,        Kos_Ending,    0,        Blk16_End,    Blk256_End,    bgm_BTZ1,    palid_Ending    ; Act 3 (Unused)
    lhead    0,        Kos_Ending,    0,        Blk16_End,    Blk256_End,    bgm_BTZ1,    palid_Ending    ; Act 4 (Unused)
    even

;	* music and level gfx are actually set elsewhere, so these values are useless