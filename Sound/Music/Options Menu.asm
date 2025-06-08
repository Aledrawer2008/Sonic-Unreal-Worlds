SaveSelection_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SaveSelection_Voices
	smpsHeaderChan      $05, $01
	smpsHeaderTempo     $03, $03

	smpsHeaderDAC       SaveSelection_DAC
	smpsHeaderFM        SaveSelection_FM1,	$00, $0B
	smpsHeaderFM        SaveSelection_FM2,	$00, $22
	smpsHeaderFM        SaveSelection_FM3,	$00, $22
	smpsHeaderFM        SaveSelection_FM4,	$00, $0F
	smpsHeaderPSG       SaveSelection_PSG1,	$23, $00, $00, $00

; FM1 Data
SaveSelection_FM1:
	smpsSetvoice        $00
	dc.b	nFs4, $02, nCs5, nCs5, nAb4, nRst, nCs5, nBb4, $09, nRst, $01, nCs5
	dc.b	$02, nBb4, nB4, nCs5, $03, nRst, $01, nFs4, $02, nCs5, nCs5, nAb4
	dc.b	nRst, nCs5, nBb4, $13, nRst, $01, nFs4, $02, nCs5, nCs5, nAb4, nRst
	dc.b	nCs5, nBb4, $09, nRst, $01, nCs5, $02, nBb4, nB4, nCs5, $03, nRst
	dc.b	$01, nFs4, $02, nCs5, nCs5, nAb4, nRst, nCs5, nBb4, $13, nRst, $01
	dc.b	nCs5, $02, nB4, nCs5, nBb4, nRst, nCs5, nFs5, $13, nRst, $01, nCs5
	dc.b	$02, nB4, nCs5, nBb4, nRst, nCs5, nB4, $13, nRst, $01, nCs5, $02
	dc.b	nB4, nCs5, nBb4, nRst, nCs5, nFs5, $13, nRst, $01, nAb5, $02, nFs5
	dc.b	nAb5, nFs5, nRst, nBb5, nFs5, $13, nRst, $01
	smpsJump            SaveSelection_FM1

; FM2 Data
SaveSelection_FM2:
	smpsPan             panLeft, $00

SaveSelection_Jump02:
	smpsSetvoice        $01
	dc.b	nBb3, $20, nB3, nBb3, nB3, nBb3, nAb3, nBb3, nB3
	smpsJump            SaveSelection_Jump02

; FM3 Data
SaveSelection_FM3:
	smpsPan             panRight, $00

SaveSelection_Jump01:
	smpsSetvoice        $01
	dc.b	nCs4, $20, nEb4, nCs4, nEb4, nCs4, nB3, nCs4, nEb4
	smpsJump            SaveSelection_Jump01

; FM4 Data
SaveSelection_FM4:
	smpsSetvoice        $02
	dc.b	nFs2, $20, nB2, nFs2, nB2, nBb2, nAb2, nBb2, nB2
	smpsJump            SaveSelection_FM4

; PSG1 Data
SaveSelection_PSG1:
	smpsPSGform         $E7

SaveSelection_Jump03:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $06, $02, $08
	smpsJump            SaveSelection_Jump03

; DAC Data
SaveSelection_DAC:
	dc.b	nRst, $0C

SaveSelection_Jump00:
	dc.b	dVLowTimpani, $10, dKickAlt
	smpsJump            SaveSelection_Jump00

SaveSelection_Voices:
;	Voice $00
;	$3A
;	$32, $01, $52, $31, 	$1F, $1F, $1F, $18, 	$01, $1F, $00, $00
;	$00, $0F, $00, $00, 	$5A, $0F, $03, $1A, 	$3B, $30, $4F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $01
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $00, $00, $05
	smpsVcReleaseRate   $0A, $03, $0F, $0A
	smpsVcTotalLevel    $00, $4F, $30, $3B

;	Voice $01
;	$1C
;	$20, $BD, $02, $80, 	$BC, $1C, $20, $BD, 	$02, $00, $3C, $1C
;	$20, $BD, $02, $80, 	$BC, $1C, $AC, $06, 	$80, $02, $AC, $06
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $08, $00, $0B, $02
	smpsVcCoarseFreq    $00, $02, $0D, $00
	smpsVcRateScale     $02, $00, $00, $02
	smpsVcAttackRate    $3D, $20, $1C, $3C
	smpsVcAmpMod        $00, $01, $00, $00
	smpsVcDecayRate1    $1C, $1C, $00, $02
	smpsVcDecayRate2    $80, $02, $BD, $20
	smpsVcDecayLevel    $00, $0A, $01, $0B
	smpsVcReleaseRate   $06, $0C, $0C, $0C
	smpsVcTotalLevel    $06, $AC, $02, $80

;	Voice $02
;	$3A
;	$32, $01, $52, $31, 	$1F, $1F, $1F, $18, 	$01, $1F, $00, $00
;	$00, $0F, $00, $00, 	$5A, $0F, $03, $1A, 	$3B, $30, $4F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $01
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $00, $00, $05
	smpsVcReleaseRate   $0A, $03, $0F, $0A
	smpsVcTotalLevel    $00, $4F, $30, $3B

