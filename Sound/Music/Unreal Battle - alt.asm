FinalPuyo_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     FinalPuyo_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       FinalPuyo_DAC
	smpsHeaderFM        FinalPuyo_FM1,	$00, $00
	smpsHeaderFM        FinalPuyo_FM2,	$00, $00
	smpsHeaderFM        FinalPuyo_FM3,	$00, $00
	smpsHeaderFM        FinalPuyo_FM4,	$00, $00
	smpsHeaderFM        FinalPuyo_FM5,	$00, $00
	smpsHeaderPSG       FinalPuyo_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       FinalPuyo_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       FinalPuyo_PSG3,	$00, $00, $00, $00

; DAC Data
FinalPuyo_DAC:
	dc.b	dKick, $18, dSnare, $14, dKick, $0C, $10, dSnare, $14, dKick, $04, $18
	dc.b	dSnare, $14, dKick, $0C, dSnare, $04, dKick, $0C, dSnare, $14, $04
	smpsJump            FinalPuyo_DAC
; PSG1 Data
FinalPuyo_PSG1:
; PSG2 Data
FinalPuyo_PSG2:
; PSG3 Data
FinalPuyo_PSG3:
	smpsStop

; FM1 Data
FinalPuyo_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panCenter, $00
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nD4, $0A, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, smpsNoAttack, nRst, nA2, $04, nRst, $01, nA2, $04
	dc.b	nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01, nD4, $0A
	dc.b	nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05
	dc.b	nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nD4, $09, nRst, $02, nA2, $04, nRst, $01, nA2, $04, nRst, $02
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02
	smpsAlterNote       $04
	dc.b	nC4, $09, nRst, $02
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02, nA2, $04, nRst, $01
	dc.b	nA2, $04, nRst, $02
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $02, nA2, $04, nRst, $01
	dc.b	nA2, $04, nRst, $02, nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $02, nA2, $04, nRst, $01, nA2, $04, nRst, $02
	dc.b	nA2, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $01
	smpsSetvoice        $05
	smpsAlterVol        $FE
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01

FinalPuyo_Jump04:
	smpsAlterNote       $07
	dc.b	nB4, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nA4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01, nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $04
	dc.b	nC5, $09, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nA4, $04, nRst, $02, nG4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nA4, $04, nRst, $02, nB4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nB4, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01, nA4, $04, nRst, $01, nG4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01, nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01, nB4, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $01, nG4, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $01, nB4, $04, nRst, $02
	smpsAlterNote       $04
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $02
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $13, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, $02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $12, nRst, $01
	smpsAlterNote       $02
	dc.b	nG5, $02, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $07, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, $02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $13, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, $02, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, $02, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $E1
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs6, smpsNoAttack, nB5, $10, nRst, $01, nA5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $08, nRst, $01, nG5, $0A, nRst, $02
	smpsAlterNote       $06
	dc.b	nFs5, $09, nRst, $02
	smpsAlterNote       $F8
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, $08, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $02
	smpsAlterNote       $E6
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $13, nRst, $02
	smpsAlterNote       $F5
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $08, nRst, $02
	smpsAlterNote       $E6
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $02
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $13, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $02
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $F5
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E1
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs6, smpsNoAttack, nB5, $11, nRst, $01
	smpsAlterNote       $14
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA5, $09, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $F8
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, $09, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $FE
	smpsAlterNote       $0A
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF4, nRst, $02
	smpsAlterNote       $E6
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG4, $03, nRst, $01
	smpsAlterNote       $09
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB4, nRst, $02, nD5, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nB4, $04, nRst, $01
	smpsAlterNote       $17
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA4, $03, nRst, $02, nG4, $04, nRst, $01
	smpsAlterNote       $09
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC5, nRst, $02
	smpsAlterNote       $00
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA4, $03, nRst, $01
	smpsAlterNote       $00
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB4, $02, nRst
	smpsAlterNote       $17
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG4, $02, nRst, $01, nA4, $05, nRst, $01
	smpsAlterNote       $05
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs4, $03, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $F8
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE4, $03, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $F8
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD4, $03, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC4, $03, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $05, nRst, $01, nB3, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $00
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA3, $03, nRst, $01
	smpsAlterNote       $00
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB3, $03, nRst, $01
	smpsAlterNote       $17
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG3, $02, nRst, $01, nA3, $05, nRst, $01
	smpsAlterNote       $05
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $03, nRst, $01
	smpsAlterNote       $07
	dc.b	nG3, $05, nRst, $01
	smpsAlterNote       $F8
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE3, $03, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $F8
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD3, $03, nRst, $01
	smpsAlterNote       $F8
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $14, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD3, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $15, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, nRst, $01, smpsNoAttack, nFs3, $15, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD3, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG3, $05, nRst, $01, nA3, $04, nRst, $01, nB3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB3, $02, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nB3, $14, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nB3, $02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB3, $01, nRst, $02, smpsNoAttack, nB3, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $04, nRst, $02
	smpsAlterNote       $00
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA3, $13, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA3, $02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA3, $01, nRst, $02, smpsNoAttack, nA3, $04, nRst, $01
	smpsAlterNote       $00
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB3, $03, nRst, $01
	smpsAlterNote       $17
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG3, $13, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG3, $02, nRst, $01, smpsNoAttack, nG3, $04, nRst, $01, nA3, $05, nRst
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $14, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, $01, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD3, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE3, $06, nRst, $01, nE3, $07, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs3, $06, nRst, $01, nFs3, $06, nRst, $01
	smpsAlterNote       $07
	dc.b	nG3, $07, nRst, $01, nG3, $06, nRst, $01, nA3, $06, nRst, $02
	dc.b	nA3, $06, nRst, $01, nG3, $06, nRst, $01, nG3, $06, nRst, $02
	smpsAlterNote       $06
	dc.b	nFs3, $06, nRst, $01, nFs3, $06, nRst, $01
	smpsAlterNote       $F8
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD3, $14, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD3, $02, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nCs3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nCs3, $02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nC3, $05, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB2, $05, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nB2, $05, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $DE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb2, $05, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nBb2, $01, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01, nB4, $04, nRst, $02, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $04, nRst, $02, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $04, nRst, $02, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01, nB4, $05, nRst, $01, nD5, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nB4, $04, nRst, $01, nA4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nB4, $05, nRst, $01, nA4, $04, nRst, $01, nG4, $05, nRst, $01
	dc.b	nB4, $04, nRst, $01, nA4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01, nG4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nD4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $0A, nRst, $02, nG4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $07
	dc.b	nG4, $04, nRst, $01, nA4, $04, nRst, $02, nB4, $09, nRst, $02
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $02
	smpsAlterNote       $04
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, $04, nRst, $02, nG4, $04, nRst, $01, nB4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $01, nG4, $04, nRst, $02, nB4, $04, nRst, $01
	dc.b	nD4, $05, nRst, $01, nG4, $04, nRst, $01, nA4, $05, nRst, $01
	dc.b	nD4, $04, nRst, $01, nG4, $05, nRst, $01, nB4, $04, nRst, $01
	dc.b	nD4, $05, nRst, $01, nG4, $04, nRst, $01, nA4, $05, nRst, $01
	dc.b	nD4, $04, nRst, $01, nG4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $04
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01, nB3, $04, nRst, $01, nD4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nB3, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $07
	dc.b	nB3, $04, nRst, $01, nD4, $05, nRst, $01, nB5, $02, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb5, nRst
	smpsAlterNote       $07
	dc.b	nA5, $03, nRst, $01
	smpsAlterNote       $00
	dc.b	nAb5, nRst
	smpsAlterNote       $07
	dc.b	nG5, $02, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs5, nRst
	smpsAlterNote       $08
	dc.b	nF5, $03, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE5, nRst
	smpsAlterNote       $02
	dc.b	nEb5, $02, nRst, $01
	smpsAlterNote       $07
	dc.b	nD5, nRst, nCs5, $03, nRst, $01
	smpsAlterNote       $04
	dc.b	nC5, nRst
	smpsAlterNote       $07
	dc.b	nB4, $02, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, nRst
	smpsAlterNote       $07
	dc.b	nA4, $03, nRst, $01
	smpsAlterNote       $00
	dc.b	nAb4, nRst, $0C
	smpsAlterNote       $07
	dc.b	nA4, $0D, nRst, $03, nG4, $0E, nRst, $03
	smpsAlterNote       $08
	dc.b	nF4, $0D, nRst, $04
	smpsAlterNote       $0D
	dc.b	nE4, $0C, nRst, $04
	smpsAlterNote       $07
	dc.b	nD4, $0A, nRst, $0C, nG4, $0D, nRst, $04
	smpsAlterNote       $08
	dc.b	nF4, $0D, nRst, $03
	smpsAlterNote       $0D
	dc.b	nE4, $0D, nRst, $04
	smpsAlterNote       $07
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $04
	dc.b	nC4, $0A, nRst, $0C
	smpsAlterNote       $08
	dc.b	nF4, $0D, nRst, $04
	smpsAlterNote       $0D
	dc.b	nE4, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nD4, $0D, nRst, $04
	smpsAlterNote       $04
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nB3, $0A, nRst, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $0E, nRst, $03
	smpsAlterNote       $07
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $04
	dc.b	nC4, $0E, nRst, $03
	smpsAlterNote       $07
	dc.b	nB3, $0D, nRst, $03, nA3, $0A, nRst, $01
	smpsSetvoice        $07
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nRst
	smpsSetvoice        $05
	smpsAlterVol        $04
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $06
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $07
	dc.b	nB4
	smpsPan             panCenter, $00
	smpsJump            FinalPuyo_Jump04

; FM2 Data
FinalPuyo_FM2:
	smpsSetvoice        $00
	smpsAlterVol        $1E
	smpsPan             panRight, $00
	dc.b	nRst, $15
	smpsAlterNote       $07
	dc.b	nA3, $09, nRst, $18, nG3, $09, nRst, $18, nA3, $09, nRst, $18
	dc.b	nG3, $09, nRst, $18, nG3, $0A, nRst, $01, nA3, $0A, nRst, $02
	dc.b	smpsNoAttack, nRst, $15, smpsNoAttack, nA3, $09, nRst, $19, nG3, $08, nRst, $19
	dc.b	nA3, $08, nRst, $19, nG3, $08, nRst, $19, nG3, $0A, nRst, $01
	dc.b	nA3, $0A, nRst, $01, smpsNoAttack, nRst, $16, smpsNoAttack, nA3, $08, nRst, $19
	dc.b	nG3, $09, nRst, $18, nA3, $09, nRst, $18, nG3, $09, nRst, $18
	dc.b	nG3, $0A, nRst, $01, nA3, $0A, nRst, $01, smpsNoAttack, nRst, $16, smpsNoAttack
	dc.b	nA3, $09, nRst, $18, nG3, $09, nRst, $18, nA3, $09, nRst, $18
	dc.b	nG3, $09, nRst, $18, nG3, $0A, nRst, $01, nA3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04

FinalPuyo_Jump03:
	dc.b	nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst, $01, nE2
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE3, $07, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG2
	dc.b	$02, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$09, nRst, $02, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG3, $09, nRst, $02, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2
	dc.b	$01, nRst, $05
	smpsAlterNote       $0D
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $02, nRst, $04, nG2, $01
	dc.b	nRst, $04, nG2, $02, nRst, $04, nD2, $01, nRst, $04, nD2, $02
	dc.b	nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst
	dc.b	$05, nD2, $01, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG2
	dc.b	$02, nRst, $04, nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2
	dc.b	$01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, $02, nRst, $04, nG2, $01, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG3, $09, nRst, $02, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2
	dc.b	$01, nRst, $05
	smpsAlterNote       $0D
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $09, nRst, $02, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE3, $0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $02, nRst, $04, nD2, $01, nRst, $04, nD2, $02
	dc.b	nRst, $04, nD2, $01, nRst, $04, nD2, $02, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $04, nD2, $02, nRst, $04, nD2, $01, nRst
	dc.b	$04, nD2, $02, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG3, $0A
	dc.b	nRst, $01, nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG2, $02
	dc.b	nRst, $04, nG2, $01, nRst, $04, nG3, $0A, nRst, $02, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05
	smpsAlterNote       $0D
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $09, nRst, $02, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE3, $09, nRst, $02, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE3, $0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nD2, $01, nRst, $04, nD2, $01
	dc.b	nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst, $05, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $04, nD2, $02, nRst, $04, nD2, $01, nRst
	dc.b	$04, nD2, $02, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, nRst, $04, nEb2, $02, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3, $0A
	dc.b	nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $02, nRst
	dc.b	$04, nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, $02, nRst
	dc.b	$04, nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst
	dc.b	$04
	smpsAlterNote       $0D
	dc.b	nE2, $02, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $09, nRst, $02, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE3, $09, nRst, $02, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE3, $0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05
	smpsAlterNote       $07
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nD2, $01, nRst, $04, nD2, $01
	dc.b	nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst, $05, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst
	dc.b	$04, nD2, $01, nRst, $05, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, nRst, $04, nEb2, $02, nRst, $04, nEb3, $0A, nRst, $0C
	smpsAlterNote       $08
	dc.b	nF4, $0D, nRst, $04
	smpsAlterNote       $0D
	dc.b	nE4, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nD4, $0D, nRst, $04
	smpsAlterNote       $04
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nB3, $0A, nRst, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $0D, nRst, $04
	smpsAlterNote       $07
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $04
	dc.b	nC4, $0D, nRst, $04
	smpsAlterNote       $07
	dc.b	nB3, $0D, nRst, $03, nA3, $0A, nRst, $0C, nD4, $0D, nRst, $04
	smpsAlterNote       $04
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nB3, $0D, nRst, $04, nA3, $0D, nRst, $03, nG3, $0A, nRst, $0C
	smpsAlterNote       $04
	dc.b	nC4, $0E, nRst, $03
	smpsAlterNote       $07
	dc.b	nB3, $0D, nRst, $03, nA3, $0E, nRst, $03, nG3, $0D, nRst, $03
	smpsAlterNote       $08
	dc.b	nF3, $0A, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $04, nE2, $02, nRst, $04
	dc.b	nE2, $01, nRst, $04, nE3, $01
	smpsPan             panRight, $00
	smpsJump            FinalPuyo_Jump03

; FM3 Data
FinalPuyo_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $07
	dc.b	nA2, $04, nRst, $06, nA2, $05, nRst, $06, nA3, $0D, nRst, $09
	dc.b	nA2, $02, nRst, $04, nA3, nRst, $0C, nA3, $0D, nRst, $09, nA2
	dc.b	$05, nRst, $06, nA2, $05, nRst, $06, nA3, $0E, nRst, $08, nA2
	dc.b	$03, nRst, nA3, $04, nRst, $0C, nA3, $0E, nRst, $09, nA2, $04
	dc.b	nRst, $06, nA2, $05, nRst, $06, nA3, $0E, nRst, $08, nA2, $03
	dc.b	nRst, nA3, $04, nRst, $0D, nA3, nRst, $09, nA2, $04, nRst, $07
	dc.b	nA2, $04, nRst, $07, nA3, $0D, nRst, $09, nA2, $02, nRst, $03
	dc.b	nA3, $05, nRst, $0C, nA3, $0D, nRst, $09, nA2, $04, nRst, $07
	dc.b	nA2, $04, nRst, $07, nA3, $0D, nRst, $09, nA2, $02, nRst, $03
	dc.b	nA3, $05, nRst, $0C, nA3, $0D, nRst, $09, nA2, $04, nRst, $07
	dc.b	nA2, $04, nRst, $07, nA3, $0D, nRst, $09, nA2, $02, nRst, $03
	dc.b	nA3, $05, nRst, $0C, nA3, $0D, nRst, $09, nA2, $04, nRst, $07
	dc.b	nA2, $04, nRst, $07, nA3, $0D, nRst, $09, nA2, $02, nRst, $03
	dc.b	nA3, $05, nRst, $0C, nA3, $0D, nRst, $09, nA2, $04, nRst, $07
	dc.b	nA2, $04, nRst, $07, nA3, $0D, nRst, $09, nA2, $02, nRst, $04
	dc.b	nA3, nRst, $0C, nA3, $0D, nRst, $0A
	smpsAlterNote       $0D
	dc.b	nE2, $09, nRst, $01, nE2, $0A, nRst, $01

FinalPuyo_Jump02:
	dc.b	nE3, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE3, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG2, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG3, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG3, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, $0A, nRst, $01, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG2, $0A, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG3, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG3, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $09, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, $0A, nRst, $01, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG2, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG3, $0A, nRst, $01, nG2, $0A, nRst, $02
	dc.b	nG2, $09, nRst, $02, nG3, $09, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $09, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE3, $09, nRst, $02
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, $0A, nRst, $01, nEb3, $0A, nRst, $01
	smpsAlterNote       $0D
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE3, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE2, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG2, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG3, $0A, nRst, $01, nG2, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG3, $0A, nRst, $01, nG2, $0A, nRst, $02
	dc.b	nG2, $09, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE3, $09, nRst, $02
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE3, $09, nRst, $02
	dc.b	nE2, $09, nRst, $02, nE2, $09, nRst, $02, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01, nE3, $0A, nRst, $01, nE2, $0A, nRst, $01
	dc.b	nE2, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nG3, $0A, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01, nD2, $0A, nRst, $01
	dc.b	nD2, $0A, nRst, $01, nD3, $0A, nRst, $01
	smpsAlterNote       $02
	dc.b	nEb2, $0A, nRst, $01, nEb3, $0A, nRst, $0C
	smpsAlterNote       $08
	dc.b	nF3, $0D, nRst, $04
	smpsAlterNote       $0D
	dc.b	nE3, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nD3, $0D, nRst, $04
	smpsAlterNote       $04
	dc.b	nC3, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nB2, $0A, nRst, $0C
	smpsAlterNote       $0D
	dc.b	nE3, $0D, nRst, $04
	smpsAlterNote       $07
	dc.b	nD3, $0D, nRst, $03
	smpsAlterNote       $04
	dc.b	nC3, $0D, nRst, $04
	smpsAlterNote       $07
	dc.b	nB2, $0D, nRst, $03, nA2, $0A, nRst, $0C, nD3, $0D, nRst, $04
	smpsAlterNote       $04
	dc.b	nC3, $0D, nRst, $03
	smpsAlterNote       $07
	dc.b	nB2, $0D, nRst, $04, nA2, $0D, nRst, $03, nG2, $0A, nRst, $0C
	smpsAlterNote       $04
	dc.b	nC3, $0E, nRst, $03
	smpsAlterNote       $07
	dc.b	nB2, $0D, nRst, $03, nA2, $0E, nRst, $03, nG2, $0D, nRst, $03
	smpsAlterNote       $08
	dc.b	nF2, $0A, nRst, $02
	smpsAlterNote       $0D
	dc.b	nE2, $09, nRst, $01, nE2, $0A, nRst, $02
	smpsPan             panCenter, $00
	smpsJump            FinalPuyo_Jump02

; FM4 Data
FinalPuyo_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $75
	smpsPan             panCenter, $00
	dc.b	nRst, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $B0
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nD4, $0A, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC4, $09, nRst, $02
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02, nA2, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nD4, $09, nRst, $02, nA2, $04, nRst, $01, nA2, $04, nRst, $02
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nC4, $09, nRst, $02
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs3, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, nA2, $04, nRst, $02, nA2, $04, nRst, $01
	dc.b	nA2, $04, nRst, $02, nA2, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $04, nRst, $02, nA2, $04, nRst, $01, nA2, $04, nRst, $02
	dc.b	nA2, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, smpsNoAttack, nRst, nA2, $04, nRst, $01, nA2, $04
	dc.b	nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01, nD4, $0A
	dc.b	nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05
	dc.b	nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01, nA2, $05, nRst, $01, nA2, $04, nRst, $01
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA2, $05, nRst, $01, nA2, $04, nRst, $01, nA2, $05, nRst, $01
	dc.b	nA2, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nRst
	smpsSetvoice        $05
	smpsAlterVol        $FC
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $03

FinalPuyo_Jump01:
	dc.b	smpsNoAttack, nFs4, $01, nRst
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB4, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01, nE4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, $09, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nC5, $09, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $02, nA4, $04, nRst, $01, nG4, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01, nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01, nB4, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nA4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nA4, $05, nRst, $01, nB4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB4, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01, nE4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nA4, $04, nRst, $02, nG4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nD4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01, nFs4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01, nA4, $04, nRst, $01, nG4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01, nA4, $04, nRst, $01, nB4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $08
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, $02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $12, nRst, $01
	smpsAlterNote       $0A
	dc.b	nG5, $02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $07, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, $02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $13, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, $02, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $08, nRst, $01, smpsNoAttack, nE5, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $12, nRst, $02, nG5, $09, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs5, $09, nRst, $02
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs5, $09, nRst, $02
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $02
	smpsAlterNote       $EE
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $0A
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs6, smpsNoAttack, nB5, $11, nRst, $01
	smpsAlterNote       $1C
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $09, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $00
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, $09, nRst, $01
	smpsAlterNote       $15
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $0A
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $13, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $15
	dc.b	nE5, $0A, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $13, nRst, $01
	smpsAlterNote       $0A
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $08, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG5, $14, nRst, $01
	smpsAlterNote       $FD
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, $09, nRst, $01
	smpsAlterNote       $EE
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nB5, $02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs6, $01, smpsNoAttack, nB5, $10, nRst, $01
	smpsAlterNote       $1C
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA5, $09, nRst, $01, nG5, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs5, $0A, nRst, $01
	smpsAlterNote       $00
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, $09, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nRst
	smpsAlterNote       $19
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nG4, $02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nF4, $01, nRst
	smpsAlterNote       $EE
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG4, $03, nRst, $01
	smpsAlterNote       $11
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB4, $02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB4, nRst, nD5, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB4, $04, nRst, $01
	smpsAlterNote       $E4
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $11
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB4, $02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC5, nRst
	smpsAlterNote       $08
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA4, $03, nRst, $01
	smpsAlterNote       $08
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD5, $02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB4, nRst, $01
	smpsAlterNote       $E4
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG4, $02, nRst, $01, nA4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs4, $03, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $00
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE4, $03, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $00
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD4, $03, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $EE
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC4, $03, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $05, nRst, $01, nB3, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $08
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA3, $03, nRst, $01
	smpsAlterNote       $08
	dc.b	nB3, $02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, $02, nRst, $01
	smpsAlterNote       $E4
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG3, $02, nRst, $01, smpsNoAttack, nG3, $01, smpsNoAttack, nA3, $04, nRst, $01
	smpsAlterNote       $0D
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $03, nRst, $01, smpsNoAttack, nFs3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG3, $04, nRst, $01
	smpsAlterNote       $00
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE3, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs3, $04, nRst, $01
	smpsAlterNote       $00
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD3, $03, nRst, $02
	smpsAlterNote       $00
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $13, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, nRst, $02
	smpsAlterNote       $15
	dc.b	nE3, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD3, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE3, $09, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs3, $15, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $02, nRst, $01, smpsNoAttack, nFs3, $15, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, nRst, $01
	smpsAlterNote       $15
	dc.b	nE3, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD3, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE3, $0A, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $0A, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG3, $04, nRst, $01, nA3, $05, nRst, $01
	smpsAlterNote       $08
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, $02, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB3, $15, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nB3, $02, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, $01, nRst, $01, smpsNoAttack, nB3, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $08
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA3, $14, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nA3, $02, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA3, $01, nRst, $01, smpsNoAttack, nA3, $04, nRst, $01
	smpsAlterNote       $08
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4, $02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, nRst, $01
	smpsAlterNote       $E4
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG3, $13, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nG3, $02, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG3, $01, nRst, $01, smpsNoAttack, nG3, $04, nRst, $01, nA3, $05, nRst
	dc.b	$01
	smpsAlterNote       $0D
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $14, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $02, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs3, $01, nRst, $01
	smpsAlterNote       $15
	dc.b	nE3, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nD3, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE3, $07, nRst, $01, nE3, $06, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $06, nRst, $01, nFs3, $07, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG3, $06, nRst, $01, nG3, $06, nRst, $01, nA3, $07, nRst, $01
	dc.b	nA3, $06, nRst, $01, nA3, smpsNoAttack, nG3, $05, nRst, $01, smpsNoAttack, nG3
	dc.b	$07, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs3, $06, nRst, $02, nFs3, $05, nRst, $01
	smpsAlterVol        $F4
	smpsAlterNote       $00
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD3, $14, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD3, $02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nCs3, $02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC3, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nC3, $05, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB2, $05, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nB2, $05, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $DE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nBb2, nRst
	smpsAlterVol        $0C
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB4, $05, nRst, $01, nD4, $04, nRst, $01
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $02, nB4, $04, nRst, $01, nD4, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $02, nB4, $04, nRst, $01, nD4, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $02, nB4, $04, nRst, $01, nD5, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB4, $05, nRst, $01, nA4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB4, $04, nRst, $01, nA4, $05, nRst, $01, nG4, $04, nRst, $01
	dc.b	nB4, $05, nRst, $01, nA4, $04, nRst, $01, nG4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $0A, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nA4, $05, nRst, $01, nB4, $0A, nRst, $01
	dc.b	nA4, $04, nRst, $01, nB4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nD5, $05, nRst, $01, nG4, $04, nRst, $01, nB4, $05, nRst, $01
	dc.b	nD4, $04, nRst, $01, nG4, $05, nRst, $01, nB4, $04, nRst, $01
	dc.b	nD4, $05, nRst, $01, nG4, $04, nRst, $01, nA4, $05, nRst, $01
	dc.b	nD4, $04, nRst, $01, nG4, $05, nRst, $01, nB4, $04, nRst, $01
	dc.b	nD4, $05, nRst, $01, nG4, $04, nRst, $01, nA4, $05, nRst, $01
	dc.b	nD4, $04, nRst, $01, nG4, $05, nRst, $01, nG4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nG4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $04, nRst, $01, nC4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nC4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC4, $04, nRst, $02
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA4, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nC4, $04, nRst, $01
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nG4, $04, nRst, $01, nB3, $04, nRst, $02, nD4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nB3, $04, nRst, $01, nD4, $05, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $0F
	dc.b	nB3, $05, nRst, $01, nD4, $04, nRst, $01, nB5, $02, nRst, $01
	smpsAlterNote       $15
	dc.b	nBb5, $02, nRst, $01
	smpsAlterNote       $0F
	dc.b	nA5, $02, nRst, $01
	smpsAlterNote       $08
	dc.b	nAb5, nRst
	smpsAlterNote       $0F
	dc.b	nG5, $02, nRst, $01, nG5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs5, nRst
	smpsAlterNote       $10
	dc.b	nF5, $02, nRst, $01
	smpsAlterNote       $15
	dc.b	nE5, nRst
	smpsAlterNote       $0A
	dc.b	nEb5, $02, nRst, $01, nEb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, nRst, nCs5, $02, nRst, $01
	smpsAlterNote       $0C
	dc.b	nC5, nRst
	smpsAlterNote       $0F
	dc.b	nB4, $02, nRst, $01, nB4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nBb4, nRst
	smpsAlterNote       $0F
	dc.b	nA4, $02, nRst, $01
	smpsAlterNote       $08
	dc.b	nAb4, nRst, $0C
	smpsAlterNote       $0F
	dc.b	nA4, $0D, nRst, $04, nG4, $0D, nRst, $03
	smpsAlterNote       $10
	dc.b	nF4, $0D, nRst, $04
	smpsAlterNote       $15
	dc.b	nE4, $0C, nRst, $04
	smpsAlterNote       $0F
	dc.b	nD4, $0A, nRst, $0C, nG4, $0E, nRst, $03
	smpsAlterNote       $10
	dc.b	nF4, $0D, nRst, $03
	smpsAlterNote       $15
	dc.b	nE4, $0E, nRst, $03
	smpsAlterNote       $0F
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $0C
	dc.b	nC4, $0A, nRst, $0C
	smpsAlterNote       $10
	dc.b	nF4, $0E, nRst, $03
	smpsAlterNote       $15
	dc.b	nE4, $0D, nRst, $04
	smpsAlterNote       $0F
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $0C
	dc.b	nC4, $0D, nRst, $04
	smpsAlterNote       $0F
	dc.b	nB3, $09, nRst, $0D
	smpsAlterNote       $15
	dc.b	nE4, nRst, $03
	smpsAlterNote       $0F
	dc.b	nD4, $0D, nRst, $04
	smpsAlterNote       $0C
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $0F
	dc.b	nB3, $0D, nRst, $04, nA3, $0A, nRst, $01
	smpsSetvoice        $05
	smpsAlterVol        $FE
	smpsAlterNote       $15
	dc.b	nE4, $04, nRst, $01
	smpsAlterNote       $0E
	dc.b	nFs4, $04
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	smpsJump            FinalPuyo_Jump01

; FM5 Data
FinalPuyo_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $70
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $AE
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $15
	smpsAlterNote       $0B
	dc.b	nA3, $09, nRst, $18, nG3, $09, nRst, $18, nA3, $09, nRst, $18
	smpsAlterNote       $05
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nG3, $08, nRst, $19, smpsNoAttack, nG3, $09, nRst, $02, nA3, $0A, nRst
	dc.b	$17, nA3, $08, nRst, $19, nG3, $08, nRst, $19, nA3, $08, nRst
	dc.b	$19, nG3, $09, nRst, $18, nG3, $0A, nRst, $01, nA3, $0A, nRst
	dc.b	$17, nA3, $09, nRst, $18, nG3, $09, nRst, $18, nA3, $09, nRst
	dc.b	$18, nG3, $09, nRst, $18, nG3, $0A, nRst, $01, nA3, $0A, nRst
	dc.b	$17, nA3, $09, nRst, $18, nG3, $09, nRst, $18, nA3, $09, nRst
	dc.b	$18, nG3, $09, nRst, $18, nG3, $0A, nRst, $01, nA3, $0B
	smpsAlterNote       $11
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $02, nRst, $04
	dc.b	nE2, $01, nRst, $03

FinalPuyo_Jump00:
	dc.b	nRst, $01, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $02, nRst, $04, nE2, $01, nRst, $04
	dc.b	nE2, $02, nRst, $04, nE2, $01, nRst, $04, nE3, $0A, nRst, $01
	dc.b	nE2, $02, nRst, $04, nE2, $01, nRst, $04, nE2, $02, nRst, $04
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE3, $01, smpsNoAttack, nE2
	dc.b	nRst, $04, smpsNoAttack, nE2, $01, nRst, $05, smpsNoAttack, nE2, $01, nRst, $04
	dc.b	smpsNoAttack, nE2, $01, nRst, $05
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3, $0A
	dc.b	nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst
	dc.b	$04, nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	smpsAlterNote       $11
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $04, nE2, $02, nRst, $04, nE2, $01, nRst
	dc.b	$04, nE2, $02, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $04
	dc.b	nE2, $02, nRst, $04, nE2, $01, nRst, $04, nE2, $02, nRst, $04
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nD2, $01, nRst, $05, nD2, $01
	dc.b	nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst
	dc.b	$05, nD2, $01, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $11
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, $02, nRst, $04, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $02, nRst
	dc.b	$04, nE2, $01, nRst, $04, nE2, $02, nRst, $04, nE2, $01, nRst
	dc.b	$04
	smpsAlterNote       $0B
	dc.b	nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $09, nRst, $02, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG3, $0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2
	dc.b	$01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst
	dc.b	$04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst
	dc.b	$05
	smpsAlterNote       $11
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04
	dc.b	nE2, $02, nRst, $04, nE2, $01, nRst, $04, nE2, $02, nRst, $04
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04
	dc.b	nG2, $02, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nD2, $01, nRst, $05, nD2, $01
	dc.b	nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst
	dc.b	$05, nD2, $01, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $11
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $02, nRst, $04, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $02, nRst, $04
	dc.b	nE2, $01, nRst, $04, nE2, $02, nRst, $04, nE2, $01, nRst, $04
	smpsAlterNote       $0B
	dc.b	nG2, $02, nRst, $04, nG2, $01, nRst, $04, nG2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG3, $09, nRst, $02, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG3, $0A, nRst, $01, nG2, nRst, $04, nG2, $01, nRst, $05, nG2
	dc.b	$01, nRst, $04, nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2
	dc.b	nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05
	smpsAlterNote       $11
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04
	dc.b	nG2, $02, nRst, $04, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$02, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $05, nG2, $01, nRst, $04, nG2, $01
	dc.b	nRst, $05, nG2, $01, nRst, $04, nD2, $01, nRst, $05, nD2, $01
	dc.b	nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst
	dc.b	$05, nD2, $01, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $01
	smpsAlterNote       $11
	dc.b	nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2
	dc.b	$01, nRst, $04, nE3, $0A, nRst, $01, nE2, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst
	dc.b	$05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE3, $0A, nRst
	dc.b	$01, nE2, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE3, $07, nRst, $04, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $04, nG3, $0A, nRst, $01, nG2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG2, $01, nRst, $04
	dc.b	nG3, $0A, nRst, $01, nG2, $02, nRst, $04, nG2, $01, nRst, $04
	dc.b	nG2, $02, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG3, $09, nRst, $02, nG2, $01, nRst, $04, nG2, $01, nRst, $05
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG3, $0A, nRst, $01
	dc.b	nG2, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04, nG2
	dc.b	$01, nRst, $05
	smpsAlterNote       $11
	dc.b	nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04, nE2
	dc.b	$01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3
	dc.b	$0A, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01
	dc.b	nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01
	dc.b	nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05, nE3, $0A
	dc.b	nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nE2, $01, nRst, $05, nE3, $0A, nRst, $01, nE2, nRst, $04
	dc.b	nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2, $01, nRst, $05
	smpsAlterNote       $0B
	dc.b	nG2, $01, nRst, $04, nG2, $01, nRst, $05, nG2, $01, nRst, $04
	dc.b	nG2, $01, nRst, $05, nG3, $0A, nRst, $01, nG2, nRst, $04, nG2
	dc.b	$02, nRst, $04, nG2, $01, nRst, $04, nG2, $02, nRst, $04, nG3
	dc.b	$0A, nRst, $01, nG2, nRst, $04, nG2, $02, nRst, $04, nG2, $01
	dc.b	nRst, $04, nG2, $02, nRst, $04, nD2, $01, nRst, $04, nD2, $02
	dc.b	nRst, $04, nD2, $01, nRst, $05, nD2, $01, nRst, $04, nD3, $0A
	dc.b	nRst, $01, nD2, nRst, $05, nD2, $01, nRst, $04, nD2, $01, nRst
	dc.b	$05, nD2, $01, nRst, $04, nD3, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nEb2, nRst, $05, nEb2, $01, nRst, $04, nEb3, $0A, nRst, $0C
	smpsAlterNote       $0C
	dc.b	nF4, $0D, nRst, $04
	smpsAlterNote       $11
	dc.b	nE4, $0D, nRst, $03
	smpsAlterNote       $0B
	dc.b	nD4, $0D, nRst, $04
	smpsAlterNote       $08
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $0B
	dc.b	nB3, $0A, nRst, $0C
	smpsAlterNote       $11
	dc.b	nE4, $0D, nRst, $04
	smpsAlterNote       $0B
	dc.b	nD4, $0D, nRst, $03
	smpsAlterNote       $08
	dc.b	nC4, $0E, nRst, $03
	smpsAlterNote       $0B
	dc.b	nB3, $0D, nRst, $03, nA3, $0A, nRst, $0C, nD4, $0E, nRst, $03
	smpsAlterNote       $08
	dc.b	nC4, $0D, nRst, $03
	smpsAlterNote       $0B
	dc.b	nB3, $0E, nRst, $03, nA3, $0D, nRst, $03, nG3, $0A, nRst, $0C
	smpsAlterNote       $08
	dc.b	nC4, $0E, nRst, $03
	smpsAlterNote       $0B
	dc.b	nB3, $0D, nRst, $04, nA3, $0D, nRst, $03, nG3, $0D, nRst, $04
	smpsAlterNote       $0C
	dc.b	nF3, $0A, nRst, $01
	smpsAlterNote       $11
	dc.b	nE2, nRst, $04, nE2, $01, nRst, $05, nE2, $01, nRst, $04, nE2
	dc.b	$01, nRst, $04
	smpsPan             panRight, $00
	smpsJump            FinalPuyo_Jump00

FinalPuyo_Voices:
;	Voice $00
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $01
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$27, $17, $17, $F7, 	$17, $32, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $07, $0A, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $02
;	$3B
;	$06, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$11, $04, $0B, $09
;	$13, $00, $07, $03, 	$B7, $46, $36, $17, 	$1D, $17, $1C, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $04, $11
	smpsVcDecayRate2    $03, $07, $00, $13
	smpsVcDecayLevel    $01, $03, $04, $0B
	smpsVcReleaseRate   $07, $06, $06, $07
	smpsVcTotalLevel    $00, $1C, $17, $1D

;	Voice $03
;	$3A
;	$7F, $22, $23, $11, 	$9F, $8F, $9F, $5A, 	$0F, $00, $00, $00
;	$09, $00, $00, $00, 	$71, $14, $83, $05, 	$14, $1E, $23, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $02, $07
	smpsVcCoarseFreq    $01, $03, $02, $0F
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $1F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0F
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $00, $08, $01, $07
	smpsVcReleaseRate   $05, $03, $04, $01
	smpsVcTotalLevel    $00, $23, $1E, $14

;	Voice $04
;	$3B
;	$3E, $42, $41, $33, 	$DE, $1F, $1E, $1F, 	$11, $04, $0B, $09
;	$13, $00, $07, $03, 	$B7, $46, $36, $17, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1E, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $04, $11
	smpsVcDecayRate2    $03, $07, $00, $13
	smpsVcDecayLevel    $01, $03, $04, $0B
	smpsVcReleaseRate   $07, $06, $06, $07
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $05
;	$3A
;	$71, $43, $21, $01, 	$95, $9F, $8E, $5A, 	$00, $00, $00, $00
;	$09, $00, $00, $00, 	$55, $8C, $15, $07, 	$1A, $32, $1E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $04, $07
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $0E, $1F, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $00, $01, $08, $05
	smpsVcReleaseRate   $07, $05, $0C, $05
	smpsVcTotalLevel    $00, $1E, $32, $1A

;	Voice $06
;	$3B
;	$71, $43, $21, $01, 	$95, $9F, $8E, $5A, 	$00, $00, $00, $00
;	$09, $00, $00, $00, 	$55, $8C, $15, $29, 	$1A, $32, $1E, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $04, $07
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $0E, $1F, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $02, $01, $08, $05
	smpsVcReleaseRate   $09, $05, $0C, $05
	smpsVcTotalLevel    $00, $1E, $32, $1A

;	Voice $07
;	$3B
;	$71, $43, $21, $01, 	$95, $9F, $8E, $5A, 	$00, $00, $00, $00
;	$09, $00, $00, $00, 	$55, $8C, $15, $07, 	$1A, $32, $1E, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $04, $07
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $0E, $1F, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $00, $01, $08, $05
	smpsVcReleaseRate   $07, $05, $0C, $05
	smpsVcTotalLevel    $00, $1E, $32, $1A