SuperTheme_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SuperTheme_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       SuperTheme_DAC
	smpsHeaderFM        SuperTheme_FM4,	$00, $10
	smpsHeaderFM        SuperTheme_FM2,	$0C, $09
	smpsHeaderFM        SuperTheme_FM3,	$0C, $0B
	smpsHeaderFM        SuperTheme_FM1,	$0C, $0B
	smpsHeaderFM        SuperTheme_FM5,	$00, $10
	smpsHeaderPSG       SuperTheme_PSG1,	$E8, $03, $00, $00
	smpsHeaderPSG       SuperTheme_PSG2,	$E8, $03, $00, $00
	smpsHeaderPSG       SuperTheme_PSG3,	$23, $02, $00, fTone_02

; FM3 Data
SuperTheme_FM3:
	smpsSetvoice        $03
	dc.b	nRst, $02
	smpsAlterVol        $06
	smpsAlterNote       $03
	smpsJump            SuperTheme_Jump00

SuperTheme_Jump00:
	smpsJump            SuperTheme_Loop03

; FM1 Data
SuperTheme_FM1:
	smpsSetvoice        $03

SuperTheme_Loop03:
	dc.b	nC2, $04, nC2, nG2, nC2, nC2, nF2, nC2, nC2, nEb2, nC2, nC2
	dc.b	nF2, nC2, nC2, nEb2, nEb2, nF2, nF2, nA2, nC2, nC2, nF2, nA1
	dc.b	nA1, nC2, nA1, nA1, nA2, nC2, nC2, nF2, nF2, nAb2, nAb2, nC3
	dc.b	nEb2, nEb2, nAb2, nC2, nC2, nEb2, nAb1, nAb1, nEb2, nC2, nC2, nAb2
	dc.b	nAb2, nBb2, nBb2, nD3, nF2, nF2, nBb2, nD2, nD2, nF2, nBb1, nBb1
	dc.b	nF2, nD2, nD2, nBb2, nBb2
	smpsLoop            $00, $02, SuperTheme_Loop03
	smpsAlterVol        $05

SuperTheme_Loop04:
	dc.b	nC2, $04, nC2, nG2, nC2, nC2, nF2, nC2, nC2, nEb2, nC2, nC2
	dc.b	nF2, nC2, nC2, nEb2, nEb2, nF2, nF2, nA2, nC2, nC2, nF2, nA1
	dc.b	nA1, nC2, nA1, nA1, nA2, nC2, nC2, nF2, nF2, nAb2, nAb2, nC3
	dc.b	nEb2, nEb2, nAb2, nC2, nC2, nEb2, nAb1, nAb1, nEb2, nC2, nC2, nAb2
	dc.b	nAb2, nBb2, nBb2, nD3, nF2, nF2, nBb2, nD2, nD2, nF2, nBb1, nBb1
	dc.b	nF2, nD2, nD2, nBb2, nBb2
	smpsLoop            $00, $02, SuperTheme_Loop04
	smpsAlterVol        $FB
	smpsJump            SuperTheme_Loop03

; FM2 Data
SuperTheme_FM2:
	smpsSetvoice        $00

SuperTheme_Loop02:
	dc.b	nC1, $04, nRst, nC1, $08, nC1, $04, nRst, nC1, $08, nC1, $04
	dc.b	nRst, nC1, $08, nC1, $04, nRst, nC1, $08, nF1, $04, nRst, nF1
	dc.b	$08, nF1, $04, nRst, nF1, $08, nF1, $04, nRst, nF1, $08, nF1
	dc.b	$04, nRst, nF1, $08, nEb1, $04, nRst, nEb1, $08, nEb1, $04, nRst
	dc.b	nEb1, $08, nEb1, $04, nRst, nEb1, $08, nEb1, $04, nRst, nEb1, $08
	dc.b	nD1, $04, nRst, nD1, $08, nD1, $04, nRst, nD1, $08, nD1, $04
	dc.b	nRst, nD1, $08, nD1, $04, nRst, nD1, $08
	smpsLoop            $01, $04, SuperTheme_Loop02
	smpsJump            SuperTheme_Loop02

; FM4 Data
SuperTheme_FM4:
	smpsSetvoice        $01
	smpsModSet          $10, $01, $03, $03
	smpsPan             panCenter, $00
	smpsAlterVol        $08
	dc.b	nG3, $20, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, smpsNoAttack
	dc.b	$20, nG3, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, smpsNoAttack
	dc.b	$20
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsAlterVol        $F9
	smpsAlterPitch      $E8
	dc.b	nC5, smpsNoAttack, $20, smpsNoAttack, $20, smpsNoAttack, $08, nD5, $10, nEb5, $08, nC5
	dc.b	$18, nG5, $20, smpsNoAttack, $08, nBb4, $18, nF5, $20, smpsNoAttack, $08, nG5
	dc.b	$20, smpsNoAttack, $10, nBb5, nA5, $20, smpsNoAttack, $08, nF5, $10, nG5, $08
	smpsModSet          $10, $01, $06, $06
	dc.b	nAb5, $20, smpsNoAttack, $20
	smpsModSet          $10, $01, $FA, $00
	dc.b	nBb5, smpsNoAttack, $20
	smpsModSet          $10, $01, $03, $03
	smpsAlterVol        $07
	smpsAlterPitch      $18
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $08
	dc.b	nG3, $20, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, smpsNoAttack
	dc.b	$20, nG3, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, smpsNoAttack
	dc.b	$20
	smpsAlterVol        $F8
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $01
	smpsAlterPitch      $F4
	dc.b	nG5, $04, nEb5, nC5, nG5, nEb5, nC5, nG5, nEb5, nC5, nG5, nEb5
	dc.b	nC5, nG5, nEb5, nC5, nG5, nF5, nD5, nBb4, nF5, nD5, nBb4, nF5
	dc.b	nD5, nBb4, nF5, nD5, nBb4, nF5, nD5, nBb4, nF5, nAb4, nC5, nEb5
	dc.b	nG5, nEb5, nC5, nF5, nD5, nBb4, nF4, nBb4, nF5, nEb5, nD5, nEb5
	dc.b	nF5, nD5, nBb4, nF4, nD4, nBb3, nF3, nBb3, nD4, nEb3, nC3, nEb3
	dc.b	nF3, nBb3, nD4, nF4, nBb4, nG4, nC5, nEb5, nG5, nEb5, nC5, nF5
	dc.b	nD5, nBb4, nF5, nD5, nBb4, nEb5, nD5, nEb5, nF5, nC5, nF5, nA5
	dc.b	nC4, nF4, nA4, nC5, nF5, nC5, nF4, nA4, nC5, nF5, nA5, nC5
	dc.b	nA5, nAb4, nC5, nEb5, nG5, nEb5, nC5, nF5, nD5, nBb4, nF4, nBb4
	dc.b	nF5, nEb5, nD5, nEb5, nF5, nD5, nBb4, nF4, nD4, nBb3, nF3, nBb3
	dc.b	nD4, nEb3, nC3, nEb3, nF3, nBb3, nD4, nF4, nBb4
	smpsAlterVol        $FF
	smpsAlterPitch      $0C
	smpsJump            SuperTheme_FM4

; FM5 Data
SuperTheme_FM5:
	smpsSetvoice        $01
	smpsModSet          $10, $01, $03, $03
	smpsPan             panCenter, $00
	smpsAlterVol        $08
	dc.b	nC3, $20, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, smpsNoAttack
	dc.b	$20, nC3, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, smpsNoAttack
	dc.b	$20
	smpsAlterVol        $F8
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsAlterVol        $F9
	smpsAlterPitch      $E8
	dc.b	nRst, $10
	smpsAlterVol        $04
	dc.b	nC5, smpsNoAttack, $20, smpsNoAttack, $20, smpsNoAttack, $08, nD5, $10, nEb5, $08, nC5
	dc.b	$18, nG5, $20, smpsNoAttack, $08, nBb4, $18, nF5, $20, smpsNoAttack, $08, nG5
	dc.b	$20, smpsNoAttack, $10, nBb5, nA5, $20, smpsNoAttack, $08, nF5, $10, nG5, $08
	smpsModSet          $10, $01, $06, $06
	dc.b	nAb5, $20, smpsNoAttack, $20
	smpsModSet          $10, $01, $FA, $00
	smpsAlterVol        $FD
	dc.b	nF5, smpsNoAttack, $20
	smpsAlterVol        $03
	smpsModSet          $10, $01, $03, $03
	smpsAlterVol        $07
	smpsAlterPitch      $18
	smpsAlterVol        $FC
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $08
	dc.b	nC3, $20, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, smpsNoAttack
	dc.b	$20, nC3, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, smpsNoAttack
	dc.b	$20
	smpsAlterVol        $F8
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	dc.b	nRst, $08
	smpsAlterVol        $06
	dc.b	nG5, $04, nEb5, nC5, nG5, nEb5, nC5, nG5, nEb5, nC5, nG5, nEb5
	dc.b	nC5, nG5, nEb5, nC5, nG5, nF5, nD5, nBb4, nF5, nD5, nBb4, nF5
	dc.b	nD5, nBb4, nF5, nD5, nBb4, nF5, nD5, nBb4, nF5, nAb4, nC5, nEb5
	dc.b	nG5, nEb5, nC5, nF5, nD5, nBb4, nF4, nBb4, nF5, nEb5, nD5, nEb5
	dc.b	nF5, nD5, nBb4, nF4, nD4, nBb3, nF3, nBb3, nD4, nEb3, nC3, nEb3
	dc.b	nF3, nBb3, nD4, nF4, nBb4, nG4, nC5, nEb5, nG5, nEb5, nC5, nF5
	dc.b	nD5, nBb4, nF5, nD5, nBb4, nEb5, nD5, nEb5, nF5, nC5, nF5, nA5
	dc.b	nC4, nF4, nA4, nC5, nF5, nC5, nF4, nA4, nC5, nF5, nA5, nC5
	dc.b	nA5, nAb4, nC5, nEb5, nG5, nEb5, nC5, nF5, nD5, nBb4, nF4, nBb4
	dc.b	nF5, nEb5, nD5, nEb5, nF5, nD5, nBb4, nF4, nD4, nBb3, nF3, nBb3
	dc.b	nD4, nEb3, nC3, nEb3, nF3, nBb3, nD4
	smpsAlterVol        $FA
	smpsAlterPitch      $0C
	smpsJump            SuperTheme_FM5

SuperTheme_Jump03:
	dc.b	nG3, $20, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, smpsNoAttack
	dc.b	$20
	smpsLoop            $01, $02, SuperTheme_Jump03

SuperTheme_Loop07:
	dc.b	nG3, $20, smpsNoAttack, $20, nA3, smpsNoAttack, $20, nAb3, smpsNoAttack, $20, nBb3, nF3
	smpsLoop            $01, $02, SuperTheme_Loop07
	smpsJump            SuperTheme_Jump03

SuperTheme_Jump02:
	dc.b	nC3, $20, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, smpsNoAttack
	dc.b	$20
	smpsLoop            $01, $02, SuperTheme_Jump02

SuperTheme_Loop06:
	dc.b	nC3, $20, smpsNoAttack, $20, nF3, smpsNoAttack, $20, nEb3, smpsNoAttack, $20, nD3, nBb2
	smpsLoop            $01, $02, SuperTheme_Loop06
	smpsJump            SuperTheme_Jump02

SuperTheme_Jump01:
	smpsPSGform         $E7

SuperTheme_Loop05:
	dc.b	nBb6, $04, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b	nBb6, nBb6, nBb6, nBb6, nBb6
	smpsLoop            $01, $10, SuperTheme_Loop05
	smpsJump            SuperTheme_Loop05

; DAC Data
SuperTheme_DAC:
	dc.b	dPKickAlt, $10, dPSnareAlt, dPKickAlt, dPSnareAlt
	smpsLoop            $01, $03, SuperTheme_DAC
	dc.b	dPKickAlt, $10, dPSnareAlt, dHiTimpani, $02, dHiTimpani, dHiTimpani, $08, dMidTimpani, $02, dMidTimpani, dMidTimpani
	dc.b	$08, dPSnareAlt

SuperTheme_Loop00:
	dc.b	dPKickAlt, $10, dPSnareAlt, dPKickAlt, dPSnareAlt
	smpsLoop            $01, $03, SuperTheme_Loop00
	dc.b	dPKickAlt, $10, dPSnareAlt, dPSnareAlt, $02, $06, dPKickAlt, $04, dPKickAlt, dPSnareAlt, $08, $04
	dc.b	dPSnareAlt

SuperTheme_Loop01:
	dc.b	dPKickAlt, $10, dPSnareAlt, dPKickAlt, dPSnareAlt
	smpsLoop            $02, $03, SuperTheme_Loop01
	dc.b	dPKickAlt, $08, dHiTimpani, dPSnareAlt, $04, dMidTimpani, $0C, dPSnareAlt, $04, dPKickAlt, dPKickAlt, dPSnareAlt
	dc.b	dPKickAlt, dPKickAlt, dPSnareAlt, dPKickAlt
	smpsLoop            $01, $02, SuperTheme_Loop01
	smpsJump            SuperTheme_DAC

SuperTheme_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $07
;	$07, $06, $06, $02, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $09, $06, $07
	smpsVcDecayRate2    $02, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$2D
;	$02, $04, $04, $04, 	$1F, $1F, $1F, $1F, 	$05, $05, $05, $05
;	$04, $04, $04, $04, 	$28, $1A, $1A, $1A, 	$10, $8A, $8A, $8A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $04, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $05
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $08
	smpsVcTotalLevel    $0A, $0A, $0A, $10

;	Voice $02
;	$3A
;	$32, $03, $02, $73, 	$9F, $8F, $4F, $4F, 	$0F, $0F, $0F, $0F
;	$02, $02, $02, $02, 	$1F, $0F, $0F, $0F, 	$0E, $1F, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $03
	smpsVcCoarseFreq    $03, $02, $03, $02
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0F, $0F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $1F, $0E

;	Voice $03
;	$3A
;	$32, $03, $02, $73, 	$9F, $8F, $4F, $4F, 	$0F, $0F, $0F, $0F
;	$02, $02, $02, $02, 	$1F, $0F, $0F, $0F, 	$0E, $1F, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $03
	smpsVcCoarseFreq    $03, $02, $03, $02
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0F, $0F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $1F, $0E

;	Voice $04
;	$3A
;	$31, $02, $02, $73, 	dPSnareAlt, $8F, $4F, $4F, 	$0F, $0F, $0F, $0F
;	$02, $02, $02, $02, 	$1F, $0F, $0F, $0F, 	$19, $1F, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $03
	smpsVcCoarseFreq    $03, $02, $02, $01
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0F, $0F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $1F, $19


; PSG1 Data
SuperTheme_PSG1:
	smpsPSGvoice        $00
	smpsJump            SuperTheme_Jump03

; PSG2 Data
SuperTheme_PSG2:
	smpsPSGvoice        $00
	smpsJump            SuperTheme_Jump02

; PSG3 Data
SuperTheme_PSG3:
	smpsPSGvoice        fTone_02
	smpsJump            SuperTheme_Jump01
