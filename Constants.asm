; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

; VDP addressses
vdp_data_port:		equ $C00000
vdp_control_port:	equ $C00004
vdp_counter:		equ $C00008

psg_input:		equ $C00011

; Z80 addresses
z80_ram:		equ $A00000	; start of Z80 RAM
z80_ram_end:		equ $A02000	; end of non-reserved Z80 RAM
z80_version:		equ $A10001
z80_port_1_data:	equ $A10002
z80_port_1_control:	equ $A10008
z80_port_2_control:	equ $A1000A
z80_expansion_control:	equ $A1000C
z80_bus_request:	equ $A11100
z80_reset:		equ $A11200
ym2612_a0:		equ $A04000
ym2612_d0:		equ $A04001
ym2612_a1:		equ $A04002
ym2612_d1:		equ $A04003

sram_port:			equ $A130F1

security_addr:		equ $A14000

; SRAM
sr_suw	= $01 				; text to indicate sonic unreal worlds save
sr_ver	= $09 				; version number
sr_header_end = $0C
; end of header ($0C)
sr_save	= $01				; flag to check if there is a save present
sr_zone = $03				; zone & act (2 bytes)
sr_act 	= $05
sr_char = $07				; save's character
sr_life = $09				; lives
sr_cont = $0B				; continues
sr_emer = $0D				; emeralds obtained (counter is counted from these)
sr_bitf = $0F               ; emerald bitfield
sr_lspe = $11				; last special stage

sr_size = $12				; size of each save

; VRAM data
vram_fg:	equ $C000	; foreground namespace
vram_bg:	equ $E000	; background namespace
vram_sonic:	equ $F000	; Sonic graphics
vram_sprites:	equ $F800	; sprite table
vram_hscroll:	equ $FC00	; horizontal scroll table
tile_size:					equ 8*8/2
plane_size_64x32:			equ 64*32*2

; Levels
id_GHZ:		equ 0
id_LZ:		equ 1
id_MZ:		equ 2
id_SLZ:		equ 3
id_SYZ:		equ 4
id_SBZ:		equ 5
id_UBZ:		equ $503
id_EndZ:	equ 6
id_SS:		equ 7

; Colours
cBlack:		equ $000		; colour black
cWhite:		equ $EEE		; colour white
cBlue:		equ $E00		; colour blue
cGreen:		equ $0E0		; colour green
cRed:		equ $00E		; colour red
cYellow:	equ cGreen+cRed		; colour yellow
cAqua:		equ cGreen+cBlue	; colour aqua
cMagenta:	equ cBlue+cRed		; colour magenta

; Joypad input
btnStart:	equ %10000000 ; Start button ($80)
btnA:		equ %01000000 ; A ($40)
btnC:		equ %00100000 ; C ($20)
btnB:		equ %00010000 ; B ($10)
btnR:		equ %00001000 ; Right ($08)
btnL:		equ %00000100 ; Left ($04)
btnDn:		equ %00000010 ; Down ($02)
btnUp:		equ %00000001 ; Up ($01)
btnDir:		equ %00001111 ; Any direction ($0F)
btnABC:		equ %01110000 ; A, B or C ($70)
bitStart:	equ 7
bitA:		equ 6
bitC:		equ 5
bitB:		equ 4
bitR:		equ 3
bitL:		equ 2
bitDn:		equ 1
bitUp:		equ 0

; Object variables
obRender:	equ 1	; bitfield for x/y flip, display mode
obGfx:		equ 2	; palette line & VRAM setting (2 bytes)
obMap:		equ 4	; mappings address (4 bytes)
obX:		equ 8	; x-axis position (2-4 bytes)
obScreenY:	equ $A	; y-axis position for screen-fixed items (2 bytes)
obY:		equ $C	; y-axis position (2-4 bytes)
obVelX:		equ $10	; x-axis velocity (2 bytes)
obVelY:		equ $12	; y-axis velocity (2 bytes)
obInertia:	equ $14	; potential speed (2 bytes)
obHeight:	equ $16	; height/2
obWidth:	equ $17	; width/2
obPriority:	equ $18	; sprite stack priority -- 0 is front
obActWid:	equ $19	; action width
obFrame:	equ $1A	; current frame displayed
obAniFrame:	equ $1B	; current frame in animation script
obAnim:		equ $1C	; current animation
obNextAni:	equ $1D	; next animation
obTimeFrame:	equ $1E	; time to next frame
obDelayAni:	equ $1F	; time to delay animation
obColType:	equ $20	; collision response type
obColProp:	equ $21	; collision extra property
obStatus:	equ $22	; orientation or mode
obRespawnNo:	equ $23	; respawn list index number
obRoutine:	equ $24	; routine number
ob2ndRout:	equ $25	; secondary routine number
obAngle:	equ $26	; angle
obSubtype:	equ $28	; object subtype
obSolid:	equ ob2ndRout ; solid status flag
obControl: 	equ $2A

; Object variables used by Sonic
flashtime:	equ $30	; time between flashes after getting hit
invtime:	equ $32	; time left for invincibility
shoetime:	equ $34	; time left for speed shoes
obOnWheel:	equ $38	; on convex wheel flag
obJumping:	equ $3C	; jumping flag
standonobject:	equ $3D	; object Sonic stands on

; Object variables (Sonic 2 disassembly nomenclature)
render_flags:	equ 1	; bitfield for x/y flip, display mode
art_tile:	equ 2	; palette line & VRAM setting (2 bytes)
mappings:	equ 4	; mappings address (4 bytes)
x_pos:		equ 8	; x-axis position (2-4 bytes)
y_pos:		equ $C	; y-axis position (2-4 bytes)
x_vel:		equ $10	; x-axis velocity (2 bytes)
y_vel:		equ $12	; y-axis velocity (2 bytes)
y_radius:	equ $16	; height/2
x_radius:	equ $17	; width/2
priority:	equ $18	; sprite stack priority -- 0 is front
width_pixels:	equ $19	; action width
mapping_frame:	equ $1A	; current frame displayed
anim_frame:	equ $1B	; current frame in animation script
anim:		equ $1C	; current animation
next_anim:	equ $1D	; next animation
anim_frame_duration: equ $1E ; time to next frame
collision_flags: equ $20 ; collision response type
collision_property: equ $21 ; collision extra property
status:		equ $22	; orientation or mode
respawn_index:	equ $23	; respawn list index number
routine:	equ $24	; routine number
routine_secondary: equ $25 ; secondary routine number
angle:		equ $26	; angle
subtype:	equ $28	; object subtype

; Miscellaneous object scratch-RAM
objoff_25:	equ $25
objoff_26:	equ $26
objoff_29:	equ $29
objoff_2A:	equ $2A
objoff_2B:	equ $2B
objoff_2C:	equ $2C
objoff_2E:	equ $2E
objoff_2F:	equ $2F
objoff_30:	equ $30
objoff_32:	equ $32
objoff_33:	equ $33
objoff_34:	equ $34
objoff_35:	equ $35
objoff_36:	equ $36
objoff_37:	equ $37
objoff_38:	equ $38
objoff_39:	equ $39
objoff_3A:	equ $3A
objoff_3B:	equ $3B
objoff_3C:	equ $3C
objoff_3D:	equ $3D
objoff_3E:	equ $3E
objoff_3F:	equ $3F

; Animation flags
afEnd:		equ $FF	; return to beginning of animation
afBack:		equ $FE	; go back (specified number) bytes
afChange:	equ $FD	; run specified animation
afRoutine:	equ $FC	; increment routine counter
afReset:	equ $FB	; reset animation and 2nd object routine counter
af2ndRoutine:	equ $FA	; increment 2nd routine counter

;New Variables/constants
TimeLimitInSpecialStagePinch: = $00001E00	; Format: $000MSSCC
TimeLimitInSpecialStageStart: = $00020000	; Format: $000MSSCC

CustomDemoDelayTime: = $FFFF

LostRingsFlashTime: = 80	; number of steps of life the rings need to have left before they start to flash.

object_size_bits:		equ 6
object_size:			equ 1<<object_size_bits

; Sonic's status bits (status)
staFacing:		equ 0 ; status Facing is cleared when facing right, and set when facing left.
staAir:			equ 1 ; status Air notes whether or not Sonic is in the air.
staSpin:		equ 2 ; status Spin notes whether or not Sonic is spinning.
staOnObj:		equ 3 ; status OnObj notes whether or not Sonic is standing on an object.
staRollJump:	equ 4 ; status RollJump notes whether or not Sonic is jumping from a roll. If so, he cannot control his trajectory.
staPush:		equ 5 ; status Push notes whether or not Sonic is pushing an object.
staWater:		equ 6 ; status Water is set when Sonic is in the water.
staSSJump:		equ 7 ; status SSJump is set when Sonic jumps in a Special Stage.
; Sonic's status masks
maskFacing:		equ 1<<staFacing		; $01
maskAir:		equ 1<<staAir			; $02
maskSpin:		equ 1<<staSpin			; $04
maskOnObj:		equ 1<<staOnObj			; $08
maskRollJump:	equ 1<<staRollJump		; $10
maskPush:		equ 1<<staPush			; $20
maskWater:		equ 1<<staWater			; $40

; Boss locations
; The main values are based on where the camera boundaries mainly lie
; The end values are where the camera scrolls towards after defeat
boss_ghz_x:	equ $2960		; Green Hill Zone
boss_ghz_y:	equ $300
boss_ghz_end:	equ boss_ghz_x+$160

boss_lz_x:	equ $1DE0		; Labyrinth Zone
boss_lz_y:	equ $C0
boss_lz_end:	equ boss_lz_x+$250

boss_mz_x:	equ $1800		; Marble Zone
boss_mz_y:	equ $210
boss_mz_end:	equ boss_mz_x+$160

boss_slz_x:	equ $2000		; Star Light Zone
boss_slz_y:	equ $210
boss_slz_end:	equ boss_slz_x+$160

boss_syz_x:	equ $2C00		; Spring Yard Zone
boss_syz_y:	equ $4CC
boss_syz_end:	equ boss_syz_x+$140

boss_sbz2_x:	equ $2050		; Scrap Brain Zone Act 2 Cutscene
boss_sbz2_y:	equ $510

boss_fz_x:	equ $2450		; Final Zone
boss_fz_y:	equ $510
boss_fz_end:	equ boss_fz_x+$2B0

boss_ubz_x:	equ $2960		; Green Hill Zone
boss_ubz_y:	equ $300
boss_ubz_end:	equ boss_ubz_x+$160

; Sonic frame IDs
fr_Null:	equ 0
fr_Stand:	equ 1
fr_Wait1:	equ 2
fr_Wait2:	equ 3
fr_Wait3:	equ 4
fr_LookUp1:	equ 5
fr_LookUp2:	equ 6
fr_Walk11:	equ 7
fr_Walk12:	equ 8
fr_Walk13:	equ 9
fr_Walk14:	equ $A
fr_Walk15:	equ $B
fr_Walk16:	equ $C
fr_Walk17:	equ $D
fr_Walk18:	equ $E
fr_Walk21:	equ $F
fr_Walk22:	equ $10
fr_Walk23:	equ $11
fr_Walk24:	equ $12
fr_Walk25:	equ $13
fr_Walk26:	equ $14
fr_Walk27:	equ $15
fr_Walk28:	equ $16
fr_Walk31:	equ $17
fr_Walk32:	equ $18
fr_Walk33:	equ $19
fr_Walk34:	equ $1A
fr_Walk35:	equ $1B
fr_Walk36:	equ $1C
fr_Walk37:	equ $1D
fr_Walk38:	equ $1E
fr_Walk41:	equ $1F
fr_Walk42:	equ $20
fr_Walk43:	equ $21
fr_Walk44:	equ $22
fr_Walk45:	equ $23
fr_Walk46:	equ $24
fr_Walk47:	equ $25
fr_Walk48:	equ $26
fr_Run11:	equ $27
fr_Run12:	equ $28
fr_Run13:	equ $29
fr_Run14:	equ $2A
fr_Run21:	equ $2B
fr_Run22:	equ $2C
fr_Run23:	equ $2D
fr_Run24:	equ $2E
fr_Run31:	equ $2F
fr_Run32:	equ $30
fr_Run33:	equ $31
fr_Run34:	equ $32
fr_Run41:	equ $33
fr_Run42:	equ $34
fr_Run43:	equ $35
fr_Run44:	equ $36
fr_Roll1:	equ $37
fr_Roll2:	equ $38
fr_Roll3:	equ $39
fr_Roll4:	equ $3A
fr_Roll5:	equ $3B
fr_Warp1:	equ $3C
fr_Warp2:	equ $3D
fr_Warp3:	equ $3E
fr_Warp4:	equ $3F
fr_Warp5:	equ $40
fr_Stop1:	equ $41
fr_Stop2:	equ $42
fr_Stop3:	equ $43
fr_Stop4:	equ $44
fr_Duck1:	equ $45
fr_Duck2:	equ $46
fr_Balance1:	equ $47
fr_Balance2:	equ $48
fr_Balance3:	equ $49
fr_Balance4:    equ $4A
fr_Balance5:    equ $4B
fr_Balance6:    equ $4C
fr_Balance7:    equ $4D
fr_Float1:	equ $4E
fr_Float2:	equ $4F
fr_Float3:	equ $50
fr_Float4:	equ $51
fr_Float5:	equ $52
fr_Float6:	equ $53
fr_Float7:	equ $54
fr_Float8:	equ $55
fr_Hang1:	equ $56
fr_Hang2:	equ $57
fr_Leap1:	equ $58
fr_Leap2:	equ $59
fr_Push1:	equ $5A
fr_Push2:	equ $5B
fr_Push3:	equ $5C
fr_Push4:	equ $5D
fr_Fall1:	equ $5E
fr_Fall2:	equ $5F
fr_Burnt:	equ $60
fr_Drown:	equ $61
fr_Death:	equ $62
fr_Shrink1:	equ $63
fr_Shrink2:	equ $64
fr_Shrink3:	equ $65
fr_Shrink4:	equ $66
fr_Shrink5:	equ $67
fr_Injury:	equ $68
fr_WaterSlide:	equ $69
fr_GetAir:	equ $6A
fr_Spindash1:	equ $6B
fr_Spindash2:	equ $6C
fr_Spindash3:	equ $6D
fr_Spindash4:	equ $6E
fr_Spindash5:	equ $6F
fr_Spindash6:	equ $70
fr_Victory1:	equ $71
fr_Victory2:	equ $72
fr_Victory3:	equ $73
fr_Victory4:	equ $74
fr_Twirl1:	equ $75
fr_Twirl2:	equ $76
fr_Twirl3:	equ $77
fr_Twirl4:	equ $78
fr_Twirl5:	equ $79
fr_GetUp:	equ $7A
fr_GiveUp1: equ $7B
fr_GiveUp2: equ $7C
fr_GiveUp3: equ $7D
fr_GiveUp4: equ $7E
fr_GiveUp5: equ $7F
fr_GiveUp6: equ $80

id_Walk:	equ (ptr_Walk-Ani_Sonic)/2	; 0
id_Run:		equ (ptr_Run-Ani_Sonic)/2	; 1
id_Roll:	equ (ptr_Roll-Ani_Sonic)/2	; 2
id_Roll2:	equ (ptr_Roll2-Ani_Sonic)/2	; 3
id_Push:	equ (ptr_Push-Ani_Sonic)/2	; 4
id_Wait:	equ (ptr_Wait-Ani_Sonic)/2	; 5
id_Balance:	equ (ptr_Balance-Ani_Sonic)/2   ; 6
id_LookUp:	equ (ptr_LookUp-Ani_Sonic)/2	; 7
id_Duck:	equ (ptr_Duck-Ani_Sonic)/2	; 8
id_Warp:	equ (ptr_Warp-Ani_Sonic)/2	; 9
id_GiveUp:	equ (ptr_GiveUp-Ani_Sonic)/2	; $A
id_Warp3:	equ (ptr_Warp3-Ani_Sonic)/2	; $B
id_Warp4:	equ (ptr_Warp4-Ani_Sonic)/2	; $C
id_Stop:	equ (ptr_Stop-Ani_Sonic)/2	; $D
id_Float1:	equ (ptr_Float1-Ani_Sonic)/2	; $E
id_Float2:	equ (ptr_Float2-Ani_Sonic)/2	; $F
id_Spring:	equ (ptr_Spring-Ani_Sonic)/2	; $10
id_Hang:	equ (ptr_Hang-Ani_Sonic)/2	; $11
id_Leap1:	equ (ptr_Leap1-Ani_Sonic)/2	; $12
id_Leap2:	equ (ptr_Leap2-Ani_Sonic)/2	; $13
id_Surf:	equ (ptr_Surf-Ani_Sonic)/2	; $14
id_GetAir:	equ (ptr_GetAir-Ani_Sonic)/2	; $15
id_Burnt:	equ (ptr_Burnt-Ani_Sonic)/2	; $16
id_Drown:	equ (ptr_Drown-Ani_Sonic)/2	; $17
id_Death:	equ (ptr_Death-Ani_Sonic)/2	; $18
id_Shrink:	equ (ptr_Shrink-Ani_Sonic)/2	; $19
id_Hurt:	equ (ptr_Hurt-Ani_Sonic)/2	; $1A
id_WaterSlide: equ (ptr_WaterSlide-Ani_Sonic)/2 ; $1B
id_Null:	equ (ptr_Null-Ani_Sonic)/2	; $1C
id_Float3:	equ (ptr_Float3-Ani_Sonic)/2	; $1D
id_Float4:	equ (ptr_Float4-Ani_Sonic)/2	; $1E
id_Spindash: equ (ptr_Spindash-Ani_Sonic)/2	; $1F
id_Balance2: equ (ptr_Balance2-Ani_Sonic)/2	; $1F
id_Peelout:	equ (ptr_Peelout-Ani_Sonic)/2	; $20

ArtTile_Level_Select_Font: equ $680
Level_Select_Font_Size: equ 42

Pal3_MenuTile_Raw: equ ArtTile_Level_Select_Font+$E000
Pal3_MenuTile: equ Pal3_MenuTile_Raw-$30
Pal4_MenuTile_Raw: equ ArtTile_Level_Select_Font+$C000
Pal4_MenuTile: equ Pal4_MenuTile_Raw-$30