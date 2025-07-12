SuperAmy_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SuperAmy_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       SuperAmy_DAC
	smpsHeaderFM        SuperAmy_FM1,	$F4, $0C
	smpsHeaderFM        SuperAmy_FM2,	$00, $18
	smpsHeaderFM        SuperAmy_FM3,	$00, $18
	smpsHeaderFM        SuperAmy_FM4,	$00, $18
	smpsHeaderFM        SuperAmy_FM5,	$00, $18
	smpsHeaderPSG       SuperAmy_PSG1,	$D0, $04, $00, fTone_01
	smpsHeaderPSG       SuperAmy_PSG2,	$D0, $01, $00, fTone_01
	smpsHeaderPSG       SuperAmy_PSG3,	$23, $00, $00, $00

; FM1 Data
SuperAmy_FM1:
	smpsSetvoice        $00
	dc.b	nAb3, $0C, nEb4, nAb3, nEb4, nBb3, nEb3, nBb3, nEb3, nAb3, nEb4, nAb3
	dc.b	nEb4, nBb3, nEb3, nAb3, nEb3
	smpsJump            SuperAmy_FM1

; FM2 Data
SuperAmy_FM2:
	smpsPan             panLeft, $00
	smpsModSet          $10, $01, $04, $04
	smpsSetvoice        $01
	dc.b	nC3, $30, nCs3, nC3, nCs3, $18, nC3
	smpsJump            SuperAmy_FM2

; FM3 Data
SuperAmy_FM3:
	smpsPan             panLeft, $00
	smpsModSet          $10, $01, $04, $04
	smpsSetvoice        $01
	dc.b	nAb3, $30, nBb3, nAb3, nBb3, $18, nAb3
	smpsJump            SuperAmy_FM3

; FM4 Data
SuperAmy_FM4:
	smpsPan             panRight, $00
	smpsModSet          $10, $01, $04, $04
	smpsSetvoice        $01
	dc.b	nAb2, $30, nBb2, nAb2, nBb2, $18, nAb2
	smpsJump            SuperAmy_FM4

; FM5 Data
SuperAmy_FM5:
	smpsPan             panRight, $00
	smpsModSet          $10, $01, $04, $04
	smpsSetvoice        $01
	dc.b	nEb3, $30, nF3, nEb3, nF3, $18, nEb3
	smpsJump            SuperAmy_FM5

; PSG1 Data
SuperAmy_PSG1:
	dc.b	nRst, $06
	smpsCall            SuperAmy_Call00
	dc.b	nAb6, $03, nC7, nBb6, $06, nAb6, $06
	smpsAlterVol        $FD
	smpsAlterPitch      $03
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $02
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $FE
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $01
	smpsCall            SuperAmy_Call03
	smpsAlterPitch      $FC
	dc.b	nC7, $03, nEb7, nCs7, $06, nC7, $03, nG7, nF7, $06, nEb7, $03
	dc.b	nCs7, nC7, $06, nEb7, $03, nF7, nEb7, $06, $03, nCs7, $03, nC7
	dc.b	nCs7, nEb7, $06, nF7, nCs7, $03, nC7, nBb6, nC7, nCs7, nEb7, nCs7
	dc.b	$06, $03, nC7, $03, nBb6, $06, nCs7, $03, nG7, nF7, $06
	smpsAlterPitch      $03
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $01
	smpsCall            SuperAmy_Call03
	smpsAlterPitch      $FC
	dc.b	nC7, $03, nEb7, nCs7, $06, nC7, $0C
	smpsAlterVol        $03
	smpsJump            SuperAmy_PSG1

; PSG2 Data
SuperAmy_PSG2:
	smpsCall            SuperAmy_Call00
	smpsCall            SuperAmy_Call01
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $01
	smpsCall            SuperAmy_Call02
	smpsAlterPitch      $FF
	smpsCall            SuperAmy_Call02
	smpsCall            SuperAmy_Call03
	dc.b	nAb6, $03, nC7, nBb6, $06, nAb6, $03, nEb7, nCs7, $06, nC7, $03
	dc.b	nBb6, nAb6, $06, nC7, $03, nCs7, nC7, $06, $03, nBb6, $03, nAb6
	dc.b	nBb6, nC7, $06, nCs7, nBb6, $03, nAb6, nG6, nAb6, nBb6, nC7, nBb6
	dc.b	$06, $03, nAb6, $03, nG6, $06, nBb6, $03, nEb7, nCs7, $06
	smpsCall            SuperAmy_Call02
	smpsCall            SuperAmy_Call03
	smpsCall            SuperAmy_Call01
	smpsJump            SuperAmy_PSG2

SuperAmy_Call00:
	smpsCall            SuperAmy_Call04
	dc.b	nCs7, $03, nBb6, $09, nEb6, $03, nBb6, $09
	smpsCall            SuperAmy_Call04
	smpsCall            SuperAmy_Call05
	smpsCall            SuperAmy_Call04
	smpsReturn

SuperAmy_Call04:
	dc.b	nC7, $03, nAb6, $09, nEb6, $03, nAb6, $09, nC7, $03, nAb6, $09
	dc.b	nEb6, $03, nAb6, nBb6, nC7, nCs7, nBb6, $09, nEb6, $03, nBb6, $09
	smpsReturn

SuperAmy_Call05:
	dc.b	nAb6, $03, nC7, nBb6, $06, nAb6, $03, nEb7, nCs7, $06, nC7, $03
	dc.b	nBb6, nAb6, $06, nC7, $03, nCs7, nC7, $06, $03, nBb6, $03, nAb6
	dc.b	nBb6, nC7, $06, nCs7, nBb6, $03, nAb6, nG6, nAb6, nBb6, nC7, nBb6
	dc.b	$06, $03, nAb6, $03, nG6, $06, nBb6, $03, nEb7, nCs7, $06
	smpsReturn

SuperAmy_Call01:
	dc.b	nAb6, $03, nC7, nBb6, $06, nAb6, $0C
	smpsReturn

SuperAmy_Call02:
	dc.b	nC7, $06, nC7, nC7, $03, nC7, nC7, nC7, nC7, $06, nC7, nC7
	dc.b	$03, nC7, nRst, nRst
	smpsReturn

SuperAmy_Call03:
	dc.b	nCs7, $06, nCs7, nCs7, $03, nCs7, nRst, nRst
	smpsReturn

; PSG3 Data
SuperAmy_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsJump            SuperAmy_PSG3

; DAC Data
SuperAmy_DAC:
	dc.b	$85, $06, dSnare, dKick, dSnare, dKick, dSnare, dKick, $03, $03, dSnare, $06

SuperAmy_Loop00:
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $03, $03, dSnare, $06
	smpsLoop            $00, $02, SuperAmy_Loop00
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dHiTimpani, $03, dMidTimpani, dVLowTimpani, $06
	smpsJump            SuperAmy_DAC

SuperAmy_Voices:
;	Voice $00
;	$10
;	$09, $00, $00, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$25, $30, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $30, $25

;	Voice $01
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

