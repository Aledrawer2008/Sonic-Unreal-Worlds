Sega_Sound_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Sega_Sound_Voices
	smpsHeaderChan      $03, $00
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       Sega_Sound_DAC
	smpsHeaderFM        Sega_Sound_FM1,	$00, $08
	smpsHeaderFM        Sega_Sound_FM2,	$00, $08

; DAC Data
Sega_Sound_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnareAlt, $0C, dSnareAlt, $30
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
Sega_Sound_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsAlterVol        $06
	dc.b	nG4, $0C, nE4, $18, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
Sega_Sound_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsAlterVol        $06
	dc.b	nE3, $0C, nC3, $18, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

Sega_Sound_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

