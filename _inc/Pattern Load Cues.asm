; ---------------------------------------------------------------------------
; Pattern load cues
; ---------------------------------------------------------------------------
ArtLoadCues:

ptr_PLC_Main:		dc.w PLC_Main-ArtLoadCues
ptr_PLC_Main2:		dc.w PLC_Main2-ArtLoadCues
ptr_PLC_Explode:	dc.w PLC_Explode-ArtLoadCues
ptr_PLC_GameOver:	dc.w PLC_GameOver-ArtLoadCues
PLC_Levels:
ptr_PLC_GHZ:		dc.w PLC_GHZ-ArtLoadCues
ptr_PLC_GHZ2:		dc.w PLC_GHZ2-ArtLoadCues
ptr_PLC_LZ:		dc.w PLC_LZ-ArtLoadCues
ptr_PLC_LZ2:		dc.w PLC_LZ2-ArtLoadCues
ptr_PLC_MZ:		dc.w PLC_MZ-ArtLoadCues
ptr_PLC_MZ2:		dc.w PLC_MZ2-ArtLoadCues
ptr_PLC_SLZ:		dc.w PLC_SLZ-ArtLoadCues
ptr_PLC_SLZ2:		dc.w PLC_SLZ2-ArtLoadCues
ptr_PLC_SYZ:		dc.w PLC_SYZ-ArtLoadCues
ptr_PLC_SYZ2:		dc.w PLC_SYZ2-ArtLoadCues
ptr_PLC_SBZ:		dc.w PLC_SBZ-ArtLoadCues
ptr_PLC_SBZ2:		dc.w PLC_SBZ2-ArtLoadCues
			zonewarning PLC_Levels,4
ptr_PLC_TeamEncore:	dc.w PLC_TeamEncore-ArtLoadCues
ptr_PLC_Boss:		dc.w PLC_Boss-ArtLoadCues
ptr_PLC_Boss2:		dc.w PLC_Boss2-ArtLoadCues
ptr_PLC_SpecialStage:	dc.w PLC_SpecialStage-ArtLoadCues
PLC_Animals:
ptr_PLC_GHZAnimals:	dc.w PLC_GHZAnimals-ArtLoadCues
ptr_PLC_LZAnimals:	dc.w PLC_LZAnimals-ArtLoadCues
ptr_PLC_MZAnimals:	dc.w PLC_MZAnimals-ArtLoadCues
ptr_PLC_SLZAnimals:	dc.w PLC_SLZAnimals-ArtLoadCues
ptr_PLC_SYZAnimals:	dc.w PLC_SYZAnimals-ArtLoadCues
ptr_PLC_SBZAnimals:	dc.w PLC_SBZAnimals-ArtLoadCues
			zonewarning PLC_Animals,2
ptr_PLC_SSResult:	dc.w PLC_SSResult-ArtLoadCues
ptr_PLC_Ending:		dc.w PLC_Ending-ArtLoadCues
ptr_PLC_TryAgain:	dc.w PLC_TryAgain-ArtLoadCues
ptr_PLC_EggmanSBZ2:	dc.w PLC_EggmanSBZ2-ArtLoadCues
ptr_PLC_FZBoss:		dc.w PLC_FZBoss-ArtLoadCues
ptr_PLC_UBZ:		dc.w PLC_UBZ-ArtLoadCues
ptr_PLC_EggBg:		dc.w PLC_EggBg-ArtLoadCues
ptr_PLC_Train:		dc.w PLC_Train-ArtLoadCues

plcm:	macro gfx,vram
	dc.l gfx
	dc.w vram
	endm

; ---------------------------------------------------------------------------
; Pattern load cues - standard block for Sonic
; ---------------------------------------------------------------------------
PLC_Main:	dc.w ((PLC_Mainend-PLC_Main-2)/6)-1
		plcm	Nem_Lamp, $D740		; lamppost
		plcm	Nem_Hud, $A820		; HUD
		plcm	Nem_Lives, $FA80	; lives	counter
        plcm    Nem_Sparkles, $F780 ; ring sparkles
PLC_Mainend:
; ---------------------------------------------------------------------------
; Pattern load cues - standard block for Amy Rose
; ---------------------------------------------------------------------------
PLC_Main2:	dc.w ((PLC_Main2end-PLC_Main2-2)/6)-1
		plcm	Nem_Lamp, $D740		; lamppost
		plcm	Nem_Hud, $A820		; HUD
		plcm	Nem_LivesAlt, $FA80	; lives	counter
        plcm    Nem_Sparkles, $F780 ; ring sparkles
PLC_Main2end:
; ---------------------------------------------------------------------------
; Pattern load cues - explosion
; ---------------------------------------------------------------------------
PLC_Explode:	dc.w ((PLC_Explodeend-PLC_Explode-2)/6)-1
		plcm	Nem_Explode, $B400	; explosion
PLC_Explodeend:
; ---------------------------------------------------------------------------
; Pattern load cues - game/time	over
; ---------------------------------------------------------------------------
PLC_GameOver:	dc.w ((PLC_GameOverend-PLC_GameOver-2)/6)-1
		plcm	Nem_GameOver, $ABC0	; game/time over
PLC_GameOverend:
; ---------------------------------------------------------------------------
; Pattern load cues - Green Hill
; ---------------------------------------------------------------------------
PLC_GHZ:	dc.w ((PLC_GHZ2-PLC_GHZ-2)/6)-1
		plcm	Nem_Stalk, $6B00	; flower stalk
		plcm	Nem_PplRock, $7A00	; purple rock
		plcm	Nem_Crabmeat, $8000	; crabmeat enemy
		plcm	Nem_Buzz, $8880		; buzz bomber enemy
		plcm	Nem_Chopper, $8F60	; chopper enemy
		plcm	Nem_Newtron, $9360	; newtron enemy
		plcm	Nem_Motobug, $9E00	; motobug enemy
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring
		plcm	Nem_Boosters, $8E20	; boosters

PLC_GHZ2:	dc.w ((PLC_GHZ2end-PLC_GHZ2-2)/6)-1
		plcm	Nem_Swing, $7000	; swinging platform
		plcm	Nem_Bridge, $71C0	; bridge
		plcm	Nem_SpikePole, $7300	; spiked pole
		plcm	Nem_Ball, $7540		; giant	ball
		plcm	Nem_GhzWall1, $A1E0	; breakable wall
		plcm	Nem_GhzWall2, $6980	; normal wall
		plcm	Nem_Monitors, $D000	; monitors
		plcm	Nem_Platforms, $4600	; platforms

PLC_GHZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Labyrinth
; ---------------------------------------------------------------------------
PLC_LZ:		dc.w ((PLC_LZ2-PLC_LZ-2)/6)-1
		plcm	Nem_LzBlock1, $3C00	; block
		plcm	Nem_LzBlock2, $3E00	; blocks
		plcm	Nem_Splash, $4B20	; waterfalls and splash
		plcm	Nem_Water, $6000	; water	surface
		plcm	Nem_LzSpikeBall, $6200	; spiked ball
		plcm	Nem_FlapDoor, $6500	; flapping door
		plcm	Nem_Bubbles, $6900	; bubbles and numbers
		plcm	Nem_LzBlock3, $7780	; block
		plcm	Nem_LzDoor1, $7880	; vertical door
		plcm	Nem_Harpoon, $7980	; harpoon
		plcm	Nem_Burrobot, $94C0	; burrobot enemy

PLC_LZ2:	dc.w ((PLC_LZ2end-PLC_LZ2-2)/6)-1
		plcm	Nem_LzPole, $7BC0	; pole that breaks
		plcm	Nem_LzDoor2, $7CC0	; large	horizontal door
		plcm	Nem_LzWheel, $7EC0	; wheel
		plcm	Nem_Gargoyle, $5D20	; gargoyle head
		plcm	Nem_LzPlatfm, $89E0	; rising platform
		plcm	Nem_Orbinaut, $8CE0	; orbinaut enemy
		plcm	Nem_Jaws, $90C0		; jaws enemy
		plcm	Nem_LzSwitch, $A1E0	; switch
		plcm	Nem_Cork, $A000		; cork block
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring
		plcm	Nem_Monitors, $D000	; monitors
PLC_LZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Marble
; ---------------------------------------------------------------------------
PLC_MZ:		dc.w ((PLC_MZ2-PLC_MZ-2)/6)-1
		plcm	Nem_MzMetal, $6000	; metal	blocks
		plcm	Nem_MzFire, $68A0	; fireballs
		plcm	Nem_Swing, $7000	; swinging platform
		plcm	Nem_MzGlass, $71C0	; green	glassy block
		plcm	Nem_Lava, $7500		; lava
		plcm	Nem_Buzz, $8880		; buzz bomber enemy
		plcm	Nem_Basaran, $9700	; basaran enemy
		plcm	Nem_Cater, $9FE0	; caterkiller enemy

PLC_MZ2:	dc.w ((PLC_MZ2end-PLC_MZ2-2)/6)-1
		plcm	Nem_MzSwitch, $A260	; switch
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring
		plcm	Nem_MzBlock, $5700	; green	stone block
		plcm	Nem_MzWalls, $A1E0	; breakable wall
		plcm	Nem_Monitors, $D000	; monitors
PLC_MZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Star Light
; ---------------------------------------------------------------------------
PLC_SLZ:	dc.w ((PLC_SLZ2-PLC_SLZ-2)/6)-1
		plcm	Nem_Bomb, $8000		; bomb enemy
		plcm	Nem_Orbinaut, $8520	; orbinaut enemy
		plcm	Nem_MzFire, $9000	; fireballs
		plcm	Nem_SlzBlock, $9C00	; block
		plcm	Nem_SlzWall, $A260	; breakable wall
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring

PLC_SLZ2:	dc.w ((PLC_SLZ2end-PLC_SLZ2-2)/6)-1
		plcm	Nem_Seesaw, $6E80	; seesaw
		plcm	Nem_Fan, $7400		; fan
		plcm	Nem_Pylon, $7980	; foreground pylon
		plcm	Nem_SlzSwing, $7B80	; swinging platform
		plcm	Nem_Splats, $8900	; Splats
		plcm	Nem_SlzCannon, $9B00	; fireball launcher
		plcm	Nem_SlzSpike, $9E00	; spikeball
		plcm	Nem_Monitors, $D000	; monitors
PLC_SLZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Spring Yard
; ---------------------------------------------------------------------------
PLC_SYZ:	dc.w ((PLC_SYZ2-PLC_SYZ-2)/6)-1
		plcm	Nem_Crabmeat, $8000	; crabmeat enemy
		plcm	Nem_Buzz, $8880		; buzz bomber enemy
		plcm	Nem_Yadrin, $8F60	; yadrin enemy
		plcm	Nem_Roller, $9700	; roller enemy
		plcm	Nem_Monitors, $D000	; monitors
		plcm	Nem_Boosters, $7800	; boosters

PLC_SYZ2:	dc.w ((PLC_SYZ2end-PLC_SYZ2-2)/6)-1
		plcm	Nem_Bumper, $7000	; bumper
		plcm	Nem_SyzSpike1, $72C0	; large	spikeball
		plcm	Nem_SyzSpike2, $7740	; small	spikeball
		plcm	Nem_Cater, $9FE0	; caterkiller enemy
		plcm	Nem_LzSwitch, $A1E0	; switch
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring
PLC_SYZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Scrap Brain
; ---------------------------------------------------------------------------
PLC_SBZ:	dc.w ((PLC_SBZ2-PLC_SBZ-2)/6)-1
		plcm	Nem_Stomper, $5800	; moving platform and stomper
		plcm	Nem_SbzDoor1, $5D00	; door
		plcm	Nem_Girder, $5E00	; girder
		plcm	Nem_BallHog, $6040	; ball hog enemy
		plcm	Nem_SbzWheel1, $6880	; spot on large	wheel
		plcm	Nem_SbzWheel2, $6900	; wheel	that grabs Sonic
		plcm	Nem_SyzSpike1, $7220	; large	spikeball
		plcm	Nem_Cutter, $76A0	; pizza	cutter
		plcm	Nem_FlamePipe, $7B20	; flaming pipe
		plcm	Nem_SbzFloor, $7EA0	; collapsing floor
		plcm	Nem_SbzBlock, $9860	; vanishing block
		plcm	Nem_Monitors, $D000	; monitors

PLC_SBZ2:	dc.w ((PLC_SBZ2end-PLC_SBZ2-2)/6)-1
		plcm	Nem_Cater, $5600	; caterkiller enemy
		plcm	Nem_Bomb, $8000		; bomb enemy
		plcm	Nem_Orbinaut, $8520	; orbinaut enemy
		plcm	Nem_SlideFloor, $8C00	; floor	that slides away
		plcm	Nem_SbzDoor2, $8DE0	; horizontal door
		plcm	Nem_Electric, $8FC0	; electric orb
		plcm	Nem_TrapDoor, $9240	; trapdoor
		plcm	Nem_SbzFloor, $7F20	; collapsing floor
		plcm	Nem_SpinPform, $9BE0	; small	spinning platform
		plcm	Nem_LzSwitch, $A1E0	; switch
		plcm	Nem_Spikes, $A360	; spikes
		plcm	Nem_HSpring, $A460	; horizontal spring
		plcm	Nem_VSpring, $A660	; vertical spring
PLC_SBZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - Team Encore Screen Stuff
; ---------------------------------------------------------------------------
PLC_TeamEncore:	dc.w ((PLC_TeamEncoreend-PLC_TeamEncore-2)/6)-1
		plcm	Nem_RingFire, $4000
PLC_TeamEncoreend:
; ---------------------------------------------------------------------------
; Pattern load cues - act 3 boss
; ---------------------------------------------------------------------------
PLC_Boss:	dc.w ((PLC_Bossend-PLC_Boss-2)/6)-1
		plcm	Nem_Eggman, $8000	; Eggman main patterns
		plcm	Nem_Weapons, $8D80	; Eggman's weapons
		plcm	Nem_Prison, $93A0	; prison capsule
		plcm	Nem_SlzSpike, $A300	; spikeball (SLZ boss)
		plcm	Nem_Exhaust, $A540	; exhaust flame
PLC_Bossend:
; ---------------------------------------------------------------------------
; Pattern load cues - act 3 boss (Alternative)
; ---------------------------------------------------------------------------
PLC_Boss2:	dc.w ((PLC_Boss2end-PLC_Boss2-2)/6)-1
		plcm	Nem_AltEggman, $8000	; Eggman main patterns
		plcm	Nem_Weapons, $8D80	; Eggman's weapons
		plcm	Nem_Prison, $93A0	; prison capsule
		plcm	Nem_SlzSpike, $A300	; spikeball ((SLZ boss)
		plcm	Nem_Exhaust, $A540	; exhaust flame
PLC_Boss2end:
; ---------------------------------------------------------------------------
; Pattern load cues - special stage
; ---------------------------------------------------------------------------
PLC_SpecialStage:	dc.w ((PLC_SpeStageend-PLC_SpecialStage-2)/6)-2
		plcm	Nem_SSBgCloud, 0	; bubble and cloud background
		plcm	Nem_Hud, $3A40		; HUD
		plcm	Nem_Lives, $45E0	; lives
		plcm	Nem_Bumper, $4760	; bumper
		plcm	Nem_SSGOAL, $4A20	; GOAL block
		plcm	Nem_SSUpDown, $4C60	; UP and DOWN blocks
		plcm	Nem_SSRBlock, $5E00	; R block
		plcm	Nem_SS1UpBlock, $6E00	; 1UP block
		plcm	Nem_SSEmStars, $7E00	; emerald collection stars
		plcm	Nem_SSRedWhite, $8E00	; red and white	block
		plcm	Nem_SSGhost, $9E00	; ghost	block
		plcm	Nem_SSWBlock, $AE00	; W block
		plcm	Nem_SSGlass, $BE00	; glass	block
		plcm	Nem_SSEmerald, $EE00	; emeralds
		plcm	Nem_SSZone1, $F2E0	; ZONE 1 block
		plcm	Nem_SSZone2, $F400	; ZONE 2 block
		plcm	Nem_SSZone3, $F520	; ZONE 3 block
PLC_SpeStageend:
; ---------------------------------------------------------------------------
; Pattern load cues - GHZ animals
; ---------------------------------------------------------------------------
PLC_GHZAnimals:	dc.w ((PLC_GHZAnimalsend-PLC_GHZAnimals-2)/6)-1
		plcm	Nem_Rabbit, $B000	; rabbit
		plcm	Nem_Flicky, $B240	; flicky
PLC_GHZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - LZ animals
; ---------------------------------------------------------------------------
PLC_LZAnimals:	dc.w ((PLC_LZAnimalsend-PLC_LZAnimals-2)/6)-1
		plcm	Nem_BlackBird, $B000	; blackbird
		plcm	Nem_Seal, $B240		; seal
PLC_LZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - MZ animals
; ---------------------------------------------------------------------------
PLC_MZAnimals:	dc.w ((PLC_MZAnimalsend-PLC_MZAnimals-2)/6)-1
		plcm	Nem_Squirrel, $B000	; squirrel
		plcm	Nem_Seal, $B240		; seal
PLC_MZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - SLZ animals
; ---------------------------------------------------------------------------
PLC_SLZAnimals:	dc.w ((PLC_SLZAnimalsend-PLC_SLZAnimals-2)/6)-1
		plcm	Nem_Pig, $B000		; pig
		plcm	Nem_Flicky, $B240	; flicky
PLC_SLZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - SYZ animals
; ---------------------------------------------------------------------------
PLC_SYZAnimals:	dc.w ((PLC_SYZAnimalsend-PLC_SYZAnimals-2)/6)-1
		plcm	Nem_Pig, $B000		; pig
		plcm	Nem_Chicken, $B240	; chicken
PLC_SYZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - SBZ animals
; ---------------------------------------------------------------------------
PLC_SBZAnimals:	dc.w ((PLC_SBZAnimalsend-PLC_SBZAnimals-2)/6)-1
		plcm	Nem_Rabbit, $B000		; rabbit
		plcm	Nem_Chicken, $B240	; chicken
PLC_SBZAnimalsend:
; ---------------------------------------------------------------------------
; Pattern load cues - special stage results screen
; ---------------------------------------------------------------------------
PLC_SSResult:dc.w ((PLC_SpeStResultend-PLC_SSResult-2)/6)-1
		plcm	Nem_ResultEm, $A820	; emeralds
		plcm	Nem_MiniSonic, $AA20	; mini Sonic
		plcm	Nem_Hud_Old, $D940		; Old HUD
PLC_SpeStResultend:
; ---------------------------------------------------------------------------
; Pattern load cues - ending sequence
; ---------------------------------------------------------------------------
PLC_Ending:	dc.w ((PLC_Endingend-PLC_Ending-2)/6)-1
		plcm	Nem_Stalk, $6B00	; flower stalk
		plcm	Nem_EndFlower, $7400	; flowers
		plcm	Nem_EndEm, $78A0	; emeralds
		plcm	Nem_Rabbit, $AA60	; rabbit
		plcm	Nem_Chicken, $ACA0	; chicken
		plcm	Nem_BlackBird, $AE60	; blackbird
		plcm	Nem_Seal, $B0A0		; seal
		plcm	Nem_Pig, $B260		; pig
		plcm	Nem_Flicky, $B4A0	; flicky
		plcm	Nem_Squirrel, $B660	; squirrel
PLC_Endingend:
; ---------------------------------------------------------------------------
; Pattern load cues - "TRY AGAIN" and "END" screens
; ---------------------------------------------------------------------------
PLC_TryAgain:	dc.w ((PLC_TryAgainend-PLC_TryAgain-2)/6)-1
		plcm	Nem_EndEm, $78A0	; emeralds
		plcm	Nem_TryAgain, $7C20	; Eggman
PLC_TryAgainend:
; ---------------------------------------------------------------------------
; Pattern load cues - Eggman on SBZ 2
; ---------------------------------------------------------------------------
PLC_EggmanSBZ2:	dc.w ((PLC_EggmanSBZ2end-PLC_EggmanSBZ2-2)/6)-1
		plcm	Nem_SbzBlock, $A300	; block
		plcm	Nem_Sbz2Eggman, $8000	; Eggman
		plcm	Nem_LzSwitch, $9400	; switch
PLC_EggmanSBZ2end:
; ---------------------------------------------------------------------------
; Pattern load cues - final boss
; ---------------------------------------------------------------------------
PLC_FZBoss:	dc.w ((PLC_FZBossend-PLC_FZBoss-2)/6)-1
		plcm	Nem_FzEggman, $7400	; Eggman after boss
		plcm	Nem_FzBoss, $6000	; FZ boss
		plcm	Nem_Eggman, $8000	; Eggman main patterns
		plcm	Nem_Sbz2Eggman, $8E00	; Eggman without ship
		plcm	Nem_Exhaust, $A540	; exhaust flame
PLC_FZBossend:
; ---------------------------------------------------------------------------
; Pattern load cues - Unreal Battle Zone's Boss
; ---------------------------------------------------------------------------
PLC_UBZ:	dc.w ((PLC_UBZend-PLC_UBZ-2)/6)-1
		plcm	Nem_EggPhantom, $8000	; Head, flames and Missiles
PLC_UBZend:
; ---------------------------------------------------------------------------
; Pattern load cues - Eggman at the cutscene of Final Battle Zone
; ---------------------------------------------------------------------------
PLC_EggBg:	dc.w ((PLC_EggBgend-PLC_EggBg-2)/6)-1
		plcm	Nem_EggmanBg, $7400	; Eggman
PLC_EggBgend:
; ---------------------------------------------------------------------------
; Pattern load cues - Train Assault Zone
; ---------------------------------------------------------------------------
PLC_Train:	dc.w ((PLC_Trainend-PLC_Train-2)/6)-1
		plcm	Nem_TrainBoss, $8000	; The train
		plcm	Nem_SlzSpike, $A300	; spikeball
PLC_Trainend:
; ---------------------------------------------------------------------------
; Pattern load cue IDs
; ---------------------------------------------------------------------------
plcid_Main:		equ (ptr_PLC_Main-ArtLoadCues)/2	; 0
plcid_Main2:		equ (ptr_PLC_Main2-ArtLoadCues)/2	; 1
plcid_Explode:		equ (ptr_PLC_Explode-ArtLoadCues)/2	; 2
plcid_GameOver:		equ (ptr_PLC_GameOver-ArtLoadCues)/2	; 3
plcid_GHZ:		equ (ptr_PLC_GHZ-ArtLoadCues)/2		; 4
plcid_GHZ2:		equ (ptr_PLC_GHZ2-ArtLoadCues)/2	; 5
plcid_LZ:		equ (ptr_PLC_LZ-ArtLoadCues)/2		; 6
plcid_LZ2:		equ (ptr_PLC_LZ2-ArtLoadCues)/2		; 7
plcid_MZ:		equ (ptr_PLC_MZ-ArtLoadCues)/2		; 8
plcid_MZ2:		equ (ptr_PLC_MZ2-ArtLoadCues)/2		; 9
plcid_SLZ:		equ (ptr_PLC_SLZ-ArtLoadCues)/2		; $A
plcid_SLZ2:		equ (ptr_PLC_SLZ2-ArtLoadCues)/2	; $B
plcid_SYZ:		equ (ptr_PLC_SYZ-ArtLoadCues)/2		; $C
plcid_SYZ2:		equ (ptr_PLC_SYZ2-ArtLoadCues)/2	; $D
plcid_SBZ:		equ (ptr_PLC_SBZ-ArtLoadCues)/2		; $E
plcid_SBZ2:		equ (ptr_PLC_SBZ2-ArtLoadCues)/2	; $F
plcid_TeamEncore:	equ (ptr_PLC_TeamEncore-ArtLoadCues)/2	; $10
plcid_Boss:		equ (ptr_PLC_Boss-ArtLoadCues)/2	; $11
plcid_BossAlt:		equ (ptr_PLC_Boss2-ArtLoadCues)/2	; $12
plcid_SpecialStage:	equ (ptr_PLC_SpecialStage-ArtLoadCues)/2 ; $13
plcid_GHZAnimals:	equ (ptr_PLC_GHZAnimals-ArtLoadCues)/2	; $14
plcid_LZAnimals:	equ (ptr_PLC_LZAnimals-ArtLoadCues)/2	; $15
plcid_MZAnimals:	equ (ptr_PLC_MZAnimals-ArtLoadCues)/2	; $16
plcid_SLZAnimals:	equ (ptr_PLC_SLZAnimals-ArtLoadCues)/2	; $17
plcid_SYZAnimals:	equ (ptr_PLC_SYZAnimals-ArtLoadCues)/2	; $18
plcid_SBZAnimals:	equ (ptr_PLC_SBZAnimals-ArtLoadCues)/2	; $19
plcid_SSResult:		equ (ptr_PLC_SSResult-ArtLoadCues)/2	; $1A
plcid_Ending:		equ (ptr_PLC_Ending-ArtLoadCues)/2	; $1B
plcid_TryAgain:		equ (ptr_PLC_TryAgain-ArtLoadCues)/2	; $1C
plcid_EggmanSBZ2:	equ (ptr_PLC_EggmanSBZ2-ArtLoadCues)/2	; $1D
plcid_FZBoss:		equ (ptr_PLC_FZBoss-ArtLoadCues)/2	; $1E
plcid_UBZ:		equ (ptr_PLC_UBZ-ArtLoadCues)/2		; $1F
plcid_EggBg:		equ (ptr_PLC_EggBg-ArtLoadCues)/2	; $20
plcid_Train:		equ (ptr_PLC_Train-ArtLoadCues)/2	; $21