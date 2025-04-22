SunsetPark_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SunsetPark_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       SunsetPark_DAC
	smpsHeaderFM        SunsetPark_FM1,	$0C, $11
	smpsHeaderFM        SunsetPark_FM2,	$00, $10
	smpsHeaderFM        SunsetPark_FM3,	$00, $19
	smpsHeaderFM        SunsetPark_FM4,	$00, $19
	smpsHeaderFM        SunsetPark_FM5,	$00, $19
	smpsHeaderPSG       SunsetPark_PSG1,	$DC, $00, $00, $00
	smpsHeaderPSG       SunsetPark_PSG2,	$DC, $00, $00, $00
	smpsHeaderPSG       SunsetPark_PSG3,	$23, $00, $00, $00

; FM1 Data
SunsetPark_FM1:
	dc.b	nRst, $7F, $7F, $7F, $43
	smpsSetvoice        $01
	dc.b	nA2, $04, nAb2, nFs2, nE2, nEb2, $08, nCs2, $04, nA1, nCs2, $02
	dc.b	nRst, nCs2, $03, nRst, $01, nCs2, $08, nEb2, $04, nE2, nFs2, nAb2
	dc.b	nCs2, $08

SunsetPark_Jump05:
	smpsSetvoice        $01
	dc.b	nCs2, $08, nE2, nCs2, $03, nRst, $01, nCs2, $03, nRst, $01, nCs2
	dc.b	$08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2, $08, $08
	dc.b	nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst, $01, nCs2, $08
	dc.b	nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2, $08, $08, $08
	dc.b	nCs3, $04, nCs2, nB1, $08, $08, $08, nB2, $04, nB1, nA1, $08
	dc.b	$08, $08, nA2, $04, nA1, nB1, $08, $08, $08, nB2, $04, nB1
	dc.b	nCs2, $08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst
	dc.b	$01, nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2
	dc.b	$08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst, $01
	dc.b	nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2, $08
	dc.b	$08, $08, nCs3, $04, nCs2, nB1, $08, $08, $08, nB2, $04, nB1
	dc.b	nCs2, $08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst
	dc.b	$01, nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2
	dc.b	$08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst, $01
	dc.b	nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2, $08
	dc.b	$08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst, $01, nCs2
	dc.b	$08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2, $08, $08
	dc.b	$08, nCs3, $04, nCs2, nB1, $08, $08, $08, nB2, $04, nB1, nA1
	dc.b	$08, $08, $08, nA2, $04, nA1, nB1, $08, $08, $08, nB2, $04
	dc.b	nB1, nCs2, $08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03
	dc.b	nRst, $01, nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01
	dc.b	nCs2, $08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03, nRst
	dc.b	$01, nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01, nCs2
	dc.b	$08, $08, $08, nCs3, $04, nCs2, nB1, $08, $08, $08, nB2, $04
	dc.b	nB1, nCs2, $08, $08, nE2, $08, nCs2, $03, nRst, $01, nCs2, $03
	dc.b	nRst, $01, nCs2, $08, nFs2, nCs2, nAb2, $04, nCs2, $03, nRst, $01
	dc.b	nE2, $08, $08, nE3, $10, nE2, $08, $08, nE3, $10, nCs2, $03
	dc.b	nRst, $01, nCs2, $04, $08, $08, $03, nRst, $01, nCs2, $04, $03
	dc.b	nRst, $01, nCs2, $04, $08, $04, $03, nRst, $01, nCs2, $02, nRst
	dc.b	nCs2, $03, nRst, $01, nE2, $08, $08, nE3, $10, nE2, $08, $08
	dc.b	nE3, $10, nCs2, $0F, nRst, $01, nCs2, $03, nD2, nEb2, $02, nE2
	dc.b	$27, nRst, $01, nE2, $08, $08, nE3, $10, nE2, $08, $08, nE3
	dc.b	$10, nCs2, $03, nRst, $01, nCs2, $04, $08, $08, $03, nRst, $01
	dc.b	nCs2, $04, $03, nRst, $01, nCs2, $04, $08, $04, $03, nRst, $01
	dc.b	nCs2, $02, nRst, nCs2, $03, nRst, $01, nA2, nRst, nB2, $0E, nAb2
	dc.b	$10, nB2, $08, nAb2, $03, nA2, nBb2, $02, nE3, $10, nCs2, $04
	dc.b	nEb2, nE2, nFs2, nAb2, nA2, nB2, nCs3, nEb3, nE3, nFs3, nAb3, nA3
	dc.b	nB3, nC4, nCs4, nCs2, $08
	smpsJump            SunsetPark_Jump05

; FM2 Data
SunsetPark_FM2:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $68

SunsetPark_Jump04:
	smpsSetvoice        $03
	dc.b	nCs4, $08, nB3, $02, nRst, $01, nBb3, $02, nRst, $01, nAb3, $02
	dc.b	$04, nBb3, $04, nB3, nCs4, nRst, $40, nCs4, $04, nB3, nCs4, nAb4
	dc.b	nRst, nG4, nRst, nFs4, nE4, nEb4, nE4, nFs4, nE4, nEb4, nCs4, nB3
	dc.b	nRst, $60, nCs4, $08, nB3, $02, nRst, $01, nBb3, $02, nRst, $01
	dc.b	nAb3, $02, $04, nBb3, $04, nB3, nCs4, nRst, $40, nCs4, $04, nB3
	dc.b	nCs4, nAb4, $08, nA4, $04, nRst, nB4, nE5, nEb5, nCs5, nB4, nAb4
	dc.b	nFs4, nE4, $03, nEb4, nCs4, $02
	smpsSetvoice        $02
	dc.b	nD5, $01, nEb5, nE5, $0E, $10, $10, $10, nFs5, $01, nG5, nAb5
	dc.b	$06, $10, nFs5, $08, nE5, $20, nFs5, $01, nG5, nAb5, $0E, $10
	dc.b	nE5, $10, nCs5, nB4, $01, nC5, nCs5, $06, nEb5, $10, nE5, $06
	dc.b	nRst, $02, nE5, $20, nD5, $01, nEb5, nE5, $0E, $10, $10, $10
	dc.b	nFs5, $01, nG5, nAb5, $04, nRst, $02, nAb5, $10, nFs5, $08, nE5
	dc.b	$06, nRst, $02, nE5, $08, nEb5, nCs5, nD5, $01, nEb5, nE5, $0E
	dc.b	nAb5, $10, nFs5, nE5, $08, nBb5, $03, nB5, nC6, $02, nCs6, $40
	dc.b	nRst, $7F, $7F, $7F, $7F, $64
	smpsJump            SunsetPark_Jump04

; FM3 Data
SunsetPark_FM3:
	smpsSetvoice        $00
	dc.b	nE4, $3C, nRst, $04, nFs4, $20, nAb4, $1C, nRst, $04, nE4, $40
	dc.b	nE3, $20, nB3, nAb3, $3C, nRst, $04, nFs4, $20, nAb4, $1C, nRst
	dc.b	$04, nE4, $40, nFs4, $20, nFs3, nE4, $3C

SunsetPark_Jump03:
	dc.b	nRst, $04
	smpsSetvoice        $00
	dc.b	nFs4, $20, nAb4, $1C, nRst, $04, nE4, $40, nA3, $20, nEb4, nE4
	dc.b	$3C, nRst, $04, nFs4, $20, nAb4, $1C, nRst, $04, nAb3, $20, nB3
	dc.b	nCs4, $3C, nRst, $04, nCs4, $3C, nRst, $04, nFs4, $20, nAb4, $1C
	dc.b	nRst, $04, nE4, $40, nE3, $20, nEb4, nAb3, $3C, nRst, $04, nFs4
	dc.b	$20, nAb4, $1C, nRst, $04, nAb3, $20, nB3, nE4, $3C, nRst, $04
	dc.b	nAb4, $3C, nRst, $04, nE5, $3C, nRst, $04, nE4, $3C, nRst, $04
	dc.b	nE4, $1E, nRst, $02, nAb4, $1E, nRst, $02, nAb4, $3C, nRst, $04
	dc.b	nCs5, $3C, nRst, $04, nAb4, $3C, nRst, $04, nE4, $3B, nRst, $05
	dc.b	nE4, $3C
	smpsJump            SunsetPark_Jump03

; FM4 Data
SunsetPark_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nCs4, $3C, nRst, $04, nAb3, $3C, nRst, $04, nCs4, $20, nB3, nFs4
	dc.b	nFs3, nCs4, $3C, nRst, $04, nAb3, $3C, nRst, $04, nAb3, $20, nFs3
	dc.b	nA3, nEb4, nCs4, $3C
	smpsPan             panLeft, $00

SunsetPark_Jump02:
	dc.b	nRst, $04
	smpsSetvoice        $00
	dc.b	nAb3, $3C, nRst, $04, nAb3, $20, nB3, nFs4, nFs3, nCs4, $3C, nRst
	dc.b	$04, nAb3, $3C, nRst, $04, nE4, $20, nFs3, nE4, $3C, nRst, $04
	dc.b	nAb3, $3C, nRst, $04, nAb3, $3C, nRst, $04, nAb3, $20, nB3, nA3
	dc.b	nB3, nCs4, $3C, nRst, $04, nCs4, $3C, nRst, $04, nE4, $20, nFs3
	dc.b	nAb4, $3C, nRst, $04, nE5, $3C, nRst, $04, nAb4, $3C, nRst, $04
	dc.b	nB4, $3C, nRst, $04, nCs5, $1E, nRst, $02, nB4, $1E, nRst, $02
	dc.b	nE5, $3C, nRst, $04, nAb4, $3C, nRst, $04, nB4, $3C, nRst, $04
	dc.b	nCs5, $3B, nRst, $05, nCs4, $3C
	smpsJump            SunsetPark_Jump02

; FM5 Data
SunsetPark_FM5:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	dc.b	nAb3, $3C, nRst, $04, nCs4, $3C, nRst, $04, nAb3, $20, nFs3, nA3
	dc.b	nEb4, nE4, $3C, nRst, $04, nCs4, $3C, nRst, $04, nCs4, $20, nB3
	dc.b	nE3, nB3, nAb3, $3C
	smpsPan             panRight, $00

SunsetPark_Jump01:
	dc.b	nRst, $04
	smpsSetvoice        $00
	dc.b	nCs4, $3C, nRst, $04, nCs4, $20, nFs3, nE3, nB3, nAb3, $3C, nRst
	dc.b	$04, nCs4, $3C, nRst, $04, nCs4, $20, nFs4, nAb4, $3C, nRst, $04
	dc.b	nE4, $3C, nRst, $04, nCs4, $3C, nRst, $04, nCs4, $20, nFs3, nFs4
	dc.b	nFs3, nE4, $3C, nRst, $04, nAb3, $3C, nRst, $04, nCs4, $20, nFs4
	dc.b	nCs4, $3C, nRst, $04, nB4, $3C, nRst, $04, nCs5, $3C, nRst, $04
	dc.b	nAb4, $3C, nRst, $04, nAb4, $1E, nRst, $02, nE5, $1E, nRst, $02
	dc.b	nB4, $3C, nRst, $04, nE5, $3C, nRst, $04, nE4, $3C, nRst, $04
	dc.b	nAb4, $3B, nRst, $05, nAb3, $3C
	smpsJump            SunsetPark_Jump01

; PSG1 Data
SunsetPark_PSG1:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_03
	dc.b	nE4, $04, nRst, nCs4, nRst, nFs4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nE4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nCs4, nRst, nA3, nRst, nCs4, nRst, nA3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nE4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nAb4, nRst, nCs4, nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nFs4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nA4, nRst, nAb4, nRst, nFs4, nRst, nE4
	dc.b	nRst, nEb4, nRst, nCs4, nRst, nB3, nRst, nAb3, nRst

SunsetPark_Jump08:
	smpsPSGvoice        fTone_03
	dc.b	nE4, $04, nRst, nCs4, nRst, nFs4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nE4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nCs4, nRst, nA3, nRst, nCs4, nRst, nA3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nE4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nAb4, nRst, nCs4, nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nFs4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nA4, nRst, nAb4, nRst, nFs4, nRst, nE4
	dc.b	nRst, nEb4, nRst, nCs4, nRst, nB3, nRst, nAb3
	smpsPSGvoice        $00
	dc.b	nE4, $01, nF4, nFs4, nG4, nAb4, $24, $04, nE4, $03, nRst, $01
	dc.b	nAb4, $04, nBb4, nAb4, nCs5, nAb5, $24
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nRst, nB4, $02, nRst, $01, nBb4, $02, nRst, $01, nAb4
	dc.b	$02, $04, nBb4, $04, nB4, nRst
	smpsPSGvoice        $00
	dc.b	nAb4, $08, nRst, $04, nAb4, $10, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $14
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nB4, nCs5, nAb5, nRst, nG5, nRst, nFs5, nE5, nEb5, nE5
	dc.b	nFs5, nE5, nEb5, nCs5
	smpsPSGvoice        $00
	dc.b	nE4, $01, nF4, nFs4, nG4, nAb4, $24, $04, nE4, $03, nRst, $01
	dc.b	nAb4, $04, nBb4, nAb4, nCs5, nAb5, $24
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nRst, nB4, $02, nRst, $01, nBb4, $02, nRst, $01, nAb4
	dc.b	$02, $04, nBb4, $04, nB4, nRst
	smpsPSGvoice        $00
	dc.b	nAb4, $08, nRst, $04, nAb4, $10, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $14
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nB4, nCs5, nAb5, nRst, nA5, nRst, nB5, nE6, nEb6, nCs6
	dc.b	nB5, nAb5, nFs5, nE5, $03, nEb5, nCs5, $02, nA3, $04, nBb3, nB3
	dc.b	nRst, $14, nA3, $04, nBb3, nB3, nRst, $14, nA4, $04, nBb4, nB4
	dc.b	nRst, nE5, nRst, nAb5, $08, nE5, $04, nEb5, nCs5, nB4, nA4, nAb4
	dc.b	nFs4, $03, nF4, nE4, $02, nA3, $04, nBb3, nB3, nRst, $14, nA3
	dc.b	$04, nBb3, nB3, nRst, $14, nA4, $04, nBb4, nB4, nRst, nE5, nRst
	dc.b	nAb5, nRst, nB3, nEb4, nE4, nFs4, nAb4, nA4, nB4, $03, nC5, nCs5
	dc.b	$02, nA3, $04, nBb3, nB3, nRst, $14, nA3, $04, nBb3, nB3, nRst
	dc.b	$14, nA4, $04, nBb4, nB4, $08, nE5, nAb5, nE5, $04, nEb5, nCs5
	dc.b	nB4, nA4, nAb4, nFs4, $03, nF4, nE4, $02, nD4, $01, nEb4, nE4
	dc.b	$06, nRst, $08, nCs4, $04, nRst, $0C, nE4, $04, nRst, nF4, $03
	dc.b	nFs4, nG4, $02, nAb4, $04, nRst, $0C, nBb3, $04, nB3, nCs4, nEb4
	dc.b	nE4, nFs4, nAb4, nA4, nB4, nCs5, nEb5, nE5, nFs5, nAb5, nA5, nB5
	smpsJump            SunsetPark_Jump08

; PSG2 Data
SunsetPark_PSG2:
	smpsPSGvoice        fTone_03
	dc.b	nE4, $04, nRst, nCs4, nRst, nFs4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nE4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nCs4, nRst, nA3, nRst, nCs4, nRst, nA3, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nE4, nRst, nCs4, nRst, nFs4, nRst, nCs4
	dc.b	nRst, nAb4, nRst, nCs4, nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nFs4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4
	dc.b	nRst, nE4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3
	dc.b	nRst, nEb4, nRst, nB3, nRst, nA4, nRst, nAb4, nRst, nFs4, nRst, nE4
	dc.b	nRst, nEb4, nRst, nCs4, nRst, nB3, nRst, nAb3, nRst, nE4

SunsetPark_Jump07:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_03
	dc.b	nCs4, nRst, nFs4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nB4, nRst
	dc.b	nCs4, nRst, nAb4, nRst, nCs4, nRst, nFs4, nRst, nCs4, nRst, nE4, nRst
	dc.b	nCs4, nRst, nAb4, nRst, nCs4, nRst, nE4, nRst, nCs4, nRst, nE4, nRst
	dc.b	nCs4, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst, nB3, nRst, nCs4, nRst
	dc.b	nA3, nRst, nCs4, nRst, nA3, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst
	dc.b	nB3, nRst, nE4, nRst, nCs4, nRst, nFs4, nRst, nCs4, nRst, nAb4, nRst
	dc.b	nCs4, nRst, nB4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nFs4, nRst
	dc.b	nCs4, nRst, nE4, nRst, nCs4, nRst, nAb4, nRst, nCs4, nRst, nE4, nRst
	dc.b	nCs4, nRst, nE4, nRst, nCs4, nRst, nEb4, nRst, nB3, nRst, nEb4, nRst
	dc.b	nB3, nRst, nA4, nRst, nAb4, nRst, nFs4, nRst, nE4, nRst, nEb4, nRst
	dc.b	nCs4, nRst, nB3, nRst, nAb3, nRst
	smpsPSGvoice        $00
	dc.b	nA4, $01, nBb4, nB4, nC5, nCs5, $24, $04, nAb4, $03, nRst, $01
	dc.b	nB4, $04, nCs5, nEb5, nE5, nCs6, $20
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nRst, nB4, $02, nRst, $01, nBb4, $02, nRst, $01, nAb4
	dc.b	$02, $04, nBb4, $04, nB4, nCs5, nRst
	smpsPSGvoice        $00
	dc.b	nCs5, $08, nRst, $04, nCs5, $10, nRst, $04, nB4, $08, nRst, $04
	dc.b	nB4, $10
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nB4, nCs5, nAb5, nRst, nG5, nRst, nFs5, nE5, nEb5, nE5
	dc.b	nFs5, nE5, nEb5, nCs5, nB4
	smpsPSGvoice        $00
	dc.b	nA4, $01, nBb4, nB4, nC5, nCs5, $24, $04, nAb4, $03, nRst, $01
	dc.b	nB4, $04, nCs5, nEb5, nE5, nCs6, $20
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nRst, nB4, $02, nRst, $01, nBb4, $02, nRst, $01, nAb4
	dc.b	$02, $04, nBb4, $04, nB4, nCs5, nRst
	smpsPSGvoice        $00
	dc.b	nCs5, $08, nRst, $04, nCs5, $10, nRst, $04, nB4, $08, nRst, $04
	dc.b	nB4, $10
	smpsPSGvoice        fTone_03
	dc.b	nCs5, $04, nB4, nCs5, nAb5, nRst, nA5, nRst, nB5, nE6, nEb6, nCs6
	dc.b	nB5, nAb5, nFs5, nE5, $03, nEb5, nCs5, $02, nA3, $04, nBb3, nB3
	dc.b	nRst, $14, nA3, $04, nBb3, nB3, nRst, $14, nA4, $04, nBb4, nB4
	dc.b	nRst, nE5, nRst, nAb5, $08, nE5, $04, nEb5, nCs5, nB4, nA4, nAb4
	dc.b	nFs4, $03, nF4, nE4, $02, nA3, $04, nBb3, nB3, nRst, $14, nA3
	dc.b	$04, nBb3, nB3, nRst, $14, nA4, $04, nBb4, nB4, nRst, nE5, nRst
	dc.b	nAb5, nRst, nB3, nEb4, nE4, nFs4, nAb4, nA4, nB4, $03, nC5, nCs5
	dc.b	$02, nA3, $04, nBb3, nB3, nRst, $14, nA3, $04, nBb3, nB3, nRst
	dc.b	$14, nA4, $04, nBb4, nB4, $08, nE5, nAb5, nE5, $04, nEb5, nCs5
	dc.b	nB4, nA4, nAb4, nFs4, $03, nF4, nE4, $02, nD4, $01, nEb4, nE4
	dc.b	$06, nRst, $08, nCs4, $04, nRst, $0C, nE4, $04, nRst, nF4, $03
	dc.b	nFs4, nG4, $02, nAb4, $04, nRst, $0C, nBb3, $04, nB3, nCs4, nEb4
	dc.b	nE4, nFs4, nAb4, nA4, nB4, nCs5, nEb5, nE5, nFs5, nAb5, nA5, nB5
	dc.b	nE4
	smpsJump            SunsetPark_Jump07

; PSG3 Data
SunsetPark_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $7F, $7F, $7F, $43
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02, $02, $02, $02, $02, $02, $02, $02, $10
	smpsPSGvoice        fTone_01
	dc.b	$02, nRst, $0E, nAb6, $02, nRst, $0E
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04
	smpsPSGform         $E7

SunsetPark_Jump06:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $04, $04, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04, $04, $04, $04, $04, $02, $02, $02, $02, $02, $02, $02
	dc.b	$02, $04, $04, $04, $04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04, $04, $04, $04, $04, $04
	smpsJump            SunsetPark_Jump06

; DAC Data
SunsetPark_DAC:
	dc.b	nRst, $7F, $7F, $7F, $3F, dKickAlt, $04, dSnareAlt, $08, $08, $08, dKickAlt
	dc.b	$04, dVLowTimpani, dSnareAlt, $08, $08, $04, $04, $04, $04, $85, $08

SunsetPark_Jump00:
	dc.b	dKickAlt, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08
	dc.b	dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt
	dc.b	$04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt
	dc.b	$04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04
	dc.b	dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $04, $04
	dc.b	$04, $04, $85, $08, dKickAlt, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08
	dc.b	dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08
	dc.b	dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04
	dc.b	$04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10
	dc.b	dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt
	dc.b	$08, dSnareAlt, $04, $04, $04, $04, $85, $08, dKickAlt, $04, $04, dSnareAlt
	dc.b	$08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08
	dc.b	$04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt
	dc.b	$10, $85, $08, dKickAlt, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt
	dc.b	$04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt
	dc.b	$04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $04, $04, $04, $04, $85
	dc.b	$08, dKickAlt, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt
	dc.b	$08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08
	dc.b	dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08
	dc.b	dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04
	dc.b	$04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $04
	dc.b	$04, $04, $04, $85, $08, dKickAlt, $04, $04, dSnareAlt, $08, dKickAlt, $04
	dc.b	$08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt
	dc.b	$08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08
	dc.b	$04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt
	dc.b	$10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04
	dc.b	dKickAlt, $08, dSnareAlt, $04, $04, $04, $04, $85, $08, dKickAlt, $04, $04
	dc.b	dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $10, dKickAlt
	dc.b	$08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt, $04, dKickAlt, $08
	dc.b	dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt, $04, $08, dSnareAlt
	dc.b	$04, dKickAlt, $08, dSnareAlt, $10, dKickAlt, $08, $04, $04, dSnareAlt, $08, dKickAlt
	dc.b	$04, $08, dSnareAlt, $04, dKickAlt, $08, dSnareAlt, $04, $04, $04, $04, $85
	dc.b	$08
	smpsJump            SunsetPark_Jump00

SunsetPark_Voices:
;	Voice $00
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $87, 	$1C, $22, $15, $7F
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
	smpsVcDecayLevel    $08, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $7F, $15, $22, $1C

;	Voice $01
;	$3B
;	$4E, $41, $40, $40, 	$9F, $1F, $1F, $1F, 	$0F, $0E, $09, $09
;	$00, $00, $00, $00, 	$EF, $EF, $EF, $EF, 	$27, $18, $18, $7F
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $00, $00, $01, $0E
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $0E, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0E, $0E, $0E, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $7F, $18, $18, $27

;	Voice $02
;	$3B
;	$46, $42, $42, $43, 	$10, $12, $19, $4F, 	$08, $05, $01, $01
;	$01, $01, $01, $01, 	$76, $F1, $F7, $F9, 	$41, $23, $2B, $7F
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $03, $02, $02, $06
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $19, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $05, $08
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $07
	smpsVcReleaseRate   $09, $07, $01, $06
	smpsVcTotalLevel    $7F, $2B, $23, $41

;	Voice $03
;	$38
;	$0A, $08, $01, $02, 	$14, $14, $10, $0E, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$99, $09, $09, $19, 	$28, $23, $24, $7F
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $08, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $10, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $7F, $24, $23, $28