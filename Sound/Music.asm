; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)
; ---------------------------------------------------------------------------
; byte_71A94: SpeedUpIndex:
MusicIndex:
ptr_mus01:	SMPS_MUSIC_METADATA	EmeraldIsland1, s1TempotoS3($07), 0	; EIZ1
ptr_mus02:	SMPS_MUSIC_METADATA	EmeraldIsland2, s1TempotoS3($0C), 0	; EIZ2
ptr_mus03:	SMPS_MUSIC_METADATA	EmeraldIsland3, s1TempotoS3($1D), 0	; EIZ3
ptr_mus04:	SMPS_MUSIC_METADATA	BossTheme, s1TempotoS3($07), 0	; Boss
ptr_mus05:	SMPS_MUSIC_METADATA	AmyBossTheme, s1TempotoS3($2B), 0	; Boss (Amy)
ptr_mus06:	SMPS_MUSIC_METADATA	BurningTemple1, s1TempotoS3($12), 0	; BTZ1
ptr_mus07:	SMPS_MUSIC_METADATA	BurningTemple2, s1TempotoS3($07), 0	; BTZ2
ptr_mus08:	SMPS_MUSIC_METADATA	BurningTemple3, s1TempotoS3($12), 0	; BTZ3
ptr_mus09:	SMPS_MUSIC_METADATA	OptionsMenu, s1TempotoS3($0F), 0	; Options
ptr_mus0A:	SMPS_MUSIC_METADATA	BumpingCity1, s1TempotoS3($07), 0	; BCZ1
ptr_mus0B:	SMPS_MUSIC_METADATA	BumpingCity2, s1TempotoS3($46), 0	; BCZ2
ptr_mus0C:	SMPS_MUSIC_METADATA	BumpingCity3, s1TempotoS3($2A), 0	; BCZ3
ptr_mus0D:	SMPS_MUSIC_METADATA	SpecialStage, s1TempotoS3($05), 0	; Special stage
ptr_mus0E:	SMPS_MUSIC_METADATA	HydroPalace1, s1TempotoS3($4B), 0	; SPZ1
ptr_mus0F:	SMPS_MUSIC_METADATA	HydroPalace2, s1TempotoS3($07), 0	; SPZ2
ptr_mus10:	SMPS_MUSIC_METADATA	HydroPalace3, s1TempotoS3($20), 0	; SPZ3
ptr_mus11:	SMPS_MUSIC_METADATA	ActClear, s1TempotoS3($2A), 0	; Act completed
ptr_mus12:	SMPS_MUSIC_METADATA	ActClearAmy, s1TempotoS3($2A), 0	; Act completed (Amy)
ptr_mus13:	SMPS_MUSIC_METADATA	SpeedyPark1, s1TempotoS3($07), 0	; SPA1
ptr_mus14:	SMPS_MUSIC_METADATA	SpeedyPark2, s1TempotoS3($0A), 0	; SPA2
ptr_mus15:	SMPS_MUSIC_METADATA	SpeedyPark3, s1TempotoS3($12), 0	; SPA3
ptr_mus16:	SMPS_MUSIC_METADATA	Sonic1up, s1TempotoS3($0A), 0	; Extra Life
ptr_mus17:	SMPS_MUSIC_METADATA	Amy1up, s1TempotoS3($0A), 0	; Extra Life (Amy)
ptr_mus18:	SMPS_MUSIC_METADATA	MechaFortress1, s1TempotoS3($06), 0	; HLZ1
ptr_mus19:	SMPS_MUSIC_METADATA	MechaFortress2, s1TempotoS3($05), 0	; HLZ2
ptr_mus1A:	SMPS_MUSIC_METADATA	MechaFortress3, s1TempotoS3($20), 0	; HLZ3
ptr_mus1B:	SMPS_MUSIC_METADATA	FinalBattle, s1TempotoS3($05), 0 	; FBZ
ptr_mus1C:	SMPS_MUSIC_METADATA	SonicInvinc, s1TempotoS3($FF), 0	; Invincible
ptr_mus1D:	SMPS_MUSIC_METADATA	AmyInvinc, s1TempotoS3($FF), 0	; Invincible (Amy)
ptr_mus1E:	SMPS_MUSIC_METADATA	TitleScreen, s1TempotoS3($05), 0	; Title Screen
ptr_mus1F:	SMPS_MUSIC_METADATA	TutorialZone, s1TempotoS3($0F), 0	; Tutorial Zone
ptr_mus20:	SMPS_MUSIC_METADATA	SuperTheme, s1TempotoS3($05), 0	; Super Theme
ptr_mus21:	SMPS_MUSIC_METADATA	CreditsTheme, s1TempotoS3($0A), 0	; Credits
ptr_mus22:	SMPS_MUSIC_METADATA	GameOverTheme, s1TempotoS3($13), 0	; Game Over
ptr_mus23:	SMPS_MUSIC_METADATA	ChaosEmerald, s1TempotoS3($10), 0	; Emerald
ptr_mus24:	SMPS_MUSIC_METADATA	Drowning, s1TempotoS3($02), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Drowning
ptr_mus25:	SMPS_MUSIC_METADATA	ContinueScreen, s1TempotoS3($07), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Continue
ptr_mus26:	SMPS_MUSIC_METADATA	SEGASound, s1TempotoS3($13), 0	; SEGA
ptr_mus27:	SMPS_MUSIC_METADATA	MFZ2Cutscene, s1TempotoS3($0F), 0	; Cutscene
ptr_mus28:	SMPS_MUSIC_METADATA	UnrealBattle, s1TempotoS3($05), 0 	; Unreal Battle Zone
ptr_mus29:	SMPS_MUSIC_METADATA	TrainAssault, s1TempotoS3($05), 0 	; Train Assault Zone
ptr_mus2A:	SMPS_MUSIC_METADATA	TeamEncore, s1TempotoS3($05), 0 	; Team Encore Screen
ptr_mus2B:	SMPS_MUSIC_METADATA	SpecialStageClear, s1TempotoS3($05), 0 	; Special Stage Clear
ptr_musend

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------
EmeraldIsland1:	include		"Sound/Music/Emerald Island Act 1.asm"
		even
EmeraldIsland2		include		"Sound/Music/Emerald Island Act 2.asm"
		even
EmeraldIsland3:	include		"Sound/Music/Emerald Island Act 3.asm"
		even
BossTheme:	include		"Sound/Music/Boss Theme.asm"
		even
AmyBossTheme:	include		"Sound/Music/Boss Theme 2.asm"
		even
BurningTemple1:	include		"Sound/Music/Burning Temple Act 1.asm"
		even
BurningTemple2:	include		"Sound/Music/Burning Temple Act 2.asm"
		even
BurningTemple3:	include		"Sound/Music/Burning Temple Act 3.asm"
		even
OptionsMenu:	include		"Sound/Music/Options Menu.asm"
		even
BumpingCity1:	include		"Sound/Music/Bumping City Act 1.asm"
		even
BumpingCity2:	include		"Sound/Music/Bumping City Act 2.asm"
		even
BumpingCity3:	include		"Sound/Music/Bumping City Act 3.asm"
		even
SpecialStage:	include		"Sound/Music/Special Stages.asm"
		even
HydroPalace1:	include		"Sound/Music/Sunked Palace Act 1.asm"
		even
HydroPalace2:	include		"Sound/Music/Sunked Palace Act 2.asm"
		even
HydroPalace3:	include		"Sound/Music/Sunked Palace Act 3.asm"
		even
ActClear:	include		"Sound/Music/Act Clear.asm"
		even
ActClearAmy:	include		"Sound/Music/Act Clear 2.asm"
		even
SpeedyPark1:	include		"Sound/Music/Speedy Park Act 1.asm"
		even
SpeedyPark2:	include		"Sound/Music/Speedy Park Act 2.asm"
		even
SpeedyPark3:	include		"Sound/Music/Speedy Park Act 3.asm"
		even
Sonic1up:	include		"Sound/Music/Extra Life.asm"
		even
Amy1up:	include		"Sound/Music/Extra Life 2.asm"
		even
MechaFortress1:	include		"Sound/Music/Hidden Lab Act 1.asm"
		even
MechaFortress2:	include		"Sound/Music/Hidden Lab Act 2.asm"
		even
MechaFortress3:	include		"Sound/Music/Hidden Lab Act 3.asm"
		even
FinalBattle:	include		"Sound/Music/Final Battle.asm"
		even
SonicInvinc:	include		"Sound/Music/Invincibility.asm"
		even
AmyInvinc:	include		"Sound/Music/Invincibility Amy.asm"
		even
TitleScreen:	include		"Sound/Music/Title Screen.asm"
		even
TutorialZone:	include		"Sound/Music/Tutorial Zone.asm"
		even
SuperTheme:	include		"Sound/Music/Super Theme.asm"
		even
CreditsTheme:	include		"Sound/Music/Credits Theme.asm"
		even
GameOverTheme:	include		"Sound/Music/Game Over.asm"
		even
ChaosEmerald:	include		"Sound/Music/Get Emerald.asm"
		even
Drowning:	include		"Sound/Music/Drowning.asm"
		even
ContinueScreen:	include		"Sound/Music/Continue.asm"
		even
SEGASound:	include		"Sound/Music/Sega Sound.asm"
		even
MFZ2Cutscene:	include		"Sound/Music/MFZ2 Cutscene.asm"
		even
UnrealBattle:	include		"Sound/Music/Unreal Battle.asm"
		even
TrainAssault:	include		"Sound/Music/Train Assault Zone.asm"
		even
TeamEncore:	include		"Sound/Music/Team Encore Screen.asm"
		even
SpecialStageClear:	include		"Sound/Music/Special Stage Clear.asm"
		even