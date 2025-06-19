SunsetHill2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SunsetHill2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       SunsetHill2_DAC
	smpsHeaderFM        SunsetHill2_FM1,	$00, $0C
	smpsHeaderFM        SunsetHill2_FM2,	$00, $0A
	smpsHeaderFM        SunsetHill2_FM3,	$00, $10
	smpsHeaderFM        SunsetHill2_FM4,	$00, $0C
	smpsHeaderFM        SunsetHill2_FM5,	$00, $0C
	smpsHeaderPSG       SunsetHill2_PSG1,	$DC, $04, $00, fTone_26
	smpsHeaderPSG       SunsetHill2_PSG2,	$00, $02, $00, fTone_26
	smpsHeaderPSG       SunsetHill2_PSG3,	$23, $04, $00, fTone_05

; FM1 Data
SunsetHill2_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $20

SunsetHill2_Loop05:
	dc.b	nFs5, $04, nRst, nF5, nRst, nEb5, nCs5, nRst, nAb5, $0C, nFs5, $04
	dc.b	nRst, nF5, nRst, nEb5, $08, nF5, $04, nRst, nEb5, nRst, nCs5, nAb4
	dc.b	nRst, nFs5, $0C, nF5, $04, nRst, nEb5, nRst, nCs5, $08, nFs5, $04
	dc.b	nRst, nF5, nRst, nEb5, nCs5, nRst, nAb5, $0C, nFs5, $04, nRst, nF5
	dc.b	nRst, nEb5, $08, nC6, $04, nRst, nA5, nRst, nEb5, nC5, nRst, nCs6
	dc.b	$0C, nBb5, $04, nRst, nF5, nRst, nCs5, $08
	smpsLoop            $00, $03, SunsetHill2_Loop05
	dc.b	nB5, $0C, nBb5, nAb5, nFs5, nF5, $04, nRst, nEb5, nF5, nCs5, $0C
	dc.b	nCs5, nCs5, nEb5, nF5, $04, nRst, nBb5, $08, nA5, $0C, nAb5, nFs5
	dc.b	nE5, nEb5, $04, nRst, nCs5, $08, nAb5, $10, nF5, nAb4, $20, nFs5
	dc.b	$04, nRst, nF5, nRst, nEb5, nCs5, nRst, nAb5, $0C, nFs5, $04, nRst
	dc.b	nF5, nRst, nEb5, $08, nF5, $04, nRst, nEb5, nRst, nCs5, nAb4, nRst
	dc.b	nFs5, $0C, nF5, $04, nRst, nEb5, nRst, nCs5, $08, nFs5, $04, nRst
	dc.b	nF5, nRst, nEb5, nCs5, nRst, nAb5, $0C, nFs5, $04, nRst, nF5, nRst
	dc.b	nEb5, $08, nC6, $04, nRst, nA5, nRst, nEb5, nC5, nRst, nCs6, $0C
	dc.b	nBb5, $04, nRst, nF5, nRst, nCs5, $08
	smpsJump            SunsetHill2_Loop05

; FM4 Data
SunsetHill2_FM4:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nRst, $20

SunsetHill2_Loop04:
	dc.b	nCs5, $04, nRst, nCs5, nRst, nCs5, nBb4, nRst, nEb5, $0C, nEb5, $04
	dc.b	nRst, nEb5, nRst, nC5, $08, nC5, $04, nRst, nC5, nRst, nC5, nF4
	dc.b	nRst, nCs5, $0C, nCs5, $04, nRst, nCs5, nRst, nBb4, $08, nCs5, $04
	dc.b	nRst, nCs5, nRst, nCs5, nBb4, nRst, nEb5, $0C, nEb5, $04, nRst, nEb5
	dc.b	nRst, nC5, $08, nA5, $04, nRst, nF5, nRst, nC5, nA4, nRst, nBb5
	dc.b	$0C, nFs5, $04, nRst, nCs5, nRst, nBb4, $08
	smpsLoop            $00, $03, SunsetHill2_Loop04
	dc.b	nFs5, $0C, nF5, nEb5, nCs5, nC5, $04, nRst, nBb4, nC5, nF4, $0C
	dc.b	nG4, nAb4, nBb4, nC5, $04, nRst, nF5, $08, nE5, $0C, nEb5, nCs5
	dc.b	nB4, nBb4, $04, nRst, nAb4, $08, nF5, $10, nC5, nF4, $20, nCs5
	dc.b	$04, nRst, nCs5, nRst, nCs5, nBb4, nRst, nEb5, $0C, nEb5, $04, nRst
	dc.b	nEb5, nRst, nC5, $08, nC5, $04, nRst, nC5, nRst, nC5, nF4, nRst
	dc.b	nCs5, $0C, nCs5, $04, nRst, nCs5, nRst, nBb4, $08, nCs5, $04, nRst
	dc.b	nCs5, nRst, nCs5, nBb4, nRst, nEb5, $0C, nEb5, $04, nRst, nEb5, nRst
	dc.b	nC5, $08, nA5, $04, nRst, nF5, nRst, nC5, nA4, nRst, nBb5, $0C
	dc.b	nFs5, $04, nRst, nCs5, nRst, nBb4, $08
	smpsJump            SunsetHill2_Loop04

; FM5 Data
SunsetHill2_FM5:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nRst, $20

SunsetHill2_Loop03:
	dc.b	nBb4, $04, nRst, nBb4, nRst, nBb4, nAb4, nRst, nC5, $0C, nC5, $04
	dc.b	nRst, nC5, nRst, nAb4, $08, nAb4, $04, nRst, nAb4, nRst, nAb4, nC4
	dc.b	nRst, nBb4, $0C, nBb4, $04, nRst, nBb4, nRst, nFs4, $08, nBb4, $04
	dc.b	nRst, nBb4, nRst, nBb4, nAb4, nRst, nC5, $0C, nC5, $04, nRst, nC5
	dc.b	nRst, nAb4, $08, nF5, $04, nRst, nC5, nRst, nA4, nF4, nRst, nFs5
	dc.b	$0C, nCs5, $04, nRst, nBb4, nRst, nFs4, $08
	smpsLoop            $00, $03, SunsetHill2_Loop03
	dc.b	nB4, $0C, nBb4, nAb4, nFs4, nF4, $04, nRst, nEb4, nF4, nBb3, $0C
	dc.b	nC4, nCs4, nEb4, nF4, $04, nRst, nBb4, $08, nA4, $0C, nAb4, nFs4
	dc.b	nE4, nEb4, $04, nRst, nCs4, $08, nC5, $10, nAb4, nC4, $20, nBb4
	dc.b	$04, nRst, nBb4, nRst, nBb4, nAb4, nRst, nC5, $0C, nC5, $04, nRst
	dc.b	nC5, nRst, nAb4, $08, nAb4, $04, nRst, nAb4, nRst, nAb4, nC4, nRst
	dc.b	nBb4, $0C, nBb4, $04, nRst, nBb4, nRst, nFs4, $08, nBb4, $04, nRst
	dc.b	nBb4, nRst, nBb4, nAb4, nRst, nC5, $0C, nC5, $04, nRst, nC5, nRst
	dc.b	nAb4, $08, nF5, $04, nRst, nC5, nRst, nA4, nF4, nRst, nFs5, $0C
	dc.b	nCs5, $04, nRst, nBb4, nRst, nFs4, $08
	smpsJump            SunsetHill2_Loop03

; FM2 Data
SunsetHill2_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $04, nFs1, nFs1, nFs2, nAb1, nRst, $02, nAb2, $04, nRst, $02
	dc.b	nAb1, $04

SunsetHill2_Jump02:
	dc.b	nFs1, nFs2, nCs2, nFs1, nFs2, nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1
	dc.b	nAb2, nC2, nEb2, nAb1, nF1, nF2, nC2, nF1, nF2, nF1, nF2, nFs2
	dc.b	nFs1, nFs2, nCs2, nFs1, nFs2, nBb1, nCs2, nFs2, nFs1, nFs2, nCs2, nFs1
	dc.b	nFs2, nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1, nAb2, nC2, nEb2, nAb1
	dc.b	nF1, nF2, nC2, nF1, nF2, nF1, nF2, nFs2, nRst, $04, nFs1, nFs1
	dc.b	nFs2, nAb1, nRst, $02, nAb2, $04, nRst, $02, nAb1, $04

SunsetHill2_Loop02:
	dc.b	nFs1, nFs2, nCs2, nFs1, nFs2, nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1
	dc.b	nAb2, nC2, nEb2, nAb1, nF1, nF2, nC2, nF1, nF2, nF1, nF2, nFs2
	dc.b	nFs1, nFs2, nCs2, nFs1, nFs2, nBb1, nCs2, nFs2
	smpsLoop            $00, $03, SunsetHill2_Loop02
	dc.b	nFs1, nFs2, nCs2, nFs1, nFs2, nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1
	dc.b	nAb2, nC2, nEb2, nAb1, nF1, nF2, nC2, nF1, nF2, nF1, nF2, nFs2
	dc.b	nRst, $04, nFs1, nFs1, nFs2, nAb1, nRst, $02, nAb2, $04, nRst, $02
	dc.b	nAb1, $04, nB1, nB2, nB1, nBb2, nBb1, nBb2, nAb1, nAb2, nAb1, nFs2
	dc.b	nFs1, nFs2, nF1, nF2, nEb1, nEb2, nBb2, nBb1, nB0, nC2, nC1, nC2
	dc.b	nCs1, nCs2, nCs1, nEb2, nEb1, nEb2, nF1, nF2, nBb1, nBb2, nA1, nA2
	dc.b	nA1, nAb2, nAb1, nAb2, nFs1, nFs2, nFs1, nE2, nE1, nE2, nEb1, nEb2
	dc.b	nCs1, nCs2, nAb1, nAb2, nAb1, nEb2, nEb1, nEb2, nAb1, nAb2, nAb1, nAb2
	dc.b	nEb2, nAb1, nAb1, nRst, $02, nAb1, $04, nRst, $02, nAb1, $04, nFs1
	dc.b	nFs2, nCs2, nFs1, nFs2, nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1, nAb2
	dc.b	nC2, nEb2, nAb1, nF1, nF2, nC2, nF1, nF2, nF1, nF2, nFs2, nFs1
	dc.b	nFs2, nCs2, nFs1, nFs2, nBb1, nCs2, nFs2, nFs1, nFs2, nCs2, nFs1, nFs2
	dc.b	nFs1, nFs2, nAb1, nAb1, nAb2, nEb2, nAb1, nAb2, nC2, nEb2, nAb1, nF1
	dc.b	nF2, nC2, nF1, nF2, nF1, nF2, nFs2, nRst, $04, nFs1, nFs1, nFs2
	dc.b	nAb1, nRst, $02, nAb2, $04, nRst, $02, nAb1, $04
	smpsJump            SunsetHill2_Jump02

; PSG1 Data
SunsetHill2_PSG1:
	dc.b	nRst, $04
	smpsJump            SunsetHill2_Jump03

; FM3 Data
SunsetHill2_FM3:
	smpsSetvoice        $02

SunsetHill2_Jump03:
	dc.b	nRst, $20
	smpsModSet          $20, $01, $02, $04

SunsetHill2_Jump01:
	dc.b	nC6, $08, nRst, $04, nBb5, $08, nRst, $04, nC6, $08, nRst, $04
	dc.b	nBb5, $08, nRst, $04, nC6, $04, nRst, nBb5, $08, nCs6, $08, nRst
	dc.b	$04, nC6, $08, nRst, $04, nBb5, $28, nBb5, $08, nRst, $04, nC6
	dc.b	$08, nRst, $04, nCs6, nRst, nBb5, $08, nRst, $04, nC6, $08, nRst
	dc.b	$04, nCs6, nRst, nCs6, $08, nRst, $04, nC6, $34, nRst, $10, nCs6
	dc.b	$04, nBb5, $08, nCs6, $04, nC6, $08, nCs6, $04, nC6, $08, nAb5
	dc.b	$18, nBb5, $04, nF6, $04, nEb6, $08, nCs6, $04, nC6, $08, nCs6
	dc.b	$04, nC6, $08, nAb5, $1C, nCs6, $04, nBb5, $08, nCs6, $04, nC6
	dc.b	$08, nCs6, $04, nC6, $08, nAb5, $18, nBb5, $04, nBb5, $04, nFs5
	dc.b	$08, nBb5, $04, nAb5, $08, nBb5, $04, nAb5, $08, nCs5, $1C, nCs6
	dc.b	$04, nBb5, $08, nCs6, $04, nC6, $08, nCs6, $04, nC6, $08, nAb5
	dc.b	$18, nBb5, $04, nF6, $04, nEb6, $08, nCs6, $04, nC6, $08, nCs6
	dc.b	$04, nC6, $08, nAb5, $1C, nCs6, $04, nBb5, $08, nCs6, $04, nC6
	dc.b	$08, nCs6, $04, nC6, $08, nAb5, $18, nBb5, $04, nBb5, $04, nFs5
	dc.b	$08, nBb5, $04, nAb5, $08, nBb5, $04, nAb5, $08, nCs5, $04, nCs5
	dc.b	nF5, nEb5, $34, nCs5, $04, nEb5, nF5, $38, nCs5, $04, nCs5, nF5
	dc.b	nE5, $34, nCs5, $04, nE5, nEb5, $20, nF5, $04, nRst, nF5, nFs5
	dc.b	nF5, nAb5, nF5, nF5, nCs5, nC6, $08, nRst, $04, nBb5, $08, nRst
	dc.b	$04, nC6, $08, nRst, $04, nBb5, $08, nRst, $04, nC6, $04, nRst
	dc.b	nBb5, $08, nCs6, $08, nRst, $04, nC6, $08, nRst, $04, nBb5, $28
	dc.b	nBb5, $08, nRst, $04, nC6, $08, nRst, $04, nCs6, nRst, nBb5, $08
	dc.b	nRst, $04, nC6, $08, nRst, $04, nCs6, nRst, nCs6, $08, nRst, $04
	dc.b	nC6, $34
	smpsJump            SunsetHill2_Jump01

; PSG2 Data
SunsetHill2_PSG2:
	dc.b	nBb1, $02, nF1, nBb1, nF1, nC2, nFs1, nC2, nFs1, nCs2, nAb1, nCs2
	dc.b	nAb1, nEb2, nBb1, nEb2, nC2, nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	smpsAlterVol        $F8
	dc.b	nRst, $20, nBb1, $02, nF1, nBb1, nF1, nC2, nFs1, nC2, nFs1, nCs2
	dc.b	nAb1, nCs2, nAb1, nEb2, nBb1, nEb2, nC2, nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	smpsAlterVol        $F8
	dc.b	nRst, $20, nBb1, $02, nF1, nBb1, nF1, nC2, nFs1, nC2, nFs1, nCs2
	dc.b	nAb1, nCs2, nAb1, nEb2, nBb1, nEb2, nC2, nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2
	smpsAlterVol        $FA
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $18, nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $18, nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $08, nCs3, $04, nBb2, nAb2, $08, nF2, $04, nAb2, nCs2, nRst
	dc.b	$34, nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $18, nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $18, nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	dc.b	nAb2, $02, nBb2, nCs3, $04
	smpsAlterVol        $01
	smpsAlterVol        $FB
	dc.b	nRst, $18, nCs2, $04, nCs2, nF2, nB1, $02, nEb2, nFs2, nB2, nFs2
	dc.b	nEb2, nBb1, nEb2, nF2, nBb2, nF2, nEb2, nAb1, nBb1, nEb2, nAb2, nEb2
	dc.b	nBb1, nFs1, nBb1, nCs2, nFs2, nCs2, nBb1, nF1, nAb1, nC2, nF2, nEb2
	dc.b	nBb1, nAb1, nF1, nBb0, nF1, nBb1, nCs2, nBb1, nF1, nC1, nG1, nC2
	dc.b	nCs2, nC2, nG1, nCs1, nF1, nAb1, nCs2, nAb1, nF1, nEb1, nF1, nBb1
	dc.b	nEb2, nBb1, nF1, nF1, nBb1, nC2, nF2, nBb2, nF2, nC2, nBb1, nA1
	dc.b	nCs2, nE2, nA2, nE2, nCs2, nAb1, nCs2, nEb2, nAb2, nEb2, nCs2, nFs1
	dc.b	nA1, nCs2, nFs2, nCs2, nA1, nE1, nFs1, nB1, nE2, nB1, nFs1, nEb1
	dc.b	nAb1, nBb1, nEb2, nCs2, nAb1, nFs1, nCs1, nAb1, nC2, nF2, nAb2, nF2
	dc.b	nC2, nAb1, nF1, nF1, nAb1, nC2, nF2, nC2, nAb1, nF1, nC1, nC1
	dc.b	nF1, nAb1, nC2, nAb1, nF1, nC1, nAb0, nAb0, nC1, nF1, nAb1, nF1
	dc.b	nC1, nAb0, nF0, nF2, $02, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	smpsAlterVol        $F8
	dc.b	nRst, $20, nBb1, $02, nF1, nBb1, nF1, nC2, nFs1, nC2, nFs1, nCs2
	dc.b	nAb1, nCs2, nAb1, nEb2, nBb1, nEb2, nC2, nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	dc.b	nF2, nCs2, nF2, nCs2
	smpsAlterVol        $01
	smpsAlterVol        $F8
	dc.b	nRst, $20
	smpsJump            SunsetHill2_PSG2

; PSG3 Data
SunsetHill2_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04

SunsetHill2_Loop06:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04, $04
	smpsLoop            $00, $03, SunsetHill2_Loop06
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04

SunsetHill2_Loop07:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02, $02
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsLoop            $00, $04, SunsetHill2_Loop07

SunsetHill2_Loop08:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $02
	smpsLoop            $00, $03, SunsetHill2_Loop08
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04

SunsetHill2_Loop09:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04, $04
	smpsLoop            $00, $03, SunsetHill2_Loop09
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_01
	dc.b	nAb6, $04
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsJump            SunsetHill2_Loop06

; DAC Data
SunsetHill2_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $10, dSnare, $02, dKick, $06, dSnare, $06, $02

SunsetHill2_Jump00:
	dc.b	dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $02, dKick, $08, dSnare
	dc.b	dKick, $02, dSnare, $06, $06, $02, dKick, $08, dSnare, dKick, $02, dSnare
	dc.b	$06, $06, $02, dKick, $08, dSnare, $06, $02, dKick, $06, dSnare, $02
	dc.b	dKick, $06, dSnare, $02, dKick, $08, dSnare, dKick, $02, dSnare, $06, $06
	dc.b	$02, dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $02, dKick, $08
	dc.b	dSnare, dKick, $02, dSnare, $06, $06, $0A, $08, $06, $02, $04, dKick
	dc.b	$02, dSnare

SunsetHill2_Loop00:
	dc.b	dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $02, dKick, $08, dSnare
	dc.b	dKick, $02, dSnare, $06, $06, $02, dKick, $08, dSnare, dKick, $02, dSnare
	dc.b	$06, $06, $02, dKick, $08, dSnare, $06, $02, dKick, $06, dSnare, $02
	dc.b	dKick, $06, dSnare, $02
	smpsLoop            $00, $04, SunsetHill2_Loop00

SunsetHill2_Loop01:
	dc.b	dKick, $04, dKick, dSnare, dSnare, nRst, $02, dSnare, dKick, $04, dSnare, $06
	dc.b	$02
	smpsLoop            $00, $07, SunsetHill2_Loop01
	dc.b	nRst, $04, dKick, dSnare, dKick, dSnare, $02, dKick, $04, dSnare, dKick, $02
	dc.b	dSnare, $04, dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $02, dKick
	dc.b	$08, dSnare, dKick, $02, dSnare, $06, $06, $02, dKick, $08, dSnare, dKick
	dc.b	$02, dSnare, $06, $06, $02, dKick, $08, dSnare, $06, $02, dKick, $06
	dc.b	dSnare, $02, dKick, $06, dSnare, $02, dKick, $08, dSnare, dKick, $02, dSnare
	dc.b	$06, $06, $02, dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $02
	dc.b	dKick, $08, dSnare, dKick, $02, dSnare, $06, $06, $0A, $08, $06, $02
	dc.b	$04, dKick, $02, dSnare
	smpsJump            SunsetHill2_Jump00

SunsetHill2_Voices:
;	Voice $00
;	$07
;	$00, $01, $02, $04, 	$54, $54, $54, $54, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$07, $07, $07, $07, 	$89, $8B, $8C, $8D
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $14, $14, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $0D, $0C, $0B, $09

;	Voice $01
;	$3A
;	$61, $3C, $14, $31, 	$9C, $DB, $9C, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $00, 	$1F, $0F, $0F, $AF, 	$21, $47, $31, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $06
	smpsVcCoarseFreq    $01, $04, $0C, $01
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $00, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $31, $47, $21

;	Voice $02
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$10, $07, $10, $07, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $16, $00, $1A

