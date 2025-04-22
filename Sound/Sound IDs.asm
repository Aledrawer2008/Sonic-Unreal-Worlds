; ---------------------------------------------------------------------------
; Sound IDs
; ---------------------------------------------------------------------------
; Background music
offset :=	MusicIndex
ptrsize :=	4
idstart :=	1
; $00 is reserved for silence

bgm__First = idstart
bgm_EIZ1 =		SMPS_id(ptr_mus01)
bgm_EIZ2 =		SMPS_id(ptr_mus02)
bgm_EIZ3 =		SMPS_id(ptr_mus03)
bgm_EGG =		SMPS_id(ptr_mus04)
bgm_EGG2 =		SMPS_id(ptr_mus05)
bgm_BTZ1 =		SMPS_id(ptr_mus06)
bgm_BTZ2 =		SMPS_id(ptr_mus07)
bgm_BTZ3 =		SMPS_id(ptr_mus08)
bgm_Options =		SMPS_id(ptr_mus09)
bgm_BCZ1 =		SMPS_id(ptr_mus0A)
bgm_BCZ2 =		SMPS_id(ptr_mus0B)
bgm_BCZ3 =		SMPS_id(ptr_mus0C)
bgm_NewSS =		SMPS_id(ptr_mus0D)
bgm_SPZ1 =		SMPS_id(ptr_mus0E)
bgm_SPZ2 =		SMPS_id(ptr_mus0F)
bgm_SPZ3 =		SMPS_id(ptr_mus10)
bgm_ActClear =		SMPS_id(ptr_mus11)
bgm_ActClearAlt =	SMPS_id(ptr_mus12)
bgm_SPA1 =		SMPS_id(ptr_mus13)
bgm_SPA2 =		SMPS_id(ptr_mus14)
bgm_SPA3 =		SMPS_id(ptr_mus15)
bgm_ExtraLife =		SMPS_id(ptr_mus16)
bgm_ExtraLifeAmy =	SMPS_id(ptr_mus17)
bgm_HLZ1 =		SMPS_id(ptr_mus18)
bgm_HLZ2 =		SMPS_id(ptr_mus19)
bgm_HLZ3 =		SMPS_id(ptr_mus1A)
bgm_FBZ =		SMPS_id(ptr_mus1B)
bgm_Invincible =	SMPS_id(ptr_mus1C)
bgm_InvincibleB =	SMPS_id(ptr_mus1D)
bgm_Title =		SMPS_id(ptr_mus1E)
bgm_Tutorial =		SMPS_id(ptr_mus1F)
bgm_SuperTheme =	SMPS_id(ptr_mus20)
bgm_Credits =		SMPS_id(ptr_mus21)
bgm_GameOver =		SMPS_id(ptr_mus22)
bgm_Emerald =		SMPS_id(ptr_mus23)
bgm_Drowning =		SMPS_id(ptr_mus24)
bgm_Continue =		SMPS_id(ptr_mus25)
bgm_Sega =		SMPS_id(ptr_mus26)
bgm_Cutscene =		SMPS_id(ptr_mus27)
bgm_UBZ =		SMPS_id(ptr_mus28)
bgm_TAZ =       SMPS_id(ptr_mus29)
bgm_Encore =        SMPS_id(ptr_mus2A)
bgm_SSClear =        SMPS_id(ptr_mus2B)
bgm__Last =		SMPS_id(ptr_musend)-1


; Sound effects
offset :=	SoundIndex
ptrsize :=	4
idstart :=	$80

sfx__First = idstart
sfx_Jump =			SMPS_id(ptr_sndA0)
sfx_Lamppost =		SMPS_id(ptr_sndA1)
sfx_Transform =		SMPS_id(ptr_sndA2)
sfx_Death =			SMPS_id(ptr_sndA3)
sfx_Skid =			SMPS_id(ptr_sndA4)
sfx_A5 =				SMPS_id(ptr_sndA5)
sfx_HitSpikes =		SMPS_id(ptr_sndA6)
sfx_Push =			SMPS_id(ptr_sndA7)
sfx_SSGoal =			SMPS_id(ptr_sndA8)
sfx_SSItem =			SMPS_id(ptr_sndA9)
sfx_Splash =			SMPS_id(ptr_sndAA)
sfx_AB =				SMPS_id(ptr_sndAB)
sfx_HitBoss =			SMPS_id(ptr_sndAC)
sfx_Bubble =			SMPS_id(ptr_sndAD)
sfx_Fireball =			SMPS_id(ptr_sndAE)
sfx_Shield =			SMPS_id(ptr_sndAF)
sfx_Saw =			SMPS_id(ptr_sndB0)
sfx_Electric =			SMPS_id(ptr_sndB1)
sfx_Drown =			SMPS_id(ptr_sndB2)
sfx_Flamethrower =	SMPS_id(ptr_sndB3)
sfx_Bumper =		SMPS_id(ptr_sndB4)
sfx_Ring =			SMPS_id(ptr_sndB5)
sfx_SpikesMove =		SMPS_id(ptr_sndB6)
sfx_Rumbling =		SMPS_id(ptr_sndB7)
sfx_Spindash =		SMPS_id(ptr_sndB8)
sfx_Collapse =		SMPS_id(ptr_sndB9)
sfx_SSGlass =		SMPS_id(ptr_sndBA)
sfx_Door =			SMPS_id(ptr_sndBB)
sfx_Teleport =		SMPS_id(ptr_sndBC)
sfx_ChainStomp =		SMPS_id(ptr_sndBD)
sfx_Roll =			SMPS_id(ptr_sndBE)
sfx_Continue =		SMPS_id(ptr_sndBF)
sfx_Basaran =		SMPS_id(ptr_sndC0)
sfx_BreakItem =		SMPS_id(ptr_sndC1)
sfx_Warning =		SMPS_id(ptr_sndC2)
sfx_GiantRing =		SMPS_id(ptr_sndC3)
sfx_Bomb =			SMPS_id(ptr_sndC4)
sfx_Cash =			SMPS_id(ptr_sndC5)
sfx_RingLoss =		SMPS_id(ptr_sndC6)
sfx_ChainRise =		SMPS_id(ptr_sndC7)
sfx_Burning =		SMPS_id(ptr_sndC8)
sfx_Bonus =			SMPS_id(ptr_sndC9)
sfx_EnterSS =		SMPS_id(ptr_sndCA)
sfx_WallSmash =		SMPS_id(ptr_sndCB)
sfx_Spring =			SMPS_id(ptr_sndCC)
sfx_Switch =			SMPS_id(ptr_sndCD)
sfx_RingLeft =		SMPS_id(ptr_sndCE)
sfx_Signpost =		SMPS_id(ptr_sndCF)
sfx_DropDash =		SMPS_id(ptr_sndD2)
sfx_CDCharge =		SMPS_id(ptr_sndD3)
sfx_CDRelease =		SMPS_id(ptr_sndD4)
sfx_CDStop =		SMPS_id(ptr_sndD5)
sfx__Last =			SMPS_id(ptr_sndend)-1


; Special sound effects
offset :=	SpecSoundIndex
ptrsize :=	4
idstart :=	sfx__Last+1

spec__First = idstart
sfx_Waterfall =		SMPS_id(ptr_sndD0)
spec__Last =			SMPS_id(ptr_specend)-1


; Sound commands
offset :=	Sound_ExIndex
ptrsize :=	2
idstart :=	$FA

flg__First = idstart
sfx_Fade =			SMPS_id(ptr_flgFA)
bgm_Fade =			SMPS_id(ptr_flgFB)
sfx_Sega =			SMPS_id(ptr_flgFC)
bgm_Speedup =		SMPS_id(ptr_flgFD)
bgm_Slowdown =		SMPS_id(ptr_flgFE)
bgm_Stop =			SMPS_id(ptr_flgFF)
flg__Last =			SMPS_id(ptr_flgend)-1
