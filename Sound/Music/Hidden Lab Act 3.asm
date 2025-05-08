UnderSea_Palace_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     UnderSea_Palace_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $1A

	smpsHeaderDAC       UnderSea_Palace_DAC
	smpsHeaderFM        UnderSea_Palace_FM1,	$00, $14
	smpsHeaderFM        UnderSea_Palace_FM2,	$00, $1E
	smpsHeaderFM        UnderSea_Palace_FM3,	$00, $14
	smpsHeaderFM        UnderSea_Palace_FM4,	$00, $14
	smpsHeaderFM        UnderSea_Palace_FM5,	$00, $1C
	smpsHeaderPSG       UnderSea_Palace_PSG1,	$00, $06, $00, $00
	smpsHeaderPSG       UnderSea_Palace_PSG2,	$00, $09, $00, $00
	smpsHeaderPSG       UnderSea_Palace_PSG3,	$00, $06, $00, $00

; DAC Data
UnderSea_Palace_DAC:
	dc.b	nRst, $7E, $7E, $24

UnderSea_Palace_Loop00:
	smpsPan             panCenter, $00
	dc.b	dVLowTimpani, $06, nRst, nRst, dVLowTimpani, nRst, dVLowTimpani, dVLowTimpani, nRst, dKick, nRst, dSnareAlt
	dc.b	nRst
	smpsLoop            $00, $16, UnderSea_Palace_Loop00
	smpsPan             panCenter, $00
	dc.b	dVLowTimpani

UnderSea_Palace_Loop01:
	dc.b	$12, $03, $03, $0C, $12, $03, $03, $0C, $12, $03, $03, $06
	dc.b	$03, $03, $06, $06, $06, $06, $06, $06
	smpsLoop            $00, $04, UnderSea_Palace_Loop01
	smpsJump            UnderSea_Palace_DAC

; FM1 Data
UnderSea_Palace_FM1:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nF4, $03, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panLeft, $00
	smpsSetvoice        $00

UnderSea_Palace_Loop0A:
	smpsAlterVol        $FC
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panLeft, $00
	smpsLoop            $00, $02, UnderSea_Palace_Loop0A
	smpsAlterVol        $FC
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panLeft, $00
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panRight, $00

UnderSea_Palace_Loop0B:
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	smpsLoop            $00, $08, UnderSea_Palace_Loop0B
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nC5, nRst, nCs5, nRst, nC5, nRst
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $FB
	dc.b	nB5, $01, nC6, $2F, nBb5, $0C, nAb5, nG5, $24, nEb5, nC5, $3C
	dc.b	nEb5, $08, nD5, $02, nCs5, nC5, $24, nBb4, nB5, $01, nC6, $2F
	dc.b	nBb5, $0C, nEb6, $08, nD6, $02, nCs6, nC6, $24, nG6, $18, nEb6
	dc.b	$0C, nC6, $3C, nBb5, $06, nC6, nEb6, $24, nF6
	smpsAlterVol        $05
	dc.b	nA5, $06, nG5, nA5, nD6, nA5, nG5, nA5, nG5, nA5, nC6, nA5
	dc.b	nG5, nA5, nG5, nA5, nD6, nA5, nG5, nA5, nG5, nA5, nE6, nA5
	dc.b	nG5

UnderSea_Palace_Loop0C:
	dc.b	nAb5, nFs5, nAb5, nCs6, nAb5, nFs5, nAb5, nFs5, nAb5, nEb6, nAb5, nFs5
	smpsLoop            $00, $02, UnderSea_Palace_Loop0C

UnderSea_Palace_Loop0D:
	dc.b	nG5, nF5, nG5, nC6, nG5, nF5, nG5, nF5, nG5, nD6, nG5, nF5
	smpsLoop            $00, $02, UnderSea_Palace_Loop0D
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $0C
	smpsAlterVol        $FB

UnderSea_Palace_Loop0E:
	dc.b	nA5, $03, nRst, nA5, nRst, $1B, nBb5, $03, nRst, nBb5, nRst, $1B
	dc.b	nA5, $03, nRst, nA5, nRst, $0F, nC6, $03, nRst, nC6, nRst, nB5
	dc.b	nRst, nB5, nRst, nBb5, nRst, nBb5, nRst, $0F
	smpsLoop            $00, $03, UnderSea_Palace_Loop0E
	dc.b	nA5, $03, nRst, nA5, nRst, $1B, nBb5, $03, nRst, nBb5, nRst, $1B
	dc.b	nA5, $03, nRst, nA5, nRst, $0F, nC6, $03, nRst, nC6, nRst, nB5
	dc.b	nRst, nB5, nRst, nBb5, nRst, nBb5, nRst
	smpsAlterVol        $01
	smpsJump            UnderSea_Palace_FM1

; FM2 Data
UnderSea_Palace_FM2:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $09

UnderSea_Palace_Loop07:
	dc.b	nF4, $03, nRst, nF5, nRst, nF4, nRst, nC5, nRst, nCs5, $06, nC5
	dc.b	$03, nRst
	smpsLoop            $00, $17, UnderSea_Palace_Loop07
	dc.b	nF4, nRst, nF5, nRst, nF4, nRst, nC5, nRst, nCs5
	smpsAlterVol        $FA

UnderSea_Palace_Loop08:
	dc.b	nF4
	smpsAlterVol        $08
	dc.b	nC5
	smpsAlterVol        $F8
	dc.b	nF5
	smpsAlterVol        $08
	dc.b	nF4
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $08
	dc.b	nF5
	smpsAlterVol        $F8
	dc.b	nC5
	smpsAlterVol        $08
	dc.b	nF4
	smpsAlterVol        $F8
	dc.b	nCs5
	smpsAlterVol        $08
	dc.b	nC5
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $08
	dc.b	nCs5
	smpsAlterVol        $F8
	smpsLoop            $00, $0F, UnderSea_Palace_Loop08
	dc.b	nF4
	smpsAlterVol        $08
	dc.b	nC5
	smpsAlterVol        $F8
	dc.b	nF5
	smpsAlterVol        $08
	dc.b	nF4
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $08
	dc.b	nF5
	smpsAlterVol        $F8
	dc.b	nC5
	smpsAlterVol        $08
	dc.b	nF4
	smpsAlterVol        $F8
	dc.b	nCs5
	smpsAlterVol        $08
	dc.b	nC5
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $08
	dc.b	nCs5
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $F5
	dc.b	nD5, $24, nC5, $18, nBb4, $0C, nA4, $48, nRst, $0C, nAb4, nCs5
	dc.b	nEb5, $18, nFs5, $08, nF5, $02, nE5, nEb5, $48, nRst, $0C, nG4
	dc.b	nC5, nD5, $18, nF5, $08, nE5, $02, nEb5, nD5, $24, nBb4, $18
	dc.b	nG4, $0C
	smpsSetvoice        $02
	dc.b	nRst
	smpsAlterVol        $FF

UnderSea_Palace_Loop09:
	dc.b	nE5, $03, nRst, nE5, nRst, $1B, nF5, $03, nRst, nF5, nRst, $1B
	dc.b	nE5, $03, nRst, nE5, nRst, $0F, nG5, $03, nRst, nG5, nRst, nFs5
	dc.b	nRst, nFs5, nRst, nF5, nRst, nF5, nRst, $0F
	smpsLoop            $00, $03, UnderSea_Palace_Loop09
	dc.b	nE5, $03, nRst, nE5, nRst, $1B, nF5, $03, nRst, nF5, nRst, $1B
	dc.b	nE5, $03, nRst, nE5, nRst, $0F, nG5, $03, nRst, nG5, nRst, nFs5
	dc.b	nRst, nFs5, nRst, nF5, nRst, nF5, nRst
	smpsAlterVol        $0A
	smpsJump            UnderSea_Palace_FM2

; FM3 Data
UnderSea_Palace_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00

UnderSea_Palace_Loop05:
	dc.b	nF3, $78, $0C, nG3, nAb3, $3C, $0C, nBb3, $24, $18, nEb3, $0C
	smpsLoop            $00, $05, UnderSea_Palace_Loop05
	dc.b	nD4, $48, $48, nCs4, nCs4, nC4, nC4
	smpsAlterVol        $FF

UnderSea_Palace_Loop06:
	dc.b	nB3, $24, nC4, nB3, nD4, $0C, nCs4, nC4
	smpsLoop            $00, $04, UnderSea_Palace_Loop06
	smpsAlterVol        $01
	smpsJump            UnderSea_Palace_FM3

; FM4 Data
UnderSea_Palace_FM4:
	smpsSetvoice        $02
	dc.b	nRst

UnderSea_Palace_Loop03:
	dc.b	$41
	smpsLoop            $00, $1D, UnderSea_Palace_Loop03

UnderSea_Palace_Loop04:
	dc.b	nD5, $02, nRst, $04, nD5, $02, nRst, $1C, nEb5, $02, nRst, $04
	dc.b	nEb5, $02, nRst, $1C, nD5, $02, nRst, $04, nD5, $02, nRst, $10
	dc.b	nF5, $02, nRst, $04, nF5, $02, nRst, $04, nE5, $02, nRst, $04
	dc.b	nE5, $02, nRst, $04, nEb5, $02, nRst, $04, nEb5, $02, nRst, $10
	smpsLoop            $00, $03, UnderSea_Palace_Loop04
	dc.b	nD5, $02, nRst, $04, nD5, $02, nRst, $1C, nEb5, $02, nRst, $04
	dc.b	nEb5, $02, nRst, $1C, nD5, $02, nRst, $04, nD5, $02, nRst, $10
	dc.b	nF5, $02, nRst, $04, nF5, $02, nRst, $04, nE5, $02, nRst, $04
	dc.b	nE5, $02, nRst, $04, nEb5, $02, nRst, $04, nEb5, $02, nRst, $03
	smpsJump            UnderSea_Palace_FM4

; FM5 Data
UnderSea_Palace_FM5:
	smpsSetvoice        $03

UnderSea_Palace_Jump00:
	dc.b	nRst, $7F, $7F, $21
	smpsPan             panRight, $00

UnderSea_Palace_Loop02:
	dc.b	nAb4, $7F, smpsNoAttack, $59, nF4, $48
	smpsLoop            $00, $04, UnderSea_Palace_Loop02
	dc.b	nC4, $7F, smpsNoAttack, $11, nB3, $7F, smpsNoAttack, $11, nBb3, $7F, smpsNoAttack, $12
	dc.b	nRst, $01
	smpsPan             panLeft, $00
	dc.b	$73, $73, $73, $73, $73
	smpsJump            UnderSea_Palace_Jump00

; PSG1 Data
UnderSea_Palace_PSG1:
	smpsPSGvoice        $00
	dc.b	nRst, $7F, $7F, $21

UnderSea_Palace_Loop30:
	dc.b	nEb2, $7F, smpsNoAttack, $7C, nRst, $01, nD2, $23, nRst, $01
	smpsLoop            $00, $04, UnderSea_Palace_Loop30
	dc.b	nA1, $7F, smpsNoAttack, $10, nRst, $01, nAb1, $7F, smpsNoAttack, $10, nRst, $01
	dc.b	nG1, $7F, smpsNoAttack, $12
	smpsPSGAlterVol     $01

UnderSea_Palace_Loop31:
	dc.b	nA1, $24, nBb1, nA1, nC2, $0C, nB1, nBb1
	smpsLoop            $00, $04, UnderSea_Palace_Loop31
	smpsPSGAlterVol     $FF
	smpsJump            UnderSea_Palace_PSG1

; PSG2 Data
UnderSea_Palace_PSG2:
	smpsPSGvoice        $00
	dc.b	nRst, $7F, $7F, $21

UnderSea_Palace_Loop2E:
	dc.b	nC2, $7F, smpsNoAttack, $58, nRst, $01, nBb1, $47, nRst, $01
	smpsLoop            $00, $04, UnderSea_Palace_Loop2E
	dc.b	nF1, $7F, smpsNoAttack, $10, nRst, $01, nE1, $7F, smpsNoAttack, $10, nRst, $01
	dc.b	nEb1, $7F, smpsNoAttack, $12

UnderSea_Palace_Loop2F:
	dc.b	nE1, $24, nF1, nE1, nG1, $0C, nFs1, nF1
	smpsLoop            $00, $04, UnderSea_Palace_Loop2F
	smpsJump            UnderSea_Palace_PSG2

; PSG3 Data
UnderSea_Palace_PSG3:
	smpsPSGform         $E7

UnderSea_Palace_Jump01:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG

UnderSea_Palace_Loop0F:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $0F, UnderSea_Palace_Loop0F
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop10:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop10
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop11:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop11
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop12:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop12
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop13:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop13
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop14:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop14
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop15:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop15
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop16:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop16
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop17:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop17
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop18:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop18
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop19:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop19
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1A:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1A
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1B:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1B
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1C:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1C
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1D:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1D
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1E:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1E
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop1F:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop1F
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop20:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop20
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop21:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop21
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop22:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop22
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop23:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop23
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop24:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop24
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$06
	smpsPSGAlterVol     $05

UnderSea_Palace_Loop25:
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $04
	smpsLoop            $00, $02, UnderSea_Palace_Loop25
	dc.b	$06
	smpsPSGAlterVol     $FA
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FB
	smpsPSGvoice        fTone_01

UnderSea_Palace_Loop26:
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $0C
	smpsLoop            $00, $02, UnderSea_Palace_Loop26
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF

UnderSea_Palace_Loop27:
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FE
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, UnderSea_Palace_Loop27
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06, $15

UnderSea_Palace_Loop28:
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $0C, $12
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, UnderSea_Palace_Loop28
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF

UnderSea_Palace_Loop29:
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FE
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, UnderSea_Palace_Loop29
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06, $15

UnderSea_Palace_Loop2A:
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $0C, $12
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, UnderSea_Palace_Loop2A
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF

UnderSea_Palace_Loop2B:
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FE
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, UnderSea_Palace_Loop2B
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06, $15

UnderSea_Palace_Loop2C:
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $0C, $12
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, UnderSea_Palace_Loop2C
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF

UnderSea_Palace_Loop2D:
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FE
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, UnderSea_Palace_Loop2D
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	smpsNoAttack, $06
	smpsJump            UnderSea_Palace_Jump01

UnderSea_Palace_Voices:
;	Voice $00
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $01
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $02
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $03
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

;	Voice $04
;	$3A
;	$32, $01, $52, $31, 	$1F, $1F, $1F, $18, 	$01, $1F, $00, $00
;	$00, $0F, $00, $00, 	$5A, $0F, $03, $1A, 	$3B, $30, $4F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $01
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $00, $00, $05
	smpsVcReleaseRate   $0A, $03, $0F, $0A
	smpsVcTotalLevel    $00, $4F, $30, $3B

