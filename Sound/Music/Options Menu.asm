LevelSelect_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     LevelSelect_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0A

	smpsHeaderDAC       LevelSelect_DAC
	smpsHeaderFM        LevelSelect_FM1,	$00, $08
	smpsHeaderFM        LevelSelect_FM2,	$00, $08
	smpsHeaderFM        LevelSelect_FM3,	$00, $08
	smpsHeaderFM        LevelSelect_FM4,	$00, $08
	smpsHeaderFM        LevelSelect_FM5,	$00, $08
	smpsHeaderPSG       LevelSelect_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       LevelSelect_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       LevelSelect_PSG3,	$00, $00, $00, $00

; DAC Data
LevelSelect_DAC:
	smpsSetTempoMod     $0A
	smpsPan             panCenter, $00

LevelSelect_Loop00:
	dc.b	dKickS3, $18, dSnareS3
	smpsLoop            $00, $07, LevelSelect_Loop00
	dc.b	dKickS3, dSnareS3, $0C, dKickS3

LevelSelect_Loop01:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop01
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dKickS3, $04, $04, $04, $04, $04, $04, $18

LevelSelect_Loop02:
	dc.b	dSnareS3, dKickS3
	smpsLoop            $00, $07, LevelSelect_Loop02
	dc.b	dSnareS3, $0C, dKickS3

LevelSelect_Loop03:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop03
	dc.b	dKickS3, $0C, $0C, $0C, $0C, $0C, $0C, $04, $04, $04, $04, $04
	dc.b	$04, $18

LevelSelect_Loop04:
	dc.b	dSnareS3, dKickS3
	smpsLoop            $00, $07, LevelSelect_Loop04
	dc.b	dSnareS3, $0C, dKickS3

LevelSelect_Loop05:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop05
	dc.b	dKickS3, $18
	smpsPan             panRight, $00
	dc.b	$A1, $04, $04, $04
	smpsPan             panCenter, $00
	dc.b	$A2, $A2
	smpsPan             panLeft, $00
	dc.b	$A3
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, $0C, $04, $04, $04, $04, $04, $04, $18

LevelSelect_Loop06:
	dc.b	dSnareS3, dKickS3
	smpsLoop            $00, $07, LevelSelect_Loop06
	dc.b	dSnareS3, $0C, dKickS3

LevelSelect_Loop07:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop07
	dc.b	dKickS3, $0C, $0C, $0C, $0C, $0C, $0C, $04, $04, $04, $04, $04
	dc.b	$04, $18

LevelSelect_Loop08:
	dc.b	dSnareS3, dKickS3
	smpsLoop            $00, $07, LevelSelect_Loop08
	dc.b	dSnareS3, $0C, dKickS3

LevelSelect_Loop09:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop09
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dKickS3, $04, $04, $04, $04, $04, $04, $18

LevelSelect_Loop0A:
	dc.b	dSnareS3, dKickS3
	smpsLoop            $00, $07, LevelSelect_Loop0A
	dc.b	dSnareS3, $0C, dKickS3

LevelSelect_Loop0B:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_Loop0B
	dc.b	dKickS3, $18
	smpsPan             panRight, $00
	dc.b	$A1, $04, $04, $04
	smpsPan             panCenter, $00
	dc.b	$A2, $A2
	smpsPan             panLeft, $00
	dc.b	$A3
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, $0C, $04, $04, $04, $04, $04, $04
	smpsJump            LevelSelect_DAC

; FM1 Data
LevelSelect_FM1:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00

LevelSelect_LoopC4:
	dc.b	nD2, $0C, nRst, $06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack
	dc.b	nD2, nG2, smpsNoAttack, nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2
	dc.b	$0C
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF2, $08, nD2, $06, nRst, nD2, nRst, $12, nD2, $0C, nRst
	dc.b	$06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack, nD2, nG2, smpsNoAttack
	dc.b	nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2, $0C
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF2, $08, nD2, $06, nRst, $1E
	smpsLoop            $00, $09, LevelSelect_LoopC4
	dc.b	nD2, $0C, nRst, $06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack
	dc.b	nD2, nG2, smpsNoAttack, nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2
	dc.b	$0C
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF2, $08, nD2, $06, nRst, nD2, nRst, $12, nD2, $0C, nRst
	dc.b	$06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack, nD2, nG2, smpsNoAttack
	dc.b	nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2, $05, nRst, $07
	smpsSetvoice        $0A
	dc.b	nG1, $30
	smpsSetvoice        $00

LevelSelect_LoopC5:
	dc.b	nD2, $0C, nRst, $06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack
	dc.b	nD2, nG2, smpsNoAttack, nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2
	dc.b	$0C
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF2, $08, nD2, $06, nRst, nD2, nRst, $12, nD2, $0C, nRst
	dc.b	$06, nD2, $0C, nRst, $06, nD2, $0C, nF2, smpsNoAttack, nD2, nG2, smpsNoAttack
	dc.b	nF2, nD2, nRst, $06, nD2, $0C, nRst, $06, nD2, $0C
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF2, $08, nD2, $06, nRst, $1E
	smpsLoop            $00, $02, LevelSelect_LoopC5
	smpsJump            LevelSelect_FM1

; FM2 Data
LevelSelect_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	smpsAlterNote       $00
	dc.b	nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop8C:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop8C
	smpsSetvoice        $07

LevelSelect_Loop8D:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop8D
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop8E:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop8E
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop8F:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop8F
	smpsSetvoice        $07

LevelSelect_Loop90:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop90
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop91:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop91
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop92:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop92
	smpsSetvoice        $07

LevelSelect_Loop93:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop93
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop94:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop94
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop95:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop95
	smpsSetvoice        $07

LevelSelect_Loop96:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop96
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop97:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop97
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop98:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop98
	smpsSetvoice        $07

LevelSelect_Loop99:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop99
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop9A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop9A
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop9B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop9B
	smpsSetvoice        $07

LevelSelect_Loop9C:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop9C
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop9D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop9D
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop9E:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop9E
	smpsSetvoice        $07

LevelSelect_Loop9F:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop9F
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopA0:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopA0
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopA1:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopA1
	smpsSetvoice        $07

LevelSelect_LoopA2:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopA2
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopA3:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopA3
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $09
	smpsPan             panCenter, $00

LevelSelect_LoopA4:
	dc.b	nF5, $0C, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_LoopA4

LevelSelect_LoopA5:
	dc.b	nB5, nE5, nG5
	smpsLoop            $00, $05, LevelSelect_LoopA5
	dc.b	nB5, nA5

LevelSelect_LoopA6:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_LoopA6
	dc.b	nB5

LevelSelect_LoopA7:
	dc.b	nE5, nG5, nD6
	smpsLoop            $00, $05, LevelSelect_LoopA7
	dc.b	nC6
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopA8:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopA8
	smpsSetvoice        $07

LevelSelect_LoopA9:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopA9
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopAA:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopAA
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopAB:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopAB
	smpsSetvoice        $07

LevelSelect_LoopAC:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopAC
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopAD:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopAD
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopAE:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopAE
	smpsSetvoice        $07

LevelSelect_LoopAF:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopAF
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopB0:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopB0
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopB1:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopB1
	smpsSetvoice        $07

LevelSelect_LoopB2:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopB2
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopB3:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopB3
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsPan             panCenter, $00
	smpsSetvoice        $09

LevelSelect_LoopB4:
	dc.b	nF5, $0C, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_LoopB4

LevelSelect_LoopB5:
	dc.b	nB5, nE5, nG5
	smpsLoop            $00, $05, LevelSelect_LoopB5
	dc.b	nB5, nA5

LevelSelect_LoopB6:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_LoopB6
	dc.b	nB5

LevelSelect_LoopB7:
	dc.b	nE5, nG5, nD6
	smpsLoop            $00, $05, LevelSelect_LoopB7
	dc.b	nC6
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopB8:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopB8
	smpsSetvoice        $07

LevelSelect_LoopB9:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopB9
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopBA:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopBA
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopBB:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopBB
	smpsSetvoice        $07

LevelSelect_LoopBC:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopBC
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopBD:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopBD
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopBE:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopBE
	smpsSetvoice        $07

LevelSelect_LoopBF:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopBF
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopC0:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopC0
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_LoopC1:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_LoopC1
	smpsSetvoice        $07

LevelSelect_LoopC2:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopC2
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_LoopC3:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_LoopC3
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsJump            LevelSelect_FM2

; FM3 Data
LevelSelect_FM3:
	smpsAlterNote       $00
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop54:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop54
	smpsSetvoice        $07

LevelSelect_Loop55:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop55
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop56:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop56
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop57:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop57
	smpsSetvoice        $07

LevelSelect_Loop58:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop58
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop59:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop59
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop5A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop5A
	smpsSetvoice        $07

LevelSelect_Loop5B:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop5B
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop5C:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop5C
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop5D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop5D
	smpsSetvoice        $07

LevelSelect_Loop5E:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop5E
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop5F:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop5F
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop60:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop60
	smpsSetvoice        $07

LevelSelect_Loop61:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop61
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop62:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop62
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop63:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop63
	smpsSetvoice        $07

LevelSelect_Loop64:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop64
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop65:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop65
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop66:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop66
	smpsSetvoice        $07

LevelSelect_Loop67:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop67
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop68:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop68
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop69:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop69
	smpsSetvoice        $07

LevelSelect_Loop6A:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop6A
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop6B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop6B
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nA5, $0C

LevelSelect_Loop6C:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_Loop6C

LevelSelect_Loop6D:
	dc.b	nB5, nE5, nG5
	smpsLoop            $00, $05, LevelSelect_Loop6D
	dc.b	nB5, nA5

LevelSelect_Loop6E:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_Loop6E
	dc.b	nB5

LevelSelect_Loop6F:
	dc.b	nE5, nG5, nD6
	smpsLoop            $00, $05, LevelSelect_Loop6F
	smpsSetvoice        $01
	smpsAlterVol        $F8
	dc.b	nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop70:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop70
	smpsSetvoice        $07

LevelSelect_Loop71:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop71
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop72:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop72
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop73:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop73
	smpsSetvoice        $07

LevelSelect_Loop74:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop74
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop75:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop75
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop76:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop76
	smpsSetvoice        $07

LevelSelect_Loop77:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop77
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop78:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop78
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop79:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop79
	smpsSetvoice        $07

LevelSelect_Loop7A:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop7A
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop7B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop7B
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nA5, $0C

LevelSelect_Loop7C:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_Loop7C

LevelSelect_Loop7D:
	dc.b	nB5, nE5, nG5
	smpsLoop            $00, $05, LevelSelect_Loop7D
	dc.b	nB5, nA5

LevelSelect_Loop7E:
	dc.b	nF5, nA5, nC6
	smpsLoop            $00, $05, LevelSelect_Loop7E
	dc.b	nB5

LevelSelect_Loop7F:
	dc.b	nE5, nG5, nD6
	smpsLoop            $00, $05, LevelSelect_Loop7F
	smpsSetvoice        $01
	smpsAlterVol        $F8
	dc.b	nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop80:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop80
	smpsSetvoice        $07

LevelSelect_Loop81:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop81
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop82:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop82
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop83:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop83
	smpsSetvoice        $07

LevelSelect_Loop84:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop84
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop85:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop85
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop86:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop86
	smpsSetvoice        $07

LevelSelect_Loop87:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop87
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop88:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop88
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop89:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop89
	smpsSetvoice        $07

LevelSelect_Loop8A:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop8A
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop8B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop8B
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsJump            LevelSelect_FM3

; FM4 Data
LevelSelect_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsAlterNote       $00

LevelSelect_Loop30:
	dc.b	nC2, $0C
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop30

LevelSelect_Loop31:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop31

LevelSelect_Loop32:
	dc.b	nC2
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop32

LevelSelect_Loop33:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop33

LevelSelect_Loop34:
	dc.b	nC2
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop34

LevelSelect_Loop35:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop35

LevelSelect_Loop36:
	dc.b	nC2
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop36

LevelSelect_Loop37:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop37
	smpsSetvoice        $01
	dc.b	nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop38:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop38
	smpsSetvoice        $07

LevelSelect_Loop39:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop39
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop3A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop3A
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop3B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop3B
	smpsSetvoice        $07

LevelSelect_Loop3C:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop3C
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop3D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop3D
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop3E:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop3E
	smpsSetvoice        $07

LevelSelect_Loop3F:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop3F
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop40:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop40
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop41:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop41
	smpsSetvoice        $07

LevelSelect_Loop42:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop42
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop43:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop43
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $02

LevelSelect_Loop44:
	dc.b	nC2, $0C
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop44

LevelSelect_Loop45:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop45

LevelSelect_Loop46:
	dc.b	nC2
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nF2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nC2, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nF2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nC2
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nF2
	smpsLoop            $00, $02, LevelSelect_Loop46

LevelSelect_Loop47:
	dc.b	nB1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nE2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nB1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nB1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nE2
	smpsLoop            $00, $02, LevelSelect_Loop47
	smpsSetvoice        $01
	dc.b	nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop48:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop48
	smpsSetvoice        $07

LevelSelect_Loop49:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop49
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop4A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop4A
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop4B:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop4B
	smpsSetvoice        $07

LevelSelect_Loop4C:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop4C
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop4D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop4D
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nC3, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop4E:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop4E
	smpsSetvoice        $07

LevelSelect_Loop4F:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop4F
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop50:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop50
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nB2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop51:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop51
	smpsSetvoice        $07

LevelSelect_Loop52:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop52
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop53:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop53
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $0B
	smpsPan             panLeft, $00
	dc.b	nD3, $24
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack, nB2
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nFs2, smpsNoAttack, nF2
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $00
	dc.b	nD2, $30, nC3, $24
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01, smpsNoAttack, nB2
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nFs2, smpsNoAttack, nF2
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nE2, smpsNoAttack, nEb2
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nD2
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote       $00
	dc.b	nA2, $30, nB2, $24
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nF2, smpsNoAttack, nE2
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nEb2, smpsNoAttack, nD2
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs2, smpsNoAttack, nC2
	smpsAlterNote       $00
	dc.b	nG2, $30
	smpsPan             panRight, $00
	dc.b	nG1, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panLeft, $00
	smpsAlterVol        $DD
	dc.b	nG1
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nC3
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panRight, $00
	smpsAlterVol        $DD
	dc.b	nD2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nB2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG3
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panLeft, $00
	smpsAlterVol        $DD
	dc.b	nD2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nB2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nF3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3, $18, nF3, $0C
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nE3, smpsNoAttack, nEb3
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nCs3, smpsNoAttack, nC3
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote       $00
	dc.b	nA2, $30, nC3, $18, nD3, $0C
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs3, smpsNoAttack, nC3, smpsNoAttack, nB2
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nFs2, smpsNoAttack, nF2
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $00
	dc.b	nF2, $30, nG2, $18, nF2, $0C
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nE2, smpsNoAttack, nEb2
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nD2
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nCs2, smpsNoAttack, nC2
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nB1
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, nA1
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nAb1
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nG1
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $00
	dc.b	nG2, $18, nB2
	smpsPan             panRight, $00
	dc.b	nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD4
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panLeft, $00
	smpsAlterVol        $DD
	dc.b	nG2
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD4
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nC4
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panRight, $00
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nB3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nD4
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG4
	smpsAlterVol        $23
	dc.b	$03
	smpsPan             panLeft, $00
	smpsAlterVol        $DD
	dc.b	nD3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nB3
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nG4
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	nF4
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	smpsJump            LevelSelect_FM4

; FM5 Data
LevelSelect_FM5:
	smpsAlterNote       $00
	smpsPan             panLeft, $00
	smpsSetvoice        $02

LevelSelect_Loop0C:
	dc.b	nA1, $0C
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop0C

LevelSelect_Loop0D:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop0D

LevelSelect_Loop0E:
	dc.b	nA1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop0E

LevelSelect_Loop0F:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop0F

LevelSelect_Loop10:
	dc.b	nA1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop10

LevelSelect_Loop11:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop11

LevelSelect_Loop12:
	dc.b	nA1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop12

LevelSelect_Loop13:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop13
	smpsSetvoice        $01
	dc.b	nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop14:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop14
	smpsSetvoice        $07

LevelSelect_Loop15:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop15
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop16:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop16
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop17:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop17
	smpsSetvoice        $07

LevelSelect_Loop18:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop18
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop19:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop19
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop1A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop1A
	smpsSetvoice        $07

LevelSelect_Loop1B:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop1B
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop1C:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop1C
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop1D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop1D
	smpsSetvoice        $07

LevelSelect_Loop1E:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop1E
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop1F:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop1F
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $02

LevelSelect_Loop20:
	dc.b	nA1, $0C
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop20

LevelSelect_Loop21:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop21

LevelSelect_Loop22:
	dc.b	nA1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nC2, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nA1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nC2
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nA1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nC2
	smpsLoop            $00, $02, LevelSelect_Loop22

LevelSelect_Loop23:
	dc.b	nG1
	smpsAlterVol        $02
	dc.b	$08
	smpsAlterVol        $26
	dc.b	$04
	smpsAlterVol        $D8
	dc.b	nB1, $18
	smpsSetvoice        $06
	smpsAlterVol        $03
	dc.b	nG1, $0C
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nB1
	smpsSetvoice        $08
	smpsAlterVol        $0E
	dc.b	nG1
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nB1
	smpsLoop            $00, $02, LevelSelect_Loop23
	smpsSetvoice        $01
	dc.b	nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop24:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop24
	smpsSetvoice        $07

LevelSelect_Loop25:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop25
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop26:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop26
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop27:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop27
	smpsSetvoice        $07

LevelSelect_Loop28:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop28
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop29:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop29
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nA2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop2A:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop2A
	smpsSetvoice        $07

LevelSelect_Loop2B:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop2B
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop2C:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop2C
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18, nG2, $03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05

LevelSelect_Loop2D:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $03, LevelSelect_Loop2D
	smpsSetvoice        $07

LevelSelect_Loop2E:
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop2E
	smpsSetvoice        $04
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $07
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $05
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $04

LevelSelect_Loop2F:
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsLoop            $00, $02, LevelSelect_Loop2F
	smpsSetvoice        $03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$09
	smpsAlterVol        $23
	dc.b	$03
	smpsAlterVol        $DD
	dc.b	$03
	smpsAlterVol        $23
	dc.b	$03
	smpsSetvoice        $01
	smpsAlterVol        $DD
	dc.b	$18
	smpsSetvoice        $0A
	smpsPan             panCenter, $00
	dc.b	nD1, $7F, smpsNoAttack, $3C, nRst, $05, nG1, $7F, smpsNoAttack, $3C, nRst, $05
	dc.b	nA1, $7F, smpsNoAttack, $3C, nRst, $05, nB1, $7F, smpsNoAttack, $3C, nRst, $05
	smpsJump            LevelSelect_FM5

; PSG1 Data
LevelSelect_PSG1:
	smpsAlterNote       $00
	smpsPSGvoice        $00

LevelSelect_LoopEC:
	dc.b	nA0, $7F, smpsNoAttack, $41, nG0, $7F, smpsNoAttack, $41
	smpsLoop            $00, $04, LevelSelect_LoopEC

LevelSelect_LoopED:
	dc.b	nC1, $0C
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopED

LevelSelect_LoopEE:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopEE

LevelSelect_LoopEF:
	dc.b	nC1
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopEF

LevelSelect_LoopF0:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopF0

LevelSelect_LoopF1:
	dc.b	nA0, $7F, smpsNoAttack, $41, nG0, $7F, smpsNoAttack, $41
	smpsLoop            $00, $02, LevelSelect_LoopF1

LevelSelect_LoopF2:
	dc.b	nC1, $0C
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopF2

LevelSelect_LoopF3:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopF3

LevelSelect_LoopF4:
	dc.b	nC1
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopF4

LevelSelect_LoopF5:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopF5

LevelSelect_LoopF6:
	dc.b	nC1
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopF6

LevelSelect_LoopF7:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopF7

LevelSelect_LoopF8:
	dc.b	nC1
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nF1, $18
	smpsPSGAlterVol     $03
	dc.b	nC1, $0C
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $07
	dc.b	nC1
	smpsPSGAlterVol     $F9
	dc.b	nF1
	smpsLoop            $00, $02, LevelSelect_LoopF8

LevelSelect_LoopF9:
	dc.b	nB0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nE1, $18
	smpsPSGAlterVol     $03
	dc.b	nB0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nE1
	smpsPSGAlterVol     $07
	dc.b	nB0
	smpsPSGAlterVol     $F9
	dc.b	nE1
	smpsLoop            $00, $02, LevelSelect_LoopF9
	smpsJump            LevelSelect_PSG1

; PSG2 Data
LevelSelect_PSG2:
	smpsAlterNote       $00
	smpsPSGvoice        $00

LevelSelect_LoopDE:
	dc.b	nF0, $7F, smpsNoAttack, $41, nE0, $7F, smpsNoAttack, $41
	smpsLoop            $00, $04, LevelSelect_LoopDE

LevelSelect_LoopDF:
	dc.b	nA0, $0C
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopDF

LevelSelect_LoopE0:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopE0

LevelSelect_LoopE1:
	dc.b	nA0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopE1

LevelSelect_LoopE2:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopE2

LevelSelect_LoopE3:
	dc.b	nF0, $7F, smpsNoAttack, $41, nE0, $7F, smpsNoAttack, $41
	smpsLoop            $00, $02, LevelSelect_LoopE3

LevelSelect_LoopE4:
	dc.b	nA0, $0C
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopE4

LevelSelect_LoopE5:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopE5

LevelSelect_LoopE6:
	dc.b	nA0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopE6

LevelSelect_LoopE7:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopE7

LevelSelect_LoopE8:
	dc.b	nA0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopE8

LevelSelect_LoopE9:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopE9

LevelSelect_LoopEA:
	dc.b	nA0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nC1, $18
	smpsPSGAlterVol     $03
	dc.b	nA0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $07
	dc.b	nA0
	smpsPSGAlterVol     $F9
	dc.b	nC1
	smpsLoop            $00, $02, LevelSelect_LoopEA

LevelSelect_LoopEB:
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $0A
	dc.b	$04
	smpsPSGAlterVol     $F4
	dc.b	nB0, $18
	smpsPSGAlterVol     $03
	dc.b	nG0, $0C
	smpsPSGAlterVol     $FD
	dc.b	nB0
	smpsPSGAlterVol     $07
	dc.b	nG0
	smpsPSGAlterVol     $F9
	dc.b	nB0
	smpsLoop            $00, $02, LevelSelect_LoopEB
	smpsJump            LevelSelect_PSG2

; PSG3 Data
LevelSelect_PSG3:
	smpsPSGform         $E7

LevelSelect_Jump00:
	smpsAlterNote       $00
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG

LevelSelect_LoopC6:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopC6
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopC7:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopC7
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopC8:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopC8
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopC9:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopC9
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCA:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCA
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCB:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCB
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCC:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCC
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCD:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCD
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCE:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCE
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopCF:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopCF
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD0:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD0
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD1:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD1
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD2:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD2
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD3:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD3
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD4:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD4
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD5:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD5
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD6:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD6
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD7:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD7
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD8:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD8
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopD9:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopD9
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopDA:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopDA
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopDB:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopDB
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopDC:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopDC
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02

LevelSelect_LoopDD:
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04, $08, $04
	smpsLoop            $00, $03, LevelSelect_LoopDD
	dc.b	$08, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $08, $04
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsJump            LevelSelect_Jump00

LevelSelect_Voices:
;	Voice $00
;	$39
;	$01, $31, $00, $00, 	$1F, $5F, $5F, $5F, 	$10, $11, $00, $05
;	$07, $00, $00, $00, 	$C9, $F9, $F9, $F9, 	$18, $1E, $20, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $11, $10
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $00, $20, $1E, $18

;	Voice $01
;	$04
;	$52, $52, $72, $32, 	$1A, $14, $1F, $1F, 	$10, $07, $0B, $00
;	$00, $00, $0B, $00, 	$05, $07, $38, $05, 	$16, $90, $17, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $05
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $14, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $07, $10
	smpsVcDecayRate2    $00, $0B, $00, $00
	smpsVcDecayLevel    $00, $03, $00, $00
	smpsVcReleaseRate   $05, $08, $07, $05
	smpsVcTotalLevel    $10, $17, $10, $16

;	Voice $02
;	$34
;	$74, $74, $14, $54, 	$9F, $D4, $17, $9A, 	$10, $13, $0C, $13
;	$00, $00, $00, $00, 	$06, $06, $06, $06, 	$13, $8F, $15, $99
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1A, $17, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0C, $13, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $19, $15, $0F, $13

;	Voice $03
;	$04
;	$52, $52, $32, $32, 	$1A, $14, $16, $1F, 	$10, $07, $12, $00
;	$00, $00, $00, $00, 	$05, $07, $06, $05, 	$16, $90, $0F, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $05
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $16, $14, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $12, $07, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $05, $06, $07, $05
	smpsVcTotalLevel    $10, $0F, $10, $16

;	Voice $04
;	$04
;	$52, $52, $32, $02, 	$1A, $14, $16, $14, 	$10, $07, $12, $07
;	$00, $00, $00, $00, 	$05, $07, $06, $07, 	$16, $90, $0A, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $05
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $14, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $07, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $05
	smpsVcTotalLevel    $10, $0A, $10, $16

;	Voice $05
;	$04
;	$32, $52, $32, $02, 	$1F, $14, $16, $14, 	$00, $07, $12, $07
;	$00, $00, $00, $00, 	$00, $07, $06, $07, 	$16, $90, $05, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $07, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $00
	smpsVcTotalLevel    $10, $05, $10, $16

;	Voice $06
;	$34
;	$74, $74, $14, $54, 	$9F, $D4, $17, $9A, 	$10, $13, $0C, $13
;	$00, $00, $00, $00, 	$06, $06, $06, $06, 	$1A, $8F, $19, $99
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1A, $17, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0C, $13, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $19, $19, $0F, $1A

;	Voice $07
;	$04
;	$32, $52, $32, $02, 	$1F, $1F, $16, $14, 	$00, $0D, $12, $07
;	$00, $12, $00, $00, 	$00, $67, $06, $07, 	$27, $8F, $00, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $0D, $00
	smpsVcDecayRate2    $00, $00, $12, $00
	smpsVcDecayLevel    $00, $00, $06, $00
	smpsVcReleaseRate   $07, $06, $07, $00
	smpsVcTotalLevel    $10, $00, $0F, $27

;	Voice $08
;	$34
;	$74, $74, $14, $54, 	$9F, $D4, $17, $9A, 	$10, $13, $0C, $13
;	$00, $00, $00, $00, 	$06, $06, $06, $06, 	$1D, $8F, $1E, $99
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1A, $17, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0C, $13, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $19, $1E, $0F, $1D

;	Voice $09
;	$3A
;	$41, $45, $31, $41, 	$5F, $5F, $5F, $5F, 	$1F, $1F, $1F, $04
;	$00, $00, $00, $00, 	$18, $58, $28, $08, 	$12, $0A, $12, $8A
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $04, $04
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $02, $05, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $0A, $12, $0A, $12

;	Voice $0A
;	$2B
;	$31, $32, $35, $31, 	$1F, $59, $9E, $47, 	$00, $00, $00, $05
;	$01, $17, $12, $0A, 	$AA, $AF, $F9, $FC, 	$0A, $12, $46, $86
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $05, $02, $01
	smpsVcRateScale     $01, $02, $01, $00
	smpsVcAttackRate    $07, $1E, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $00, $00
	smpsVcDecayRate2    $0A, $12, $17, $01
	smpsVcDecayLevel    $0F, $0F, $0A, $0A
	smpsVcReleaseRate   $0C, $09, $0F, $0A
	smpsVcTotalLevel    $06, $46, $12, $0A

;	Voice $0B
;	$38
;	$73, $71, $31, $31, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$3F, $0F, $0F, $0F, 	$16, $1C, $1E, $86
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $1E, $1C, $16

