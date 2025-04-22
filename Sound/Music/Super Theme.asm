Snd_Super_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Super_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $72

	smpsHeaderDAC       Snd_Super_DAC
	smpsHeaderFM        Snd_Super_FM1,	$FD, $0B
	smpsHeaderFM        Snd_Super_FM2,	$F1, $16
	smpsHeaderFM        Snd_Super_FM3,	$F1, $18
	smpsHeaderFM        Snd_Super_FM4,	$09, $15
	smpsHeaderFM        Snd_Super_FM5,	$F1, $16
	smpsHeaderPSG       Snd_Super_PSG1,	$00, $06, $00, sTone_06
	smpsHeaderPSG       Snd_Super_PSG2,	$00, $07, $00, sTone_04
	smpsHeaderPSG       Snd_Super_PSG3,	$23, $00, $00, sTone_03

; FM1 Data
Snd_Super_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $30

Snd_Super_Jump04:
	smpsCall            Snd_Super_Call03
	dc.b	nG2, nA2, nB2, nC3, nD3, nE3, nF3, nFs3, nG3, nRst, $09, nG2
	dc.b	$0C
	smpsAlterPitch      $02
	smpsCall            Snd_Super_Call03
	smpsAlterPitch      $FE
	dc.b	nA2, nB2, nCs3, nD3, nE3, nFs3, nG3, nAb3, nA3, nRst, $09, nA2
	dc.b	$0C
	smpsAlterPitch      $04
	smpsCall            Snd_Super_Call03
	smpsAlterPitch      $FC
	dc.b	nB2, nCs3, nEb3, nE3, nFs3, nAb3, nA3, nBb3, nB3, nRst, $09, nG3
	dc.b	$0C
	smpsJump            Snd_Super_Jump04

Snd_Super_Call03:
	dc.b	nC3, $06, nC4, $03, nC4
	smpsLoop            $00, $06, Snd_Super_Call03
	dc.b	nC3, nC3, nD3, nD3, nE3, nF3, nE3, nC3

Snd_Super_Loop00:
	dc.b	nB2, $06, nB3, $03, nB3
	smpsLoop            $00, $05, Snd_Super_Loop00
	dc.b	nC3, $06, nC4, $03, nC4, nD3, nE3, nD3, nC3, nB2, nA2, nG2
	dc.b	$06

Snd_Super_Loop01:
	dc.b	nAb2, $06, nAb3, $03, nAb3
	smpsLoop            $00, $04, Snd_Super_Loop01
	smpsReturn

; FM2 Data
Snd_Super_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nRst, $30

Snd_Super_Jump01:
	smpsCall            Snd_Super_Call02
	dc.b	nG5, $03, nA5, nB5, nC6, nD6, nE6, nF6, nFs6, nG6, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nG5, $0C
	smpsAlterPitch      $02
	smpsCall            Snd_Super_Call02
	smpsAlterPitch      $FE
	dc.b	nA5, $03, nB5, nCs6, nD6, nE6, nFs6, nG6, nAb6, nA6, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nA5, $0C
	smpsAlterPitch      $04
	smpsCall            Snd_Super_Call02
	smpsAlterPitch      $FC
	dc.b	nB6, $03, nA6, nAb6, nFs6, nE6, nEb6, nCs6, nC6, nB5, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nG5, $0C
	smpsJump            Snd_Super_Jump01

Snd_Super_Call02:
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $0C, nC6
	smpsModSet          $07, $01, $03, $05
	dc.b	nG5, $06, nG6, nF6, nE6, smpsNoAttack, nE6, nF6, nE6
	smpsModSet          $07, $01, $09, $05
	dc.b	nC6, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nC6, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $0C, nC6
	smpsModSet          $07, $01, $03, $05
	dc.b	nG5, $06, nG6, nF6, nE6, smpsNoAttack, nE6, nF6, nE6, nC6
	smpsModSet          $07, $01, $09, $05
	dc.b	nD6, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nD6
	smpsModSet          $0C, $01, $05, $07
	dc.b	nC6, $12, nF6, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b	nE6, $06, nD6, nC6
	smpsReturn

; FM3 Data
Snd_Super_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $30

Snd_Super_Jump03:
	smpsCall            Snd_Super_Call01
	dc.b	nD5, $03, nFs5, nG5, nA5, nB5, nC6, nD6, nC6, nB5, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $0C
	smpsAlterPitch      $02
	smpsCall            Snd_Super_Call01
	smpsAlterPitch      $FE
	dc.b	nE5, $03, nAb5, nA5, nB5, nCs6, nD6, nE6, nD6, nCs6, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nE5, $0C
	smpsAlterPitch      $04
	smpsCall            Snd_Super_Call01
	smpsAlterPitch      $FC
	dc.b	nAb6, $03, nFs6, nE6, nEb6, nCs6, nB5, nBb5, nA5, nFs5, nRst, $09
	smpsModSet          $07, $01, $09, $05
	dc.b	nD5, $0C
	smpsJump            Snd_Super_Jump03

Snd_Super_Call01:
	smpsModSet          $0C, $01, $F8, $FF
	dc.b	nRst, $0C, nG5
	smpsModSet          $07, $01, $03, $05
	dc.b	nE5, $06, nE6, nD6, nC6, smpsNoAttack, nC6, nD6, nC6
	smpsModSet          $07, $01, $09, $05
	dc.b	nG5, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b	smpsNoAttack, nG5, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b	nRst, $0C, nG5
	smpsModSet          $07, $01, $03, $05
	dc.b	nD5, $06, nD6, nD6, nC6, smpsNoAttack, nC6, nD6, nC6, nG5
	smpsModSet          $07, $01, $09, $05
	dc.b	nB5, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b	smpsNoAttack, nB5, $0C
	smpsModSet          $0C, $01, $05, $07
	dc.b	nAb5, $12, nC6, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b	$06, nAb5, nAb5
	smpsReturn

; FM4 Data
Snd_Super_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $30

Snd_Super_Jump02:
	dc.b	nC4, $30
	smpsCall            Snd_Super_Call00
	dc.b	nG4, $0C, nA4, nB4, nC5, nD5, $30
	smpsAlterPitch      $02
	smpsCall            Snd_Super_Call00
	smpsAlterPitch      $FE
	dc.b	nA4, $0C, nB4, nCs5, nD5, nE5, $30
	smpsAlterPitch      $04
	smpsCall            Snd_Super_Call00
	smpsAlterPitch      $FC
	dc.b	nB4, $0C, nA4, nAb4, nG4
	smpsJump            Snd_Super_Jump02

Snd_Super_Call00:
	dc.b	nG4, $12, nE4, nC5, $0C, nB4, $30, nC5, $12, nB4, nG4, $0C
	dc.b	nAb4, $30
	smpsReturn

; FM5 Data
Snd_Super_FM5:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nRst, $02, nRst, $30
	smpsJump            Snd_Super_Jump01

; PSG1 Data
Snd_Super_PSG1:
	smpsStop

; PSG2 Data
Snd_Super_PSG2:
	smpsStop

; PSG3 Data
Snd_Super_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $30

Snd_Super_Jump05:
	smpsPSGvoice        sTone_26
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $06
	smpsPSGvoice        sTone_24
	dc.b	(nMaxPSG2-$23)&$FF, $03, $03, $06, $03, $03, nRst, $06, (nMaxPSG2-$23)&$FF, $03, $03, $06
	dc.b	$03, $03, nRst, $06, (nMaxPSG2-$23)&$FF, $03, $03, $06, $03, $03, nRst, $06
	dc.b	(nMaxPSG2-$23)&$FF, $03, $03
	smpsPSGvoice        sTone_26
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $06
	smpsPSGvoice        sTone_24
	dc.b	(nMaxPSG2-$23)&$FF, $03, $03, $06, $03, $03, nRst, $06, (nMaxPSG2-$23)&$FF, $03, $03, $06
	dc.b	$03, $03, nRst, $06, (nMaxPSG2-$23)&$FF, $03, $03, $03, $03, nRst, $12
	smpsPSGvoice        sTone_26
	dc.b	(nMaxPSG2-$23)&$FF, $0C, nRst, $06
	smpsPSGvoice        sTone_24
	dc.b	(nMaxPSG2-$23)&$FF, $03, $03, $06, $03, $03, nRst, $06, (nMaxPSG2-$23)&$FF, $03, $03
	smpsPSGvoice        sTone_1E
	dc.b	$0C, $0C, $0C
	smpsPSGvoice        sTone_26
	dc.b	$0C
	smpsJump            Snd_Super_Jump05

; DAC Data
Snd_Super_DAC:
	dc.b	dSnareAlt, $06, $06, nRst, $03, dSnareAlt, $03, $06, dHiTimpani, $02, $02, $02
	dc.b	dTimpani, $03, $03, dLowTimpani, $03, $03, dVLowTimpani, $03, $03

Snd_Super_Jump00:
	dc.b	dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $09, dSnareAlt, $03
	dc.b	dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, dSnareAlt, $03
	dc.b	dSnareAlt, $06, $03, dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dSnareAlt, $03, $03, $03
	dc.b	$03, $03, $03, $03, $03, $06, dKickAlt, $02, $02, $02, dSnareAlt, $0C
	smpsJump            Snd_Super_Jump00

Snd_Super_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
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
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $1B

;	Voice $02
;	$3A
;	$42, $43, $14, $71, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $0B, 	$1F, $1F, $1F, $1F, 	$1A, $16, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $04, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $0B, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $16, $1A