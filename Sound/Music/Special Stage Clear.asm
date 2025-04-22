Snd_SAdvZoneClear_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_SAdvZoneClear_Voices
	smpsHeaderChan      $06, $00
	smpsHeaderTempo     $02, $0F

	smpsHeaderDAC       Snd_SAdvZoneClear_DAC
	smpsHeaderFM        Snd_SAdvZoneClear_FM1,	$00, $13
	smpsHeaderFM        Snd_SAdvZoneClear_FM2,	$00, $13
	smpsHeaderFM        Snd_SAdvZoneClear_FM3,	$00, $13
	smpsHeaderFM        Snd_SAdvZoneClear_FM4,	$00, $13
	smpsHeaderFM        Snd_SAdvZoneClear_FM5,	$00, $13

; DAC Data
Snd_SAdvZoneClear_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $06, $85, $09, dSnareAlt, $12, dSnareAlt, $06, dKickAlt, $03, dKickAlt, $0C
	dc.b	$85, $06, $85, $15, dLowTimpani, $03, dVLowTimpani, $03, $85, $09
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
Snd_SAdvZoneClear_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $06, nC3, $03, nC3, $03, nG3, $03, nC4, $09, nC3, $03
	dc.b	nC3, $03, nG3, $03, nC4, $09, nBb2, $03, nBb2, $03, nBb2, $03
	dc.b	nRst, $03, nBb2, $03, nRst, $03, nC3, $1B, nRst, $09
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
Snd_SAdvZoneClear_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $06, nE6, $06, nRst, $03, nE6, $09, nD6, $06, nRst, $03
	dc.b	nD6, $09, nBb5, $03, nC6, $03, nD6, $03, nRst, $03, nD6, $03
	dc.b	nRst, $03
	smpsAlterVol        $FB
	dc.b	nE6, $1B, nRst, $09
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM3 Data
Snd_SAdvZoneClear_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $06, nG6, $06, nRst, $03, nG6, $09, nF6, $06, nRst, $03
	dc.b	nF6, $09, nCs6, $03, nEb6, $03, nF6, $03, nRst, $03, nF6, $03
	dc.b	nRst, $03, nG6, $1B, nRst, $09
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM4 Data
Snd_SAdvZoneClear_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nD5, $01, nF5, $02, nG5, $01, nA5, $01, nB5, $01, nC6, $06
	dc.b	nRst, $03, nC6, $09, nBb5, $06, nRst, $03, nBb5, $09, nFs5, $03
	dc.b	nAb5, $03, nBb5, $03, nRst, $03, nBb5, $03, nRst, $03, nC6, $1B
	dc.b	nRst, $09
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM5 Data
Snd_SAdvZoneClear_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $06, nC3, $03, nC3, $03, nG3, $03, nC4, $09, nC3, $03
	dc.b	nC3, $03, nG3, $03, nC4, $09, nBb2, $03, nBb2, $03, nBb2, $03
	dc.b	nRst, $03, nBb2, $03, nRst, $03, nC3, $1B, nRst, $09
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsStop

Snd_SAdvZoneClear_Voices:
;	Voice $00
;	$04
;	$01, $00, $00, $00, 	$1F, $1F, $DD, $1F, 	$11, $0D, $05, $05
;	$00, $02, $02, $02, 	$65, $3A, $15, $1A, 	$27, $00, $13, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $03, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $0D, $11
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $01, $01, $03, $06
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $13, $00, $27

;	Voice $01
;	$27
;	$14, $30, $51, $62, 	$5C, $5C, $5C, $5C, 	$00, $00, $00, $00
;	$04, $1B, $04, $04, 	$FA, $F8, $F8, $FA, 	$10, $10, $10, $10
	smpsVcAlgorithm     $07
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $03, $01
	smpsVcCoarseFreq    $02, $01, $00, $04
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1C, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $04, $04, $1B, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0A, $08, $08, $0A
	smpsVcTotalLevel    $10, $10, $10, $10

;	Voice $02
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

