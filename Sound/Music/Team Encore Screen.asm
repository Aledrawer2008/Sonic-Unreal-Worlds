TeamEncore_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     TeamEncore_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       TeamEncore_DAC
	smpsHeaderFM        TeamEncore_FM1,	$00, $10
	smpsHeaderFM        TeamEncore_FM2,	$00, $10
	smpsHeaderFM        TeamEncore_FM3,	$00, $10
	smpsHeaderFM        TeamEncore_FM4,	$00, $10
	smpsHeaderPSG       TeamEncore_PSG1,	$DC, $00, $00, $00
	smpsHeaderPSG       TeamEncore_PSG2,	$DC, $00, $00, $00
	smpsHeaderPSG       TeamEncore_PSG3,	$23, $00, $00, $00

; FM1 Data
TeamEncore_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nD2, $04, nCs2, nC2, nBb1, nA1, nAb1, nG1, nFs1, nF1, nRst, $08
	dc.b	nD2, nRst, $04, nCs2, $1E, nRst, $0E
	smpsStop

; FM2 Data
TeamEncore_FM2:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	dc.b	nD4, $04, nG4, nBb4, nC5, nEb5, nF5, nG5, nBb5, nC6, nRst, $08
	dc.b	nF5, nRst, $04, nFs5, $1E, nRst, $0E
	smpsStop

; FM3 Data
TeamEncore_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nF4, $04, nD4, nF4, nG4, nBb4, nC5, nEb5, nF5, nG5, nRst, $08
	dc.b	nD5, nRst, $04, nD5, $1E, nRst, $0E
	smpsStop

; FM4 Data
TeamEncore_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nD2, $04, nCs2, nC2, nBb1, nA1, nAb1, nG1, nFs1, nF1, nRst, $08
	dc.b	nD2, nRst, $04, nCs2, $1E, nRst, $0E
	smpsStop

; PSG1 Data
TeamEncore_PSG1:
	smpsPSGvoice        fTone_05
	dc.b	nF4, $04, nG4, nBb4, nC5, nEb5, nF5, nG5, nBb5, nC6, nRst, $08
	dc.b	nF5, nRst, $04, nFs5, $1E, nRst, $0E
	smpsStop

; PSG2 Data
TeamEncore_PSG2:
	smpsPSGvoice        fTone_05
	dc.b	nD4, $04, $04, nF4, $04, nG4, nBb4, nC5, nEb5, nF5, nG5, nRst
	dc.b	$08, nD5, nRst, $04, nD5, $1E, nRst, $0E
	smpsStop

; PSG3 Data
TeamEncore_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $02, $02, $04, $04, $04, $04, $04, $04, $04, $0C
	smpsPSGvoice        fTone_01
	dc.b	$0C, $0C, nRst
	smpsStop

; DAC Data
TeamEncore_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnareAlt, $02, $02, $04, $04, $04, $04, $04, $04, $04, $0C, $0C
	dc.b	$24, dClapAlt, $02, dMidTimpani, dVLowTimpani, $04
	smpsStop

TeamEncore_Voices:
;	Voice $00
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

;	Voice $01
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $14, $0E

;	Voice $02
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $83, $18, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $03, $18, $03, $10

