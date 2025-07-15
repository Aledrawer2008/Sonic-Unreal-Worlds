Baloonkid_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Baloonkid_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $03, $02

	smpsHeaderDAC       Baloonkid_DAC
	smpsHeaderFM        Baloonkid_FM1,	$00, $10
	smpsHeaderFM        Baloonkid_FM2,	$F4, $05
	smpsHeaderFM        Baloonkid_FM3,	$DC, $07
	smpsHeaderFM        Baloonkid_FM4,	$DC, $07
	smpsHeaderFM        Baloonkid_FM5,	$DC, $07
	smpsHeaderPSG       Baloonkid_PSG1,	$DC, $01, $00, $00
	smpsHeaderPSG       Baloonkid_PSG2,	$DC, $00, $00, $00
	smpsHeaderPSG       Baloonkid_PSG3,	$00, $01, $00, $00

; FM1 Data
Baloonkid_FM1:
	smpsSetvoice        $00
	dc.b	nG2, $02, $02, $02, nD2, $02, nG2, nG2, nG2, nD2, nRst, nD2
	dc.b	nA2, nD2, nB2, nA2, nG2, nFs2, nG2, nG2, nG2, nD2, nG2, nG2
	dc.b	nG2, nD2, nRst, nD2, nA2, nD2, nB2, nA2, nG2, nFs2, nG2, nG2
	dc.b	nG2, nG2, nG2, nG2, nG2, nG2, nD2, nD2, nD2, nD2, nRst, nD2
	dc.b	nD2, nD2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nD2, nD2
	dc.b	nD2, nD2, nRst, nFs2, nE2, nD2, nG2, nG2, nG2, nG2, nRst, nG2
	dc.b	nG2, nG2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nC2, nC2
	dc.b	nC2, nC2, nRst, nC2, nC2, nC2, nD2, nD2, nD2, nD2, nD2, nD2
	dc.b	nD2, nFs1

Baloonkid_Jump05:
	smpsSetvoice        $00
	dc.b	nG2, $02, $02, $02, nD2, $02, nG2, nG2, nG2, nG2, nD2, nD2
	dc.b	nD2, nA1, nD2, nD2, nD2, nD2, nE2, nE2, nE2, nB1, nE2, nE2
	dc.b	nE2, nE2, nD2, nD2, nD2, nD2, nRst, nFs2, nE2, nD2, nG2, nG2
	dc.b	nG2, nG2, nG2, nG2, nG2, nD2, nE2, nE2, nE2, nE2, nRst, nE2
	dc.b	nE2, nE2, nC2, nC2, nC2, nC2, nC2, nC2, nC2, nC2, nD2, nD2
	dc.b	nD2, nD2, nRst, nFs2, nE2, nD2, nG2, nG2, nG2, nG2, nG2, nG2
	dc.b	nG2, nG2, nD2, nD2, nD2, nD2, nRst, nD2, nD2, nD2, nG2, nG2
	dc.b	nG2, nG2, nG2, nG2, nG2, nG2, nD2, nD2, nD2, nD2, nRst, nD2
	dc.b	nE2, nFs2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nD2, nD2
	dc.b	nD2, nD2, nRst, nD2, nD2, nD2, nE2, nE2, nE2, nE2, nE2, nE2
	dc.b	nE2, nE2, nD2, nD2, nD2, nD2, nRst, nFs2, nE2, nD2, nG2, nG2
	dc.b	nG2, nG2, nRst, nG2, nG2, nG2, nE2, nE2, nE2, nE2, nE2, nE2
	dc.b	nE2, nE2, nC2, nC2, nC2, nC2, nRst, nC2, nC2, nC2, nD2, nD2
	dc.b	nD2, nD2, nD2, nD2, nD2, nFs1, nG2, nG2, nG2, nD2, nG2, nG2
	dc.b	nG2, nG2, nD2, nD2, nD2, nA1, nD2, nD2, nD2, nD2, nE2, nE2
	dc.b	nE2, nB1, nE2, nE2, nE2, nE2, nD2, nD2, nD2, nD2, nRst, nFs2
	dc.b	nE2, nD2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nD2, nE2, nE2
	dc.b	nE2, nE2, nRst, nE2, nE2, nE2, nC2, nC2, nC2, nC2, nC2, nC2
	dc.b	nC2, nC2, nD2, nD2, nD2, nD2, nRst, nFs2, nE2, nD2, nG2, $14
	dc.b	nRst, $2C, $40, $40, $40, nG2, $02, $02, $02, $02, $02, $02
	dc.b	$02, $02, nD2, $02, $02, $02, $02, nRst, $02, nD2, nD2, nD2
	dc.b	nE2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nD2, nD2, nD2, nD2
	dc.b	nRst, nFs2, nE2, nD2, nG2, nG2, nG2, nG2, nRst, nG2, nG2, nG2
	dc.b	nE2, nE2, nE2, nE2, nE2, nE2, nE2, nE2, nC2, nC2, nC2, nC2
	dc.b	nRst, nC2, nC2, nC2, nD2, nD2, nD2, nD2, nD2, nD2, nD2, nFs1
	dc.b	nG2, nG2, nG2, nD2, nG2, nG2, nG2, nG2, nD2, nD2, nD2, nA1
	dc.b	nD2, nD2, nD2, nD2, nE2, nE2, nE2, nB1, nE2, nE2, nE2, nE2
	dc.b	nD2, nD2, nD2, nD2, nRst, nFs2, nE2, nD2, nG2, nG2, nG2, nG2
	dc.b	nG2, nG2, nG2, nD2, nE2, nE2, nE2, nE2, nRst, nE2, nE2, nE2
	dc.b	nC2, nC2, nC2, nC2, nC2, nC2, nC2, nC2, nD2, nD2, nD2, nD2
	dc.b	nRst, nFs2, nE2, nD2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2
	dc.b	nD2, nD2, nD2, nD2, nRst, nD2, nD2, nD2, nE2, nE2, nE2, nE2
	dc.b	nE2, nE2, nE2, nE2, nD2, nD2, nD2, nD2, nRst, nFs2, nE2, nD2
	dc.b	nG2, nG2, nG2, nG2, nRst, nG2, nG2, nG2, nE2, nE2, nE2, nE2
	dc.b	nE2, nE2, nE2, nE2, nC2, nC2, nC2, nC2, nRst, nC2, nC2, nC2
	dc.b	nD2, nD2, nD2, nD2, nD2, nD2, nD2, nFs1
	smpsJump            Baloonkid_Jump05

; FM2 Data
Baloonkid_FM2:
	dc.b	nRst, $40, $06
	smpsModSet	$0F,$01,$04,$05
	smpsSetvoice        $02
	dc.b	nD5, $02, nG5, nA5, nB5, nC6, nA5, $06, nB5, $01, nA5, nG5
	dc.b	$04, nFs5, nG5, $08, nD6, $04, nG5, nFs5, $06, nG5, $01, nFs5
	dc.b	nE5, $04, nD5, nRst, $08, nD6, $02, nB5, nA5, nG5, nG5, $04
	dc.b	nFs5, nG5, nA5, nE5, $08, nG5, $04, nA5, nFs5, $10

Baloonkid_Jump06:
	dc.b	nRst, $06
	smpsSetvoice        $02
	dc.b	nD5, $02, nG5, nA5, nB5, nC6, nA5, $06, nB5, $01, nA5, nG5
	dc.b	$04, nFs5, nG5, $08, nD6, $04, nG5, nFs5, $06, nG5, $01, nFs5
	dc.b	nE5, $04, nD5, nRst, $08, nD6, $02, nB5, nA5, nG5, nG5, $04
	dc.b	nFs5, nG5, nB5, nC6, nE5, nG5, nB5, nA5, $10, nB5, $06, nC6
	dc.b	$02, nD6, nG5, nRst, nG5, $10, nRst, $02, nB5, $06, nC6, $02
	dc.b	nD6, nG6, nRst, nG6, $10, nRst, $08, nD5, $02, nG5, nA5, nB5
	dc.b	nC6, nA5, $06, nB5, $01, nA5, nG5, $04, nFs5, nG5, $08, nD6
	dc.b	$04, nG5, nFs5, nG5, $02, nFs5, nE5, $04, nD5, nRst, $08, nD6
	dc.b	$02, nB5, nA5, nG5, nG5, $04, nFs5, nG5, nA5, nE5, $08, nG5
	dc.b	$04, nA5, nFs5, $10, nRst, $06, nD5, $02, nG5, nA5, nB5, nC6
	dc.b	nA5, $06, nB5, $01, nA5, nG5, $04, nFs5, nG5, $08, nD6, $04
	dc.b	nG5, nFs5, $06, nG5, $01, nFs5, nE5, $04, nD5, nRst, $08, nD6
	dc.b	$02, nB5, nA5, nG5, nG5, $04, nFs5, nG5, nB5, nC6, nE5, nG5
	dc.b	nB5, nA5, $10, nG5, $14, nRst, $2C, $40
	smpsAlterPitch	$0C
	dc.b	nG4, $10, nD4, nG4, nD4, $04, nFs4, nA4, nC5, nG4, nB4, nD5
	dc.b	nG5, nE4, nG4, nB4, nE5, nE4, nFs4, nG4, nA4, nG4, nFs4, nE4
	dc.b	nFs4, nG4, nB4, nD5, nG5, nD4, nFs4, nA4, nD5, nE4, nFs4, nG4
	dc.b	nA4, nG4, nFs4, nE4, nFs4, nG4, nB4, nD5, nG5, nE4, nG4, nB4
	dc.b	nE5, nE4, nFs4, nG4, nA4, nG4, nFs4, nD5, nFs4, nG4, nB4, nD5
	dc.b	nG5, nD4, nFs4, nA4, nD5, nE4, nFs4, nG4, nA4, nD4, nE4, nFs4
	dc.b	nA4, nG4, nB4, nD5, nG5, nE4, nG4, nB4, nE5, nC4, nE4, nG4
	dc.b	nC5, nD4, nE4, nFs4, nA4, nRst, $06
	smpsAlterPitch	$F4
	dc.b	nD5, $02, nG5, nA5, nB5, nC6, nA5, $06, nB5, $01, nA5, nG5
	dc.b	$04, nFs5, nG5, $08, nD6, $04, nG5, nFs5, $06, nG5, $01, nFs5
	dc.b	nE5, $04, nD5, nRst, $08, nD6, $02, nB5, nA5, nG5, nG5, $04
	dc.b	nFs5, nG5, nA5, nE5, $08, nG5, $04, nA5, nG5, $08, nFs5
	smpsJump            Baloonkid_Jump06

; FM3 Data
Baloonkid_FM3:
;	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nG5, $04, nG4, nRst, $02, nD5, nG5, $04, nD5, nD4, nRst, $02
	dc.b	nA4, nD4, $04, nG5, nG4, nRst, $02, nD5, nG5, $04, nD5, nD4
	dc.b	nRst, $02, nA4, nD4, $04, nG5, nG4, nRst, $02, nD5, nG4, $04
	dc.b	nD5, nD4, nRst, $02, nA4, nD4, $04, nE5, nE5, nRst, $02, nB4
	dc.b	nE5, $04, nD5, nD5, nRst, $02, nA4, nD5, $04, nG5, nG4, nRst
	dc.b	$02, nD5, nG5, $04, nE5, nE4, nRst, $02, nB4, nE4, $04, nC5
	dc.b	nC5, nRst, $02, nG4, nC5, $04, nD5, nD5, nRst, $02, nA4, nD5
	dc.b	$04

Baloonkid_Jump04:
	smpsSetvoice        $01
	dc.b	nB4, $04, nD5, $02, $02, nRst, $02, nD5, nG5, $04, nFs4, nA4
	dc.b	$02, $02, nRst, $02, nA4, nD5, $04, nE5, nB4, $02, $02, nRst
	dc.b	$02, nB4, nE4, $04, nFs4, nD5, nRst, $02, nA4, nD5, $04, nG5
	dc.b	nD5, $02, $02, nRst, $02, nD5, nG4, $04, nE5, nE5, nRst, $02
	dc.b	nB4, nE5, $04, nE4, nG4, $02, $02, nRst, $02, nG4, nC5, $04
	dc.b	nFs4, nFs4, nRst, $02, nA4, nD5, $04, nB4, nD5, $02, $02, nRst
	dc.b	$02, nD5, nG5, $04, nFs4, nA4, $02, $02, nRst, $02, nA4, nD5
	dc.b	$04, nB4, nD5, $02, $02, nRst, $02, nD5, nG5, $04, nRst, $10
	dc.b	nG5, $04, nG4, nRst, $02, nD5, nG4, $04, nD5, nD4, nRst, $02
	dc.b	nA4, nD4, $04, nE5, nE5, nRst, $02, nB4, nE5, $04, nD5, nD5
	dc.b	nRst, $02, nA4, nD5, $04, nG5, nG4, nRst, $02, nD5, nG5, $04
	dc.b	nE5, nE4, nRst, $02, nB4, nE4, $04, nC5, nC5, nRst, $02, nG4
	dc.b	nC5, $04, nD5, nD5, nRst, $02, nA4, nD5, $04, nB4, nD5, $02
	dc.b	$02, nRst, $02, nD5, nG5, $04, nFs4, nA4, $02, $02, nRst, $02
	dc.b	nA4, nD5, $04, nE5, nB4, $02, $02, nRst, $02, nB4, nE4, $04
	dc.b	nFs4, nD5, nRst, $02, nA4, nD5, $04, nG5, nD5, $02, $02, nRst
	dc.b	$02, nD5, nG4, $04, nE5, nE5, nRst, $02, nB4, nE5, $04, nE4
	dc.b	nG4, $02, $02, nRst, $02, nG4, nC5, $04, nFs4, nFs4, nRst, $02
	dc.b	nA4, nD5, $04, nG5, nG4, nRst, $02, nD5, nG4, $04, nD5, nD4
	dc.b	nRst, $02, nA4, nD4, $04, nE5, nE5, nRst, $02, nB4, nE5, $04
	dc.b	nD5, nD5, nRst, $02, nA4, nD5, $04, nG5, nG4, nRst, $02, nD5
	dc.b	nG5, $04, nE5, nE4, nRst, $02, nB4, nE4, $04, nC5, nC5, nRst
	dc.b	$02, nG4, nC5, $04, nD5, nD5, nRst, $02, nA4, nD5, $04, nB4
	dc.b	nD5, $02, $02, nRst, $02, nD5, nG5, $04, nFs4, nA4, $02, $02
	dc.b	nRst, $02, nA4, nD5, $04, nE5, nB4, $02, $02, nRst, $02, nB4
	dc.b	nE4, $04, nFs4, nD5, nRst, $02, nA4, nD5, $04, nG5, nD5, $02
	dc.b	$02, nRst, $02, nD5, nG4, $04, nE5, nE5, nRst, $02, nB4, nE5
	dc.b	$04, nE4, nG4, $02, $02, nRst, $02, nG4, nC5, $04, nFs4, nFs4
	dc.b	nRst, $02, nA4, nD5, $04, nG5, nG4, nRst, $02, nD5, nG4, $04
	dc.b	nD5, nD4, nRst, $02, nA4, nD4, $04, nE5, nE5, nRst, $02, nB4
	dc.b	nE5, $04, nD5, nD5, nRst, $02, nA4, nD5, $04, nG5, nG4, nRst
	dc.b	$02, nD5, nG5, $04, nE5, nE4, nRst, $02, nB4, nE4, $04, nC5
	dc.b	nC5, nRst, $02, nG4, nC5, $04, nD5, nD5, nRst, $02, nA4, nD5
	dc.b	$04, nB4, nD5, $02, $02, nRst, $02, nD5, nG5, $04, nFs4, nA4
	dc.b	$02, $02, nRst, $02, nA4, nD5, $04, nE5, nB4, $02, $02, nRst
	dc.b	$02, nB4, nE4, $04, nFs4, nD5, nRst, $02, nA4, nD5, $04, nG5
	dc.b	nD5, $02, $02, nRst, $02, nD5, nG4, $04, nE5, nE5, nRst, $02
	dc.b	nB4, nE5, $04, nE4, nG4, $02, $02, nRst, $02, nG4, nC5, $04
	dc.b	nFs4, nFs4, nRst, $02, nA4, nD5, $04, nG5, nG4, nRst, $02, nD5
	dc.b	nG4, $04, nD5, nD4, nRst, $02, nA4, nD4, $04, nE5, nE5, nRst
	dc.b	$02, nB4, nE5, $04, nD5, nD5, nRst, $02, nA4, nD5, $04, nG5
	dc.b	nG4, nRst, $02, nD5, nG5, $04, nE5, nE4, nRst, $02, nB4, nE4
	dc.b	$04, nC5, nC5, nRst, $02, nG4, nC5, $04, nD5, nD5, nRst, $02
	dc.b	nA4, nD5, $04
	smpsJump            Baloonkid_Jump04

; FM4 Data
Baloonkid_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nB4, $04, $04, nRst, $04, nD5, $02, $02, nA4, $04, nFs4, nRst
	dc.b	nFs4, nD5, nB4, nRst, nD5, $02, $02, nA4, $04, nFs4, nRst, nFs4
	dc.b	nD5, nB4, nRst, nB4, nA4, nFs4, nRst, nFs4, nB4, nB4, $02, $02
	dc.b	nRst, $04, nB4, $02, $02, nA4, $04, $02, $02, nRst, $04, nA4
	dc.b	$02, $02, nD5, $04, nB4, nRst, nD5, $02, $02, nB4, $04, nG4
	dc.b	nRst, nG4, nE4, nE4, nRst, nE4, nA4, nA4, $02, $02, nRst, $04
	dc.b	nA4, $02, $02
	smpsPan             panRight, $00

Baloonkid_Jump02:
	smpsSetvoice        $01
	dc.b	nD5, $04, nB4, nRst, nD5, $02, $02, nA4, $04, nFs4, nRst, nA4
	dc.b	$02, $02, nB4, $04, nG4, nRst, nG4, nA4, nA4, $02, $02, nRst
	dc.b	$04, nA4, $02, $02, nD5, $04, nB4, nRst, nB4, nB4, nB4, $02
	dc.b	$02, nRst, $04, nB4, $02, $02, nG4, $04, nE4, nRst, nG4, $02
	dc.b	$02, nA4, $04, $02, $02, nRst, $04, nA4, $02, $02, nD5, $04
	dc.b	nB4, nRst, nD5, $02, $02, nA4, $04, nFs4, nRst, nA4, $02, $02
	dc.b	nD5, $04, nB4, nRst, nD5, $02, $02, nRst, $10, nD5, $04, nB4
	dc.b	nRst, nB4, nA4, nFs4, nRst, nFs4, nB4, nB4, $02, $02, nRst, $04
	dc.b	nB4, $02, $02, nA4, $04, $02, $02, nRst, $04, nA4, $02, $02
	dc.b	nD5, $04, nB4, nRst, nD5, $02, $02, nB4, $04, nG4, nRst, nG4
	dc.b	nE4, nE4, nRst, nE4, nA4, nA4, $02, $02, nRst, $04, nA4, $02
	dc.b	$02, nD5, $04, nB4, nRst, nD5, $02, $02, nA4, $04, nFs4, nRst
	dc.b	nA4, $02, $02, nB4, $04, nG4, nRst, nG4, nA4, nA4, $02, $02
	dc.b	nRst, $04, nA4, $02, $02, nD5, $04, nB4, nRst, nB4, nB4, nB4
	dc.b	$02, $02, nRst, $04, nB4, $02, $02, nG4, $04, nE4, nRst, nG4
	dc.b	$02, $02, nA4, $04, $02, $02, nRst, $04, nA4, $02, $02, nD5
	dc.b	$04, nB4, nRst, nB4, nA4, nFs4, nRst, nFs4, nB4, nB4, $02, $02
	dc.b	nRst, $04, nB4, $02, $02, nA4, $04, $02, $02, nRst, $04, nA4
	dc.b	$02, $02, nD5, $04, nB4, nRst, nD5, $02, $02, nB4, $04, nG4
	dc.b	nRst, nG4, nE4, nE4, nRst, nE4, nA4, nA4, $02, $02, nRst, $04
	dc.b	nA4, $02, $02, nD5, $04, nB4, nRst, nD5, $02, $02, nA4, $04
	dc.b	nFs4, nRst, nA4, $02, $02, nB4, $04, nG4, nRst, nG4, nA4, nA4
	dc.b	$02, $02, nRst, $04, nA4, $02, $02, nD5, $04, nB4, nRst, nB4
	dc.b	nB4, nB4, $02, $02, nRst, $04, nB4, $02, $02, nG4, $04, nE4
	dc.b	nRst, nG4, $02, $02, nA4, $04, $02, $02, nRst, $04, nA4, $02
	dc.b	$02, nD5, $04, nB4, nRst, nB4, nA4, nFs4, nRst, nFs4, nB4, nB4
	dc.b	$02, $02, nRst, $04, nB4, $02, $02, nA4, $04, $02, $02, nRst
	dc.b	$04, nA4, $02, $02, nD5, $04, nB4, nRst, nD5, $02, $02, nB4
	dc.b	$04, nG4, nRst, nG4, nE4, nE4, nRst, nE4, nA4, nA4, $02, $02
	dc.b	nRst, $04, nA4, $02, $02, nD5, $04, nB4, nRst, nD5, $02, $02
	dc.b	nA4, $04, nFs4, nRst, nA4, $02, $02, nB4, $04, nG4, nRst, nG4
	dc.b	nA4, nA4, $02, $02, nRst, $04, nA4, $02, $02, nD5, $04, nB4
	dc.b	nRst, nB4, nB4, nB4, $02, $02, nRst, $04, nB4, $02, $02, nG4
	dc.b	$04, nE4, nRst, nG4, $02, $02, nA4, $04, $02, $02, nRst, $04
	dc.b	nA4, $02, $02, nD5, $04, nB4, nRst, nB4, nA4, nFs4, nRst, nFs4
	dc.b	nB4, nB4, $02, $02, nRst, $04, nB4, $02, $02, nA4, $04, $02
	dc.b	$02, nRst, $04, nA4, $02, $02, nD5, $04, nB4, nRst, nD5, $02
	dc.b	$02, nB4, $04, nG4, nRst, nG4, nE4, nE4, nRst, nE4, nA4, nA4
	dc.b	$02, $02, nRst, $04, nA4, $02, $02
	smpsJump            Baloonkid_Jump02

; FM5 Data
Baloonkid_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nD5, $04, nG5, nRst, nG4, nD4, nD5, nRst, nD5, nG4, nG5, nRst
	dc.b	nG4, nD4, nD5, nRst, nD5, nG4, nG5, nRst, nG5, nD4, nD5, nRst
	dc.b	nD5, nE4, nE4, nRst, nE4, nD4, nD4, nRst, nD4, nG4, nG5, nRst
	dc.b	nG4, nE4, nE5, nRst, nE5, nC4, nC4, nRst, nC4, nD4, nD4, nRst
	dc.b	nD4
	smpsPan             panLeft, $00

Baloonkid_Jump01:
	smpsSetvoice        $01
	dc.b	nG4, $04, $04, nRst, $04, nG4, nD4, nD4, nRst, nD4, nE4, nE5
	dc.b	nRst, nE5, nD4, nD4, nRst, nD4, nG4, nG5, nRst, nG5, nE4, nE4
	dc.b	nRst, nE4, nC4, nC4, nRst, nC4, nD4, nD4, nRst, nD4, nG4, nG4
	dc.b	nRst, nG4, nD4, nD4, nRst, nD4, nG4, nG4, nRst, nG4, nRst, $10
	dc.b	nG4, $04, nG5, nRst, nG5, nD4, nD5, nRst, nD5, nE4, nE4, nRst
	dc.b	nE4, nD4, nD4, nRst, nD4, nG4, nG5, nRst, nG4, nE4, nE5, nRst
	dc.b	nE5, nC4, nC4, nRst, nC4, nD4, nD4, nRst, nD4, nG4, nG4, nRst
	dc.b	nG4, nD4, nD4, nRst, nD4, nE4, nE5, nRst, nE5, nD4, nD4, nRst
	dc.b	nD4, nG4, nG5, nRst, nG5, nE4, nE4, nRst, nE4, nC4, nC4, nRst
	dc.b	nC4, nD4, nD4, nRst, nD4, nG4, nG5, nRst, nG5, nD4, nD5, nRst
	dc.b	nD5, nE4, nE4, nRst, nE4, nD4, nD4, nRst, nD4, nG4, nG5, nRst
	dc.b	nG4, nE4, nE5, nRst, nE5, nC4, nC4, nRst, nC4, nD4, nD4, nRst
	dc.b	nD4, nG4, nG4, nRst, nG4, nD4, nD4, nRst, nD4, nE4, nE5, nRst
	dc.b	nE5, nD4, nD4, nRst, nD4, nG4, nG5, nRst, nG5, nE4, nE4, nRst
	dc.b	nE4, nC4, nC4, nRst, nC4, nD4, nD4, nRst, nD4, nG4, nG5, nRst
	dc.b	nG5, nD4, nD5, nRst, nD5, nE4, nE4, nRst, nE4, nD4, nD4, nRst
	dc.b	nD4, nG4, nG5, nRst, nG4, nE4, nE5, nRst, nE5, nC4, nC4, nRst
	dc.b	nC4, nD4, nD4, nRst, nD4, nG4, nG4, nRst, nG4, nD4, nD4, nRst
	dc.b	nD4, nE4, nE5, nRst, nE5, nD4, nD4, nRst, nD4, nG4, nG5, nRst
	dc.b	nG5, nE4, nE4, nRst, nE4, nC4, nC4, nRst, nC4, nD4, nD4, nRst
	dc.b	nD4, nG4, nG5, nRst, nG5, nD4, nD5, nRst, nD5, nE4, nE4, nRst
	dc.b	nE4, nD4, nD4, nRst, nD4, nG4, nG5, nRst, nG4, nE4, nE5, nRst
	dc.b	nE5, nC4, nC4, nRst, nC4, nD4, nD4, nRst, nD4
	smpsJump            Baloonkid_Jump01

; PSG1 Data
Baloonkid_PSG1:
	dc.b	nRst, $40
	smpsPSGvoice        fTone_05
	dc.b	nG4, $10, nD4, $08, nFs4, nE4, $04, nFs4, nG4, nA4, nG4, nFs4
	dc.b	nE4, nFs4, nG4, $10, nE4, nC4, $04, nD4, nE4, nFs4, nG4, nFs4
	dc.b	nE4, nFs4

Baloonkid_Jump07:
	smpsPSGvoice        fTone_05
	dc.b	nG4, $10, nD4, $08, nFs4, nE4, $04, nFs4, nG4, nA4, nG4, nFs4
	dc.b	nD5, nFs4, nG4, $10, nD4, nC4, $04, nE4, nG4, nC5, nD4, nE4
	dc.b	nFs4, nA4, nG4, $10, nD4, nG4, nD4, $04, nFs4, nA4, nC5, nG4
	dc.b	nB4, nD5, nG5, nD4, nFs4, nA4, nC5, nE4, nFs4, nG4, nA4, nG4
	dc.b	nFs4, nE4, nFs4, nG4, nB4, nD5, nG5, nE4, nG4, nB4, nD5, nC4
	dc.b	nD4, nE4, nFs4, nG4, nFs4, nE4, nFs4, nG4, nB4, nD5, nG5, nD4
	dc.b	nFs4, nA4, nC5, nE4, nFs4, nG4, nA4, nG4, nFs4, nD5, nFs4, nG4
	dc.b	nB4, nD5, nG5, nD4, nFs4, nA4, nD5, nC4, nE4, nG4, nC5, nD4
	dc.b	nE4, nFs4, nA4, nB5, $14, nRst, $2C, $40, $40, $40, $40, $40
	dc.b	$40, $40, nG4, $10, nD4, $08, nFs4, nE4, $04, nFs4, nG4, nA4
	dc.b	nG4, nFs4, nE4, nFs4, nG4, $10, nE4, nC4, $04, nD4, nE4, nFs4
	dc.b	nG4, nFs4, nE4, nFs4
	smpsJump            Baloonkid_Jump07

; PSG2 Data
Baloonkid_PSG2:
	smpsStop

; PSG3 Data
Baloonkid_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $40, $40, $40
	smpsPSGform         $E7

Baloonkid_Loop01:
	smpsPSGvoice        fTone_02

Baloonkid_Loop00:
	dc.b	nAb6, $02
	smpsLoop            $00, $07, Baloonkid_Loop00
	smpsPSGvoice        fTone_01
	dc.b	$02
	smpsLoop            $01, $1C, Baloonkid_Loop01
	dc.b	nRst, $40
	smpsLoop            $02, $02, Baloonkid_Loop01
	dc.b	nRst, $40
	smpsJump            Baloonkid_Loop01

; DAC Data
Baloonkid_DAC:
	dc.b	dKickAlt, $04, dSnareAlt, dKickAlt, $02, $02, dSnareAlt, $02, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, nRst, dKickAlt, dSnareAlt, nRst, nRst, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst

Baloonkid_Jump00:
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $02, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, nRst, dKickAlt, dSnareAlt
	dc.b	nRst, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, nRst, dKickAlt, dSnareAlt, nRst, $85, nRst, $3E
	dc.b	dKickAlt, $02, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, $85, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, nRst, dKickAlt, dSnareAlt, nRst, $85, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, $85, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, $85, dKickAlt, dSnareAlt
	dc.b	nRst, nRst, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, $85, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, $85, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, nRst, dKickAlt, $85, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, nRst, dKickAlt, dSnareAlt, nRst, nRst, dKickAlt, dSnareAlt
	dc.b	nRst, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt, nRst, dKickAlt, nRst, dSnareAlt
	dc.b	dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, nRst, dSnareAlt, nRst, dKickAlt, dKickAlt, dSnareAlt
	dc.b	nRst
	smpsJump            Baloonkid_Jump00

Baloonkid_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
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
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $07, $00, $07, 	$0F, $3F, $0F, $2F, 	$17, $02, $17, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $02, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0E, $17, $0E, $17

;	Voice $02
;	$3D
;	$01, $02, $02, $02, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $17, $17, $17, 	$1C, $1A, $1A, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $00
	smpsVcTotalLevel    $08, $1A, $0D, $1C