Speedy_Park2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Speedy_Park2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       Speedy_Park2_DAC
	smpsHeaderFM        Speedy_Park2_FM1,	$00, $08
	smpsHeaderFM        Speedy_Park2_FM2,	$00, $09
	smpsHeaderFM        Speedy_Park2_FM3,	$00, $12
	smpsHeaderFM        Speedy_Park2_FM4,	$00, $09
	smpsHeaderFM        Speedy_Park2_FM5,	$00, $09
	smpsHeaderPSG       Speedy_Park2_PSG1,	$00, $08, $00, $00
	smpsHeaderPSG       Speedy_Park2_PSG2,	$00, $08, $00, $00
	smpsHeaderPSG       Speedy_Park2_PSG3,	$00, $03, $00, fTone_02

; DAC Data
Speedy_Park2_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $22
	smpsPan             panRight, $00
	dc.b	dHiTimpani, $08, dHiTimpani, $04, dHiTimpani, $04, dHiTimpani, $04, dHiTimpani, $04, dTimpani, $08
	dc.b	dTimpani, $04
	smpsPan             panCenter, $00
	dc.b	dTimpani, $04, dTimpani, $04, dTimpani, $04, dLowTimpani, $04, dLowTimpani, $04, dLowTimpani, $04
	dc.b	dLowTimpani, $04, dLowTimpani, $04, dLowTimpani, $04
	smpsPan             panLeft, $00
	dc.b	dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08
	dc.b	dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $08, dSnareAlt, $04
	dc.b	dSnareAlt, $04, dSnareAlt, $04, dLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04

Speedy_Park2_Jump00:
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08
	dc.b	dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $0C
	dc.b	dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14
	dc.b	dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C
	dc.b	dKickAlt, $04, dKickAlt, $08, dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04, dLowTimpani, $04
	dc.b	dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14
	dc.b	dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C
	dc.b	dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $0C, dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08
	dc.b	dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $08, dSnareAlt, $04
	dc.b	dSnareAlt, $04, dSnareAlt, $04, dLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08
	dc.b	dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $0C, dSnareAlt, $04
	dc.b	dSnareAlt, $04, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C
	dc.b	dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14
	dc.b	dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $0C, dKickAlt, $04
	dc.b	dKickAlt, $08, dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04, dLowTimpani, $04, dVLowTimpani, $04
	dc.b	dVLowTimpani, $04, dVLowTimpani, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C
	dc.b	dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C
	dc.b	dKickAlt, $0C, dSnareAlt, $08, dSnareAlt, $0C, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14
	dc.b	dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04
	dc.b	dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C
	dc.b	dSnareAlt, $0C, dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C
	dc.b	dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dSnareAlt, $0C, dSnareAlt, $0C
	dc.b	dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C
	dc.b	dKickAlt, $0C, dSnareAlt, $14, dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $0C, dSnareAlt, $08
	dc.b	dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dKickAlt, $0C, dSnareAlt, $08, dKickAlt, $0C
	dc.b	dSnareAlt, $0C, dKickAlt, $04, dKickAlt, $08, dSnareAlt, $04, dSnareAlt, $04, dSnareAlt, $04
	dc.b	dLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04, dVLowTimpani, $04
	smpsJump            Speedy_Park2_Jump00

; FM1 Data
Speedy_Park2_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $7F, $41, nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04, nAb2
	dc.b	$0C, nEb2, $0C, nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18, nB2
	dc.b	$0C, nRst, $08, nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C, nAb2
	dc.b	$0C, nB2, $0C, nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C, nFs2
	dc.b	$0C, nB2, $0C, nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08, nCs3
	dc.b	$04, nAb2, $0C, nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C, nRst
	dc.b	$14, nB2, $04, nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C, nCs3
	dc.b	$0C, nRst, $18, nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C, nB2
	dc.b	$0C, nF2, $0C

Speedy_Park2_Jump05:
	dc.b	nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C
	dc.b	nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08
	dc.b	nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C
	dc.b	nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C
	dc.b	nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C
	dc.b	nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04
	dc.b	nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18
	dc.b	nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C
	dc.b	nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C
	dc.b	nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08
	dc.b	nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C
	dc.b	nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C
	dc.b	nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C
	dc.b	nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04
	dc.b	nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18
	dc.b	nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C
	dc.b	nAb2, $0C, nB2, $0C, nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C
	dc.b	nFs2, $0C, nB2, $0C, nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08
	dc.b	nCs3, $04, nAb2, $0C, nB2, $0C, nF2, $0C, nAb2, $0C, nB2, $0C
	dc.b	nRst, $14, nB2, $04, nAb2, $0C, nEb2, $0C, nFs2, $0C, nB2, $0C
	dc.b	nCs3, $0C, nRst, $18, nB2, $0C, nRst, $08, nCs3, $04, nAb2, $0C
	dc.b	nB2, $0C, nF2, $0C, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nAb2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nEb3, $04
	dc.b	nAb2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nCs3, $04, nFs2, $08, nFs2, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nRst, $04
	dc.b	nAb2, $08, nEb3, $04, nAb2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nCs3, $04, nFs2, $08, nFs2, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nAb2, $08, nRst, $04
	dc.b	nAb2, $08, nRst, $04, nAb2, $08, nEb3, $04, nAb2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nCs3, $04
	dc.b	nFs2, $08, nFs2, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nAb2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nEb3, $04
	dc.b	nAb2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nCs3, $04, nFs2, $08, nFs2, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nRst, $04
	dc.b	nAb2, $08, nEb3, $04, nAb2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nCs3, $04, nFs2, $08, nFs2, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nAb2, $08, nRst, $04
	dc.b	nAb2, $08, nRst, $04, nAb2, $08, nEb3, $04, nAb2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nCs3, $04
	dc.b	nFs2, $08, nFs2, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nAb2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nEb3, $04
	dc.b	nAb2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nCs3, $04, nFs2, $08, nFs2, $04, nE2, $08, nRst, $04
	dc.b	nE2, $08, nRst, $04, nE2, $08, nRst, $04, nE2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nAb2, $08, nRst, $04, nAb2, $08, nRst, $04
	dc.b	nAb2, $08, nEb3, $04, nAb2, $08, nRst, $04, nAb2, $08, nAb2, $04
	dc.b	nBb2, $08, nRst, $04, nB2, $08, nRst, $04, nCs3, $08, nEb3, $04
	smpsJump            Speedy_Park2_Jump05

; FM2 Data
Speedy_Park2_FM2:
	smpsAlterNote       $01
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nFs3, $08, nAb3, $0C, nRst, $04, nB3, $14, nRst, $0C, nFs3, $04
	dc.b	nAb3, $0C, nRst, $08, nFs3, $04, nAb3, $0C, nFs3, $08, nAb3, $0C
	dc.b	nRst, $04, nB3, $14, nRst, $0C, nFs3, $04, nAb3, $0C, nRst, $08
	dc.b	nFs3, $04, nAb3, $0C, nFs3, $08, nAb3, $0C, nRst, $04, nB3, $14
	dc.b	nRst, $0C, nFs3, $04, nAb3, $0C, nRst, $08, nFs3, $04, nAb3, $0C
	dc.b	nFs3, $08, nAb3, $0C, nRst, $04, nB3, $14, nRst, $0C, nFs3, $04
	dc.b	nAb3, $0C, nRst, $08, nFs3, $04, nAb3, $0C, nRst, $7F, $7F, $6A
	smpsSetvoice        $03
	smpsAlterVol        $01
	dc.b	nFs3, $04, nAb3, $04, nB3, $04, nCs4, $04, nEb4, $04, nFs4, $04

Speedy_Park2_Jump04:
	dc.b	nAb4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nAb4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nFs4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nFs4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nD4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nD4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nCs4, $08, nB3, $04, nCs4, $08, nB3, $04
	smpsAlterVol        $04
	dc.b	nB3, $0C, nRst, $24
	smpsAlterVol        $FC
	dc.b	nFs3, $08, nAb3, $04, nFs3, $08, nAb3, $04, nB3, $08, nAb3, $04
	dc.b	nFs3, $08, nAb3, $04
	smpsAlterVol        $04
	dc.b	nAb3, $0C, nRst, $7F, $1D
	smpsAlterVol        $FC
	dc.b	nAb4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nAb4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nFs4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nFs4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nD4, $04, nRst, $04
	smpsAlterVol        $04
	dc.b	nD4, $04, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nCs4, $08, nB3, $04, nCs4, $08, nB3, $04
	smpsAlterVol        $04
	dc.b	nB3, $0C, nRst, $24
	smpsAlterVol        $FC
	dc.b	nFs3, $08, nAb3, $04, nFs3, $08, nAb3, $04, nB3, $08, nAb3, $04
	dc.b	nFs3, $08, nAb3, $04
	smpsAlterVol        $04
	dc.b	nAb3, $0C, nRst, $7F, $1D
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $19
	smpsSetvoice        $06
	smpsAlterVol        $FE
	dc.b	nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10
	dc.b	nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $3C, nEb5, $0C, nCs5, $0C
	dc.b	nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C, nAb4, $30, nRst, $3C
	dc.b	nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10, nB4, $0C, nBb4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10
	dc.b	nFs4, $0C, nFs4, $0C, nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C
	dc.b	nEb5, $14, nCs5, $10, nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $3C
	dc.b	nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10
	dc.b	nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $24
	smpsSetvoice        $03
	smpsAlterVol        $01
	smpsJump            Speedy_Park2_Jump04

; FM3 Data
Speedy_Park2_FM3:
	smpsAlterNote       $FF
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst, $18, nFs3, $08, nAb3, $0C, nRst, $04, nB3, $14, nRst, $0C
	dc.b	nFs3, $04, nAb3, $0C, nRst, $08, nFs3, $04, nAb3, $0C, nFs3, $08
	dc.b	nAb3, $0C, nRst, $04, nB3, $14, nRst, $0C, nFs3, $04, nAb3, $0C
	dc.b	nRst, $08, nFs3, $04, nAb3, $0C, nFs3, $08, nAb3, $0C, nRst, $04
	dc.b	nB3, $14, nRst, $0C, nFs3, $04, nAb3, $0C, nRst, $08, nFs3, $04
	dc.b	nAb3, $0C, nFs3, $08, nAb3, $0C, nRst, $04, nB3, $14, nRst, $0C
	dc.b	nFs3, $04, nAb3, $0C, nRst, $08, nFs3, $04, nAb3, $0C, nRst, $7F
	dc.b	$7F, $5E
	smpsSetvoice        $03
	smpsAlterVol        $FF
	dc.b	nFs3, $04, nAb3, $04, nB3, $04

Speedy_Park2_Jump03:
	dc.b	nCs4, $04, nEb4, $04, nFs4, $04, nAb4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nAb4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nFs4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nFs4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nEb4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nEb4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nD4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nD4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nCs4, $08, nB3, $04, nCs4, $08, nB3, $04
	smpsAlterVol        $08
	dc.b	nB3, $0C, nRst, $24
	smpsAlterVol        $F8
	dc.b	nFs3, $08, nAb3, $04, nFs3, $08, nAb3, $04, nB3, $08, nAb3, $04
	dc.b	nFs3, $08, nAb3, $04
	smpsAlterVol        $08
	dc.b	nAb3, $0C, nRst, $7F, $1D
	smpsAlterVol        $F8
	dc.b	nAb4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nAb4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nFs4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nFs4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nEb4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nEb4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nD4, $04, nRst, $04
	smpsAlterVol        $08
	dc.b	nD4, $04, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nCs4, $08, nB3, $04, nCs4, $08, nB3, $04
	smpsAlterVol        $08
	dc.b	nB3, $0C, nRst, $24
	smpsAlterVol        $F8
	dc.b	nFs3, $08, nAb3, $04, nFs3, $08, nAb3, $04, nB3, $08, nAb3, $04
	dc.b	nFs3, $08, nAb3, $04
	smpsAlterVol        $08
	dc.b	nAb3, $0C, nRst, $7F, $1D
	smpsSetvoice        $04
	smpsAlterVol        $F5
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nAb2, $03, nRst, $05, nAb3, $03, nRst, $01, nFs3, $03, nRst, $05
	dc.b	nEb3, $03, nRst, $09, nFs3, $03, nRst, $01, nAb3, $03, nRst, $09
	dc.b	nB3, $03, nRst, $05, nFs3, $03, nRst, $09, nD3, $03, nRst, $09
	dc.b	nCs3, $03, nRst, $01, nB2, $03, nRst, $05, nAb2, $03, nRst, $01
	dc.b	nCs2, $03, nRst, $05, nAb2, $03, nRst, $01, nCs3, $03, nRst, $15
	dc.b	nCs2, $03, nRst, $05, nCs3, $03, nRst, $0D, nF3, $03, nRst, $05
	dc.b	nAb3, $03, nRst, $01, nB3, $03, nRst, $05, nCs4, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $03, nRst, $01, nB3, $03, nRst, $19
	smpsSetvoice        $06
	smpsAlterVol        $01
	dc.b	nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10
	dc.b	nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $3C, nEb5, $0C, nCs5, $0C
	dc.b	nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C, nAb4, $30, nRst, $3C
	dc.b	nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10, nB4, $0C, nBb4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10
	dc.b	nFs4, $0C, nFs4, $0C, nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C
	dc.b	nEb5, $14, nCs5, $10, nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $3C
	dc.b	nEb5, $0C, nCs5, $0C, nB4, $14, nBb4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nAb4, $30, nRst, $3C, nEb5, $0C, nE5, $0C, nEb5, $14, nCs5, $10
	dc.b	nB4, $0C, nBb4, $0C, nAb4, $30, nRst, $18
	smpsSetvoice        $03
	smpsAlterVol        $02
	smpsJump            Speedy_Park2_Jump03

; FM4 Data
Speedy_Park2_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nRst, $0C, nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C

Speedy_Park2_Jump02:
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nBb3, $04, nBb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nBb3, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nAb3, $04, nAb3, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nAb3, $0C
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsAlterVol        $FD
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nE3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nE3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nFs3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nAb3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nAb3, $04, nRst, $08
	smpsSetvoice        $01
	smpsAlterVol        $FE
	smpsJump            Speedy_Park2_Jump02

; FM5 Data
Speedy_Park2_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nRst, $0C, nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C

Speedy_Park2_Jump01:
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $08, nRst, $04
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FB
	dc.b	nEb4, $04, nEb4, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $05
	dc.b	nEb4, $0C
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsAlterVol        $FD
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nB3, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nB3, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nCs4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panRight, $00
	smpsAlterVol        $04
	dc.b	nEb4, $04, nRst, $08
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nEb4, $04, nRst, $08
	smpsSetvoice        $01
	smpsAlterVol        $FE
	smpsJump            Speedy_Park2_Jump01

; PSG1 Data
Speedy_Park2_PSG1:
	dc.b	nRst, $60, $60, $60, $60, $60, $60, $60, $60

Speedy_Park2_Jump08:
	dc.b	nRst, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60
	dc.b	$60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60
	dc.b	$60, nE0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $03, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nAb0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nE0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nAb0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nE0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nAb0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nE0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nFs0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nAb0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $03, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, nRst, $30
	smpsPSGAlterVol     $01
	smpsJump            Speedy_Park2_Jump08

; PSG2 Data
Speedy_Park2_PSG2:
	dc.b	nRst, $60, $60, $60, $60, $60, $60, $60, $60

Speedy_Park2_Jump07:
	dc.b	nRst, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60
	dc.b	$60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60
	dc.b	$60, nB0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $03, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nEb1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nB0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nEb1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nB0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nEb1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nB0, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	dc.b	smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	nCs1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	nEb1, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $03, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01, smpsNoAttack, $02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $02, smpsNoAttack, $01, nRst, $30
	smpsPSGAlterVol     $01
	smpsJump            Speedy_Park2_Jump07

; PSG3 Data
Speedy_Park2_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C

Speedy_Park2_Jump06:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, $04, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $08, nMaxPSG, $04
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsJump            Speedy_Park2_Jump06

Speedy_Park2_Voices:
;	Voice $00
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $03
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $1E, $14, $0E

;	Voice $01
;	$3A
;	$31, $73, $25, $41, 	$9F, $5F, $5F, $9C, 	$08, $07, $07, $1E
;	$03, $04, $04, $05, 	$26, $16, $26, $07, 	$28, $1E, $25, $0B
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $07, $03
	smpsVcCoarseFreq    $01, $05, $03, $01
	smpsVcRateScale     $02, $01, $01, $02
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $07, $07, $08
	smpsVcDecayRate2    $05, $04, $04, $03
	smpsVcDecayLevel    $00, $02, $01, $02
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $0B, $25, $1E, $28

;	Voice $02
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $02
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
	smpsVcTotalLevel    $02, $27, $28, $18

;	Voice $03
;	$3A
;	$21, $38, $21, $32, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $02
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $03, $02
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $02, $22, $24, $18

;	Voice $04
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $06
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
	smpsVcTotalLevel    $06, $1E, $1E, $1E

;	Voice $05
;	$1F
;	$46, $11, $33, $22, 	$1C, $9F, $1F, $1F, 	$12, $0F, $0F, $0F
;	$00, $00, $00, $00, 	$FF, $0F, $0F, $0F, 	$0B, $0B, $0B, $0B
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $01, $04
	smpsVcCoarseFreq    $02, $03, $01, $06
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0B, $0B, $0B, $0B

;	Voice $06
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $07
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $07, $25, $2F, $25

