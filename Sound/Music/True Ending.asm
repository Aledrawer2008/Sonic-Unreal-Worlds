NatureTrail_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     NatureTrail_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       NatureTrail_DAC
	smpsHeaderFM        NatureTrail_FM1,	$0C, $10
	smpsHeaderFM        NatureTrail_FM2,	$0C, $10
	smpsHeaderFM        NatureTrail_FM3,	$0C, $10
	smpsHeaderFM        NatureTrail_FM4,	$0C, $10
	smpsHeaderFM        NatureTrail_FM5,	$0C, $10
	smpsHeaderPSG       NatureTrail_PSG1,	$E8, $00, $00, $00
	smpsHeaderPSG       NatureTrail_PSG2,	$E8, $00, $00, $00
	smpsHeaderPSG       NatureTrail_PSG3,	$23, $00, $00, $00

; FM1 Data
NatureTrail_FM1:
	smpsSetvoice        $00
	dc.b	nB1, $18, nE2, $08, nB1, nE2, nFs2, $18, nB2, nA2, nAb2, $08
	dc.b	nA2, nAb2, nE2, $18, nFs2
	smpsSetvoice        $00
	dc.b	nB1, $18, nE2, $08, nB1, nE2, nFs2, $18, nB2, nA2, nAb2, $08
	dc.b	nA2, nAb2, nE2, $18, nFs2
	smpsSetvoice        $00
	dc.b	nB1, $18, nE2, $08, nB1, nE2, nFs2, $18, nB2, nA2, nAb2, $08
	dc.b	nA2, nAb2, nE2, $18, nFs2, nB2, $18, nA2, $08, nB2, nA2, nAb2
	dc.b	$18, nE2, nG2, $30, nFs2, nB1, $18, nE2, $08, nB1, nE2, nFs2
	dc.b	$18, nB2, nA2, nAb2, $08, nA2, nAb2, nE2, $18, nFs2, nB1, nE2
	dc.b	$08, nB1, nE2, nFs2, $18, nB2, nD3, nCs3, $08, nD3, nCs3, nA2
	dc.b	$18, nB2, nB2, nE3, $08, nB2, nE3, nFs3, $18, nB3, nA3, nAb3
	dc.b	$08, nA3, nAb3, nE3, $18, nFs3, nB3, nA3, $08, nB3, nA3, nAb3
	dc.b	$18, nE3, nG3, $30, nA3
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $02
	dc.b	nBb2, $18, nA2, nG2, nA2, nBb2, nC3, nD3, nEb3, nD3, $30, nC3
	dc.b	nB2, $18, nC3, nD3, nG2
	smpsSetvoice        $02
	dc.b	nBb2, $18, nA2, nG2, nA2, nBb2, nC3, nD3, nEb3, nD3, $30, nC3
	dc.b	nB2, $18, nC3, nD3, nG3, nBb3, nA3, nG3, nA3, nBb3, nC4, nD4
	dc.b	nEb4, nD4, $08, nC4, nB3, nC4, nB3, nA3, nB3, nA3, nG3, nA3
	dc.b	nG3, nFs3, nD3, nE3, nFs3, nE3, nFs3, nG3, nFs3, nG3, nA3, nG3
	dc.b	nA3, nD4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsJump            NatureTrail_FM1

; FM2 Data
NatureTrail_FM2:
	smpsSetvoice        $03
	dc.b	nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, $10, nE2, $08, nA1
	dc.b	nB1, nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, nB1, nE1
	dc.b	nE2, nB1, nE1, nD2, $10, nD2, $08, nG1, nA1, nG1, nD2, $10
	dc.b	nD2, $08, nG1, nA1, nG1, nD2, $10, nD2, $08, nG1, nA1, nG1
	dc.b	nD2, nA1, nD1, nD2, nA1, nD1, nE2, $10, nE2, $08, nA1, nB1
	dc.b	nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, $10, nE2, $08
	dc.b	nA1, nB1, nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nD2, $10
	dc.b	nD2, $08, nG1, nA1, nG1, nD2, $10, nD2, $08, nG1, nA1, nG1
	dc.b	nC2, nB1, nC2, nD2, nC2, nD2, nE2, nD2, nE2, nFs2, nG2, nA2
	smpsSetvoice        $03
	dc.b	nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, $10, nE2, $08, nA1
	dc.b	nB1, nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, nB1, nE1
	dc.b	nE2, nB1, nE1, nD2, $10, nD2, $08, nG1, nA1, nG1, nD2, $10
	dc.b	nD2, $08, nG1, nA1, nG1, nD2, $10, nD2, $08, nG1, nA1, nG1
	dc.b	nD2, nA1, nD1, nD2, nA1, nD1, nE2, $10, nE2, $08, nA1, nB1
	dc.b	nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nE2, $10, nE2, $08
	dc.b	nA1, nB1, nA1, nE2, $10, nE2, $08, nA1, nB1, nA1, nD2, $10
	dc.b	nD2, $08, nG1, nA1, nG1, nD2, $10, nD2, $08, nG1, nA1, nG1
	dc.b	nC2, nB1, nC2, nD2, nC2, nD2, nE2, nD2, nE2, nFs2, nG2, nA2
	dc.b	nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10, nG1, $08, nG2
	dc.b	nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG2, nD2, nG1
	dc.b	nG2, nD2, nG1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF1, $10
	dc.b	nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2, nF1, nF1
	dc.b	nF2, nC2, nF1, nF2, nC2, nF1, nG1, $10, nG1, $08, nG2, nG1
	dc.b	nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10, nG1, $08
	dc.b	nG2, nG1, nG1, nG2, nD2, nG1, nG2, nD2, nG1, nF1, $10, nF1
	dc.b	$08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF1
	dc.b	$10, nF1, $08, nF2, nF1, nF1, nF2, nC2, nF1, nF2, nC2, nF1
	dc.b	nE1, $10, nE1, $08, nE2, nB1, nE1, nE2, nB1, nE1, nE2, nB1
	dc.b	nE1, nEb1, $10, nEb1, $08, nEb2, nBb1, nEb1, nEb2, nBb1, nEb1, nEb2
	dc.b	nBb1, nEb1, nD2, nA1, nD1, nD2, nA1, nD1, nD2, nA1, nD1, nD2
	dc.b	nA1, nD1, nD1, nE1, nFs1, nE1, nFs1, nG1, nFs1, nG1, nA1, nG1
	dc.b	nA1, nD2, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10, nG1
	dc.b	$08, nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG2
	dc.b	nD2, nG1, nG2, nD2, nG1, nF1, $10, nF1, $08, nF2, nF1, nF1
	dc.b	nF1, $10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2
	dc.b	nF1, nF1, nF2, nC2, nF1, nF2, nC2, nF1, nG1, $10, nG1, $08
	dc.b	nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10
	dc.b	nG1, $08, nG2, nG1, nG1, nG2, nD2, nG1, nG2, nD2, nG1, nF1
	dc.b	$10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2, nF1
	dc.b	nF1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF2, nC2, nF1, nF2
	dc.b	nC2, nF1, nE1, $10, nE1, $08, nE2, nB1, nE1, nE2, nB1, nE1
	dc.b	nE2, nB1, nE1, nEb1, $10, nEb1, $08, nEb2, nBb1, nEb1, nEb2, nBb1
	dc.b	nEb1, nEb2, nBb1, nEb1, nD2, nA1, nD1, nD2, nA1, nD1, nD2, nA1
	dc.b	nD1, nD2, nA1, nD1, nD1, nE1, nFs1, nE1, nFs1, nG1, nFs1, nG1
	dc.b	nA1, nG1, nA1, nD2, nEb1, $10, nEb1, $08, nEb1, nEb1, nEb1, nEb1
	dc.b	$10, nEb1, $08, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1
	dc.b	nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nG1, $10, nG1, $08, nG1, nG1
	dc.b	nG1, nG1, $10, nG1, $08, nG1, nG1, nG1, nG1, nG1, nG1, nG1
	dc.b	nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1, nEb1, $10, nEb1, $08
	dc.b	nEb1, nEb1, nEb1, nEb1, $10, nEb1, $08, nEb1, nEb1, nEb1, nEb1, nEb1
	dc.b	nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nG1, $10
	dc.b	nG1, $08, nG1, nG1, nG1, nG1, $10, nG1, $08, nG1, nG1, nG1
	dc.b	nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1, nG1
	dc.b	nEb1, $10, nEb1, $08, nEb1, nEb1, nEb1, nEb1, $10, nEb1, $08, nEb1
	dc.b	nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1, nEb1
	dc.b	nEb1, nEb1, nD1, nD1, nD1, nD2, nD1, nD1, nD1, nD1, nD1, nD2
	dc.b	nD1, nD1, nD1, nE1, nFs1, nE1, nFs1, nG1, nFs1, nG1, nA1, nG1
	dc.b	nA1, nB1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10, nG1
	dc.b	$08, nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG2
	dc.b	nD2, nG1, nG2, nD2, nG1, nF1, $10, nF1, $08, nF2, nF1, nF1
	dc.b	nF1, $10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2
	dc.b	nF1, nF1, nF2, nC2, nF1, nF2, nC2, nF1, nG1, $10, nG1, $08
	dc.b	nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1, $10
	dc.b	nG1, $08, nG2, nG1, nG1, nG2, nD2, nG1, nG2, nD2, nG1, nF1
	dc.b	$10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08, nF2, nF1
	dc.b	nF1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF2, nC2, nF1, nF2
	dc.b	nC2, nF1, nE1, $10, nE1, $08, nE2, nB1, nE1, nE2, nB1, nE1
	dc.b	nE2, nB1, nE1, nEb1, $10, nEb1, $08, nEb2, nBb1, nEb1, nEb2, nBb1
	dc.b	nEb1, nEb2, nBb1, nEb1, nD2, nA1, nD1, nD2, nA1, nD1, nD2, nA1
	dc.b	nD1, nD2, nA1, nD1, nD1, nE1, nFs1, nE1, nFs1, nG1, nFs1, nG1
	dc.b	nA1, nG1, nA1, nD2, nG1, $10, nG1, $08, nG2, nG1, nG1, nG1
	dc.b	$10, nG1, $08, nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1
	dc.b	nG1, nG2, nD2, nG1, nG2, nD2, nG1, nF1, $10, nF1, $08, nF2
	dc.b	nF1, nF1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1
	dc.b	$08, nF2, nF1, nF1, nF2, nC2, nF1, nF2, nC2, nF1, nG1, $10
	dc.b	nG1, $08, nG2, nG1, nG1, nG1, $10, nG1, $08, nG2, nG1, nG1
	dc.b	nG1, $10, nG1, $08, nG2, nG1, nG1, nG2, nD2, nG1, nG2, nD2
	dc.b	nG1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF1, $10, nF1, $08
	dc.b	nF2, nF1, nF1, nF1, $10, nF1, $08, nF2, nF1, nF1, nF2, nC2
	dc.b	nF1, nF2, nC2, nF1, nE1, $10, nE1, $08, nE2, nB1, nE1, nE2
	dc.b	nB1, nE1, nE2, nB1, nE1, nEb1, $10, nEb1, $08, nEb2, nBb1, nEb1
	dc.b	nEb2, nBb1, nEb1, nEb2, nBb1, nEb1, nD2, nA1, nD1, nD2, nA1, nD1
	dc.b	nD2, nA1, nD1, nD2, nA1, nD1, nD1, nE1, nFs1, nE1, nFs1, nG1
	dc.b	nFs1, nG1, nA1, nG1, nA1, nD2
	smpsJump            NatureTrail_FM2

; FM3 Data
NatureTrail_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $0C, nB1, $18, nE2, $08, nB1, nE2, nFs2, $18, nB2, nA2
	dc.b	nAb2, $08, nA2, nAb2, nE2, $18, nFs2, nB1, $18, nE2, $08, nB1
	dc.b	nE2, nFs2, $18, nB2, nA2, nAb2, $08, nA2, nAb2, nE2, $18, nFs2
	dc.b	nB1, $18, nE2, $08, nB1, nE2, nFs2, $18, nB2, nA2, nAb2, $08
	dc.b	nA2, nAb2, nE2, $18, nFs2, nB2, $18, nA2, $08, nB2, nA2, nAb2
	dc.b	$18, nE2, nG2, $30, nFs2, nB1, $18, nE2, $08, nB1, nE2, nFs2
	dc.b	$18, nB2, nA2, nAb2, $08, nA2, nAb2, nE2, $18, nFs2, nB1, nE2
	dc.b	$08, nB1, nE2, nFs2, $18, nB2, nD3, nCs3, $08, nD3, nCs3, nA2
	dc.b	$18, nB2, nB2, nE3, $08, nB2, nE3, nFs3, $18, nB3, nA3, nAb3
	dc.b	$08, nA3, nAb3, nE3, $18, nFs3, nB3, nA3, $08, nB3, nA3, nAb3
	dc.b	$18, nE3, nG3, $30, nA3
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $01
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $02
	dc.b	nBb2, $18, nA2, nG2, nA2, nBb2, nC3, nD3, nEb3, nD3, $30, nC3
	dc.b	nB2, $18, nC3, nD3, nG2
	smpsSetvoice        $02
	dc.b	nBb2, $18, nA2, nG2, nA2, nBb2, nC3, nD3, nEb3, nD3, $30, nC3
	dc.b	nB2, $18, nC3, nD3, nG3, nBb3, nA3, nG3, nA3, nBb3, nC4, nD4
	dc.b	nEb4, nD4, $08, nC4, nB3, nC4, nB3, nA3, nB3, nA3, nG3, nA3
	dc.b	nG3, nFs3, nD3, nE3, nFs3, nE3, nFs3, nG3, nFs3, nG3, nA3, nG3
	dc.b	nA3, nD4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, nD5
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4
	smpsSetvoice        $00
	dc.b	nB3, $28, nC4, $08, nD4, $30, nD4, $18, nG3, nB3, nG4, nF4
	dc.b	$30, nE4, nD4, $18, nG3, nB3, nC4, nB3, $30, nG4, nBb3, nG4
	dc.b	nG4, $18, nFs4, nE4, nFs4, nD4, $08, nE4, nFs4, nE4, nFs4, nG4
	dc.b	nFs4, nG4, nA4, nG4, nA4, $04
	smpsJump            NatureTrail_FM3

; FM4 Data
NatureTrail_FM4:
	smpsSetvoice        $04
	dc.b	nE3, $60, nE3, $08, nE3, nE3, nE3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nE3, nE3, nD3, $60, nD3, $08, nD3, nD3, nD3, nD3, nD3
	dc.b	nD3, nD3, nD3, nD3, nD3, nD3
	smpsSetvoice        $04
	dc.b	nE3, $60, nE3, $08, nE3, nE3, nE3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nE3, nE3, nD3, $60, nE3, $30, nD3
	smpsSetvoice        $04
	dc.b	nE3, $60, nE3, $08, nE3, nE3, nE3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nE3, nE3, nD3, $60, nD3, $08, nD3, nD3, nD3, nD3, nD3
	dc.b	nD3, nD3, nD3, nD3, nD3, nD3
	smpsSetvoice        $04
	dc.b	nE3, $60, nE3, $08, nE3, nE3, nE3, nE3, nE3, nE3, nE3, nE3
	dc.b	nE3, nE3, nE3, nD3, $60, nE3, $30, nD3, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nBb2, $08, nA2, nG2
	dc.b	nF2, $48, nG2, $30, nA2, $08, nA2, nA2, nA2, nA2, nA2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nBb2
	dc.b	$08, nA2, nG2, nF2, $48, nG2, $30, nA2, $08, nA2, nA2, nA2
	dc.b	nA2, nA2, nD2, $18, nD2, $08, nD2, nD2, nD2, $18, nD2, $08
	dc.b	nD2, nD2, nG2, $18, nG2, $08, nG2, nG2, nBb2, $18, nBb2, $08
	dc.b	nBb2, nBb2, nA2, nA2, nA2, nA2, nA2, nA2, nD3, nD3, nD3, nD3
	dc.b	nD3, nD3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3, nA3, nA3, nA3
	dc.b	nA3, nA3, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nBb2, $08, nA2, nG2, nF2, $48, nG2, $30, nA2, $08
	dc.b	nA2, nA2, nA2, nA2, nA2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nBb2, $08, nA2, nG2, nF2, $48, nG2
	dc.b	$30, nA2, $08, nA2, nA2, nA2, nA2, nA2, nD2, $18, nD2, $08
	dc.b	nD2, nD2, nD2, $18, nD2, $08, nD2, nD2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nBb2, $18, nBb2, $08, nBb2, nBb2, nA2, nA2, nA2, nA2
	dc.b	nA2, nA2, nD3, nD3, nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3
	dc.b	nFs3, nFs3, nA3, nA3, nA3, nA3, nA3, nA3, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nD2, $18, nD2, $08
	dc.b	nD2, nD2, nD2, nD2, nD2, nD2, nD2, nD2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nD2, $18, nD2, $08
	dc.b	nD2, nD2, nD2, nD2, nD2, nD2, nD2, nD2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nB2, nB2, nB2, nB2
	dc.b	nB2, nB2, nD3, nD3, nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3
	dc.b	nFs3, nFs3, nFs2, nA3, nA3, nA3, nA3, nA3, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nBb2, $08, nA2, nG2
	dc.b	nF2, $48, nG2, $30, nA2, $08, nA2, nA2, nA2, nA2, nA2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nBb2
	dc.b	$08, nA2, nG2, nF2, $48, nG2, $30, nA2, $08, nA2, nA2, nA2
	dc.b	nA2, nA2, nD2, $18, nD2, $08, nD2, nD2, nD2, $18, nD2, $08
	dc.b	nD2, nD2, nG2, $18, nG2, $08, nG2, nG2, nBb2, $18, nBb2, $08
	dc.b	nBb2, nBb2, nA2, nA2, nA2, nA2, nA2, nA2, nD3, nD3, nD3, nD3
	dc.b	nD3, nD3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08
	dc.b	nB2, nB2, nBb2, $08, nA2, nG2, nF2, $48, nG2, $30, nA2, $08
	dc.b	nA2, nA2, nA2, nA2, nA2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2, nB2
	dc.b	$18, nB2, $08, nB2, nB2, nBb2, $08, nA2, nG2, nF2, $48, nG2
	dc.b	$30, nA2, $08, nA2, nA2, nA2, nA2, nA2, nD3, $18, nD3, $08
	dc.b	nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nG3, $18, nG3, $08
	dc.b	nG3, nG3, nBb3, $18, nBb3, $08, nBb3, nBb3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4, nFs4, nFs4, nFs4, nFs4
	dc.b	nFs4, nFs4, nA4, nA4, nA4, nA4, nA4, nA4
	smpsJump            NatureTrail_FM4

; FM5 Data
NatureTrail_FM5:
	smpsSetvoice        $04
	dc.b	nAb3, $60, nA3, $08, nA3, nA3, nA3, nA3, nA3, nAb3, nAb3, nAb3
	dc.b	nAb3, nAb3, nAb3, nFs3, $60, nFs3, $08, nFs3, nFs3, nFs3, nFs3, nFs3
	dc.b	nFs3, nFs3, nFs3, nFs3, nFs3, nFs3
	smpsSetvoice        $04
	dc.b	nAb3, $60, nA3, $08, nA3, nA3, nA3, nA3, nA3, nAb3, nAb3, nAb3
	dc.b	nAb3, nAb3, nAb3, nFs3, $60, nG3, $30, nFs3
	smpsSetvoice        $04
	dc.b	nAb3, $60, nA3, $08, nA3, nA3, nA3, nA3, nA3, nAb3, nAb3, nAb3
	dc.b	nAb3, nAb3, nAb3, nFs3, $60, nFs3, $08, nFs3, nFs3, nFs3, nFs3, nFs3
	dc.b	nFs3, nFs3, nFs3, nFs3, nFs3, nFs3
	smpsSetvoice        $04
	dc.b	nAb3, $60, nA3, $08, nA3, nA3, nA3, nA3, nA3, nAb3, nAb3, nAb3
	dc.b	nAb3, nAb3, nAb3, nFs3, $60, nG3, $30, nFs3, nD3, $18, nD3, $08
	dc.b	nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08
	dc.b	nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nC3, $18, nC3, $48
	dc.b	nC3, $30, nC3, $08, nC3, nC3, nC3, nC3, nC3, nD3, $18, nD3
	dc.b	$08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3
	dc.b	$08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nC3, $18, nC3
	dc.b	$48, nC3, $30, nC3, $08, nC3, nC3, nC3, nC3, nC3, nG2, $18
	dc.b	nG2, $08, nG2, nG2, nG2, $18, nG2, $08, nG2, nG2, nBb2, $18
	dc.b	nBb2, $08, nBb2, nBb2, nEb3, $18, nEb3, $08, nEb3, nEb3, nD3, nD3
	dc.b	nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3, nA3, nA3
	dc.b	nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4, nD3, $18
	dc.b	nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18
	dc.b	nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nC3, $18
	dc.b	nC3, $48, nC3, $30, nC3, $08, nC3, nC3, nC3, nC3, nC3, nD3
	dc.b	$18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3
	dc.b	$18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nC3
	dc.b	$18, nC3, $48, nC3, $30, nC3, $08, nC3, nC3, nC3, nC3, nC3
	dc.b	nG2, $18, nG2, $08, nG2, nG2, nG2, $18, nG2, $08, nG2, nG2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nEb3, $18, nEb3, $08, nEb3, nEb3
	dc.b	nD3, nD3, nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, $18, nBb2, $08, nBb2, nBb2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2
	dc.b	nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2
	dc.b	nG2, $18, nG2, $08, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, $18, nBb2, $08, nBb2, nBb2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2
	dc.b	nB2, $18, nB2, $08, nB2, nB2, nB2, $18, nB2, $08, nB2, nB2
	dc.b	nG2, $18, nG2, $08, nG2, nG2, nG2, nG2, nG2, nG2, nG2, nG2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, $18, nBb2, $08, nBb2, nBb2
	dc.b	nBb2, $18, nBb2, $08, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2, nBb2
	dc.b	nD3, nD3, nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3, nFs3, nFs3
	dc.b	nA3, nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4, nD4, nD4
	dc.b	nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3
	dc.b	nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3
	dc.b	nC3, $18, nC3, $48, nC3, $30, nC3, $08, nC3, nC3, nC3, nC3
	dc.b	nC3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3
	dc.b	nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08, nD3
	dc.b	nD3, nC3, $18, nC3, $48, nC3, $30, nC3, $08, nC3, nC3, nC3
	dc.b	nC3, nC3, nG2, $18, nG2, $08, nG2, nG2, nG2, $18, nG2, $08
	dc.b	nG2, nG2, nBb2, $18, nBb2, $08, nBb2, nBb2, nEb3, $18, nEb3, $08
	dc.b	nEb3, nEb3, nD3, nD3, nD3, nD3, nD3, nD3, nFs3, nFs3, nFs3, nFs3
	dc.b	nFs3, nFs3, nA3, nA3, nA3, nA3, nA3, nA3, nD4, nD4, nD4, nD4
	dc.b	nD4, nD4, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08
	dc.b	nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3, $08
	dc.b	nD3, nD3, nC3, $18, nC3, $48, nC3, $30, nC3, $08, nC3, nC3
	dc.b	nC3, nC3, nC3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3
	dc.b	$08, nD3, nD3, nD3, $18, nD3, $08, nD3, nD3, nD3, $18, nD3
	dc.b	$08, nD3, nD3, nC3, $18, nC3, $48, nC3, $30, nC3, $08, nC3
	dc.b	nC3, nC3, nC3, nC3, nG3, $18, nG3, $08, nG3, nG3, nG3, $18
	dc.b	nG3, $08, nG3, nG3, nBb3, $18, nBb3, $08, nBb3, nBb3, nEb4, $18
	dc.b	nEb4, $08, nEb4, nEb4, nD4, nD4, nD4, nD4, nD4, nD4, nFs4, nFs4
	dc.b	nFs4, nFs4, nFs4, nFs4, nA4, nA4, nA4, nA4, nA4, nA4, nD5, nD5
	dc.b	nD5, nD5, nD5, nD5
	smpsJump            NatureTrail_FM5

; PSG1 Data
NatureTrail_PSG1:
	smpsStop

; PSG2 Data
NatureTrail_PSG2:
	smpsStop

; PSG3 Data
NatureTrail_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	smpsStop

; DAC Data
NatureTrail_DAC:
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dSnare, $08, dSnare, dSnare, dKick, dKick, dKick, dSnare, dSnare, dSnare, dKick
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dSnare, $08, dSnare, dSnare, dKick, dKick, dKick, dSnare, dSnare
	dc.b	dSnare, dKick, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10
	dc.b	dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare
	dc.b	dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dSnare, dKick, dKick, dSnare, dKick, dKick, dHiTimpani, $08, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani
	dc.b	dHiTimpani, dMidTimpani, dMidTimpani, dMidTimpani, dLowTimpani, dLowTimpani, dLowTimpani, dSnare, dSnare, dSnare, dKick, dKick
	dc.b	dKick, dSnare, dSnare, dSnare, dKick, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10
	dc.b	dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dHiTimpani, $08, dHiTimpani
	dc.b	dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, dMidTimpani, dMidTimpani, dMidTimpani, dLowTimpani, dLowTimpani, dLowTimpani, dSnare, dSnare
	dc.b	dSnare, dKick, dKick, dKick, dSnare, dSnare, dSnare, dKick, dKick, dKick, dKick, $10
	dc.b	dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10
	dc.b	dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dSnare, $08, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick
	dc.b	dSnare, dKick, dKick, dSnare, $08, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dHiTimpani, $08, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, dMidTimpani
	dc.b	dMidTimpani, dMidTimpani, dLowTimpani, dLowTimpani, dLowTimpani, dSnare, dSnare, dSnare, dKick, dKick, dKick, dSnare
	dc.b	dSnare, dSnare, dKick, dKick, dKick, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dSnare, $18, dSnare, $08, dSnare, dSnare, dSnare
	dc.b	$18, dSnare, $08, dSnare, dSnare, dHiTimpani, $08, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani
	dc.b	dMidTimpani, dMidTimpani, dMidTimpani, dLowTimpani, dLowTimpani, dLowTimpani, dSnare, dSnare, dSnare, dKick, dKick, dKick
	dc.b	dSnare, dSnare, dSnare, dKick, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08
	dc.b	dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick
	dc.b	$08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick
	dc.b	$10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick
	dc.b	dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dSnare, dKick, dKick
	dc.b	dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick, dKick, $10
	dc.b	dKick, $08, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick, dKick
	dc.b	dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare, dKick
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dKick, $10, dKick, $08, dSnare
	dc.b	dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dHiTimpani, $08, dHiTimpani, dHiTimpani
	dc.b	dHiTimpani, dHiTimpani, dHiTimpani, dMidTimpani, dMidTimpani, dMidTimpani, dLowTimpani, dLowTimpani, dLowTimpani, dSnare, dSnare, dSnare
	dc.b	dKick, dKick, dKick, dSnare, dSnare, dSnare, dKick, dKick, dKick
	smpsJump            NatureTrail_DAC

NatureTrail_Voices:
;	Voice $00
;	$3A
;	$61, $6A, $11, $62, 	$10, $91, $51, $11, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$17, $F7, $17, $07, 	$17, $3A, $1A, $7F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $01, $06, $06
	smpsVcCoarseFreq    $02, $01, $0A, $01
	smpsVcRateScale     $00, $01, $02, $00
	smpsVcAttackRate    $11, $11, $11, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $7F, $1A, $3A, $17

;	Voice $01
;	$3C
;	$41, $51, $41, $31, 	$50, $14, $50, $14, 	$05, $01, $05, $01
;	$01, $01, $01, $01, 	$18, $18, $18, $18, 	$1A, $7F, $14, $7F
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $05, $04
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $14, $10, $14, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $05, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $7F, $14, $7F, $1A

;	Voice $02
;	$2C
;	$56, $62, $76, $22, 	$5A, $17, $DD, $97, 	$06, $0B, $06, $0B
;	$06, $05, $06, $06, 	$C1, $C6, $D1, $C6, 	$10, $7F, $11, $7F
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $07, $06, $05
	smpsVcCoarseFreq    $02, $06, $02, $06
	smpsVcRateScale     $02, $03, $00, $01
	smpsVcAttackRate    $17, $1D, $17, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $06, $0B, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $0C, $0D, $0C, $0C
	smpsVcReleaseRate   $06, $01, $06, $01
	smpsVcTotalLevel    $7F, $11, $7F, $10

;	Voice $03
;	$08
;	$0A, $70, $30, $00, 	$9F, $9F, $9F, $9F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$28, $25, $25, $25, 	$24, $2D, $13, $7F
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $05, $05, $05, $08
	smpsVcTotalLevel    $7F, $13, $2D, $24

;	Voice $04
;	$32
;	$41, $4A, $40, $41, 	$06, $8A, $4E, $11, 	$0E, $0E, $0E, $03
;	$1F, $07, $01, $01, 	$1F, $FF, $1F, $1F, 	$11, $33, $22, $7F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $01, $00, $0A, $01
	smpsVcRateScale     $00, $01, $02, $00
	smpsVcAttackRate    $11, $0E, $0A, $06
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $01, $01, $07, $1F
	smpsVcDecayLevel    $01, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $7F, $22, $33, $11

