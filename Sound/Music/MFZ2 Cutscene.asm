Mus8C_Boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus8C_Boss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       Mus8C_Boss_DAC
	smpsHeaderFM        Mus8C_Boss_FM1,	$00, $12
	smpsHeaderFM        Mus8C_Boss_FM2,	$E8, $08
	smpsHeaderFM        Mus8C_Boss_FM3,	$F4, $0F
	smpsHeaderFM        Mus8C_Boss_FM4,	$00, $12
	smpsHeaderFM        Mus8C_Boss_FM5,	$E8, $0F
	smpsHeaderPSG       Mus8C_Boss_PSG1,	$D0, $03, $00, fTone_05
	smpsHeaderPSG       Mus8C_Boss_PSG2,	$D0, $03, $00, fTone_05
	smpsHeaderPSG       Mus8C_Boss_PSG3,	$DC, $01, $00, fTone_08

; FM5 Data
Mus8C_Boss_FM5:
	smpsSetvoice        $05

Mus8C_Boss_Jump03:
	dc.b	nFs7, $0C, nFs7, nFs7, nFs7
	smpsAlterVol        $02
	smpsCall            Mus8C_Boss_Call03
	dc.b	nA6, nFs6, nG6, nFs6, nE6, nFs6, nA6, nFs6, nG6, nFs6, nCs7, nFs6
	dc.b	nE6, nFs6
	smpsCall            Mus8C_Boss_Call03
	dc.b	nB6, nFs6, nA6, nFs6, nG6, nFs6, nA6, nFs6, nB6, nFs6, nCs7, nB6
	dc.b	nF7, nCs7
	smpsAlterVol        $FE

Mus8C_Boss_Loop01:
	dc.b	nFs7, $03, nD7, $03, nFs7, $03, nD7, $03
	smpsLoop            $00, $04, Mus8C_Boss_Loop01
	smpsJump            Mus8C_Boss_Jump03

Mus8C_Boss_Call03:
	dc.b	nB6, $06, nFs6, nD7, nFs6, nB6, nFs6, nE6, nFs6, nB6, nFs6, nD7
	dc.b	nFs6, nB6, nFs6, nA6, nFs6, nG6, nFs6
	smpsReturn

; FM2 Data
Mus8C_Boss_FM2:
	smpsSetvoice        $00

Mus8C_Boss_Jump02:
	smpsNop             $01
	dc.b	nFs4, $06, nFs5, nFs4, nFs5, nFs4, nFs5, nFs4, nFs5
	smpsCall            Mus8C_Boss_Call02
	dc.b	nB3, $06, nE4, nE4, $0C, nB3, $06
	smpsCall            Mus8C_Boss_Call02
	dc.b	nE4, $06, nD4, nD4, $0C, nD4, $06, nCs4, $30
	smpsNop             $01
	smpsJump            Mus8C_Boss_Jump02

Mus8C_Boss_Call02:
	dc.b	nB3, $06, nB3, nD4, nD4, nCs4, nCs4, nC4, nC4, nB3, $12, nFs4
	dc.b	$06, nB4, $0C, nA4, nG4, $06, nG4, $0C, nD4, $06, nG4, nG4
	dc.b	$0C, nFs4, $06, nE4, nE4, $0C
	smpsReturn

; PSG2 Data
Mus8C_Boss_PSG2:
	smpsAlterNote       $02
	smpsJump            Mus8C_Boss_Jump01

; FM3 Data
Mus8C_Boss_FM3:
	smpsSetvoice        $01
	smpsPan             panLeft, $00

Mus8C_Boss_Jump01:
	dc.b	nRst, $30
	smpsCall            Mus8C_Boss_Call01
	dc.b	nE5, $12, nRst, nD6, $03, nRst, nCs6, nRst, nA5, $12
	smpsCall            Mus8C_Boss_Call01
	dc.b	nE5, $0C, nB5, $03, nRst, nE6, nRst, nE6, $0C, nE6, $03, nRst
	dc.b	nF6, nRst, nF6, $0C, nF6, $03, nRst, nFs6, $30
	smpsJump            Mus8C_Boss_Jump01

Mus8C_Boss_Call01:
	dc.b	nRst, $1E, nFs5, $03, nRst, nB5, nRst, nCs6, nRst, nD6, $30, nRst
	dc.b	$12, nB5, $03, nRst, nG5, nRst
	smpsReturn

; FM1 Data
Mus8C_Boss_FM1:
	smpsAlterNote       $03
	smpsJump            Mus8C_Boss_Jump00

; FM4 Data
Mus8C_Boss_FM4:
	smpsPan             panRight, $00

Mus8C_Boss_Jump00:
	smpsSetvoice        $02
	smpsModSet          $0C, $01, $04, $06

; PSG1 Data
Mus8C_Boss_PSG1:
	dc.b	nRst, $30
	smpsCall            Mus8C_Boss_Call00
	dc.b	nE5
	smpsCall            Mus8C_Boss_Call00
	dc.b	nE5, $18, nF5, nFs5, $30
	smpsJump            Mus8C_Boss_PSG1

Mus8C_Boss_Call00:
	dc.b	nB4, $04, nA4, nC5, nB4, $24, nRst, $0C, nFs4, nB4, nCs5, nD5
	dc.b	$30
	smpsReturn

; PSG3 Data
Mus8C_Boss_PSG3:
	smpsStop

; DAC Data
Mus8C_Boss_DAC:
	dc.b	dHiTimpani, $06, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani

Mus8C_Boss_Loop00:
	dc.b	dSnareAlt, $0C, dSnareAlt, $04, dSnareAlt, dSnareAlt, dSnareAlt, $06, dSnareAlt, $0C, dSnareAlt, $06
	dc.b	dSnareAlt, $12, dSnareAlt, $06, dSnareAlt, $0C, dSnareAlt, $0C
	smpsLoop            $00, $03, Mus8C_Boss_Loop00
	dc.b	dSnareAlt, $0C, dSnareAlt, $04, dSnareAlt, dSnareAlt, dSnareAlt, $06, dSnareAlt, $0C, dSnareAlt, $06
	dc.b	dSnareAlt, $06, dSnareAlt, $0C, dSnareAlt, $06, dSnareAlt, $06, dSnareAlt, $0C, dSnareAlt, $06
	dc.b	dSnareAlt, $01, dHiTimpani, $05, dLowTimpani, $06, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani
	smpsJump            Mus8C_Boss_DAC

Mus8C_Boss_Voices:
;	Voice $00
;	$38
;	$75, $13, $71, $11, 	$1F, $5F, $1F, $1F, 	$10, $0D, $03, $04
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1F, $16, $1D, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $0D, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $1D, $16, $1F

;	Voice $01
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
;	$10
;	$45, $50, $64, $41, 	$1F, $1F, $5F, $1F, 	$04, $08, $08, $04
;	$00, $0F, $00, $00, 	$18, $38, $58, $18, 	$20, $25, $1C, $85
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $05, $04
	smpsVcCoarseFreq    $01, $04, $00, $05
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $08, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $85, $1C, $25, $20

;	Voice $03
;	$30
;	$30, $30, $30, $30, 	$9E, $D8, $DC, $DC, 	$0E, $0A, $04, $05
;	$08, $08, $08, $08, 	$BF, $BF, $BF, $BF, 	$14, $3C, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1C, $1C, $18, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $0A, $0E
	smpsVcDecayRate2    $08, $08, $08, $08
	smpsVcDecayLevel    $0B, $0B, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $3C, $14

;	Voice $04
;	$39
;	$01, $51, $00, $00, 	$1F, $5F, $5F, $5F, 	$10, $11, $09, $09
;	$07, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$20, $22, $20, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $10
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $22, $20

;	Voice $05
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

