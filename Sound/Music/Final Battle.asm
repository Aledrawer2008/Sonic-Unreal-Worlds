Final_Boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Final_Boss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       Final_Boss_DAC
	smpsHeaderFM        Final_Boss_FM1,	$00, $0E
	smpsHeaderFM        Final_Boss_FM2,	$00, $0E
	smpsHeaderFM        Final_Boss_FM3,	$00, $0E
	smpsHeaderFM        Final_Boss_FM4,	$00, $0E
	smpsHeaderFM        Final_Boss_FM5,	$00, $13
	smpsHeaderPSG       Final_Boss_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       Final_Boss_PSG2,	$00, $0D, $00, $00
	smpsHeaderPSG       Final_Boss_PSG3,	$00, $04, $00, $00

; DAC Data
Final_Boss_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $12, dSnareAlt, $12, dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $0C
	dc.b	dKick, $0C, dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $12, dSnareAlt, $12
	dc.b	dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $0C, dKick, $0C, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $06, dKick, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $06
	dc.b	dClap, $06, dKick, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $03, dClap, $03
	dc.b	dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dKick, $06, dSnareAlt, $0C, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $0C, dKick, $0C, dSnareAlt, $06, dKick, $0C, dKick, $06
	dc.b	dSnareAlt, $06, dSnareAlt, $06, dKick, $06, dClap, $06, dSnareAlt, $0C, dKick, $06
	dc.b	dSnareAlt, $06, dKick, $06, dSnareAlt, $06, dKick, $0C, dSnareAlt, $06, dKick, $0C
	dc.b	dKick, $06, dClap, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dKick, $06
	dc.b	dSnareAlt, $06, dClap, $06, dKick, $0C, dSnareAlt, $06, dSnareAlt, $06, dKick, $0C
	dc.b	dSnareAlt, $06, dKick, $0C, dKick, $06, dSnareAlt, $03, dKick, $03, dClap, $03
	dc.b	dSnareAlt, $03, dKick, $06, dClap, $06, dSnareAlt, $0C, dKick, $06, dSnareAlt, $06
	dc.b	dKick, $06, dSnareAlt, $06, dKick, $0C, dSnareAlt, $06, dKick, $0C, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dKick, $03, dClap, $03
	dc.b	dSnareAlt, $0C, dKick, $06, dKick, $03, dSnareAlt, $09, dSnareAlt, $06, dKick, $06
	dc.b	dKick, $03, dKick, $03, dSnareAlt, $06, dSnareAlt, $06, dKick, $06, dKick, $03
	dc.b	dSnareAlt, $09, dClap, $03, dSnareAlt, $03, dKick, $06, dKick, $03, dClap, $03
	dc.b	dSnareAlt, $0C, dKick, $06, dKick, $03, dSnareAlt, $09, dSnareAlt, $06, dKick, $06
	dc.b	dKick, $03, dKick, $03, dSnareAlt, $06, dSnareAlt, $06, dKick, $06, dKick, $03
	dc.b	dKick, $03, dClap, $03, dSnareAlt, $03, dSnareAlt, $03, dSnareAlt, $7F, nRst, $7F
	dc.b	nRst, $73, dKick, $06, dClap, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $12
	dc.b	dSnareAlt, $12, dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $0C, dKick, $0C
	dc.b	dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $12, dSnareAlt, $12, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $06, dKick, $0C, dKick, $06, dClap, $06, dKick, $06
	dc.b	dSnareAlt, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dSnareAlt, $03, dSnareAlt, $03
	dc.b	dKick, $06, dClap, $06, dKick, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $03
	dc.b	dClap, $03, dSnareAlt, $03, dSnareAlt, $03, dKick, $12, dSnareAlt, $12, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $06, dKick, $0C, dKick, $0C, dKick, $06, dClap, $06
	dc.b	dSnareAlt, $06, dKick, $12, dSnareAlt, $12, dKick, $06, dClap, $06, dSnareAlt, $06
	dc.b	dKick, $0C, dKick, $0C, dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $06
	dc.b	dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dClap, $06, dKick, $06, dSnareAlt, $03
	dc.b	dSnareAlt, $03, dKick, $03, dClap, $03, dSnareAlt, $03, dSnareAlt, $03, dKick, $06
	dc.b	dKick, $06, dSnareAlt, $0C, dKick, $06, dClap, $06, dSnareAlt, $0C, dKick, $0C
	dc.b	dSnareAlt, $06, dKick, $0C, dKick, $06, dSnareAlt, $06, dSnareAlt, $06, dKick, $06
	dc.b	dClap, $06, dSnareAlt, $0C, dKick, $06, dSnareAlt, $06, dKick, $06, dSnareAlt, $06
	dc.b	dKick, $0C, dSnareAlt, $06, dKick, $0C, dKick, $06, dClap, $06, dSnareAlt, $03
	dc.b	dSnareAlt, $03, dKick, $06, dKick, $06, dSnareAlt, $06, dClap, $06, dKick, $0C
	dc.b	dSnareAlt, $06, dSnareAlt, $06, dKick, $0C, dSnareAlt, $06, dKick, $0C, dKick, $06
	dc.b	dSnareAlt, $03, dKick, $03, dClap, $03, dSnareAlt, $03, dKick, $06, dClap, $06
	dc.b	dSnareAlt, $0C, dKick, $06, dSnareAlt, $06, dKick, $06, dSnareAlt, $06, dKick, $0C
	dc.b	dSnareAlt, $06, dKick, $0C, dKick, $06, dClap, $06, dSnareAlt, $03, dSnareAlt, $03
	dc.b	dKick, $06, dKick, $03, dClap, $03, dSnareAlt, $0C, dKick, $06, dKick, $03
	dc.b	dSnareAlt, $09, dSnareAlt, $06, dKick, $06, dKick, $03, dKick, $03, dSnareAlt, $06
	dc.b	dSnareAlt, $06, dKick, $06, dKick, $03, dSnareAlt, $09, dClap, $03, dSnareAlt, $03
	dc.b	dKick, $06, dKick, $03, dClap, $03, dSnareAlt, $0C, dKick, $06, dKick, $03
	dc.b	dSnareAlt, $09, dSnareAlt, $06, dKick, $06, dKick, $03, dKick, $03, dSnareAlt, $06
	dc.b	dSnareAlt, $06, dKick, $06, dKick, $03, dKick, $03, dClap, $03, dSnareAlt, $03
	dc.b	dSnareAlt, $03, dSnareAlt, $7F, nRst, $7F, nRst, $73, dKick, $06, dClap, $06
	dc.b	dSnareAlt, $03, dSnareAlt, $03, dKick, $12, dSnareAlt, $12, dKick, $06, dClap, $06
	dc.b	dSnareAlt, $06, dKick, $0C, dKick, $0C, dKick, $06, dClap, $06, dSnareAlt, $06
	dc.b	dKick, $12, dSnareAlt, $12, dKick, $06, dClap, $06, dSnareAlt, $06, dKick, $0C
	dc.b	dKick, $06, dClap, $06, dKick, $06, dSnareAlt, $06, dSnareAlt, $03, dSnareAlt, $03
	dc.b	dKick, $06, dSnareAlt, $03, dSnareAlt, $03, dKick, $06, dClap, $06, dKick, $06
	dc.b	dSnareAlt, $03, dSnareAlt, $03, dKick, $03, dClap, $03, dSnareAlt, $03, dSnareAlt, $03
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
Final_Boss_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsAlterVol        $05
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nA2, $06
	dc.b	nA2, $06, nA2, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nF3, $06, nF3, $06, nF3, $06
	dc.b	nG3, $06, nG3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nA2, $06
	dc.b	nA2, $06, nA2, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nF3, $06, nF3, $06, nF3, $06
	dc.b	nG3, $06, nG3, $06, nA2, $06, nA2, $06, nA2, $06, nA2, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nF3, $06, nF3, $06, nF3, $06, nG3, $06, nG3, $06
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	dc.b	nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06
	dc.b	nA2, $06, nG2, $06, nC3, $06, nD3, $06, nE3, $06, nE3, $06
	dc.b	nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nA2, $06, nG2, $06
	dc.b	nC3, $06, nD3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nA2, $06
	dc.b	nA2, $06, nA2, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nF3, $06, nF3, $06, nF3, $06
	dc.b	nG3, $06, nG3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nA2, $06
	dc.b	nA2, $06, nA2, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nF3, $06, nF3, $06, nF3, $06
	dc.b	nG3, $06, nG3, $06, nA2, $06, nA2, $06, nA2, $06, nA2, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nF3, $06, nF3, $06, nF3, $06, nG3, $06, nG3, $06
	dc.b	nA2, $06, nA2, $06, nA2, $06, nA2, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nD3, $06, nD3, $06, nD3, $06, nF3, $06
	dc.b	nF3, $06, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	dc.b	nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06
	dc.b	nA2, $06, nG2, $06, nC3, $06, nD3, $06, nE3, $06, nE3, $06
	dc.b	nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nA2, $06, nG2, $06
	dc.b	nC3, $06, nD3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
Final_Boss_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	smpsAlterVol        $01
	dc.b	nE4, $03, nA4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE4, $03, nE5, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE5, $03, nEb5, $03, nEb4, $03
	smpsAlterVol        $08
	dc.b	nA4, $03
	smpsAlterVol        $F8
	dc.b	nEb5, $03, nD5, $03, nD4, $03, nC5, $03, nC4, $03
	smpsAlterVol        $FF
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06, nE4, $06
	dc.b	nG4, $03, nE4, $03, nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C
	dc.b	nF4, $0C, nF4, $0C, nE4, $06, nG4, $03, nE4, $03, nA4, $06
	dc.b	nG4, $06, nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06
	dc.b	nFs4, $0C, nFs4, $0C, nG4, $0C, nG4, $0C, nE4, $06, nG4, $03
	dc.b	nE4, $03, nA4, $06, nG4, $06, nE4, $06, nG4, $03, nE4, $03
	dc.b	nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C, nF4, $0C, nF4, $0C
	dc.b	nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06, nE4, $06
	dc.b	nG4, $03, nE4, $03, nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C
	dc.b	nF4, $0C, nF4, $0C, nE5, $0C, nE5, $06, nEb5, $0C, nEb5, $06
	dc.b	nD5, $06, nD5, $06, nC5, $06, nA4, $06, nG4, $06, nE4, $0C
	dc.b	nFs4, $06, nC4, $06, nA3, $06, nE5, $0C, nE5, $06, nEb5, $0C
	dc.b	nEb5, $06, nD5, $06, nC5, $06, nE5, $06, nG5, $06, nA5, $06
	dc.b	nC6, $0C, nC6, $06, nD6, $06, nG6, $06, nE5, $0C, nE5, $06
	dc.b	nEb5, $0C, nEb5, $06, nD5, $06, nD5, $06, nC5, $06, nA4, $06
	dc.b	nG4, $06, nE4, $0C, nFs4, $06, nC4, $06, nA3, $06, nE5, $0C
	dc.b	nE5, $06, nEb5, $0C, nEb5, $06, nD5, $06, nD5, $06, nC5, $06
	dc.b	nA4, $06, nG4, $06, nE4, $0C, nFs4, $06, nC4, $06, nA3, $06
	smpsAlterVol        $01
	dc.b	nE4, $03, nA4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE4, $03, nE5, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE5, $03, nEb5, $03, nEb4, $03
	smpsAlterVol        $08
	dc.b	nA4, $03
	smpsAlterVol        $F8
	dc.b	nEb5, $03, nD5, $03, nD4, $03, nC5, $03, nC4, $03
	smpsAlterVol        $FF
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	smpsAlterVol        $01
	dc.b	nE4, $03, nA4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE4, $03, nE5, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE5, $03, nEb5, $03, nEb4, $03
	smpsAlterVol        $08
	dc.b	nA4, $03
	smpsAlterVol        $F8
	dc.b	nEb5, $03, nD5, $03, nD4, $03, nC5, $03, nC4, $03
	smpsAlterVol        $FF
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nA4, $06, nE4, $0C, nA4, $06, nG4, $06, nD4, $0C, nG4, $06
	dc.b	nFs4, $06, nFs4, $06, nG4, $06, nF4, $0C, nE4, $06, nD4, $0C
	dc.b	nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06, nE4, $06
	dc.b	nG4, $03, nE4, $03, nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C
	dc.b	nF4, $0C, nF4, $0C, nE4, $06, nG4, $03, nE4, $03, nA4, $06
	dc.b	nG4, $06, nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06
	dc.b	nFs4, $0C, nFs4, $0C, nG4, $0C, nG4, $0C, nE4, $06, nG4, $03
	dc.b	nE4, $03, nA4, $06, nG4, $06, nE4, $06, nG4, $03, nE4, $03
	dc.b	nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C, nF4, $0C, nF4, $0C
	dc.b	nE4, $06, nG4, $03, nE4, $03, nA4, $06, nG4, $06, nE4, $06
	dc.b	nG4, $03, nE4, $03, nA4, $06, nG4, $06, nFs4, $0C, nFs4, $0C
	dc.b	nF4, $0C, nF4, $0C, nE5, $0C, nE5, $06, nEb5, $0C, nEb5, $06
	dc.b	nD5, $06, nD5, $06, nC5, $06, nA4, $06, nG4, $06, nE4, $0C
	dc.b	nFs4, $06, nC4, $06, nA3, $06, nE5, $0C, nE5, $06, nEb5, $0C
	dc.b	nEb5, $06, nD5, $06, nC5, $06, nE5, $06, nG5, $06, nA5, $06
	dc.b	nC6, $0C, nC6, $06, nD6, $06, nG6, $06, nE5, $0C, nE5, $06
	dc.b	nEb5, $0C, nEb5, $06, nD5, $06, nD5, $06, nC5, $06, nA4, $06
	dc.b	nG4, $06, nE4, $0C, nFs4, $06, nC4, $06, nA3, $06, nE5, $0C
	dc.b	nE5, $06, nEb5, $0C, nEb5, $06, nD5, $06, nD5, $06, nC5, $06
	dc.b	nA4, $06, nG4, $06, nE4, $0C, nFs4, $06, nC4, $06, nA3, $06
	smpsAlterVol        $01
	dc.b	nE4, $03, nA4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE4, $03, nE5, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nC5, $03
	smpsAlterVol        $F8
	dc.b	nE5, $03, nEb5, $03, nEb4, $03
	smpsAlterVol        $08
	dc.b	nA4, $03
	smpsAlterVol        $F8
	dc.b	nEb5, $03, nD5, $03, nD4, $03, nC5, $03, nC4, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM3 Data
Final_Boss_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $05
	smpsPan             panRight, $00
	dc.b	nE4, $06
	smpsAlterVol        $FC
	dc.b	nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	smpsPan             panLeft, $00
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	smpsPan             panRight, $00
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	smpsPan             panLeft, $00
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	smpsAlterVol        $01
	dc.b	nB3, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB3, $03, nB4, $03, nB3, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB4, $03, nBb4, $03, nBb3, $03
	smpsAlterVol        $08
	dc.b	nE4, $03
	smpsAlterVol        $F8
	dc.b	nBb4, $03, nA4, $03, nA3, $03, nG4, $03, nG3, $03
	smpsAlterVol        $FF
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06, nB3, $06
	dc.b	nD4, $03, nB3, $03, nE4, $06, nD4, $06, nD4, $0C, nD4, $0C
	dc.b	nC4, $0C, nC4, $0C, nB3, $06, nD4, $03, nB3, $03, nE4, $06
	dc.b	nD4, $06, nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06
	dc.b	nD4, $0C, nD4, $0C, nC4, $0C, nC4, $0C, nB3, $06, nD4, $03
	dc.b	nB3, $03, nE4, $06, nD4, $06, nB3, $06, nD4, $03, nB3, $03
	dc.b	nE4, $06, nD4, $06, nD4, $0C, nD4, $0C, nC4, $0C, nC4, $0C
	dc.b	nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06, nB3, $06
	dc.b	nD4, $03, nB3, $03, nE4, $06, nD4, $06, nD4, $0C, nD4, $0C
	dc.b	nC4, $0C, nC4, $0C, nB4, $0C, nB4, $06, nBb4, $0C, nBb4, $06
	dc.b	nA4, $06, nA4, $06, nG4, $06, nE4, $06, nD4, $06, nB3, $0C
	dc.b	nCs4, $06, nG3, $06, nE3, $06, nB4, $0C, nB4, $06, nBb4, $0C
	dc.b	nBb4, $06, nA4, $06, nG4, $06, nB4, $06, nD5, $06, nE5, $06
	dc.b	nG5, $0C, nG5, $06, nA5, $06, nD6, $06, nB4, $0C, nB4, $06
	dc.b	nBb4, $0C, nBb4, $06, nA4, $06, nA4, $06, nG4, $06, nE4, $06
	dc.b	nD4, $06, nB3, $0C, nCs4, $06, nG3, $06, nE3, $06, nB4, $0C
	dc.b	nB4, $06, nBb4, $0C, nBb4, $06, nA4, $06, nA4, $06, nG4, $06
	dc.b	nE4, $06, nD4, $06, nB3, $0C, nCs4, $06, nG3, $06, nE3, $06
	smpsAlterVol        $01
	dc.b	nB3, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB3, $03, nB4, $03, nB3, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB4, $03, nBb4, $03, nBb3, $03
	smpsAlterVol        $08
	dc.b	nE4, $03
	smpsAlterVol        $F8
	dc.b	nBb4, $03, nA4, $03, nA3, $03, nG4, $03, nG3, $03
	smpsAlterVol        $FF
	smpsPan             panRight, $00
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	smpsPan             panLeft, $00
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	smpsPan             panRight, $00
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	smpsPan             panLeft, $00
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	smpsAlterVol        $01
	dc.b	nB3, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB3, $03, nB4, $03, nB3, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB4, $03, nBb4, $03, nBb3, $03
	smpsAlterVol        $08
	dc.b	nE4, $03
	smpsAlterVol        $F8
	dc.b	nBb4, $03, nA4, $03, nA3, $03, nG4, $03, nG3, $03
	smpsAlterVol        $FF
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nE4, $06, nB3, $0C, nE4, $06, nD4, $06, nA3, $0C, nD4, $06
	dc.b	nD4, $06, nD4, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C
	dc.b	nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06, nB3, $06
	dc.b	nD4, $03, nB3, $03, nE4, $06, nD4, $06, nD4, $0C, nD4, $0C
	dc.b	nC4, $0C, nC4, $0C, nB3, $06, nD4, $03, nB3, $03, nE4, $06
	dc.b	nD4, $06, nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06
	dc.b	nD4, $0C, nD4, $0C, nC4, $0C, nC4, $0C, nB3, $06, nD4, $03
	dc.b	nB3, $03, nE4, $06, nD4, $06, nB3, $06, nD4, $03, nB3, $03
	dc.b	nE4, $06, nD4, $06, nD4, $0C, nD4, $0C, nC4, $0C, nC4, $0C
	dc.b	nB3, $06, nD4, $03, nB3, $03, nE4, $06, nD4, $06, nB3, $06
	dc.b	nD4, $03, nB3, $03, nE4, $06, nD4, $06, nD4, $0C, nD4, $0C
	dc.b	nC4, $0C, nC4, $0C, nB4, $0C, nB4, $06, nBb4, $0C, nBb4, $06
	dc.b	nA4, $06, nA4, $06, nG4, $06, nE4, $06, nD4, $06, nB3, $0C
	dc.b	nCs4, $06, nG3, $06, nE3, $06, nB4, $0C, nB4, $06, nBb4, $0C
	dc.b	nBb4, $06, nA4, $06, nG4, $06, nB4, $06, nD5, $06, nE5, $06
	dc.b	nG5, $0C, nG5, $06, nA5, $06, nD6, $06, nB4, $0C, nB4, $06
	dc.b	nBb4, $0C, nBb4, $06, nA4, $06, nA4, $06, nG4, $06, nE4, $06
	dc.b	nD4, $06, nB3, $0C, nCs4, $06, nG3, $06, nE3, $06, nB4, $0C
	dc.b	nB4, $06, nBb4, $0C, nBb4, $06, nA4, $06, nA4, $06, nG4, $06
	dc.b	nE4, $06, nD4, $06, nB3, $0C, nCs4, $06, nG3, $06, nE3, $06
	smpsAlterVol        $01
	dc.b	nB3, $03, nE4, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB3, $03, nB4, $03, nB3, $03
	smpsAlterVol        $08
	dc.b	nG4, $03
	smpsAlterVol        $F8
	dc.b	nB4, $03, nBb4, $03, nBb3, $03
	smpsAlterVol        $08
	dc.b	nE4, $03
	smpsAlterVol        $F8
	dc.b	nBb4, $03, nA4, $03, nA3, $03, nG4, $03, nG3, $03
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsStop

; FM4 Data
Final_Boss_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsAlterVol        $05
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $0C, nA2, $0C
	dc.b	nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06, nF3, $0C, nF3, $06
	dc.b	nG3, $06, nG3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $0C, nA2, $0C
	dc.b	nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06, nF3, $0C, nF3, $06
	dc.b	nG3, $06, nG3, $06, nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C
	dc.b	nD3, $0C, nD3, $06, nF3, $0C, nF3, $06, nG3, $06, nG3, $06
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	dc.b	nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06
	dc.b	nA2, $06, nG2, $06, nC3, $06, nD3, $06, nE3, $06, nE3, $06
	dc.b	nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nA2, $06, nG2, $06
	dc.b	nC3, $06, nD3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $0C, nA2, $0C
	dc.b	nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06, nF3, $0C, nF3, $06
	dc.b	nG3, $06, nG3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsAlterVol        $FF
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $0C, nA2, $0C
	dc.b	nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06, nF3, $0C, nF3, $06
	dc.b	nG3, $06, nG3, $06, nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C
	dc.b	nD3, $0C, nD3, $06, nF3, $0C, nF3, $06, nG3, $06, nG3, $06
	dc.b	nA2, $0C, nA2, $0C, nC3, $0C, nC3, $0C, nD3, $0C, nD3, $06
	dc.b	nF3, $0C, nF3, $06, nG3, $06, nG3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nA2, $06, nC3, $06, nEb3, $06, nE3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nC3, $06, nC3, $06, nC3, $06, nA2, $06, nC3, $06
	dc.b	nEb3, $06, nE3, $06, nA2, $06, nC3, $06, nEb3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nC3, $06, nC3, $06
	dc.b	nC3, $06, nC3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	dc.b	nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06
	dc.b	nA2, $06, nG2, $06, nC3, $06, nD3, $06, nE3, $06, nE3, $06
	dc.b	nE3, $06, nEb3, $06, nEb3, $06, nEb3, $06, nD3, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nA2, $06, nG2, $06
	dc.b	nC3, $06, nD3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06
	dc.b	nEb3, $06, nEb3, $06, nD3, $06, nD3, $06, nC3, $06, nA2, $06
	dc.b	nG2, $06, nC3, $06, nA2, $06, nG2, $06, nC3, $06, nD3, $06
	smpsAlterVol        $01
	dc.b	nE3, $06, nE3, $06, nE3, $06, nE3, $06, nEb3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsStop

; FM5 Data
Final_Boss_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	dc.b	nRst, $06, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09
	dc.b	nC5, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $09, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03, nRst, $09
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $09, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $06
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09, nC5, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nRst, $06, nC5, $03, nRst, $09, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $06, nC5, $03, nRst, $06, nC5, $03, nRst, $09
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $09, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $09, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $09
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nC5, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $06, nC5, $03, nRst, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $06, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $06, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03, nC5, $03, nRst, $03
	dc.b	nC5, $03, nC5, $03, nRst, $03, nC5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $03, nC5, $03, nC5, $03, nC5, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	smpsStop

; PSG1 Data
Final_Boss_PSG1:
	dc.b	nRst, $06, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nE2, $03, nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03, nE3, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE3, $03, nEb3, $03, nEb2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $03, nD3, $03, nD2, $03, nC3, $03, nC2, $03, nRst, $06
	smpsPSGAlterVol     $FF
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $7F, $44, nAb3, $06, nE3
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $FC
	dc.b	nC3, $06
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $01
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $06
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FC
	dc.b	nG2, $06, nA2, $06, nG2, $06, nE2, $06, nFs2, $06
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FC
	dc.b	nA1, $06, nC2, $06, nD2, $06, nE2, $09, nRst, $03, nE2, $06
	dc.b	nEb2, $09, nRst, $03, nEb2, $06, nD2, $03, nRst, $03, nD2, $06
	dc.b	nC2, $06, nA1, $06, nG1, $06, nE1, $09, nRst, $03, nFs1, $06
	dc.b	nD2, $06, nG2, $06
	smpsPSGAlterVol     $01
	dc.b	nE2, $03, nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03, nE3, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE3, $03, nEb3, $03, nEb2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $03, nD3, $03, nD2, $03, nC3, $03, nC2, $03, nRst, $06
	smpsPSGAlterVol     $FF
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nE2, $03, nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03, nE3, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE3, $03, nEb3, $03, nEb2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $03, nD3, $03, nD2, $03, nC3, $03, nC2, $03, nRst, $06
	smpsPSGAlterVol     $FF
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nA2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $F9
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $F9
	dc.b	nFs2, $03
	smpsPSGAlterVol     $03
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $03
	dc.b	nF2, $03
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nE2, $03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $03
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $09, nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03, nRst, $03, nE2, $03, nRst, $09, nG2, $03
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03, nRst, $03, nG2, $03, nRst, $09, nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $03, nRst, $03, nFs2, $03, nRst, $09, nF2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $03, nRst, $03, nF2, $03, nRst, $7F, $44, nAb3, $06, nE3
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $FC
	dc.b	nC3, $06
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $01
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $06
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FC
	dc.b	nG2, $06, nA2, $06, nG2, $06, nE2, $06, nFs2, $06
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $03
	smpsPSGAlterVol     $FC
	dc.b	nA1, $06, nC2, $06, nD2, $06, nE2, $09, nRst, $03, nE2, $06
	dc.b	nEb2, $09, nRst, $03, nEb2, $06, nD2, $03, nRst, $03, nD2, $06
	dc.b	nC2, $06, nA1, $06, nG1, $06, nE1, $09, nRst, $03, nFs1, $06
	dc.b	nD2, $06, nG2, $06
	smpsPSGAlterVol     $01
	dc.b	nE2, $03, nA2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $03, nE3, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nE3, $03, nEb3, $03, nEb2, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $03, nD3, $03, nD2, $03, nC3, $03, nC2, $03
	smpsPSGvoice        $00
	smpsStop

; PSG2 Data
Final_Boss_PSG2:
	dc.b	nRst, $06, nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03
	smpsPSGAlterVol     $03
	dc.b	nA3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $01
	dc.b	nE2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nFs3, $03
	smpsPSGAlterVol     $02
	dc.b	nA3, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs3, $03
	smpsPSGAlterVol     $FF
	dc.b	nD3, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nF3, $03
	smpsPSGAlterVol     $01
	dc.b	nA3, $03
	smpsPSGAlterVol     $FF
	dc.b	nF3, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nD3, $03
	smpsPSGAlterVol     $02
	dc.b	nG3, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03
	smpsPSGAlterVol     $03
	dc.b	nA3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $01
	dc.b	nE2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nFs3, $03
	smpsPSGAlterVol     $02
	dc.b	nA3, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs3, $03
	smpsPSGAlterVol     $FF
	dc.b	nD3, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nF3, $03
	smpsPSGAlterVol     $01
	dc.b	nA3, $03
	smpsPSGAlterVol     $FF
	dc.b	nF3, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nD3, $03
	smpsPSGAlterVol     $02
	dc.b	nG3, $03
	smpsPSGAlterVol     $FA
	dc.b	nB1, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB1, $03, nB2, $03, nB1, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $03, nBb2, $03, nBb1, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $03, nA2, $03, nA1, $03, nG2, $03, nG1, $03
	smpsPSGAlterVol     $FF
	dc.b	nB1, $24, nA1, $0C, nFs1, $12, nA1, $12, nG1, $0C, nE1, $24
	dc.b	nG1, $0C, nCs2, $0C, nG1, $06, nD2, $06, nC2, $06, nB1, $06
	dc.b	nA1, $06, nG1, $06, nB1, $24, nD2, $0C, nFs2, $12, nG2, $12
	dc.b	nFs2, $0C, nE2, $18, nD2, $18, nD2, $12, nC2, $0C, nD2, $06
	dc.b	nE2, $06, nG2, $06, nRst, $06, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $7F, $44, nEb3, $06, nB2
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nB2, $03
	smpsPSGAlterVol     $FC
	dc.b	nG2, $06
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $01
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FC
	dc.b	nD2, $06, nE2, $06, nD2, $06, nB1, $06, nCs2, $06
	smpsPSGAlterVol     $02
	dc.b	nCs2, $03
	smpsPSGAlterVol     $02
	dc.b	nCs2, $03
	smpsPSGAlterVol     $FC
	dc.b	nE1, $06, nG1, $06, nA1, $06, nB1, $09, nRst, $03, nB1, $06
	dc.b	nBb1, $09, nRst, $03, nBb1, $06, nA1, $03, nRst, $03, nA1, $06
	dc.b	nG1, $06, nE1, $06, nD1, $06, nB0, $09, nRst, $03, nCs1, $06
	dc.b	nC2, $06, nD2, $06
	smpsPSGAlterVol     $01
	dc.b	nB1, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB1, $03, nB2, $03, nB1, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $03, nBb2, $03, nBb1, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $03, nA2, $03, nA1, $03, nG2, $03, nG1, $03, nRst, $06
	smpsPSGAlterVol     $08
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03
	smpsPSGAlterVol     $03
	dc.b	nA3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $01
	dc.b	nE2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nFs3, $03
	smpsPSGAlterVol     $02
	dc.b	nA3, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs3, $03
	smpsPSGAlterVol     $FF
	dc.b	nD3, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nF3, $03
	smpsPSGAlterVol     $01
	dc.b	nA3, $03
	smpsPSGAlterVol     $FF
	dc.b	nF3, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nD3, $03
	smpsPSGAlterVol     $02
	dc.b	nG3, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nA2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03
	smpsPSGAlterVol     $03
	dc.b	nA3, $03
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $02
	dc.b	nC3, $03
	smpsPSGAlterVol     $FD
	dc.b	nA2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $01
	dc.b	nE2, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03, nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nFs3, $03
	smpsPSGAlterVol     $02
	dc.b	nA3, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs3, $03
	smpsPSGAlterVol     $FF
	dc.b	nD3, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nF3, $03
	smpsPSGAlterVol     $01
	dc.b	nA3, $03
	smpsPSGAlterVol     $FF
	dc.b	nF3, $03
	smpsPSGAlterVol     $FE
	dc.b	nC3, $03
	smpsPSGAlterVol     $02
	dc.b	nA2, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nD3, $03
	smpsPSGAlterVol     $02
	dc.b	nG3, $03
	smpsPSGAlterVol     $FA
	dc.b	nB1, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB1, $03, nB2, $03, nB1, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $03, nBb2, $03, nBb1, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $03, nA2, $03, nA1, $03, nG2, $03, nG1, $03
	smpsPSGAlterVol     $FF
	dc.b	nB1, $24, nA1, $0C, nFs1, $12, nA1, $12, nG1, $0C, nE1, $24
	dc.b	nG1, $0C, nCs2, $0C, nG1, $06, nD2, $06, nC2, $06, nB1, $06
	dc.b	nA1, $06, nG1, $06, nB1, $24, nD2, $0C, nFs2, $12, nG2, $12
	dc.b	nFs2, $0C, nE2, $18, nD2, $18, nD2, $12, nC2, $0C, nD2, $06
	dc.b	nE2, $06, nG2, $06, nRst, $06, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $09, nB1, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	dc.b	nB1, $03, nRst, $03, nB1, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nD2, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $FE
	dc.b	nD2, $03, nRst, $03, nD2, $03, nRst, $09, nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $7F, $44, nEb3, $06, nB2
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	nB2, $03
	smpsPSGAlterVol     $02
	dc.b	nB2, $03
	smpsPSGAlterVol     $FC
	dc.b	nG2, $06
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $01
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nE2, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FC
	dc.b	nD2, $06, nE2, $06, nD2, $06, nB1, $06, nCs2, $06
	smpsPSGAlterVol     $02
	dc.b	nCs2, $03
	smpsPSGAlterVol     $02
	dc.b	nCs2, $03
	smpsPSGAlterVol     $FC
	dc.b	nE1, $06, nG1, $06, nA1, $06, nB1, $09, nRst, $03, nB1, $06
	dc.b	nBb1, $09, nRst, $03, nBb1, $06, nA1, $03, nRst, $03, nA1, $06
	dc.b	nG1, $06, nE1, $06, nD1, $06, nB0, $09, nRst, $03, nCs1, $06
	dc.b	nC2, $06, nD2, $06
	smpsPSGAlterVol     $01
	dc.b	nB1, $03, nE2, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB1, $03, nB2, $03, nB1, $03
	smpsPSGAlterVol     $03
	dc.b	nG2, $03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $03, nBb2, $03, nBb1, $03
	smpsPSGAlterVol     $02
	dc.b	nE2, $03
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $03, nA2, $03, nA1, $03, nG2, $03, nG1, $03
	smpsPSGvoice        $00
	smpsStop

; PSG3 Data
Final_Boss_PSG3:
	dc.b	nRst, $7F, $71, nE2, $24, nD2, $0C, nC2, $12, nD2, $12, nC2
	dc.b	$0C, nA1, $24, nC2, $0C, nFs2, $0C, nC2, $06, nG2, $06, nF2
	dc.b	$06, nE2, $06, nD2, $06, nC2, $06, nE2, $24, nG2, $0C, nA2
	dc.b	$12, nC3, $12, nB2, $0C, nA2, $18, nG2, $18, nFs2, $12, nF2
	dc.b	$0C, nG2, $06, nA2, $06, nC3, $06
	smpsPSGAlterVol     $02
	dc.b	nA3, $06, nG3, $06, nE3, $06, nA3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nD3, $06, nC3, $06, nA2, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nE2, $06, nG2, $06
	dc.b	nA2, $06, nE2, $06, nG2, $06, nA2, $06, nC3, $06, nD3, $06
	dc.b	nFs3, $06, nD3, $06, nC3, $06, nG3, $06, nF3, $06, nE3, $06
	dc.b	nD3, $06, nC3, $06
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03, nC3, $03, nG3, $03, nC3, $03, nA3, $03, nG3, $03
	dc.b	nC3, $03, nE3, $03, nG3, $03, nA3, $03, nC3, $03, nE3, $03
	dc.b	nG3, $03, nC3, $03, nFs3, $09, nRst, $03, nFs3, $06, nRst, $06
	dc.b	nF3, $06, nRst, $06, nF3, $06, nRst, $06, nF3, $06, nE3, $03
	dc.b	nC3, $03, nG3, $03, nC3, $03, nA3, $03, nG3, $03, nC3, $03
	dc.b	nE3, $03, nG3, $03, nA3, $03, nC3, $03, nE3, $03, nG3, $03
	dc.b	nC3, $03, nFs3, $09, nRst, $03, nFs3, $06, nRst, $06, nG3, $06
	dc.b	nRst, $06, nG3, $06, nRst, $06, nG3, $06, nRst, $70, $70, $70
	dc.b	$70, $70, $70, nE2, $24, nD2, $0C, nC2, $12, nD2, $12, nC2
	dc.b	$0C, nA1, $24, nC2, $0C, nFs2, $0C, nC2, $06, nG2, $06, nF2
	dc.b	$06, nE2, $06, nD2, $06, nC2, $06, nE2, $24, nG2, $0C, nA2
	dc.b	$12, nC3, $12, nB2, $0C, nA2, $18, nG2, $18, nFs2, $12, nF2
	dc.b	$0C, nG2, $06, nA2, $06, nC3, $06
	smpsPSGAlterVol     $02
	dc.b	nA3, $06, nG3, $06, nE3, $06, nA3, $06, nG3, $06, nE3, $06
	dc.b	nD3, $06, nE3, $06, nD3, $06, nC3, $06, nA2, $06, nD3, $06
	dc.b	nC3, $06, nA2, $06, nG2, $06, nC3, $06, nE2, $06, nG2, $06
	dc.b	nA2, $06, nE2, $06, nG2, $06, nA2, $06, nC3, $06, nD3, $06
	dc.b	nFs3, $06, nD3, $06, nC3, $06, nG3, $06, nF3, $06, nE3, $06
	dc.b	nD3, $06, nC3, $06
	smpsPSGAlterVol     $FE
	dc.b	nE3, $03, nC3, $03, nG3, $03, nC3, $03, nA3, $03, nG3, $03
	dc.b	nC3, $03, nE3, $03, nG3, $03, nA3, $03, nC3, $03, nE3, $03
	dc.b	nG3, $03, nC3, $03, nFs3, $09, nRst, $03, nFs3, $06, nRst, $06
	dc.b	nF3, $06, nRst, $06, nF3, $06, nRst, $06, nF3, $06, nE3, $03
	dc.b	nC3, $03, nG3, $03, nC3, $03, nA3, $03, nG3, $03, nC3, $03
	dc.b	nE3, $03, nG3, $03, nA3, $03, nC3, $03, nE3, $03, nG3, $03
	dc.b	nC3, $03, nFs3, $09, nRst, $03, nFs3, $06, nRst, $06, nG3, $06
	dc.b	nRst, $06, nG3, $06, nRst, $06, nG3, $06, nRst, $7F, $7F, $7F
	dc.b	$33
	smpsPSGvoice        $00
	smpsStop

Final_Boss_Voices:
;	Voice $00
;	$2D
;	$71, $00, $42, $22, 	$18, $1F, $18, $1A, 	$03, $0D, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$10, $84, $87, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $04, $00, $07
	smpsVcCoarseFreq    $02, $02, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $18, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $0D, $03
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $07, $04, $10

;	Voice $01
;	$2A
;	$44, $42, $74, $41, 	$0F, $14, $53, $14, 	$04, $06, $06, $03
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$16, $10, $26, $86
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $04, $04
	smpsVcCoarseFreq    $01, $04, $02, $04
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $14, $13, $14, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $06, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $26, $10, $16

;	Voice $02
;	$2B
;	$23, $23, $74, $74, 	$1F, $1F, $1F, $1F, 	$05, $10, $00, $10
;	$06, $01, $00, $01, 	$10, $3C, $00, $3C, 	$24, $0D, $24, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $02, $02
	smpsVcCoarseFreq    $04, $04, $03, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $00, $10, $05
	smpsVcDecayRate2    $01, $00, $01, $06
	smpsVcDecayLevel    $03, $00, $03, $01
	smpsVcReleaseRate   $0C, $00, $0C, $00
	smpsVcTotalLevel    $00, $24, $0D, $24

;	Voice $03
;	$28
;	$20, $21, $70, $70, 	$1F, $1F, $1F, $1F, 	$05, $10, $00, $10
;	$06, $01, $00, $01, 	$10, $3C, $00, $3C, 	$1C, $1C, $08, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $02, $02
	smpsVcCoarseFreq    $00, $00, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $00, $10, $05
	smpsVcDecayRate2    $01, $00, $01, $06
	smpsVcDecayLevel    $03, $00, $03, $01
	smpsVcReleaseRate   $0C, $00, $0C, $00
	smpsVcTotalLevel    $00, $08, $1C, $1C

;	Voice $04
;	$38
;	$62, $62, $0E, $0D, 	$1F, $1F, $1F, $1F, 	$00, $11, $00, $11
;	$00, $12, $1F, $12, 	$3F, $2F, $2F, $4F, 	$00, $10, $00, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $06, $06
	smpsVcCoarseFreq    $0D, $0E, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $11, $00
	smpsVcDecayRate2    $12, $1F, $12, $00
	smpsVcDecayLevel    $04, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $10, $00

