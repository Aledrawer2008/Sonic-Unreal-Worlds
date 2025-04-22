Cutscene_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Cutscene_Voices
	smpsHeaderChan      $04, $01
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       Cutscene_DAC
	smpsHeaderFM        Cutscene_FM1,	$0C, $10
	smpsHeaderFM        Cutscene_FM2,	$0C, $10
	smpsHeaderFM        Cutscene_FM3,	$0C, $10
	smpsHeaderPSG       Cutscene_PSG1,	$23, $00, $00, $00

; FM1 Data
Cutscene_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08, nA2, $04, nRst, $10
	dc.b	nA2, $04, nA1, nRst, nA2, nA1, nRst, $08, nA2, $04, nRst, $08
	dc.b	nRst, nA1, $04
	smpsJump            Cutscene_FM1

; FM2 Data
Cutscene_FM2:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nRst, $0C

Cutscene_Jump01:
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08, nA2, $04, nRst, $10
	dc.b	nA2, $04, nA1, nRst, nA2, nA1, nRst, $08, nA2, $04, nRst, $08
	dc.b	nRst, nA1, $04
	smpsJump            Cutscene_Jump01

; FM3 Data
Cutscene_FM3:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nRst, $48

Cutscene_Jump00:
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08, nA2, $04, nRst, $10
	dc.b	nA2, $04, nA1, nRst, nA2, nA1, nRst, $08, nA2, $04, nRst, $08
	dc.b	nRst, nA1, $04
	smpsJump            Cutscene_Jump00

; PSG1 Data
Cutscene_PSG1:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02

Cutscene_Jump02:
	dc.b	nAb6, $0C, $08, $04
	smpsJump            Cutscene_Jump02

; DAC Data
Cutscene_DAC:
	dc.b	dKickAlt, $18, dSnareAlt, $14, dKickAlt, $0C, $10, dSnareAlt, $14, dKickAlt, $04, $18
	dc.b	dSnareAlt, $14, dKickAlt, $0C, dSnareAlt, $04, dKickAlt, $0C, dSnareAlt, $14, $04
	smpsJump            Cutscene_DAC

Cutscene_Voices:
;	Voice $00
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$27, $17, $17, $F7, 	$17, $32, $14, $7F
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
	smpsVcTotalLevel    $7F, $14, $32, $17

