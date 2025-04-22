Chaos_Emerald_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Chaos_Emerald_Voices
	smpsHeaderChan      $04, $00
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       Chaos_Emerald_DAC
	smpsHeaderFM        Chaos_Emerald_FM1,	$00, $0E
	smpsHeaderFM        Chaos_Emerald_FM2,	$00, $11
	smpsHeaderFM        Chaos_Emerald_FM3,	$00, $14

; FM1 Data
Chaos_Emerald_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nE6, $03, nB5, $03, nE6, $03, nE6, $03, nE6, $06, nE6, $06
	dc.b	nB5, $03, nE6, $03, nE6, $06, nFs6, $03, nE6, $03, nD6, $03
	dc.b	nFs6, $03, nFs6, $03, nD6, $03, nG6, $03, nFs6, $03, nE6, $03
	dc.b	nG6, $03, nG6, $03, nE6, $03, nAb6, $48
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
Chaos_Emerald_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nE3, $08, nE3, $04, nE3, $06, nE3, $06, nB2, $06, nE3, $06
	dc.b	nD3, $06, nA2, $06, nD3, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b	nE3, $06, nE3, $06, nD3, $06, nE3, $36
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM3 Data
Chaos_Emerald_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nAb4, $08, nAb4, $04, nAb4, $06, nAb4, $06, nAb4, $06, nAb4, $06
	dc.b	nD4, $03, nA4, $03, nD5, $03, nE5, $03, nFs5, $03, nA5, $03
	dc.b	nC5, $03, nD5, $03, nE5, $03, nG5, $03, nC6, $03, nD6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	dc.b	nE6, $02, nFs6, $01, nE6, $03, nFs6, $02, nE6, $01, nFs6, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsStop

; DAC Data
Chaos_Emerald_DAC:
	smpsStop

Chaos_Emerald_Voices:
;	Voice $00
;	$10
;	$35, $76, $70, $30, 	$DF, $DF, $5F, $5F, 	$06, $08, $09, $09
;	$06, $03, $03, $01, 	$26, $16, $06, $26, 	$21, $34, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $06, $05
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $08, $06
	smpsVcDecayRate2    $01, $03, $03, $06
	smpsVcDecayLevel    $02, $00, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $34, $21

;	Voice $01
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
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
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $02
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

