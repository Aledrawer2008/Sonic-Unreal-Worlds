UnrealBattle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     UnrealBattle_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       UnrealBattle_DAC
	smpsHeaderFM        UnrealBattle_FM1,	$00, $00
	smpsHeaderFM        UnrealBattle_FM2,	$00, $00
	smpsHeaderFM        UnrealBattle_FM3,	$00, $00
	smpsHeaderFM        UnrealBattle_FM4,	$00, $00
	smpsHeaderFM        UnrealBattle_FM5,	$00, $00
	smpsHeaderPSG       UnrealBattle_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       UnrealBattle_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       UnrealBattle_PSG3,	$00, $00, $00, $00

; PSG3 Data
UnrealBattle_PSG3:
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop109:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop109
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop10A:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop10A
	smpsAlterNote       $00
	dc.b	nG2

UB_Sn1_Sn3_Loop10D:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop10B:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop10B
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop10C:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop10C
	smpsAlterNote       $00
	dc.b	nAb2
	smpsLoop            $01, $02, UB_Sn1_Sn3_Loop10D
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop10E:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop10E
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop10F:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop10F
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2, $01
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2, $04
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nAb2, $01, nRst, $04, nFs2

UB_Sn1_Sn3_Loop110:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UB_Sn1_Sn3_Loop110
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop111:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop111
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop112:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop112
	smpsAlterNote       $00
	dc.b	nG2

UB_Sn1_Sn3_Loop115:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop113:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop113
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop114:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop114
	smpsAlterNote       $00
	dc.b	nAb2
	smpsLoop            $01, $02, UB_Sn1_Sn3_Loop115
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop116:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop116
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop117:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop117
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2, $01
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2, $04
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nAb2, $01, nRst, $04, nFs2

UB_Sn1_Sn3_Loop118:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UB_Sn1_Sn3_Loop118
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nA2

UB_Sn1_Sn3_Jump07:
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop119:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop119
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop11A:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop11A
	smpsAlterNote       $00
	dc.b	nG2

UB_Sn1_Sn3_Loop11D:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop11B:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop11B
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop11C:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop11C
	smpsAlterNote       $00
	dc.b	nAb2
	smpsLoop            $01, $02, UB_Sn1_Sn3_Loop11D
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop11E:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop11E
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop11F:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop11F
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2, $01
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2, $04
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nAb2, $01, nRst, $04, nFs2

UB_Sn1_Sn3_Loop120:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UB_Sn1_Sn3_Loop120
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop121:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop121
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop122:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop122
	smpsAlterNote       $00
	dc.b	nG2

UB_Sn1_Sn3_Loop125:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop123:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop123
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop124:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop124
	smpsAlterNote       $00
	dc.b	nAb2
	smpsLoop            $01, $02, UB_Sn1_Sn3_Loop125
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nBb2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop126:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop126
	smpsAlterNote       $00
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2, nRst, $0A
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF

UB_Sn1_Sn3_Loop127:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsLoop            $00, $02, UB_Sn1_Sn3_Loop127
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2, $01
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2, $04
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nAb2, $01, nRst, $04, nFs2

UB_Sn1_Sn3_Loop128:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UB_Sn1_Sn3_Loop128
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nA2
	smpsPSGAlterVol     $05
	smpsJump            UB_Sn1_Sn3_Jump07


; FM1 Data
UnrealBattle_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $05
	smpsPan             panCenter, $00
	dc.b	nC3, $1E, nEb3, $05, nF3
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nC3, nC3, nB2, nBb2, $1E, $05, nEb3, nF3, $0A, nBb2, nBb2, nA2
	dc.b	nAb2, $1E, $05, nCs3, nEb3, $0A, nAb2, nAb2, nG2, nAb2, nEb3, $05
	dc.b	nA2, nEb3, $0A, nG2, nBb2, nF3, $05, nEb3, nF3, $14
	smpsAlterVol        $03
	dc.b	nA2, $0A, nC3, nE3, $0F, nC3, $05, nA2, $0A, nC3, nE3, nA2
	dc.b	nG2, nC3, nD3, $0F, $05, nG2, $0A, nC3, nD3, nEb3, nE3, nC3
	dc.b	nA2, nF2, nE3, nC3, nA2, nE2, nG2, nC3, nCs3, nF3
	smpsAlterNote       $FF
	dc.b	nG3, $0F
	smpsAlterNote       $00
	dc.b	nE3, $05, nA3, $0F, $05

UnrealBattle_LoopD4:
	dc.b	nF3, nAb3, nBb3
	smpsLoop            $00, $04, UnrealBattle_LoopD4
	dc.b	nF3, nAb3, nBb3, $0A

UnrealBattle_LoopD5:
	dc.b	nF3, $05, nBb3, nC4
	smpsLoop            $00, $04, UnrealBattle_LoopD5
	dc.b	nF3, nBb3, nC4, $0A

UnrealBattle_LoopD6:
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsLoop            $00, $04, UnrealBattle_LoopD6
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0A
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nC4, nEb4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nC4, nEb4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0F

UnrealBattle_LoopD7:
	dc.b	nF3, $05, nAb3, nBb3
	smpsLoop            $00, $04, UnrealBattle_LoopD7
	dc.b	nF3, nAb3, nBb3, $0A

UnrealBattle_LoopD8:
	dc.b	nF3, $05, nBb3, nC4
	smpsLoop            $00, $04, UnrealBattle_LoopD8
	dc.b	nF3, nBb3, nC4, $0A

UnrealBattle_LoopD9:
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsLoop            $00, $04, UnrealBattle_LoopD9
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0A
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nC4, nEb4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nC4, nEb4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A

UnrealBattle_LoopDA:
	dc.b	$05, nRst, nB3, $0A
	smpsLoop            $00, $04, UnrealBattle_LoopDA

UnrealBattle_LoopDB:
	dc.b	$05, nRst
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A
	smpsLoop            $00, $02, UnrealBattle_LoopDB
	smpsLoop            $01, $03, UnrealBattle_LoopDA

UnrealBattle_LoopDC:
	dc.b	$05, nRst, nB3, $0A
	smpsLoop            $00, $04, UnrealBattle_LoopDC
	dc.b	$05, nRst
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A, $05, nRst
	smpsAlterVol        $FD
	dc.b	nC3, $01

UnrealBattle_Jump05:
	dc.b	smpsNoAttack, nC3, $1D, nEb3, $05, nF3
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nC3, nC3, nB2, nBb2, $1E, $05, nEb3, nF3, $0A, nBb2, nBb2, nA2
	dc.b	nAb2, $1E, $05, nCs3, nEb3, $0A, nAb2, nAb2, nG2, nAb2, nEb3, $05
	dc.b	nA2, nEb3, $0A, nG2, nBb2, nF3, $05, nEb3, nF3, $14
	smpsAlterVol        $03
	dc.b	nA2, $0A, nC3, nE3, $0F, nC3, $05, nA2, $0A, nC3, nE3, nA2
	dc.b	nG2, nC3, nD3, $0F, $05, nG2, $0A, nC3, nD3, nEb3, nE3, nC3
	dc.b	nA2, nF2, nE3, nC3, nA2, nE2, nG2, nC3, nCs3, nF3
	smpsAlterNote       $FF
	dc.b	nG3, $0F
	smpsAlterNote       $00
	dc.b	nE3, $05, nA3, $0F, $05

UnrealBattle_LoopDD:
	dc.b	nF3, nAb3, nBb3
	smpsLoop            $00, $04, UnrealBattle_LoopDD
	dc.b	nF3, nAb3, nBb3, $0A

UnrealBattle_LoopDE:
	dc.b	nF3, $05, nBb3, nC4
	smpsLoop            $00, $04, UnrealBattle_LoopDE
	dc.b	nF3, nBb3, nC4, $0A

UnrealBattle_LoopDF:
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsLoop            $00, $04, UnrealBattle_LoopDF
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0A
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nC4, nEb4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nC4, nEb4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0F

UnrealBattle_LoopE0:
	dc.b	nF3, $05, nAb3, nBb3
	smpsLoop            $00, $04, UnrealBattle_LoopE0
	dc.b	nF3, nAb3, nBb3, $0A

UnrealBattle_LoopE1:
	dc.b	nF3, $05, nBb3, nC4
	smpsLoop            $00, $04, UnrealBattle_LoopE1
	dc.b	nF3, nBb3, nC4, $0A

UnrealBattle_LoopE2:
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsLoop            $00, $04, UnrealBattle_LoopE2
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0A
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nC4, nEb4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nC4, nEb4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $05
	smpsAlterNote       $00
	dc.b	nBb3, nCs4
	smpsAlterNote       $FF
	dc.b	nG3
	smpsAlterNote       $00
	dc.b	nBb3, nCs4, $0F
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A

UnrealBattle_LoopE3:
	dc.b	$05, nRst, nB3, $0A
	smpsLoop            $00, $04, UnrealBattle_LoopE3

UnrealBattle_LoopE4:
	dc.b	$05, nRst
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A
	smpsLoop            $00, $02, UnrealBattle_LoopE4
	smpsLoop            $01, $03, UnrealBattle_LoopE3

UnrealBattle_LoopE5:
	dc.b	$05, nRst, nB3, $0A
	smpsLoop            $00, $04, UnrealBattle_LoopE5
	dc.b	$05, nRst
	smpsAlterNote       $FF
	dc.b	nG3, $0A
	smpsAlterNote       $00
	dc.b	nA3, $05, nRst, nA3, $0A, $05, nRst
	smpsAlterVol        $FD
	dc.b	nC3, $01
	smpsPan             panCenter, $00
	smpsJump            UnrealBattle_Jump05

; FM2 Data
UnrealBattle_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nRst, $1E
	smpsSetvoice        $03
	smpsAlterVol        $FE

UnrealBattle_Loop65:
	smpsAlterNote       $0C
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop65

UnrealBattle_Loop66:
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop66
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $1E

UnrealBattle_Loop67:
	smpsAlterNote       $0F
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop67
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5

UnrealBattle_Loop68:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop68
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $1E

UnrealBattle_Loop69:
	smpsAlterNote       $0F
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop69
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5

UnrealBattle_Loop6A:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop6A

UnrealBattle_Loop6B:
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop6B

UnrealBattle_Loop6C:
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, UnrealBattle_Loop6C
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop6D:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $04, UnrealBattle_Loop6D
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol        $FC

UnrealBattle_Loop6E:
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop6E
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop6F:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop6F
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop70:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $09, UnrealBattle_Loop70
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02

UnrealBattle_Loop71:
	smpsAlterNote       $0C
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop71
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02

UnrealBattle_Loop72:
	smpsAlterNote       $0D
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop72
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop73:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop73
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $08

UnrealBattle_Loop74:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop74
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_Loop75:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop75
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_Loop76:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop76
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop77:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop77
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop78:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop78
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_Loop79:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop79
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_Loop7A:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7A
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop7B:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7B
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop7C:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7C
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_Loop7D:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7D
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_Loop7E:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7E
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop7F:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop7F
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop80:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop80
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop81:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop81
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop82:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop82
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $F8
	smpsLoop            $01, $02, UnrealBattle_Loop73
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop83:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop83
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop84:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop84
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C

UnrealBattle_Loop87:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop85:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop85
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop86:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop86
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	smpsLoop            $01, $02, UnrealBattle_Loop87

UnrealBattle_Loop8A:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop88:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop88
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop89:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop89
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	smpsLoop            $01, $02, UnrealBattle_Loop8A

UnrealBattle_Loop8D:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop8B:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop8B
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop8C:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop8C
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	smpsLoop            $01, $02, UnrealBattle_Loop8D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop8E:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop8E
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop8F:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop8F
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop90:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop90
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop91:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop91
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F

UnrealBattle_Loop94:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop92:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop92
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop93:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop93
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	smpsLoop            $01, $02, UnrealBattle_Loop94

UnrealBattle_Loop97:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop95:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop95
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop96:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop96
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	smpsLoop            $01, $02, UnrealBattle_Loop97

UnrealBattle_Loop9A:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop98:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop98
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_Loop99:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop99
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	smpsLoop            $01, $02, UnrealBattle_Loop9A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop9B:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_Loop9B
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsLoop            $01, $02, UnrealBattle_Loop9B

UnrealBattle_Loop9C:
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01

UnrealBattle_Jump04:
	dc.b	smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, UnrealBattle_Loop9C
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop9D:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $03, UnrealBattle_Loop9D
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_Loop9E:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop9E
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $1E

UnrealBattle_Loop9F:
	smpsAlterNote       $0F
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop9F
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5

UnrealBattle_LoopA0:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopA0
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $1E

UnrealBattle_LoopA1:
	smpsAlterNote       $0F
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_LoopA1
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5

UnrealBattle_LoopA2:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopA2

UnrealBattle_LoopA3:
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopA3

UnrealBattle_LoopA4:
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, UnrealBattle_LoopA4
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopA5:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $04, UnrealBattle_LoopA5
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol        $FC

UnrealBattle_LoopA6:
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_LoopA6
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_LoopA7:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_LoopA7
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopA8:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $09, UnrealBattle_LoopA8
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02

UnrealBattle_LoopA9:
	smpsAlterNote       $0C
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_LoopA9
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02

UnrealBattle_LoopAA:
	smpsAlterNote       $0D
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_LoopAA
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopAB:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopAB
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $08

UnrealBattle_LoopAC:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopAC
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_LoopAD:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopAD
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_LoopAE:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopAE
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopAF:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopAF
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopB0:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB0
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_LoopB1:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB1
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_LoopB2:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB2
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopB3:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB3
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopB4:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB4
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $06

UnrealBattle_LoopB5:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB5
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FA

UnrealBattle_LoopB6:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB6
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopB7:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB7
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopB8:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB8
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopB9:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopB9
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopBA:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopBA
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $F8
	smpsLoop            $01, $02, UnrealBattle_LoopAB
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopBB:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopBB
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopBC:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopBC
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C

UnrealBattle_LoopBF:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopBD:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopBD
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopBE:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopBE
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	smpsLoop            $01, $02, UnrealBattle_LoopBF

UnrealBattle_LoopC2:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopC0:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopC0
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopC1:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopC1
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	smpsLoop            $01, $02, UnrealBattle_LoopC2

UnrealBattle_LoopC5:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopC3:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopC3
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopC4:
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopC4
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	smpsLoop            $01, $02, UnrealBattle_LoopC5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopC6:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopC6
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $0C
	dc.b	nC5

UnrealBattle_LoopC7:
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_LoopC7
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopC8:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopC8
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopC9:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopC9
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F

UnrealBattle_LoopCC:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopCA:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopCA
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopCB:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopCB
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	smpsLoop            $01, $02, UnrealBattle_LoopCC

UnrealBattle_LoopCF:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopCD:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopCD
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopCE:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopCE
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	smpsLoop            $01, $02, UnrealBattle_LoopCF

UnrealBattle_LoopD2:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopD0:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopD0
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04

UnrealBattle_LoopD1:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopD1
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	smpsLoop            $01, $02, UnrealBattle_LoopD2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_LoopD3:
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, UnrealBattle_LoopD3
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $04
	smpsLoop            $01, $02, UnrealBattle_LoopD3
	dc.b	smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsPan             panCenter, $00
	smpsAlterNote       $F2
	smpsJump            UnrealBattle_Jump04

; FM3 Data
UnrealBattle_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nRst, $28
	smpsSetvoice        $03
	smpsAlterVol        $FE

UnrealBattle_Loop3A:
	smpsAlterNote       $10
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop3A

UnrealBattle_Loop3B:
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop3B
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, nRst, $28

UnrealBattle_Loop3C:
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop3C
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, nRst, $28

UnrealBattle_Loop3D:
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop3D
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5

UnrealBattle_Loop3E:
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop3E

UnrealBattle_Loop3F:
	dc.b	smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01
	smpsLoop            $00, $03, UnrealBattle_Loop3F
	dc.b	smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop40:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop40
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01

UnrealBattle_Loop41:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop41
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01

UnrealBattle_Loop42:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop42
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop43:
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop43
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02

UnrealBattle_Loop44:
	dc.b	smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsLoop            $00, $05, UnrealBattle_Loop44
	dc.b	smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01

UnrealBattle_Loop45:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop45
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop47:
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $08
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $06
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $FA
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5

UnrealBattle_Loop46:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $06
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $FA
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsLoop            $00, $02, UnrealBattle_Loop46
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $F8
	smpsLoop            $01, $02, UnrealBattle_Loop47
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5

UnrealBattle_Loop48:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsLoop            $00, $02, UnrealBattle_Loop48

UnrealBattle_Loop49:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsLoop            $00, $02, UnrealBattle_Loop49

UnrealBattle_Loop4A:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsLoop            $00, $02, UnrealBattle_Loop4A
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5

UnrealBattle_Loop4B:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsLoop            $00, $02, UnrealBattle_Loop4B

UnrealBattle_Loop4C:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsLoop            $00, $02, UnrealBattle_Loop4C

UnrealBattle_Loop4D:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsLoop            $00, $02, UnrealBattle_Loop4D
	smpsAlterVol        $FC

UnrealBattle_Loop4E:
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnrealBattle_Loop4E

UnrealBattle_Loop4F:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Jump03:
	dc.b	smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsLoop            $00, $05, UnrealBattle_Loop4F

UnrealBattle_Loop50:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop50

UnrealBattle_Loop51:
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop51
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, nRst, $28

UnrealBattle_Loop52:
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop52
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, nRst, $28

UnrealBattle_Loop53:
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop53
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5

UnrealBattle_Loop54:
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01
	smpsLoop            $00, $02, UnrealBattle_Loop54

UnrealBattle_Loop55:
	dc.b	smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01
	smpsLoop            $00, $03, UnrealBattle_Loop55
	dc.b	smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop56:
	smpsAlterNote       $10
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop56
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01

UnrealBattle_Loop57:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop57
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01

UnrealBattle_Loop58:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop58
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop59:
	smpsAlterNote       $11
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop59
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02

UnrealBattle_Loop5A:
	dc.b	smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsLoop            $00, $05, UnrealBattle_Loop5A
	dc.b	smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01

UnrealBattle_Loop5B:
	smpsAlterNote       $10
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop5B
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop5D:
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $08
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $06
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $FA
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5

UnrealBattle_Loop5C:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $06
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $FA
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsLoop            $00, $02, UnrealBattle_Loop5C
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $F8
	smpsLoop            $01, $02, UnrealBattle_Loop5D
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5

UnrealBattle_Loop5E:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsLoop            $00, $02, UnrealBattle_Loop5E

UnrealBattle_Loop5F:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsLoop            $00, $02, UnrealBattle_Loop5F

UnrealBattle_Loop60:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nF5
	smpsLoop            $00, $02, UnrealBattle_Loop60
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $10
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE5
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5

UnrealBattle_Loop61:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsLoop            $00, $02, UnrealBattle_Loop61

UnrealBattle_Loop62:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsLoop            $00, $02, UnrealBattle_Loop62

UnrealBattle_Loop63:
	smpsAlterVol        $FC
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsAlterVol        $04
	dc.b	nRst, $05
	smpsAlterNote       $15
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA5
	smpsLoop            $00, $02, UnrealBattle_Loop63
	smpsAlterVol        $FC

UnrealBattle_Loop64:
	dc.b	nRst, $05
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnrealBattle_Loop64
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            UnrealBattle_Jump03

; FM4 Data
UnrealBattle_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nRst, $32
	smpsSetvoice        $03
	smpsAlterVol        $FE

UnrealBattle_Loop15:
	smpsAlterNote       $13
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop15
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5

UnrealBattle_Loop17:
	dc.b	nRst, $32

UnrealBattle_Loop16:
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop16
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5
	smpsLoop            $01, $02, UnrealBattle_Loop17

UnrealBattle_Loop18:
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop18
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop19:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop19
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01

UnrealBattle_Loop1A:
	smpsAlterNote       $17
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop1A
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop1B:
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop1B
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop1C:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $08, UnrealBattle_Loop1C
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5

UnrealBattle_Loop1D:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $06, UnrealBattle_Loop1D
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01

UnrealBattle_Loop1E:
	smpsAlterNote       $13
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop1E
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop1F:
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $08
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $F8
	smpsLoop            $00, $02, UnrealBattle_Loop1F
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21

UnrealBattle_Loop20:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	smpsLoop            $00, $02, UnrealBattle_Loop20

UnrealBattle_Loop21:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	smpsLoop            $00, $02, UnrealBattle_Loop21

UnrealBattle_Loop22:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	smpsLoop            $00, $02, UnrealBattle_Loop22
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12

UnrealBattle_Loop23:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	smpsLoop            $00, $02, UnrealBattle_Loop23

UnrealBattle_Loop24:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	smpsLoop            $00, $02, UnrealBattle_Loop24

UnrealBattle_Loop25:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	smpsLoop            $00, $02, UnrealBattle_Loop25
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop26:
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnrealBattle_Loop26

UnrealBattle_Loop27:
	dc.b	smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01

UnrealBattle_Jump02:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC6, $02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsLoop            $00, $06, UnrealBattle_Loop27
	dc.b	smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop28:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop28
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5

UnrealBattle_Loop2A:
	dc.b	nRst, $32

UnrealBattle_Loop29:
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop29
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5
	smpsLoop            $01, $02, UnrealBattle_Loop2A

UnrealBattle_Loop2B:
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop2B
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop2C:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $04, UnrealBattle_Loop2C
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01

UnrealBattle_Loop2D:
	smpsAlterNote       $17
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop2D
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop2E:
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $09, UnrealBattle_Loop2E
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01

UnrealBattle_Loop2F:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $08, UnrealBattle_Loop2F
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5

UnrealBattle_Loop30:
	smpsAlterNote       $13
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $06, UnrealBattle_Loop30
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01

UnrealBattle_Loop31:
	smpsAlterNote       $13
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $03, UnrealBattle_Loop31
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop32:
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $08
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $14
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $06
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FA
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $F8
	smpsLoop            $00, $02, UnrealBattle_Loop32
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21

UnrealBattle_Loop33:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	smpsLoop            $00, $02, UnrealBattle_Loop33

UnrealBattle_Loop34:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	smpsLoop            $00, $02, UnrealBattle_Loop34

UnrealBattle_Loop35:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $EA
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F4
	smpsLoop            $00, $02, UnrealBattle_Loop35
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $17
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12

UnrealBattle_Loop36:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	smpsLoop            $00, $02, UnrealBattle_Loop36

UnrealBattle_Loop37:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	smpsLoop            $00, $02, UnrealBattle_Loop37

UnrealBattle_Loop38:
	dc.b	$01
	smpsAlterVol        $FC
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01
	smpsAlterVol        $04
	dc.b	nRst, $0A
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	smpsLoop            $00, $02, UnrealBattle_Loop38
	dc.b	$01
	smpsAlterVol        $FC

UnrealBattle_Loop39:
	dc.b	nRst, $0A
	smpsAlterNote       $0C
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnrealBattle_Loop39
	dc.b	smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01
	smpsPan             panCenter, $00
	smpsAlterNote       $0C
	smpsJump            UnrealBattle_Jump02

; FM5 Data
UnrealBattle_FM5:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst

UnrealBattle_Loop0D:
	dc.b	$7F
	smpsLoop            $00, $0B, UnrealBattle_Loop0D
	dc.b	$7B
	smpsSetvoice        $00
	smpsAlterVol        $3C

UnrealBattle_Loop0E:
	dc.b	nD3, $0A
	smpsAlterVol        $F8
	dc.b	$05, nRst
	smpsAlterVol        $F8
	smpsLoop            $00, $02, UnrealBattle_Loop0E
	dc.b	nBb2, $0A
	smpsAlterVol        $F8
	dc.b	nC3, $05, nRst
	smpsAlterVol        $F8
	dc.b	nC3, $0A
	smpsAlterVol        $FC

UnrealBattle_Loop10:
	dc.b	$05, nRst, nBb2, $0A, nC3, $05, nRst, nC3, $0A

UnrealBattle_Loop0F:
	dc.b	$05, nRst, nD3, $0A
	smpsLoop            $00, $04, UnrealBattle_Loop0F
	dc.b	$05, nRst, nBb2, $0A, nC3, $05, nRst, nC3, $0A
	smpsLoop            $01, $02, UnrealBattle_Loop10
	dc.b	$05, nRst, $06

UnrealBattle_Jump01:
	dc.b	nRst

UnrealBattle_Loop11:
	dc.b	$7F
	smpsLoop            $00, $0B, UnrealBattle_Loop11
	dc.b	$7A
	smpsAlterVol        $34

UnrealBattle_Loop12:
	dc.b	nD3, $0A
	smpsAlterVol        $F8
	dc.b	$05, nRst
	smpsAlterVol        $F8
	smpsLoop            $00, $02, UnrealBattle_Loop12
	dc.b	nBb2, $0A
	smpsAlterVol        $F8
	dc.b	nC3, $05, nRst
	smpsAlterVol        $F8
	dc.b	nC3, $0A
	smpsAlterVol        $FC

UnrealBattle_Loop14:
	dc.b	$05, nRst, nBb2, $0A, nC3, $05, nRst, nC3, $0A

UnrealBattle_Loop13:
	dc.b	$05, nRst, nD3, $0A
	smpsLoop            $00, $04, UnrealBattle_Loop13
	dc.b	$05, nRst, nBb2, $0A, nC3, $05, nRst, nC3, $0A
	smpsLoop            $01, $02, UnrealBattle_Loop14
	dc.b	$05, nRst, $06
	smpsPan             panCenter, $00
	smpsJump            UnrealBattle_Jump01

; PSG1 Data
UnrealBattle_PSG1:
	smpsAlterNote       $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_PSG1
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop109:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop109
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop10A:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop10A
	smpsAlterNote       $00
	dc.b	nC2

UnrealBattle_Loop10B:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsLoop            $00, $03, UnrealBattle_Loop10B

UnrealBattle_Loop10E:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nE2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop10C:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsLoop            $00, $02, UnrealBattle_Loop10C
	smpsAlterNote       $00

UnrealBattle_Loop10D:
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	smpsLoop            $00, $03, UnrealBattle_Loop10D
	dc.b	nD2
	smpsLoop            $01, $02, UnrealBattle_Loop10E
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2

UnrealBattle_Loop10F:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsLoop            $00, $03, UnrealBattle_Loop10F
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $06
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nD2, $01, nRst, $04, nC2

UnrealBattle_Loop110:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_Loop110
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FB

UnrealBattle_Loop111:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_Loop111
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop112:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop112
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop113:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop113
	smpsAlterNote       $00
	dc.b	nC2

UnrealBattle_Loop114:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsLoop            $00, $03, UnrealBattle_Loop114

UnrealBattle_Loop117:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nE2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop115:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsLoop            $00, $02, UnrealBattle_Loop115
	smpsAlterNote       $00

UnrealBattle_Loop116:
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	smpsLoop            $00, $03, UnrealBattle_Loop116
	dc.b	nD2
	smpsLoop            $01, $02, UnrealBattle_Loop117
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2

UnrealBattle_Loop118:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsLoop            $00, $03, UnrealBattle_Loop118
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $06
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nD2, $01, nRst, $04, nC2

UnrealBattle_Loop119:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_Loop119
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FB

UnrealBattle_Loop11A:
	smpsAlterNote       $FD
	dc.b	nD2

UnrealBattle_Jump07:
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_Loop11A
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop11B:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop11B
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop11C:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop11C
	smpsAlterNote       $00
	dc.b	nC2

UnrealBattle_Loop11D:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsLoop            $00, $03, UnrealBattle_Loop11D

UnrealBattle_Loop120:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nE2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop11E:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsLoop            $00, $02, UnrealBattle_Loop11E
	smpsAlterNote       $00

UnrealBattle_Loop11F:
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	smpsLoop            $00, $03, UnrealBattle_Loop11F
	dc.b	nD2
	smpsLoop            $01, $02, UnrealBattle_Loop120
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2

UnrealBattle_Loop121:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsLoop            $00, $03, UnrealBattle_Loop121
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $06
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nD2, $01, nRst, $04, nC2

UnrealBattle_Loop122:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_Loop122
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FB

UnrealBattle_Loop123:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_Loop123
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop124:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop124
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop125:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsLoop            $00, $02, UnrealBattle_Loop125
	smpsAlterNote       $00
	dc.b	nC2

UnrealBattle_Loop126:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsLoop            $00, $03, UnrealBattle_Loop126

UnrealBattle_Loop129:
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nE2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop127:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsLoop            $00, $02, UnrealBattle_Loop127
	smpsAlterNote       $00

UnrealBattle_Loop128:
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	smpsLoop            $00, $03, UnrealBattle_Loop128
	dc.b	nD2
	smpsLoop            $01, $02, UnrealBattle_Loop129
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2

UnrealBattle_Loop12A:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsLoop            $00, $03, UnrealBattle_Loop12A
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nC2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsPSGAlterVol     $02
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $06
	dc.b	$01, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nD2, $01, nRst, $04, nC2

UnrealBattle_Loop12B:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_Loop12B
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FA
	dc.b	nC2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FD
	dc.b	nD2
	smpsPSGAlterVol     $05
	smpsJump            UnrealBattle_Jump07

; PSG2 Data
UnrealBattle_PSG2:
	smpsAlterNote       $FD
	dc.b	nF2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_PSG2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopE6:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopE6
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nF2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopE7:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopE7
	smpsAlterNote       $00
	dc.b	nEb2

UnrealBattle_LoopE8:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsLoop            $00, $03, UnrealBattle_LoopE8

UnrealBattle_LoopEB:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopE9:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsLoop            $00, $02, UnrealBattle_LoopE9
	smpsAlterNote       $00

UnrealBattle_LoopEA:
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	smpsLoop            $00, $03, UnrealBattle_LoopEA
	dc.b	nF2
	smpsLoop            $01, $02, UnrealBattle_LoopEB
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2

UnrealBattle_LoopEC:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsLoop            $00, $03, UnrealBattle_LoopEC
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nEb2, $01
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nD2, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nF2, $01, nRst, $04, nEb2

UnrealBattle_LoopED:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_LoopED
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FB

UnrealBattle_LoopEE:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_LoopEE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopEF:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopEF
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nF2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopF0:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopF0
	smpsAlterNote       $00
	dc.b	nEb2

UnrealBattle_LoopF1:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsLoop            $00, $03, UnrealBattle_LoopF1

UnrealBattle_LoopF4:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopF2:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsLoop            $00, $02, UnrealBattle_LoopF2
	smpsAlterNote       $00

UnrealBattle_LoopF3:
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	smpsLoop            $00, $03, UnrealBattle_LoopF3
	dc.b	nF2
	smpsLoop            $01, $02, UnrealBattle_LoopF4
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2

UnrealBattle_LoopF5:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsLoop            $00, $03, UnrealBattle_LoopF5
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nEb2, $01
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nD2, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nF2, $01, nRst, $04, nEb2

UnrealBattle_LoopF6:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_LoopF6
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FB

UnrealBattle_LoopF7:
	smpsAlterNote       $FD
	dc.b	nF2

UnrealBattle_Jump06:
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_LoopF7
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopF8:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopF8
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nF2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopF9:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_LoopF9
	smpsAlterNote       $00
	dc.b	nEb2

UnrealBattle_LoopFA:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsLoop            $00, $03, UnrealBattle_LoopFA

UnrealBattle_LoopFD:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF

UnrealBattle_LoopFB:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsLoop            $00, $02, UnrealBattle_LoopFB
	smpsAlterNote       $00

UnrealBattle_LoopFC:
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	smpsLoop            $00, $03, UnrealBattle_LoopFC
	dc.b	nF2
	smpsLoop            $01, $02, UnrealBattle_LoopFD
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2

UnrealBattle_LoopFE:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsLoop            $00, $03, UnrealBattle_LoopFE
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nEb2, $01
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nD2, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nF2, $01, nRst, $04, nEb2

UnrealBattle_LoopFF:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_LoopFF
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FB

UnrealBattle_Loop100:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, UnrealBattle_Loop100
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop101:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_Loop101
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FC
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nF2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop102:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsLoop            $00, $02, UnrealBattle_Loop102
	smpsAlterNote       $00
	dc.b	nEb2

UnrealBattle_Loop103:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsLoop            $00, $03, UnrealBattle_Loop103

UnrealBattle_Loop106:
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $F3
	smpsAlterNote       $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF

UnrealBattle_Loop104:
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsLoop            $00, $02, UnrealBattle_Loop104
	smpsAlterNote       $00

UnrealBattle_Loop105:
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FC
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	smpsLoop            $00, $03, UnrealBattle_Loop105
	dc.b	nF2
	smpsLoop            $01, $02, UnrealBattle_Loop106
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2

UnrealBattle_Loop107:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsLoop            $00, $03, UnrealBattle_Loop107
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsPSGAlterVol     $02
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nEb2, $01
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nD2, nRst, $7F, $7F, $7F, $7F, $25
	smpsAlterNote       $00
	dc.b	nF2, $01, nRst, $04, nEb2

UnrealBattle_Loop108:
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $04, UnrealBattle_Loop108
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FD
	dc.b	nF2
	smpsPSGAlterVol     $05
	smpsJump            UnrealBattle_Jump06

; DAC Data
UnrealBattle_DAC:
	dc.b 	$5
	smpsLoop            $00, $03, UnrealBattle_DAC
	dc.b 	dCrashCymbal, $A, dCrashCymbal, $5, dCrashCymbal, $19, dKickS3, $5, dMuffledSnare, $A, dCrashCymbal, dRideCymbal
	dc.b 	dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dCrashCymbal, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit
	dc.b 	dQuickLooseSnare, dHiHitDrum, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dCrashCymbal, dLowMetalHit, dLowMetalHit, $5
	dc.b 	dLowMetalHit, dComeOn, dComeOn, dComeOn, $A, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dCrashCymbal
	dc.b 	dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dHiHitDrum

UnrealBattle_Loop00:
	dc.b 	dTightSnare, $5, dMidpitchSnare, dLooseSnare, dLooserSnare, dCrashCymbal, $A
	smpsLoop            $00, $02, UnrealBattle_Loop00
	dc.b 	dFloorTomS3, $5, dFloorTomS3, dFloorTomS3, $A

UnrealBattle_Loop01:
	dc.b 	dMetalHit

UnrealBattle_Loop02:
	dc.b 	dKickS3, $5, dCrashCymbal, dMetalHit, $A, dRideCymbal
	smpsLoop            $00, $02, UnrealBattle_Loop01
	dc.b 	dMetalHit, dKickS3, $5, dCrashCymbal, dMetalHit, $F, dRideCymbal, $5, dMetalHit, $A
	smpsLoop            $01, $02, UnrealBattle_Loop02
	dc.b 	dCrashCymbal, $5, dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit, dLowMetalHit, $A, dCrashCymbal, $5
	dc.b 	dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit

UnrealBattle_Loop03:
	dc.b 	dMetalHit, $A, dKickS3, $5, dCrashCymbal, dMetalHit, $A, dRideCymbal
	smpsLoop            $00, $02, UnrealBattle_Loop03
	dc.b 	dMetalHit, dKickS3, $5, dCrashCymbal, dMetalHit, $F, dRideCymbal, $5
	smpsLoop            $01, $02, UnrealBattle_Loop03
	dc.b 	dMetalHit

UnrealBattle_Loop04:
	dc.b 	dQuickLooseSnare, dCrashCymbal, $5, dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit
	smpsLoop            $00, $02, UnrealBattle_Loop04

UnrealBattle_Loop05:
	dc.b 	dLowMetalHit, $A, dClapS3, $5, dMidMetalHit, dMetalHit, $A, dClapS3, $5, dMidMetalHit, dLowMetalHit, $A
	dc.b 	dClapS3, $5, dMidMetalHit, dHiHitDrum, $A, dDanceSnare, dLowMetalHit, dClapS3, $5, dMidMetalHit, dMetalHit, $A
	dc.b 	dClapS3, $5, dMidMetalHit, dLowMetalHit, $A, dClapS3, $5, dMidMetalHit, dHiHitDrum, dHiHitDrum, dHiHitDrum, $A
	smpsLoop            $00, $04, UnrealBattle_Loop05
	dc.b 	dCrashCymbal, $1

UnrealBattle_Jump00:
	dc.b 	nRst, $9, dCrashCymbal

UnrealBattle_Loop06:
	dc.b 	$14, dHigherMetalHit, $A, dHigherMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $F, dHigherMetalHit, $5, dCrashCymbal
	dc.b 	$A9
	smpsLoop            $00, $03, UnrealBattle_Loop06
	dc.b 	$59, dCrashCymbal, dCrashCymbal, $19, dKickS3, $5, dMuffledSnare, $A, dCrashCymbal, dRideCymbal, dLowMetalHit, dLowMetalHit
	dc.b 	$5B, dLowMetalHit, dMetalHit, $A, dCrashCymbal, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dHiHitDrum
	dc.b 	dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dCrashCymbal, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dComeOn
	dc.b 	dComeOn, dComeOn, $A, dLowMetalHit, dLowMetalHit, $5, dLowMetalHit, dMetalHit, $A, dCrashCymbal, dLowMetalHit, dLowMetalHit
	dc.b 	$5B, dLowMetalHit, dMetalHit, $A, dHiHitDrum

UnrealBattle_Loop07:
	dc.b 	dTightSnare, $5, dMidpitchSnare, dLooseSnare, dLooserSnare, dCrashCymbal, $A
	smpsLoop            $00, $02, UnrealBattle_Loop07
	dc.b 	dFloorTomS3, $5, dFloorTomS3, dFloorTomS3, $A

UnrealBattle_Loop08:
	dc.b 	dMetalHit

UnrealBattle_Loop09:
	dc.b 	dKickS3, $5, dCrashCymbal, dMetalHit, $A, dRideCymbal
	smpsLoop            $00, $02, UnrealBattle_Loop08
	dc.b 	dMetalHit, dKickS3, $5, dCrashCymbal, dMetalHit, $F, dRideCymbal, $5, dMetalHit, $A
	smpsLoop            $01, $02, UnrealBattle_Loop09
	dc.b 	dCrashCymbal, $5, dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit, dLowMetalHit, $A, dCrashCymbal, $5
	dc.b 	dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit

UnrealBattle_Loop0A:
	dc.b 	dMetalHit, $A, dKickS3, $5, dCrashCymbal, dMetalHit, $A, dRideCymbal
	smpsLoop            $00, $02, UnrealBattle_Loop0A
	dc.b 	dMetalHit, dKickS3, $5, dCrashCymbal, dMetalHit, $F, dRideCymbal, $5
	smpsLoop            $01, $02, UnrealBattle_Loop0A
	dc.b 	dMetalHit

UnrealBattle_Loop0B:
	dc.b 	dQuickLooseSnare, dCrashCymbal, $5, dCrashCymbal, dCrashCymbal, $A, dLowMetalHit, $5, dLowMetalHit
	smpsLoop            $00, $02, UnrealBattle_Loop0B

UnrealBattle_Loop0C:
	dc.b 	dLowMetalHit, $A, dClapS3, $5, dMidMetalHit, dMetalHit, $A, dClapS3, $5, dMidMetalHit, dLowMetalHit, $A
	dc.b 	dClapS3, $5, dMidMetalHit, dHiHitDrum, $A, dDanceSnare, dLowMetalHit, dClapS3, $5, dMidMetalHit, dMetalHit, $A
	dc.b 	dClapS3, $5, dMidMetalHit, dLowMetalHit, $A, dClapS3, $5, dMidMetalHit, dHiHitDrum, dHiHitDrum, dHiHitDrum, $A
	smpsLoop            $00, $04, UnrealBattle_Loop0C
	dc.b 	dCrashCymbal, $1
	smpsJump            UnrealBattle_Jump00

UnrealBattle_Voices:
;	$09
;	$08, $78, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$28, $2D, $15, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $08, $08
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $2D, $28

;	Voice $01
;	$00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$2A, $12, $30, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $00, $00, $00, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $30, $12, $2A

;	Voice $02
;	$00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$00, $00, $00, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $00, $00, $00, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $03
;	$24
;	$01, $02, $03, $00, 	$1F, $11, $1F, $1F, 	$00, $0F, $06, $08
;	$00, $00, $00, $00, 	$F3, $F8, $71, $F9, 	$0C, $00, $21, $05
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $03, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $11, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $07, $0F, $0F
	smpsVcReleaseRate   $09, $01, $08, $03
	smpsVcTotalLevel    $05, $21, $00, $0C

