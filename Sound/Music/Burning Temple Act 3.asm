Burning_Temple3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Burning_Temple3_Voices
	smpsHeaderChan      $04, $03
	smpsHeaderTempo     $02, $02

	smpsHeaderDAC       Burning_Temple3_DAC
	smpsHeaderFM        Burning_Temple3_FM1,	$00, $11
	smpsHeaderFM        Burning_Temple3_FM2,	$00, $11
	smpsHeaderFM        Burning_Temple3_FM3,	$00, $10
	smpsHeaderPSG       Burning_Temple3_PSG1,	$DC, $01, $00, $00
	smpsHeaderPSG       Burning_Temple3_PSG2,	$DC, $01, $00, $00
	smpsHeaderPSG       Burning_Temple3_PSG3,	$23, $00, $00, $00

; FM1 Data
Burning_Temple3_FM1:
	dc.b	nRst, $34, $40, $40, $0C
	smpsSetvoice        $03
	dc.b	nF4, $08, $02, nFs4, $02, nAb4, $0C, $08, $02, nCs5, $02, nFs5
	dc.b	$04, nF5, nCs5, nE5, $08, nCs5, $02, nA4, nE5, $06, nA4, $02
	dc.b	nCs5, nE5, nAb5, $04, nEb5, nCs5, nC5, nAb4, nEb4, nF4, $08, $02
	dc.b	nFs4, $02, nAb4, $0C, $08, $02, nCs5, $02, nFs5, $04, nF5, nCs5
	dc.b	nCs5, $08, $02, nF5, $02, nBb5, $0C, nRst, $02, nE5, nE5, nE5
	dc.b	$06, nRst, $02, nFs5, nFs5, nFs5, $06, nRst, $34, $5A
	smpsSetvoice        $00
	dc.b	nCs5, $09, nRst, $01, nEb5, $02, nCs5, nAb4, $0A, nRst, $02, nAb5
	dc.b	$0A, nRst, $10
	smpsSetvoice        $03
	dc.b	nAb3, $02, nBb3, nB3, nCs4, nEb4, nF4, nFs4, nAb4, nBb4, nB4, nCs5
	dc.b	nEb5, $06, nCs5, $04, nBb4, $02, nCs5, $04, $08, nRst, $06, nBb4
	dc.b	$02, nAb4, nFs4, nAb4, $04, nEb4, $02, nFs4, $04, nAb4, $02, nBb4
	dc.b	$01, nB4, nBb4, $02, nAb4, nBb4, $04, $0E, nRst, $04, nEb4, $01
	dc.b	$01, nFs4, $03, nAb4, nC5, $02, $02, $02, nB4, $04, nBb4, $02
	dc.b	nAb4, $04, nF4, $02, nEb4, $04, nCs4, $02, nD4, $04, nF4, $08
	dc.b	nRst, $0A, nBb4, $02, nF5, nD5, nBb4, nFs5, nD5, nBb4, nEb5, nBb4
	dc.b	nF5, nBb4, nFs5, nBb4, nG5, nD5, nBb4, nBb5, $06
	smpsJump            Burning_Temple3_FM1

Burning_Temple3_Call05:
	dc.b	nRst, $04, nD4, $02
	smpsReturn

Burning_Temple3_Call04:
	dc.b	nRst, $04, nF4, $02
	smpsReturn

Burning_Temple3_Call03:
	dc.b	nRst, $04, nEb4, $02
	smpsReturn

; FM2 Data
Burning_Temple3_FM2:
	smpsSetvoice        $00
	dc.b	nAb4, $02, nG4, nF4, nG4, nEb4, nBb3, $07, nRst, $01, nBb3, $02
	dc.b	nEb4, nBb3, nB3, nEb4, nB3, nFs4, $05, nRst, $01, nCs4, $02, nF4
	dc.b	nCs4, nAb4, $05, nRst, $01, nAb4, $02, nG4, nAb4, nBb4, $0A, nRst
	dc.b	$02, nBb4, nEb5, nBb4, nB4, nFs4, nB4, nEb5, $05, nRst, $01, nCs5
	dc.b	$02, nAb4, nCs5, nF5, $05, nRst, $01, nG4, $08, $02, nAb4, $02
	dc.b	nBb4, nRst, nAb4, nRst, nG4, nRst, nAb4, nRst, nEb4, nRst, nAb4, nRst
	dc.b	nC5, $0A, nRst, $02, nB4, $01, nRst, nBb4, nRst, nB4, nRst, nCs5
	dc.b	$09, nRst, $01, nBb4, nCs5, nFs5, nRst, nCs5, nRst, nBb4, nRst, nCs5
	dc.b	nRst, nC5, nRst, nCs5, nRst, nEb5, $0A, nRst, $02, nC5, $01, nRst
	dc.b	nEb5, nRst, nAb5, nRst
	smpsSetvoice        $02
	dc.b	nF5, $08, $02, nFs5, $02, nAb5, $0C, $08, $02, nCs6, $02, nFs6
	dc.b	$04, nF6, nCs6, nE6, $08, nCs6, $02, nA5, nE6, $06, nA5, $02
	dc.b	nCs6, nE6, nAb6, $04, nEb6, nCs6, nC6, nAb5, nEb5, nF5, $08, $02
	dc.b	nFs5, $02, nAb5, $0C, $08, $02, nCs6, $02, nFs6, $04, nF6, nCs6
	dc.b	nCs6, $08, $02, nF6, $02, nBb6, $0C, nRst, $02, nE6, nE6, nE6
	dc.b	$06, nRst, $02, nFs6, nFs6, nFs6, $06
	smpsSetvoice        $00
	dc.b	nAb4, $02, nG4, nF4, nG4, nEb4, nBb3, $13, nRst, $01, nG3, $02
	dc.b	nBb3, nEb4, nEb4, nG4, nBb4, nEb5, $03, nRst, $01, nCs5, $09, nRst
	dc.b	$01, nC5, $02, nCs5, nAb4, $07, nRst, $01, nG4, $02, nAb4, nF4
	dc.b	$0A, nRst, $02, nEb4, nF4, nCs4, nC4, nCs4, nAb3, nAb4, nG4, nF4
	dc.b	nG4, nEb4, nBb3, $13, nRst, $01, nG3, $02, nBb3, nEb4, nEb4, nG4
	dc.b	nBb4, nEb5, $03, nRst, $01, nF5, $09, nRst, $01, nC5, $02, nF5
	dc.b	nCs5, $0A, nRst, $0E, nAb5, $02, nF5, nCs5, nAb4, nF4, nCs4

Burning_Temple3_Loop08:
	smpsCall            Burning_Temple3_Call03
	smpsLoop            $00, $04, Burning_Temple3_Loop08

Burning_Temple3_Loop09:
	smpsCall            Burning_Temple3_Call04
	smpsLoop            $00, $04, Burning_Temple3_Loop09
	smpsLoop            $01, $02, Burning_Temple3_Loop08

Burning_Temple3_Loop0A:
	smpsCall            Burning_Temple3_Call05
	smpsLoop            $00, $04, Burning_Temple3_Loop0A

Burning_Temple3_Loop0B:
	smpsCall            Burning_Temple3_Call03
	smpsLoop            $00, $04, Burning_Temple3_Loop0B

Burning_Temple3_Loop0C:
	smpsCall            Burning_Temple3_Call05
	smpsLoop            $00, $04, Burning_Temple3_Loop0C

Burning_Temple3_Loop0D:
	smpsCall            Burning_Temple3_Call03
	smpsLoop            $00, $03, Burning_Temple3_Loop0D
	dc.b	nRst, $06
	smpsJump            Burning_Temple3_FM2

Burning_Temple3_Call02:
	dc.b	nCs2
	smpsLoop            $01, $07, Burning_Temple3_Call02
	dc.b	nAb2, nCs2, nCs2, nAb2, nCs2
	smpsReturn

Burning_Temple3_Call01:
	dc.b	nCs2, $02, nCs2, nCs2, nAb2, nCs2, nCs2
	smpsReturn

Burning_Temple3_Call00:
	dc.b	nCs2, $03, nRst, $01
	smpsLoop            $00, $03, Burning_Temple3_Call00
	smpsReturn

; FM3 Data
Burning_Temple3_FM3:
	smpsSetvoice        $01

Burning_Temple3_Loop05:
	dc.b	nEb2

Burning_Temple3_Jump00:
	dc.b	$02
	smpsLoop            $00, $30, Burning_Temple3_Loop05
	smpsCall            Burning_Temple3_Call00
	smpsCall            Burning_Temple3_Call00
	smpsAlterPitch      $FF
	smpsCall            Burning_Temple3_Call00
	smpsAlterPitch      $05
	smpsCall            Burning_Temple3_Call00
	smpsAlterPitch      $01
	smpsCall            Burning_Temple3_Call00
	smpsCall            Burning_Temple3_Call00
	smpsAlterPitch      $02
	smpsCall            Burning_Temple3_Call00
	smpsCall            Burning_Temple3_Call00
	smpsAlterPitch      $F9
	smpsCall            Burning_Temple3_Call01
	smpsCall            Burning_Temple3_Call01
	smpsAlterPitch      $FE
	smpsCall            Burning_Temple3_Call01
	smpsCall            Burning_Temple3_Call01
	smpsAlterPitch      $FE
	smpsCall            Burning_Temple3_Call01
	smpsCall            Burning_Temple3_Call01
	smpsAlterPitch      $FF
	smpsCall            Burning_Temple3_Call01
	smpsCall            Burning_Temple3_Call01
	smpsAlterPitch      $05
	smpsCall            Burning_Temple3_Call02
	smpsAlterPitch      $FE
	smpsCall            Burning_Temple3_Call02
	smpsAlterPitch      $FF
	smpsCall            Burning_Temple3_Call02
	smpsAlterPitch      $01
	smpsCall            Burning_Temple3_Call01
	smpsAlterPitch      $02
	smpsCall            Burning_Temple3_Call01
	dc.b	nEb2, $22, nBb1, $02, nEb2, $06, nBb1, $04, nEb2, $24, nBb1, $02
	dc.b	nEb2, $06, nBb1, nEb2, $22, nBb1, $02, nEb2, $06, nBb1, $04, nEb2
	dc.b	$30, nRst, $02

Burning_Temple3_Loop06:
	dc.b	nB1
	smpsLoop            $00, $30, Burning_Temple3_Loop06

Burning_Temple3_Loop07:
	dc.b	nBb1
	smpsLoop            $00, $2E, Burning_Temple3_Loop07
	dc.b	nBb1, $04
	smpsJump            Burning_Temple3_Jump00

; PSG1 Data
Burning_Temple3_PSG1:
	smpsPSGvoice        $00
	dc.b	nEb4, $18, nB3, $0C, nAb3, nRst, $06, nEb4, $12, nB3, $0C, nAb3
	dc.b	nRst, $06, nBb3, nRst, nBb3, nRst, nAb3, nRst, nAb3, nRst, nCs4, nRst
	dc.b	nBb3, nRst, nC4, $12, nRst, $34, $40, $40, $0C, nEb4, $30, nBb3
	dc.b	$0C, $0C, nCs4, $18, nBb3, $30, $0C, nCs4, $0C, nBb3, $18, nRst
	dc.b	$06, nB3, nRst, nB3, nRst, nF4, nRst, nF4, nRst, nB3, nRst, nEb4
	dc.b	nRst, nF4, nRst, nF4, nRst, nD4, nRst, nBb3, nRst, nEb4, nRst, nEb4
	dc.b	nRst, nD4, nRst, nBb3, nRst, nBb3, nRst, $0C
	smpsJump            Burning_Temple3_PSG1

; PSG2 Data
Burning_Temple3_PSG2:
	smpsPSGvoice        $00
	dc.b	nBb3, $18, nFs3, $0C, nCs4, nRst, $06, nBb3, $12, nFs3, $0C, nCs4
	dc.b	nRst, $06, nEb4, nRst, nEb4, nRst, nC4, nRst, nC4, nRst, nBb3, nRst
	dc.b	nCs4, nRst, nEb4, $12, nCs4, $02, nRst, nCs4, nRst, nCs4, nRst, nCs4
	dc.b	nRst, nCs4, nRst, nCs4, nRst, nB3, nRst, nB3, nRst, nB3, nRst, nB3
	dc.b	nRst, nB3, nRst, nB3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nA3
	dc.b	nRst, nA3, nRst, nA3, nRst, nAb3, nRst, nAb3, nRst, nAb3, nRst, nAb3
	dc.b	nRst, nAb3, nRst, nAb3, nRst, nCs4, nRst, nCs4, nRst, nCs4, nRst, nCs4
	dc.b	nRst, nCs4, nRst, nCs4, nRst, nB3, nRst, nB3, nRst, nB3, nRst, nB3
	dc.b	nRst, nB3, nRst, nB3, nRst, nBb3, nRst, nBb3, nRst, nBb3, nRst, nBb3
	dc.b	nRst, nBb3, nRst, nBb3, nRst, nB3, nRst, nB3, nRst, nB3, nRst, nCs4
	dc.b	nRst, nCs4, nRst, nCs4, nRst, nBb3, $30, nEb4, $0C, nF4, nBb3, $18
	dc.b	nEb4, $30, $0C, nBb3, $0C, nF4, $18, nRst, $06, nEb4, nRst, nEb4
	dc.b	nRst, nB3, nRst, nB3, nRst, nEb4, nRst, nB3, nRst, nB3, nRst, nB3
	dc.b	nRst, nBb3, nRst, nD4, nRst, nBb3, nRst, nBb3, nRst, nBb3, nRst, nD4
	dc.b	nRst, nEb4, nRst, $0C
	smpsJump            Burning_Temple3_PSG2

; PSG3 Data
Burning_Temple3_PSG3:
	smpsPSGform         $E7

Burning_Temple3_Jump01:
	smpsPSGvoice        fTone_02

Burning_Temple3_Loop0E:
	dc.b	nAb6, $02
	smpsLoop            $00, $3B, Burning_Temple3_Loop0E

Burning_Temple3_Loop10:
	smpsPSGvoice        fTone_01
	dc.b	$02
	smpsPSGvoice        fTone_02

Burning_Temple3_Loop0F:
	dc.b	$02
	smpsLoop            $00, $0B, Burning_Temple3_Loop0F
	smpsLoop            $01, $1B, Burning_Temple3_Loop10
	dc.b	smpsNoAttack, $02
	smpsJump            Burning_Temple3_Jump01

; DAC Data
Burning_Temple3_DAC:
	dc.b	dKickAlt, $06, dSnareAlt
	smpsLoop            $00, $07, Burning_Temple3_DAC
	dc.b	dKickAlt, $04, dSnareAlt, $02, $02, $02, $02

Burning_Temple3_Loop00:
	dc.b	dKickAlt, $06, dSnareAlt
	smpsLoop            $00, $06, Burning_Temple3_Loop00
	dc.b	dKickAlt, $02, dSnareAlt, $01, $01, $02, $02, $02, $02, $06, $06

Burning_Temple3_Loop01:
	dc.b	dKickAlt, $06, dSnareAlt
	smpsLoop            $00, $07, Burning_Temple3_Loop01
	dc.b	dSnareAlt, $01, $01, $02, $02, $02, $02, $02

Burning_Temple3_Loop02:
	dc.b	dKickAlt, $06, dSnareAlt
	smpsLoop            $00, $06, Burning_Temple3_Loop02
	dc.b	dKickAlt, $02, dSnareAlt, dSnareAlt, dSnareAlt, $06, $01, $01, $04, $06

Burning_Temple3_Loop03:
	dc.b	dKickAlt, $04, $08, dSnareAlt, $06, dKickAlt, $04, $06, $04, $02, $02, dSnareAlt
	dc.b	$06, dKickAlt, $04, $0C, $01, $01, dSnareAlt, $06, dKickAlt, $04, $0A, $02
	dc.b	$02, dSnareAlt, $04, dKickAlt, dKickAlt, $02, $02
	smpsLoop            $00, $02, Burning_Temple3_Loop03

Burning_Temple3_Loop04:
	dc.b	dKickAlt, $06, dSnareAlt
	smpsLoop            $00, $0D, Burning_Temple3_Loop04
	dc.b	dKickAlt, dSnareAlt, $04, $02, dKickAlt, $02, dSnareAlt, $04, $02, $04, $06, $06
	smpsJump            Burning_Temple3_DAC

Burning_Temple3_Voices:
;	Voice $00
;	$39
;	$32, $31, $72, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

;	Voice $01
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $02
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $03
;	$3B
;	$3A, $31, $71, $74, 	$DF, $1F, $1F, $DF, 	$00, $0A, $0A, $05
;	$00, $05, $05, $03, 	$0F, $5F, $1F, $5F, 	$32, $1E, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $0A
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $00
	smpsVcDecayRate2    $03, $05, $05, $00
	smpsVcDecayLevel    $05, $01, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $1E, $32

