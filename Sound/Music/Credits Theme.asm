Staff_Roll_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Staff_Roll_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       Staff_Roll_DAC
	smpsHeaderFM        Staff_Roll_FM1,	$0C, $10
	smpsHeaderFM        Staff_Roll_FM2,	$0C, $10
	smpsHeaderFM        Staff_Roll_FM3,	$0C, $10
	smpsHeaderFM        Staff_Roll_FM4,	$0C, $10
	smpsHeaderFM        Staff_Roll_FM5,	$0C, $10
	smpsHeaderPSG       Staff_Roll_PSG1,	$E8, $00, $00, $00
	smpsHeaderPSG       Staff_Roll_PSG2,	$E8, $00, $00, $00
	smpsHeaderPSG       Staff_Roll_PSG3,	$22, $00, $00, $00

; FM1 Data
Staff_Roll_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nA3, $0C, nRst, nB3, nRst, $06, nG3, nRst, nE3, $12, nD3, $09
	dc.b	nRst, $03, nC3, $09, nRst, $03, nD3, $0C, nE3, $06, nA2, $1E
	dc.b	nD3, $0C, nG3, $06, nA3, $0C, nG3, $12, nA3, $0C, nRst, nB3
	dc.b	nRst, $06, nG3, nRst, nE3, $12, nD3, $06, nRst, nC3, nRst, nD3
	dc.b	$0C, nE3, $06, nA2, nRst, nE3, $12, nD3, $0C, nC3, $06, nB2
	dc.b	$0C, nC3, $12, nA3, $0C, nRst, nB3, nRst, $06, nG3, nRst, nE3
	dc.b	$12, nD3, $09, nRst, $03, nC3, $09, nRst, $03, nD3, $0C, nE3
	dc.b	$06, nA2, $1E, nD3, $0C, nG3, $06, nA3, $0C, nG3, $12, nA3
	dc.b	$0C, nRst, nB3, nRst, $06, nG3, nRst, nE3, $12, nD3, $06, nRst
	dc.b	nC3, nRst, nD3, $0C, nE3, $06, nA2, nRst, nE3, $12, nD3, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $12
	smpsSetvoice        $01
	dc.b	nA3, $3C, nA3, $0C, nC4, nE4, nF4, $18, nE4, $0C, nC4, $18
	dc.b	nA3, $24, nAb3, $3C, nAb3, $0C, nC4, nE4, nF4, $18, nE4, $0C
	dc.b	nC4, $18, nAb3, $24, nG3, nE4, nG3, $18, nAb3, $24, nE4, nAb3
	dc.b	$18, nG3, $24, nE4, nG3, $18, nAb3, $24, nE4, $3C, nA3, nA3
	dc.b	$0C, nC4, nE4, nF4, $18, nE4, $0C, nC4, $18, nA3, $24, nAb3
	dc.b	$3C, nAb3, $0C, nC4, nE4, nF4, $18, nE4, $0C, nG4, $18, nF4
	dc.b	$24, nG3, nE4, nG3, $18, nAb3, $24, nE4, nAb3, $18, nG3, $24
	dc.b	nE4, nG3, $18, nAb3, $24, nE4, $3C
	smpsSetvoice        $02
	dc.b	nA3, $60, nC4, $30, nE4, nD4, $60, nG4, nA4, nE4, $30, nA4
	dc.b	nG4, $60, nE4
	smpsSetvoice        $00
	dc.b	nA3, nC4, $30, nE4, nD4, $60, nG4, nA4, nE4, $30, nA4, nG4
	dc.b	$60, nA4, nG2, $30, nC3, nD3, nF3, nG3, nC4, nD4, nF4, nG4
	dc.b	nC5, nD5, nF5, nG3, $06, nG3, nB3, $06, nD4, nA4, nG4, nF4
	dc.b	nE4, nD4, nE4, nF4, nC4, nD4, nE4, nB3, nC4, nG3, $06, nG3
	dc.b	nB3, $06, nD4, nB4, nA4, nG4, nF4, nE4, nF4, nG4, nA4, nB4
	dc.b	nC5, nD5, nE5
	smpsJump            Staff_Roll_FM1

; FM2 Data
Staff_Roll_FM2:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nF3, $0C, nRst, nG3, nRst, $06, nE3, nRst, nC3, $12, nB2, $09
	dc.b	nRst, $03, nA2, $09, nRst, $03, nB2, $0C, nB2, $06, nF2, $1E
	dc.b	nB2, $0C, nD3, $06, nF3, $0C, nE3, $12, nF3, $0C, nRst, nG3
	dc.b	nRst, $06, nE3, nRst, nC3, $12, nB2, $06, nRst, nA2, nRst, nB2
	dc.b	$0C, nC3, $06, nF2, nRst, nC3, $12, nB2, $0C, nA2, $06, nG2
	dc.b	$0C, nA2, $12, nF3, $0C, nRst, nG3, nRst, $06, nE3, nRst, nC3
	dc.b	$12, nB2, $09, nRst, $03, nA2, $09, nRst, $03, nB2, $0C, nB2
	dc.b	$06, nF2, $1E, nB2, $0C, nD3, $06, nF3, $0C, nE3, $12, nF3
	dc.b	$0C, nRst, nG3, nRst, $06, nE3, nRst, nC3, $12, nB2, $06, nRst
	dc.b	nA2, nRst, nB2, $0C, nC3, $06, nF2, nRst, nC3, $12, nB2, $0C
	dc.b	nA2, $06, nG2, $0C, nA2, $12, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsSetvoice        $01
	dc.b	nF3, $3C, nF3, $0C, nA3, nC4, nC4, $18, nC4, $0C, nA3, $18
	dc.b	nF3, $24, nF3, $3C, nF3, $0C, nAb3, nC4, nC4, $18, nC4, $0C
	dc.b	nE4, $18, nD4, $24, nE3, nC4, nE3, $18, nE3, $24, nC4, nE3
	dc.b	$18, nE3, $24, nC4, nE3, $18, nE3, $24, nC4, $3C
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $00
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nG3, nF3, nE3, nD3, nC3, nD3
	dc.b	nE3, nB2, nC3, nD3, nA2, nB2, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nA3, nG3, nF3, nE3, nD3, nE3, nF3, nC3, nD3, nE3, nB2, nC3
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nB3, nA3, nG3, nF3, nE3, nF3
	dc.b	nG3, nD3, nE3, nF3, nC3, nD3, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nC4, nB3, nA3, nG3, nF3, nG3, nA3, nE3, nF3, nG3, nD3, nE3
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nD4, nC4, nB3, nA3, nG3, nA3
	dc.b	nB3, nF3, nG3, nA3, nE3, nF3, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nE4, nD4, nC4, nB3, nA3, nB3, nC4, nG3, nA3, nB3, nF3, nG3
	dc.b	nD3, $06, nD3, nG3, $06, nB3, nF4, nE4, nD4, nC4, nB3, nC4
	dc.b	nD4, nA3, nB3, nC4, nG3, nA3, nE3, $06, nE3, nG3, $06, nB3
	dc.b	nG4, nF4, nE4, nD4, nC4, nD4, nE4, nF4, nG4, nA4, nB4, nC5
	smpsJump            Staff_Roll_FM2

; FM3 Data
Staff_Roll_FM3:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nC2, $0C, nC2, nC2, nC2, nC2, nC2, nC2, nC2, nC2, $0C, nC2
	dc.b	nC2, nC2, nC2, nC2, nC2, nC2, nC2, $0C, nC2, nC2, nC2, nC2
	dc.b	nC2, nC2, nC2, nC2, $0C, nC2, nC2, nC2, nC2, nC2, nC2, nC2
	dc.b	nC2, $0C, nC2, nC2, nC2, nC2, nC2, nC2, nC2, nC2, $0C, nC2
	dc.b	nC2, nC2, nC2, nC2, nC2, nC2, nC2, $0C, nC2, nC2, nC2, nC2
	dc.b	nC2, nC2, nC2, nC2, $0C, nC2, nC2, nC2, nC2, nC2, nC2, nC2
	dc.b	nF1, $0C, nF1, nF1, nF1, nF1, nF1, nF1, nF1, nF1, $0C, nF1
	dc.b	nF1, nF1, nF1, nF1, nF1, nF1, nF1, $0C, nF1, nF1, nF1, nF1
	dc.b	nF1, nF1, nF1, nF1, $0C, nF1, nF1, nF1, nF1, nA1, nC2, nF2
	dc.b	nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nC2, nC2, $0C, nC2
	dc.b	nC2, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nC2, nC2, $0C
	dc.b	nC2, nC2, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nC2, nC2
	dc.b	$0C, nC2, nC2, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2, nC2
	dc.b	nC2, $0C, nC2, nC2, nF1, $0C, nF1, nF1, nF1, nF1, nF1, nF1
	dc.b	nF1, nF1, $0C, nF1, nF1, nF1, nF1, nF1, nF1, nF1, nF1, $0C
	dc.b	nF1, nF1, nF1, nF1, nF1, nF1, nF1, nF1, $0C, nF1, nF1, nF1
	dc.b	nF1, nA1, nC2, nF2, nC2, $0C, nC2, nC2, nC2, $06, nC2, nC2
	dc.b	nC2, nC2, $0C, nC2, nC2, nC2, $0C, nC2, nC2, nC2, $06, nC2
	dc.b	nC2, nC2, nC2, $0C, nC2, nC2, nC2, $0C, nC2, nC2, nC2, $06
	dc.b	nC2, nC2, nC2, nC2, $0C, nC2, nC2, nC2, $0C, nC2, nC2, nC2
	dc.b	$06, nC2, nC2, nC2, nC2, $0C, nC2, nC2
	smpsSetvoice        $05
	dc.b	nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0C
	dc.b	nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0A
	dc.b	nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nE1, $0A, nRst, $0E
	dc.b	nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0C, nE1, $0A, nRst, $0E
	dc.b	nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0A, nRst, $0E, nE1, $0C
	dc.b	nE1, $0A, nRst, $0E, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A
	dc.b	nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A
	dc.b	nRst, $0E, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E
	dc.b	nE1, $0A, nRst, $0E, nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0C
	dc.b	nE1, $0A, nRst, $0E, nA1, $0C, nA1, $0A, nRst, $0E, nA1, $0C
	dc.b	nRst, nA1, $06, nB1, nC2, nB1, nA1, $0C
	smpsSetvoice        $05
	dc.b	nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0C
	dc.b	nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0A
	dc.b	nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nE1, $0A, nRst, $0E
	dc.b	nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0C, nE1, $0A, nRst, $0E
	dc.b	nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0A, nRst, $0E, nE1, $0C
	dc.b	nE1, $0A, nRst, $0E, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A
	dc.b	nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A
	dc.b	nRst, $0E, nF1, $0A, nRst, $0E, nF1, $0C, nF1, $0A, nRst, $0E
	dc.b	nE1, $0A, nRst, $0E, nE1, $0C, nE1, $0A, nRst, $0E, nE1, $0C
	dc.b	nE1, $0A, nRst, $0E, nA1, $0C, nA1, $0A, nRst, $0E, nA1, $0C
	dc.b	nRst, nA1, $06, nB1, nC2, nB1, nA1, $0C, nG1, $06, nRst, nG1
	dc.b	nRst, nG1, nRst, nG1, nG1, nG1, nG1, nG1, nRst, nG1, nRst, nG1
	dc.b	nG1, nG1, $06, nRst, nG1, nRst, nG1, nRst, nG1, nG1, nG1, nG1
	dc.b	nG1, nRst, nG1, nRst, nG1, nG1, nG1, $06, nRst, nG1, nRst, nG1
	dc.b	nRst, nG1, nG1, nG1, nG1, nG1, nRst, nG1, nRst, nG1, nG1, nG1
	dc.b	$06, nRst, nG1, nRst, nG1, nRst, nG1, nG1, nG1, nG1, nG1, nRst
	dc.b	nG1, nRst, nG1, nG1, nG1, $06, nRst, nG1, nRst, nG1, nRst, nG1
	dc.b	nG1, nG1, nG1, nG1, nRst, nG1, nRst, nG1, nG1, nG1, $06, nRst
	dc.b	nG1, nRst, nG1, nRst, nG1, nG1, nG1, nG1, nG1, nRst, nG1, nRst
	dc.b	nG1, nG1, nG1, $06, nRst, nG1, nRst, nG1, nRst, nG1, nG1, nG1
	dc.b	nG1, nG1, nRst, nG1, nRst, nG1, nG1, nG1, $0C, nG2, $06, nG2
	dc.b	nG1, $0C, nG2, $06, nRst, nG1, $0C, nG2, $06, nRst, nG1, nG1
	dc.b	nD2, nF2
	smpsJump            Staff_Roll_FM3

; FM4 Data
Staff_Roll_FM4:
	dc.b	nRst, $0C

Staff_Roll_Jump01:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nA3, $0C, nRst, nB3, nRst, $06, nG3, nRst, nE3, $12, nD3, $09
	dc.b	nRst, $03, nC3, $09, nRst, $03, nD3, $0C, nE3, $06, nA2, $1E
	dc.b	nD3, $0C, nG3, $06, nA3, $0C, nG3, $12, nA3, $0C, nRst, nB3
	dc.b	nRst, $06, nG3, nRst, nE3, $12, nD3, $06, nRst, nC3, nRst, nD3
	dc.b	$0C, nE3, $06, nA2, nRst, nE3, $12, nD3, $0C, nC3, $06, nB2
	dc.b	$0C, nC3, $12, nA3, $0C, nRst, nB3, nRst, $06, nG3, nRst, nE3
	dc.b	$12, nD3, $09, nRst, $03, nC3, $09, nRst, $03, nD3, $0C, nE3
	dc.b	$06, nA2, $1E, nD3, $0C, nG3, $06, nA3, $0C, nG3, $12, nA3
	dc.b	$0C, nRst, nB3, nRst, $06, nG3, nRst, nE3, $12, nD3, $06, nRst
	dc.b	nC3, nRst, nD3, $0C, nE3, $06, nA2, nRst, nE3, $12, nD3, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $12
	smpsSetvoice        $01
	dc.b	nA3, $3C, nA3, $0C, nC4, nE4, nF4, $18, nE4, $0C, nC4, $18
	dc.b	nA3, $24, nAb3, $3C, nAb3, $0C, nC4, nE4, nF4, $18, nE4, $0C
	dc.b	nC4, $18, nAb3, $24, nG3, nE4, nG3, $18, nAb3, $24, nE4, nAb3
	dc.b	$18, nG3, $24, nE4, nG3, $18, nAb3, $24, nE4, $3C, nA3, nA3
	dc.b	$0C, nC4, nE4, nF4, $18, nE4, $0C, nC4, $18, nA3, $24, nAb3
	dc.b	$3C, nAb3, $0C, nC4, nE4, nF4, $18, nE4, $0C, nG4, $18, nF4
	dc.b	$24, nG3, nE4, nG3, $18, nAb3, $24, nE4, nAb3, $18, nG3, $24
	dc.b	nE4, nG3, $18, nAb3, $24, nE4, $3C
	smpsSetvoice        $02
	dc.b	nA3, $60, nC4, $30, nE4, nD4, $60, nG4, nA4, nE4, $30, nA4
	dc.b	nG4, $60, nE4
	smpsSetvoice        $00
	dc.b	nA3, nC4, $30, nE4, nD4, $60, nG4, nA4, nE4, $30, nA4, nG4
	dc.b	$60, nA4, nG2, $30, nC3, nD3, nF3, nG3, nC4, nD4, nF4, nG4
	dc.b	nC5, nD5, nF5, nG3, $06, nG3, nB3, $06, nD4, nA4, nG4, nF4
	dc.b	nE4, nD4, nE4, nF4, nC4, nD4, nE4, nB3, nC4, nG3, $06, nG3
	dc.b	nB3, $06, nD4, nB4, nA4, nG4, nF4, nE4, nF4, nG4, nA4, nB4
	dc.b	nC5, nD5, nE5
	smpsJump            Staff_Roll_Jump01

; FM5 Data
Staff_Roll_FM5:
	dc.b	nRst, $0D

Staff_Roll_Jump00:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nF3, $0C, nRst, nG3, nRst, $06, nE3, nRst, nC3, $12, nB2, $09
	dc.b	nRst, $03, nA2, $09, nRst, $03, nB2, $0C, nB2, $06, nF2, $1E
	dc.b	nB2, $0C, nD3, $06, nF3, $0C, nE3, $12, nF3, $0C, nRst, nG3
	dc.b	nRst, $06, nE3, nRst, nC3, $12, nB2, $06, nRst, nA2, nRst, nB2
	dc.b	$0C, nC3, $06, nF2, nRst, nC3, $12, nB2, $0C, nA2, $06, nG2
	dc.b	$0C, nA2, $12, nF3, $0C, nRst, nG3, nRst, $06, nE3, nRst, nC3
	dc.b	$12, nB2, $09, nRst, $03, nA2, $09, nRst, $03, nB2, $0C, nB2
	dc.b	$06, nF2, $1E, nB2, $0C, nD3, $06, nF3, $0C, nE3, $12, nF3
	dc.b	$0C, nRst, nG3, nRst, $06, nE3, nRst, nC3, $12, nB2, $06, nRst
	dc.b	nA2, nRst, nB2, $0C, nC3, $06, nF2, nRst, nC3, $12, nB2, $0C
	dc.b	nA2, $06, nG2, $0C, nA2, $12, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsSetvoice        $01
	dc.b	nF3, $3C, nF3, $0C, nA3, nC4, nC4, $18, nC4, $0C, nA3, $18
	dc.b	nF3, $24, nF3, $3C, nF3, $0C, nAb3, nC4, nC4, $18, nC4, $0C
	dc.b	nE4, $18, nD4, $24, nE3, nC4, nE3, $18, nE3, $24, nC4, nE3
	dc.b	$18, nE3, $24, nC4, nE3, $18, nE3, $24, nC4, $3C
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $03
	dc.b	nE4, $06, nA3, nC4, nE4, nRst, nF3, nA3, nC4, nE4, nF3, nE4
	dc.b	nF3, nD4, nF3, nC4, nF3, nE4, nA3, nC4, nE4, nRst, nF3, nA3
	dc.b	nC4, nE4, nF3, nE4, nF3, nD4, nF3, nC4, nF3, nD4, nG3, nB3
	dc.b	nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4, nG3, nC4, nG3, nB3
	dc.b	nG3, nD4, nG3, nB3, nD4, nRst, nE3, nG3, nB3, nD4, nG3, nD4
	dc.b	nG3, nC4, nG3, nB3, nG3
	smpsSetvoice        $00
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nG3, nF3, nE3, nD3, nC3, nD3
	dc.b	nE3, nB2, nC3, nD3, nA2, nB2, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nA3, nG3, nF3, nE3, nD3, nE3, nF3, nC3, nD3, nE3, nB2, nC3
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nB3, nA3, nG3, nF3, nE3, nF3
	dc.b	nG3, nD3, nE3, nF3, nC3, nD3, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nC4, nB3, nA3, nG3, nF3, nG3, nA3, nE3, nF3, nG3, nD3, nE3
	dc.b	nG2, $06, nG2, nB2, $06, nD3, nD4, nC4, nB3, nA3, nG3, nA3
	dc.b	nB3, nF3, nG3, nA3, nE3, nF3, nG2, $06, nG2, nB2, $06, nD3
	dc.b	nE4, nD4, nC4, nB3, nA3, nB3, nC4, nG3, nA3, nB3, nF3, nG3
	dc.b	nD3, $06, nD3, nG3, $06, nB3, nF4, nE4, nD4, nC4, nB3, nC4
	dc.b	nD4, nA3, nB3, nC4, nG3, nA3, nE3, $06, nE3, nG3, $06, nB3
	dc.b	nG4, nF4, nE4, nD4, nC4, nD4, nE4, nF4, nG4, nA4, nB4, nC5
	smpsJump            Staff_Roll_Jump00

; PSG1 Data
Staff_Roll_PSG1:
	smpsStop

; PSG2 Data
Staff_Roll_PSG2:
	smpsStop

; PSG3 Data
Staff_Roll_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02

Staff_Roll_Jump02:
	dc.b	nAb6, $0C, nAb6, nRst, $0C, nAb6, $06, nAb6, nRst, nAb6, nAb6, nRst
	dc.b	nRst, $0C, nAb6
	smpsJump            Staff_Roll_Jump02

; DAC Data
Staff_Roll_DAC:
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $18, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dKickAlt, dSnareAlt, $06, dSnareAlt, $85
	dc.b	$0C, $85, dSnareAlt, $06, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18
	dc.b	dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt
	dc.b	dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt
	dc.b	$18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt
	dc.b	dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18
	dc.b	dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt
	dc.b	dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt
	dc.b	$18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt
	dc.b	dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18
	dc.b	dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt
	dc.b	dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt
	dc.b	$18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt
	dc.b	dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18
	dc.b	dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $18, dSnareAlt, dKickAlt
	dc.b	dSnareAlt
	smpsJump            Staff_Roll_DAC

Staff_Roll_Voices:
;	Voice $00
;	$3A
;	$51, $08, $51, $02, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $24, $18

;	Voice $01
;	$04
;	$72, $42, $32, $32, 	$12, $12, $12, $12, 	$00, $08, $00, $08
;	$00, $08, $00, $08, 	$0F, $1F, $0F, $1F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $08, $00, $08, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

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

;	Voice $03
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $90, $29, $97
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $17, $29, $10, $23

;	Voice $04
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

;	Voice $05
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

