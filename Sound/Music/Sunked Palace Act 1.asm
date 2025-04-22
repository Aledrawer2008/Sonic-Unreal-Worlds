Snd_TTZPU_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_TTZPU_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       Snd_TTZPU_DAC
	smpsHeaderFM        Snd_TTZPU_FM1,	$00, $06
	smpsHeaderFM        Snd_TTZPU_FM2,	$00, $10
	smpsHeaderFM        Snd_TTZPU_FM3,	$00, $29
	smpsHeaderFM        Snd_TTZPU_FM4,	$00, $46
	smpsHeaderFM        Snd_TTZPU_FM5,	$00, $08
	smpsHeaderPSG       Snd_TTZPU_PSG1,	$00, $06, $00, sTone_0A
	smpsHeaderPSG       Snd_TTZPU_PSG2,	$00, $00, $00, sTone_0A
	smpsHeaderPSG       Snd_TTZPU_PSG3,	$00, $04, $00, $00

Snd_TTZPU_Voices:
;	Voice $00
;	$2A
;	$50, $03, $11, $00, 	$90, $CE, $CD, $9B, 	$05, $0A, $09, $08
;	$00, $00, $12, $0C, 	$09, $FF, $50, $4A, 	$18, $27, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $05
	smpsVcCoarseFreq    $00, $01, $03, $00
	smpsVcRateScale     $02, $03, $03, $02
	smpsVcAttackRate    $1B, $0D, $0E, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $0A, $05
	smpsVcDecayRate2    $0C, $12, $00, $00
	smpsVcDecayLevel    $04, $05, $0F, $00
	smpsVcReleaseRate   $0A, $00, $0F, $09
	smpsVcTotalLevel    $00, $25, $27, $18

;	Voice $01
;	$04
;	$13, $01, $11, $01, 	$1F, $12, $1F, $1F, 	$05, $00, $05, $00
;	$00, $01, $00, $01, 	$39, $35, $36, $35, 	$16, $00, $17, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $01
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $05, $00, $05
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $03, $03, $03
	smpsVcReleaseRate   $05, $06, $05, $09
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $02
;	$2B
;	$5A, $01, $31, $01, 	$18, $1F, $3F, $1F, 	$0E, $11, $11, $0C
;	$03, $0C, $05, $01, 	$1C, $25, $36, $17, 	$0D, $2C, $15, $08
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $05
	smpsVcCoarseFreq    $01, $01, $01, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $3F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $11, $11, $0E
	smpsVcDecayRate2    $01, $05, $0C, $03
	smpsVcDecayLevel    $01, $03, $02, $01
	smpsVcReleaseRate   $07, $06, $05, $0C
	smpsVcTotalLevel    $08, $15, $2C, $0D

;	Voice $03
;	$38
;	$01, $02, $01, $04, 	$14, $14, $14, $14, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$16, $17, $18, $1A, 	$2F, $20, $27, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0A, $08, $07, $06
	smpsVcTotalLevel    $00, $27, $20, $2F

;	Voice $04
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $05
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

;	Voice $06
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

;	Voice $07
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

; DAC Data
Snd_TTZPU_DAC:
	smpsPan             panCenter, $00

Snd_TTZPU_Jump00:
	dc.b	nRst, $18
	dc.b	dClapS3, $30, dClapS3, $30, dClapS3, $30, dClapS3, $30, dClapS3, $30, dClapS3, $30
	dc.b	dClapS3, $18, dRideCymbal, $18, dClapS3, $0C, dKickExtraBass, $0C, dCrashCymbal, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $0C, dTightSnare, $08, dTightSnare, $04
	dc.b	dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $0C
	dc.b	dTightSnare, $08, dTightSnare, $04, dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $14, dKickExtraBass, $04, dTightSnare, $0C
	dc.b	dKickExtraBass, $0C, dHighTom, $04, dMidTomS3, $04, dMidTomS3, $04, dLowTomS3, $04, dMidTomS3, $04
	dc.b	dFloorTomS3, $04, dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04
	dc.b	dTightSnare, $0C, dTightSnare, $08, dTightSnare, $04, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08
	dc.b	dKickExtraBass, $0C, dKickExtraBass, $04, dMidTomS3, $08, dMidTomS3, $04, dLowTomS3, $08, dFloorTomS3, $04
	dc.b	dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $0C
	dc.b	dTightSnare, $08, dTightSnare, $04, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $14, dKickExtraBass, $04, dClapS3, $18
	dc.b	dHighTom, $04, dMidTomS3, $04, dMidTomS3, $04, dLowTomS3, $04, dMidTomS3, $04, dFloorTomS3, $04
	smpsSetTempoMod     $03
	dc.b	dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $0C
	dc.b	dTightSnare, $08, dTightSnare, $04, dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04
	dc.b	dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $14, dKickExtraBass, $04, dTightSnare, $0C
	dc.b	dKickExtraBass, $0C, dTightSnare, $08, dMidTomS3, $04, dLowTomS3, $0C, dCrashCymbal, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $18, dTightSnare, $18
	dc.b	dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $0C, dTightSnare, $08, dTightSnare, $04
	dc.b	dCrashCymbal, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $14, dKickExtraBass, $04, dTightSnare, $18, dKickExtraBass, $14
	dc.b	dKickExtraBass, $04, dTightSnare, $18, dTightSnare, $08, dKickExtraBass, $0C, dKickExtraBass, $04, dTightSnare, $18
	dc.b	dKickExtraBass, $18, dTightSnare, $18, dKickExtraBass, $18
	smpsJump            Snd_TTZPU_Jump00

; FM1 Data
Snd_TTZPU_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00

Snd_TTZPU_Jump05:
	dc.b	nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04
	dc.b	nF2, $08, nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A, nF2, $04
	dc.b	nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04
	dc.b	nF2, $08, nEb2, $04, nF2, $04, nRst, $10, nF2, $04, nG2, $08
	dc.b	nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08
	dc.b	nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A, nF2, $04, nG2, $08
	dc.b	nBb2, $02, nRst, $0A, nF2, $05, nRst, $13, nF2, $04, nC3, $06
	dc.b	nRst, $06, nC3, $08, nBb2, $08, nRst, $14, nG2, $08, nBb2, $02
	dc.b	nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04
	dc.b	nF2, $08, nEb2, $02, nRst, $0A, nF2, $04, nG2, $08, nBb2, $02
	dc.b	nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04
	dc.b	nF2, $04, nRst, $10, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A
	dc.b	nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $08
	dc.b	nEb2, $02, nRst, $0A, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A
	dc.b	nF2, $05, nRst, $13, nF2, $04, nC3, $06, nRst, $06, nC3, $08
	dc.b	nBb2, $08, nRst, $14, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05
	dc.b	nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $08, nEb2, $02
	dc.b	nRst, $0A, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05
	dc.b	nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $04, nRst, $10
	dc.b	nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F
	dc.b	nEb2, $04, nF2, $08, nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A
	dc.b	nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $13
	dc.b	nF2, $04, nC3, $06, nRst, $06, nC3, $08, nBb2, $08, nRst, $14
	dc.b	nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04
	dc.b	nF2, $08, nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A, nF2, $04
	dc.b	nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04
	dc.b	nF2, $08, nEb2, $04, nF2, $04, nRst, $10, nF2, $04, nG2, $08
	dc.b	nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08
	dc.b	nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A, nF2, $04, nG2, $08
	dc.b	nBb2, $02, nRst, $0A, nF2, $05, nRst, $13, nF2, $04, nC3, $06
	dc.b	nRst, $06, nC3, $08, nBb2, $08, nRst, $14, nG2, $08, nBb2, $02
	dc.b	nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04
	dc.b	nF2, $08, nEb2, $02, nRst, $0A, nF2, $04, nG2, $08, nBb2, $02
	dc.b	nRst, $0A, nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04
	dc.b	nF2, $04, nRst, $10, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A
	dc.b	nF2, $05, nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $08
	dc.b	nEb2, $02, nRst, $0A, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A
	dc.b	nF2, $05, nRst, $13, nF2, $04, nC3, $06, nRst, $06, nC3, $08
	dc.b	nBb2, $08, nRst, $14, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05
	dc.b	nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $08, nEb2, $02
	dc.b	nRst, $0A, nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05
	dc.b	nRst, $1F, nEb2, $04, nF2, $08, nEb2, $04, nF2, $04, nRst, $10
	dc.b	nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $1F
	dc.b	nEb2, $04, nF2, $08, nEb2, $04, nF2, $08, nEb2, $02, nRst, $0A
	dc.b	nF2, $04, nG2, $08, nBb2, $02, nRst, $0A, nF2, $05, nRst, $13
	dc.b	nF2, $04, nC3, $06, nRst, $06, nC3, $08, nBb2, $08, nRst, $14
	dc.b	nD3, $06, nRst, $06, nD3, $04, nRst, $08, nC3, $08, nD3, $02
	dc.b	nRst, $26, nG2, $09, nRst, $03, nA2, $08, nC3, $02, nRst, $02
	dc.b	nD3, $06, nRst, $06, nD3, $04, nRst, $08, nC3, $08, nD3, $02
	dc.b	nRst, $26, nG2, $18, nD3, $06, nRst, $06, nD3, $04, nRst, $08
	dc.b	nC3, $08, nD3, $02, nRst, $26, nG2, $09, nRst, $03, nA2, $08
	dc.b	nC3, $02, nRst, $02, nD3, $06, nRst, $06, nD3, $04, nRst, $08
	dc.b	nC3, $08, nD3, $02, nRst, $0E, nF3, $0C, nRst, $0C, nE3, $08
	dc.b	nRst, $10, nD3, $06, nRst, $06, nD3, $04, nRst, $08, nC3, $08
	dc.b	nD3, $02, nRst, $26, nG2, $09, nRst, $03, nA2, $08, nC3, $02
	dc.b	nRst, $02, nD3, $06, nRst, $06, nD3, $04, nRst, $08, nC3, $08
	dc.b	nD3, $02, nRst, $26, nG2, $18, nD3, $06, nRst, $06, nD3, $04
	dc.b	nRst, $08, nC3, $08, nD3, $02, nRst, $26, nG2, $09, nRst, $03
	dc.b	nA2, $08, nC3, $02, nRst, $02, nD3, $06, nRst, $06, nD3, $04
	dc.b	nRst, $08, nC3, $08, nD3, $02, nRst, $3E, nA2, $08, nC3, $02
	dc.b	nRst, $0A, nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04
	dc.b	nG2, $08, nF2, $02, nRst, $0A, nG2, $04, nA2, $08, nC3, $02
	dc.b	nRst, $0A, nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04
	dc.b	nG2, $04, nRst, $10, nG2, $04, nA2, $08, nC3, $02, nRst, $0A
	dc.b	nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $08
	dc.b	nF2, $02, nRst, $0A, nG2, $04, nA2, $08, nC3, $02, nRst, $0A
	dc.b	nG2, $05, nRst, $13, nG2, $04, nD3, $06, nRst, $06, nD3, $08
	dc.b	nC3, $08, nRst, $14, nA2, $08, nC3, $02, nRst, $0A, nG2, $05
	dc.b	nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $08, nF2, $02
	dc.b	nRst, $0A, nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05
	dc.b	nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $04, nRst, $10
	dc.b	nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F
	dc.b	nF2, $04, nG2, $08, nF2, $04, nG2, $08, nF2, $02, nRst, $0A
	dc.b	nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $13
	dc.b	nG2, $04, nD3, $06, nRst, $06, nD3, $08, nC3, $08, nRst, $14
	dc.b	nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F, nF2, $04
	dc.b	nG2, $08, nF2, $04, nG2, $08, nF2, $02, nRst, $0A, nG2, $04
	dc.b	nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F, nF2, $04
	dc.b	nG2, $08, nF2, $04, nG2, $04, nRst, $10, nG2, $04, nA2, $08
	dc.b	nC3, $02, nRst, $0A, nG2, $05, nRst, $1F, nF2, $04, nG2, $08
	dc.b	nF2, $04, nG2, $08, nF2, $02, nRst, $0A, nG2, $04, nA2, $08
	dc.b	nC3, $02, nRst, $0A, nG2, $05, nRst, $13, nG2, $04, nD3, $06
	dc.b	nRst, $06, nD3, $08, nC3, $08, nRst, $14, nA2, $08, nC3, $02
	dc.b	nRst, $0A, nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04
	dc.b	nG2, $08, nF2, $02, nRst, $0A, nG2, $04, nA2, $08, nC3, $02
	dc.b	nRst, $0A, nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04
	dc.b	nG2, $04, nRst, $10, nG2, $04, nA2, $08, nC3, $02, nRst, $0A
	dc.b	nG2, $05, nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $08
	dc.b	nF2, $02, nRst, $0A, nG2, $04, nA2, $08, nC3, $02, nRst, $0A
	dc.b	nG2, $05, nRst, $13, nG2, $04, nD3, $06, nRst, $06, nD3, $08
	dc.b	nC3, $08, nRst, $14, nA2, $08, nC3, $02, nRst, $0A, nG2, $05
	dc.b	nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $08, nF2, $02
	dc.b	nRst, $0A, nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05
	dc.b	nRst, $1F, nF2, $04, nG2, $08, nF2, $04, nG2, $04, nRst, $10
	dc.b	nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F
	dc.b	nF2, $04, nG2, $08, nF2, $04, nG2, $08, nF2, $02, nRst, $0A
	dc.b	nG2, $04, nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $13
	dc.b	nG2, $04, nD3, $06, nRst, $06, nD3, $08, nC3, $08, nRst, $14
	dc.b	nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F, nF2, $04
	dc.b	nG2, $08, nF2, $04, nG2, $08, nF2, $02, nRst, $0A, nG2, $04
	smpsAlterVol        $02
	dc.b	nA2, $08, nC3, $02, nRst, $0A, nG2, $05, nRst, $1F
	smpsAlterVol        $03
	dc.b	nF2, $04
	smpsAlterVol        $FF
	dc.b	nG2, $08
	smpsAlterVol        $01
	dc.b	nF2, $04, nG2, $04, nRst, $10
	smpsAlterVol        $FF
	dc.b	nG2, $04, nA2, $08
	smpsAlterVol        $FF
	dc.b	nC3, $02, nRst, $0A
	smpsAlterVol        $01
	dc.b	nG2, $05, nRst, $1F, nF2, $04
	smpsAlterVol        $FF
	dc.b	nG2, $08
	smpsAlterVol        $02
	dc.b	nF2, $04
	smpsAlterVol        $FB
	smpsJump            Snd_TTZPU_Jump05

; FM2 Data
Snd_TTZPU_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $04

Snd_TTZPU_Jump04:
	dc.b	nRst, $03
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	$55, $55, $55, $55, $55, $55, $55, $55, $55, nD4, $04, nRst
	dc.b	$08, nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nD4, $04, nD4, $04, nRst, $04, nD4, $04, nC4, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nBb4, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nBb3, $04, nRst, $04, nBb3, $04, nF3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nA4, $10, nRst, $08, nA4, $08, nRst, $02, nBb4, $01, nRst, $01
	dc.b	nG4, $0C, nF4, $0C, nD4, $0C, nC4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nD4, $04, nRst, $08, nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nD4, $04, nD4, $04, nRst, $04, nD4, $04, nC4, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30, nRst, $18
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nBb4, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nBb3, $04, nRst, $04, nBb3, $04, nF3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $10, nRst, $08, nD5, $08, nRst, $02, nD5, $01, nRst, $01
	dc.b	nC5, $0C, nBb4, $0C, nG4, $0C, nF4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nD4, $04, nRst, $08, nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nD4, $04, nD4, $04, nRst, $04, nD4, $04, nC4, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nBb4, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nBb3, $04, nRst, $04, nBb3, $04, nF3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $10, nRst, $08, nD5, $08, nRst, $02, nD5, $01, nRst, $01
	dc.b	nC5, $0C, nBb4, $0C, nG4, $0C, nF4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nD4, $04, nRst, $08, nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nD4, $04, nD4, $04, nRst, $04, nD4, $04, nC4, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nBb4, $30, nRst, $7F, $7F, $0A
	smpsAlterVol        $FD
	dc.b	nFs4, $0C, nG4, $08, nA4, $04, nFs4, $0C, nD4, $08, nC4, $0C
	dc.b	nD4, $24, nRst, $04
	smpsSetvoice        $04
	dc.b	$0C, nD4, $24, nRst, $0C
	smpsAlterVol        $03
	dc.b	nD6, $24, nRst, $0C, nFs4, $24, nRst, $7F, $11
	smpsSetvoice        $07
	smpsAlterVol        $FD
	dc.b	nFs4, $0C, nG4, $08, nA4, $04, nFs4, $0C, nD4, $08, nC4, $0C
	dc.b	nD4, $24, nRst, $04
	smpsSetvoice        $04
	dc.b	$0C, nD4, $24, nRst, $0C
	smpsAlterVol        $03
	dc.b	nD6, $24, nRst, $30
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsAlterVol        $03
	dc.b	nE3, $18, nRst, $30, nD3, $04, nE3, $10, nRst, $04, nE3, $18
	dc.b	nRst, $30, nD3, $04, nE3, $10, nRst, $04, nE3, $18, nRst, $18
	dc.b	nD3, $18, nRst, $18, nC3, $18, nB2, $18
	smpsAlterVol        $0D
	dc.b	nB2, $04
	smpsAlterVol        $F8
	dc.b	nA2, $08, nRst, $08, nG2, $1B, nRst, $01
	smpsAlterVol        $FB
	dc.b	nE3, $18, nRst, $30, nD3, $04, nE3, $10, nRst, $04, nE3, $18
	dc.b	nRst, $30, nD3, $04, nE3, $10, nRst, $04, nE3, $18, nRst, $18
	dc.b	nD3, $18, nRst, $18, nC3, $18, nB2, $18
	smpsAlterVol        $0D
	dc.b	nB2, $04
	smpsAlterVol        $F8
	dc.b	nA2, $08, nRst, $08, nG2, $1B, nRst, $01
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $F5
	dc.b	nE4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nE4, $04, nE4, $04, nRst, $04, nE4, $04, nD4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nC4, $04, nC4, $04, nRst, $04, nC4, $04, nG3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nB4, $10, nRst, $08, nB4, $08, nRst, $02, nC5, $01, nRst, $01
	dc.b	nA4, $0C, nG4, $0C, nE4, $0C, nD4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nE4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nE4, $04, nE4, $04, nRst, $04, nE4, $04, nD4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30, nRst, $18
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nC4, $04, nC4, $04, nRst, $04, nC4, $04, nG3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $10, nRst, $08, nE5, $08, nRst, $02, nE5, $01, nRst, $01
	dc.b	nD5, $0C, nC5, $0C, nA4, $0C, nG4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nE4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nE4, $04, nE4, $04, nRst, $04, nE4, $04, nD4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nC4, $04, nC4, $04, nRst, $04, nC4, $04, nG3, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $10, nRst, $08, nE5, $08, nRst, $02, nE5, $01, nRst, $01
	dc.b	nD5, $0C, nC5, $0C, nA4, $0C, nG4, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nE4, $04, nRst, $08, nE4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nE5, $30
	smpsSetvoice        $04
	dc.b	nRst, $08
	smpsAlterVol        $FD
	dc.b	nE4, $04, nE4, $04, nRst, $04, nE4, $04, nD4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nD5, $30
	smpsSetvoice        $04
	dc.b	nRst, $18
	smpsAlterVol        $FD
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nC5, $30
	smpsAlterVol        $FD
	smpsJump            Snd_TTZPU_Jump04

; FM3 Data
Snd_TTZPU_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $03

Snd_TTZPU_Jump03:
	smpsDetune          $FF
	dc.b	nRst, $03
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	$7F, $7F, $37
	smpsDetune          $E7
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	smpsAlterVol        $F8
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	smpsAlterVol        $FA
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	smpsAlterVol        $08
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	smpsAlterVol        $F8
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	smpsAlterVol        $08
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $2A
	smpsDetune          $E7
	dc.b	nFs3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02
	smpsDetune          $E4
	dc.b	smpsNoAttack, nG3, $01
	smpsDetune          $00
	dc.b	smpsNoAttack, $02, nRst, $12
	smpsSetvoice        $06
	dc.b	$08
	smpsAlterVol        $F9
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nBb4, $08
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nF4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08
	smpsAlterVol        $16
	dc.b	nF3, $04
	smpsAlterVol        $EE
	dc.b	nF4, $08
	smpsAlterVol        $12
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nA4, $08
	smpsAlterVol        $11
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nF4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nBb4, $08
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nF4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08
	smpsAlterVol        $16
	dc.b	nF3, $04
	smpsAlterVol        $EE
	dc.b	nF4, $08
	smpsAlterVol        $12
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nA4, $08
	smpsAlterVol        $11
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nF4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nBb4, $08
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nF4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08
	smpsAlterVol        $16
	dc.b	nF3, $04
	smpsAlterVol        $EE
	dc.b	nF4, $08
	smpsAlterVol        $12
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nA4, $08
	smpsAlterVol        $11
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nF4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nBb4, $08
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nF4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nF3, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08
	smpsAlterVol        $16
	dc.b	nF3, $04
	smpsAlterVol        $EE
	dc.b	nF4, $08
	smpsAlterVol        $12
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nA4, $08
	smpsAlterVol        $11
	dc.b	nF3, $04
	smpsAlterVol        $EF
	dc.b	nF4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nBb4, $08
	smpsAlterVol        $16
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $01
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $11
	dc.b	nG3, $04
	smpsAlterVol        $EF
	dc.b	nG4, $08, nRst, $04
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsAlterVol        $08
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nE4, $08, nRst, $04, nE4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nD4, $08, nRst, $04, nD4, $08, nRst, $34
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nE4, $08, nRst, $04, nE4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nD4, $08, nRst, $04, nD4, $08, nRst, $34
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nE4, $08, nRst, $04, nE4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nD4, $08, nRst, $04, nD4, $08, nRst, $34
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nE4, $08, nRst, $04, nE4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nD4, $08, nRst, $04, nD4, $08, nRst, $04
	smpsAlterVol        $09
	dc.b	nD4, $08, nRst, $10
	smpsSetvoice        $03
	dc.b	$18
	smpsPan             panRight, $00
	smpsAlterVol        $EA
	dc.b	nE4, $18, nRst, $30, nD4, $04, nE4, $10, nRst, $04, nE4, $18
	dc.b	nRst, $30, nD4, $04, nE4, $10, nRst, $04, nE4, $18, nRst, $18
	dc.b	nD4, $18, nRst, $18, nC4, $18, nB3, $18
	smpsAlterVol        $0C
	dc.b	nB3, $04
	smpsAlterVol        $F8
	dc.b	nA3, $08, nRst, $08, nG3, $1B, nRst, $01
	smpsAlterVol        $FC
	dc.b	nE4, $18, nRst, $30, nD4, $04, nE4, $10, nRst, $04, nE4, $18
	dc.b	nRst, $30, nD4, $04, nE4, $10, nRst, $04, nE4, $18, nRst, $18
	dc.b	nD4, $18, nRst, $18, nC4, $18, nB3, $18
	smpsAlterVol        $0C
	dc.b	nB3, $04
	smpsAlterVol        $F8
	dc.b	nA3, $08, nRst, $08, nG3, $1B, nRst, $01
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	dc.b	$08
	smpsAlterVol        $01
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $12
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nC5, $08
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08
	smpsAlterVol        $15
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nB4, $08
	smpsAlterVol        $10
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nG4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $12
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nC5, $08
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08
	smpsAlterVol        $15
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nB4, $08
	smpsAlterVol        $10
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nG4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $12
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nC5, $08
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08
	smpsAlterVol        $15
	dc.b	nG3, $04
	smpsAlterVol        $EE
	dc.b	nG4, $08
	smpsAlterVol        $12
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nB4, $08
	smpsAlterVol        $10
	dc.b	nG3, $04
	smpsAlterVol        $F0
	dc.b	nG4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nB4, $08
	smpsAlterVol        $02
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C, nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $04
	smpsAlterVol        $FB
	dc.b	nA4, $08, nRst, $04
	smpsAlterVol        $05
	dc.b	nA3, $04
	smpsAlterVol        $FB
	dc.b	nC5, $08
	smpsAlterVol        $15
	dc.b	nA3, $04
	smpsAlterVol        $EE
	dc.b	nA4, $08
	smpsAlterVol        $12
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nC5, $08
	smpsAlterVol        $10
	dc.b	nA3, $04
	smpsAlterVol        $F0
	dc.b	nA4, $08, nRst, $0C
	smpsAlterVol        $05
	dc.b	nG3, $04
	smpsAlterVol        $F9
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $0C
	dc.b	nG3, $04, nRst, $04
	smpsAlterVol        $F8
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $08
	dc.b	nG3, $04
	smpsAlterVol        $FD
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $FF
	dc.b	nG4, $08, nRst, $04
	smpsAlterVol        $02
	dc.b	nB4, $08, nRst, $04
	smpsAlterVol        $02
	dc.b	nG4, $08, nRst, $0C
	smpsAlterVol        $FD
	dc.b	nA3, $04
	smpsAlterVol        $FE
	dc.b	nC5, $08, nRst, $0C
	smpsAlterVol        $FC
	dc.b	nB4, $08, nRst, $20
	smpsAlterVol        $0C
	smpsJump            Snd_TTZPU_Jump03

; FM4 Data
Snd_TTZPU_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $01

Snd_TTZPU_Jump02:
	dc.b	nG3, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	smpsNoAttack, $05, nBb3, $04, nRst, $08, nF3, $05, nRst, $1F, nEb3, $04
	dc.b	nF3, $08, nEb3, $04, nF3, $08, nEb3, $04, nRst, $08, nF3, $04
	dc.b	nG3, $08, nBb3, $04, nRst, $08, nF3, $05, nRst, $1F, nEb3, $04
	dc.b	nF3, $08, nEb3, $04, nF3, $08, nRst, $0C, nF3, $04, nG3, $08
	dc.b	nBb3, $04, nRst, $08, nF3, $05, nRst, $1F, nEb3, $04, nF3, $08
	dc.b	nEb3, $04, nF3, $08, nEb3, $04, nRst, $08, nF3, $04, nG3, $08
	dc.b	nBb3, $04, nRst, $08, nF3, $05, nRst, $13, nF3, $04, nC4, $08
	dc.b	nRst, $04, nC4, $08, nBb3, $0C, nRst, $10
	smpsSetvoice        $05
	smpsAlterVol        $DA
	dc.b	nG5, $04, nBb5, $10, nG5, $03, nBb5, $03, nRst, $0A, nG5, $03
	dc.b	nBb5, $07, nRst, $0A, nG5, $01, nBb5, $04, nRst, $0B, nG5, $03
	dc.b	nBb5, $07, nRst, $02, nG5, $01, nBb5, $08, nRst, $03, nF5, $04
	dc.b	nA5, $10, nF5, $03, nA5, $03, nRst, $0A, nF5, $03, nA5, $07
	dc.b	nRst, $0A, nF5, $01, nA5, $04, nRst, $0B, nF5, $03, nA5, $07
	dc.b	nRst, $02, nF5, $01, nA5, $08, nRst, $03, nEb5, $04, nBb5, $10
	dc.b	nEb5, $03, nBb5, $03, nRst, $0A, nEb5, $03, nBb5, $07, nRst, $0A
	dc.b	nEb5, $01, nBb5, $04, nRst, $0B, nEb5, $03, nBb5, $07, nRst, $02
	dc.b	nEb5, $01, nBb5, $08, nRst, $03, nF5, $04, nBb5, $10, nF5, $03
	dc.b	nBb5, $03, nRst, $0A, nF5, $03, nBb5, $07, nRst, $0A, nF5, $01
	dc.b	nBb5, $04, nRst, $0B, nF5, $03, nBb5, $07, nRst, $02, nF5, $01
	dc.b	nBb5, $08, nRst, $03, nG5, $04, nBb5, $10, nG5, $03, nBb5, $03
	dc.b	nRst, $0A, nG5, $03, nBb5, $07, nRst, $0A, nG5, $01, nBb5, $04
	dc.b	nRst, $0B, nG5, $03, nBb5, $07, nRst, $02, nG5, $01, nBb5, $08
	dc.b	nRst, $03, nF5, $04, nA5, $10, nF5, $03, nA5, $03, nRst, $0A
	dc.b	nF5, $03, nA5, $07, nRst, $0A, nF5, $01, nA5, $04, nRst, $0B
	dc.b	nF5, $03, nA5, $07, nRst, $02, nF5, $01, nA5, $08, nRst, $03
	dc.b	nEb5, $04, nBb5, $10, nEb5, $03, nBb5, $03, nRst, $0A, nEb5, $03
	dc.b	nBb5, $07, nRst, $0A, nEb5, $01, nBb5, $04, nRst, $0B, nEb5, $03
	dc.b	nBb5, $07, nRst, $02, nEb5, $01, nBb5, $08, nRst, $03, nF5, $04
	dc.b	nBb5, $10, nF5, $03, nBb5, $03, nRst, $0A, nF5, $03, nBb5, $07
	dc.b	nRst, $0A, nF5, $01, nBb5, $04, nRst, $0B, nF5, $03, nBb5, $07
	dc.b	nRst, $02, nF5, $01, nBb5, $08, nRst, $03, nG5, $04, nBb5, $10
	dc.b	nG5, $03, nBb5, $03, nRst, $0A, nG5, $03, nBb5, $07, nRst, $0A
	dc.b	nG5, $01, nBb5, $04, nRst, $0B, nG5, $03, nBb5, $07, nRst, $02
	dc.b	nG5, $01, nBb5, $08, nRst, $03, nF5, $04, nA5, $10, nF5, $03
	dc.b	nA5, $03, nRst, $0A, nF5, $03, nA5, $07, nRst, $0A, nF5, $01
	dc.b	nA5, $04, nRst, $0B, nF5, $03, nA5, $07, nRst, $02, nF5, $01
	dc.b	nA5, $08, nRst, $03, nEb5, $04, nBb5, $10, nEb5, $03, nBb5, $03
	dc.b	nRst, $0A, nEb5, $03, nBb5, $07, nRst, $0A, nEb5, $01, nBb5, $04
	dc.b	nRst, $0B, nEb5, $03, nBb5, $07, nRst, $02, nEb5, $01, nBb5, $08
	dc.b	nRst, $03, nF5, $04, nBb5, $10, nF5, $03, nBb5, $03, nRst, $0A
	dc.b	nF5, $03, nBb5, $07, nRst, $0A, nF5, $01, nBb5, $04, nRst, $0B
	dc.b	nF5, $03, nBb5, $07, nRst, $02, nF5, $01, nBb5, $08, nRst, $03
	dc.b	nG5, $04, nBb5, $10, nG5, $03, nBb5, $03, nRst, $0A, nG5, $03
	dc.b	nBb5, $07, nRst, $0A, nG5, $01, nBb5, $04, nRst, $0B, nG5, $03
	dc.b	nBb5, $07, nRst, $02, nG5, $01, nBb5, $08, nRst, $03, nF5, $04
	dc.b	nA5, $10, nF5, $03, nA5, $03, nRst, $0A, nF5, $03, nA5, $07
	dc.b	nRst, $0A, nF5, $01, nA5, $04, nRst, $0B, nF5, $03, nA5, $07
	dc.b	nRst, $02, nF5, $01, nA5, $08, nRst, $03, nEb5, $04, nBb5, $10
	dc.b	nEb5, $03, nBb5, $03, nRst, $0A, nEb5, $03, nBb5, $07, nRst, $0A
	dc.b	nEb5, $01, nBb5, $04, nRst, $0B, nEb5, $03, nBb5, $07, nRst, $02
	dc.b	nEb5, $01, nBb5, $08, nRst, $03, nF5, $04, nBb5, $10, nF5, $03
	dc.b	nBb5, $03, nRst, $0A, nF5, $03, nBb5, $07, nRst, $0A, nF5, $01
	dc.b	nBb5, $04, nRst, $0B, nF5, $03, nBb5, $07, nRst, $02, nF5, $01
	dc.b	nBb5, $08, nRst, $03, nG5, $04, nBb5, $10, nG5, $03, nBb5, $03
	dc.b	nRst, $0A, nG5, $03, nBb5, $07, nRst, $0A, nG5, $01, nBb5, $04
	dc.b	nRst, $0B, nG5, $03, nBb5, $07, nRst, $02, nG5, $01, nBb5, $08
	dc.b	nRst, $03, nF5, $04, nA5, $10, nF5, $03, nA5, $03, nRst, $0A
	dc.b	nF5, $03, nA5, $07, nRst, $0A, nF5, $01, nA5, $04, nRst, $0B
	dc.b	nF5, $03, nA5, $07, nRst, $02, nF5, $01, nA5, $08, nRst, $03
	dc.b	nEb5, $04, nBb5, $10, nEb5, $03, nBb5, $03, nRst, $0A, nEb5, $03
	dc.b	nBb5, $07, nRst, $0A, nEb5, $01, nBb5, $04, nRst, $0B, nEb5, $03
	dc.b	nBb5, $07, nRst, $02, nEb5, $01, nBb5, $08, nRst, $03, nF5, $04
	dc.b	nBb5, $10, nF5, $03, nBb5, $03, nRst, $0A, nF5, $03, nBb5, $07
	dc.b	nRst, $0A, nF5, $01, nBb5, $04, nRst, $0B, nF5, $03, nBb5, $07
	dc.b	nRst, $02, nF5, $01, nBb5, $08, nRst, $03
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsAlterVol        $03
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nG4, $08, nRst, $04, nG4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $34
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nG4, $08, nRst, $04, nG4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $34
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nG4, $08, nRst, $04, nG4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $34
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $08, nRst, $04
	dc.b	nG4, $08, nRst, $04, nG4, $08, nRst, $04, nFs4, $08, nRst, $04
	dc.b	nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04
	smpsAlterVol        $0A
	dc.b	nFs4, $08, nRst, $10
	smpsSetvoice        $03
	dc.b	$18
	smpsPan             panCenter, $00
	dc.b	$60, $60, $60, $60, $60, $60, $60, $60
	smpsSetvoice        $05
	smpsAlterVol        $F3
	dc.b	nA5, $04, nC6, $10, nA5, $03, nC6, $03, nRst, $0A, nA5, $03
	dc.b	nC6, $07, nRst, $0A, nA5, $01, nC6, $04, nRst, $0B, nA5, $03
	dc.b	nC6, $07, nRst, $02, nA5, $01, nC6, $08, nRst, $03, nG5, $04
	dc.b	nB5, $10, nG5, $03, nB5, $03, nRst, $0A, nG5, $03, nB5, $07
	dc.b	nRst, $0A, nG5, $01, nB5, $04, nRst, $0B, nG5, $03, nB5, $07
	dc.b	nRst, $02, nG5, $01, nB5, $08, nRst, $03, nF5, $04, nC6, $10
	dc.b	nF5, $03, nC6, $03, nRst, $0A, nF5, $03, nC6, $07, nRst, $0A
	dc.b	nF5, $01, nC6, $04, nRst, $0B, nF5, $03, nC6, $07, nRst, $02
	dc.b	nF5, $01, nC6, $08, nRst, $03, nG5, $04, nC6, $10, nG5, $03
	dc.b	nC6, $03, nRst, $0A, nG5, $03, nC6, $07, nRst, $0A, nG5, $01
	dc.b	nC6, $04, nRst, $0B, nG5, $03, nC6, $07, nRst, $02, nG5, $01
	dc.b	nC6, $08, nRst, $03, nA5, $04, nC6, $10, nA5, $03, nC6, $03
	dc.b	nRst, $0A, nA5, $03, nC6, $07, nRst, $0A, nA5, $01, nC6, $04
	dc.b	nRst, $0B, nA5, $03, nC6, $07, nRst, $02, nA5, $01, nC6, $08
	dc.b	nRst, $03, nG5, $04, nB5, $10, nG5, $03, nB5, $03, nRst, $0A
	dc.b	nG5, $03, nB5, $07, nRst, $0A, nG5, $01, nB5, $04, nRst, $0B
	dc.b	nG5, $03, nB5, $07, nRst, $02, nG5, $01, nB5, $08, nRst, $03
	dc.b	nF5, $04, nC6, $10, nF5, $03, nC6, $03, nRst, $0A, nF5, $03
	dc.b	nC6, $07, nRst, $0A, nF5, $01, nC6, $04, nRst, $0B, nF5, $03
	dc.b	nC6, $07, nRst, $02, nF5, $01, nC6, $08, nRst, $03, nG5, $04
	dc.b	nC6, $10, nG5, $03, nC6, $03, nRst, $0A, nG5, $03, nC6, $07
	dc.b	nRst, $0A, nG5, $01, nC6, $04, nRst, $0B, nG5, $03, nC6, $07
	dc.b	nRst, $02, nG5, $01, nC6, $08, nRst, $03, nA5, $04, nC6, $10
	dc.b	nA5, $03, nC6, $03, nRst, $0A, nA5, $03, nC6, $07, nRst, $0A
	dc.b	nA5, $01, nC6, $04, nRst, $0B, nA5, $03, nC6, $07, nRst, $02
	dc.b	nA5, $01, nC6, $08, nRst, $03, nG5, $04, nB5, $10, nG5, $03
	dc.b	nB5, $03, nRst, $0A, nG5, $03, nB5, $07, nRst, $0A, nG5, $01
	dc.b	nB5, $04, nRst, $0B, nG5, $03, nB5, $07, nRst, $02, nG5, $01
	dc.b	nB5, $08, nRst, $03, nF5, $04, nC6, $10, nF5, $03, nC6, $03
	dc.b	nRst, $0A, nF5, $03, nC6, $07, nRst, $0A, nF5, $01, nC6, $04
	dc.b	nRst, $0B, nF5, $03, nC6, $07, nRst, $02, nF5, $01, nC6, $08
	dc.b	nRst, $03, nG5, $04, nC6, $10, nG5, $03, nC6, $03, nRst, $0A
	dc.b	nG5, $03, nC6, $07, nRst, $0A, nG5, $01, nC6, $04, nRst, $0B
	dc.b	nG5, $03, nC6, $07, nRst, $02, nG5, $01, nC6, $08, nRst, $03
	dc.b	nA5, $04, nC6, $10, nA5, $03, nC6, $03, nRst, $0A, nA5, $03
	dc.b	nC6, $07, nRst, $0A, nA5, $01, nC6, $04, nRst, $0B, nA5, $03
	dc.b	nC6, $07, nRst, $02, nA5, $01, nC6, $08, nRst, $03
	smpsAlterVol        $04
	dc.b	nG5, $04, nB5, $10, nG5, $03, nB5, $03, nRst, $0A, nG5, $03
	dc.b	nB5, $07, nRst, $0A
	smpsAlterVol        $FF
	dc.b	nG5, $01, nB5, $04, nRst, $0B
	smpsAlterVol        $01
	dc.b	nG5, $03, nB5, $07, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG5, $01
	smpsAlterVol        $01
	dc.b	nB5, $08, nRst, $03, nF5, $04, nC6, $10
	smpsAlterVol        $FF
	dc.b	nF5, $03, nC6, $03, nRst, $0A
	smpsAlterVol        $01
	dc.b	nF5, $03
	smpsAlterVol        $FF
	dc.b	nC6, $07, nRst, $1A
	smpsAlterVol        $23
	smpsJump            Snd_TTZPU_Jump02

; FM5 Data
Snd_TTZPU_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02

Snd_TTZPU_Jump01:
	dc.b	nRst, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	$7F, $7F, $7F, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nF3, $04, nD3
	dc.b	$08, nRst, $04, nG3, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nG3, $08, nF3, $04, nD3, $08, nRst, $04, nG3
	dc.b	$08, nG3, $04, nRst, $08, nF3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nG3, $04, nRst, $08, nF3, $04, nG3
	dc.b	$08, nF3, $04, nD3, $08, nRst, $7F, $15
	smpsSetvoice        $07
	smpsAlterVol        $0C
	dc.b	nCs4, $0C, nD4, $08, nD4, $04, nCs4, $0C, nA3, $08, nA3, $0C
	dc.b	nA3, $24, nRst, $7F, $7F, $26, nCs4, $0C, nD4, $08, nD4, $04
	dc.b	nCs4, $0C, nA3, $08, nA3, $0C, nA3, $24, nRst, $04
	smpsSetvoice        $02
	dc.b	$06, $7F, $0B
	smpsAlterVol        $FB
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08
	dc.b	nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08
	dc.b	nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08
	dc.b	nA3, $04, nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08
	dc.b	nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08
	dc.b	nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08
	dc.b	nRst, $04
	smpsAlterVol        $FF
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08
	dc.b	nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08
	smpsAlterVol        $FF
	dc.b	nA3, $04, nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b	nG3, $04, nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08
	dc.b	nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04, nRst, $08
	dc.b	nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08
	dc.b	nG3, $04, nE3, $08, nRst, $04
	smpsAlterVol        $FF
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04
	dc.b	nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08, nRst, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04
	dc.b	nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08, nRst, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04
	dc.b	nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08, nRst, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nG3, $04
	dc.b	nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nA3, $08, nG3, $04, nE3, $08, nRst, $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nA3, $08, nA3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04
	dc.b	nA3, $08, nG3, $04, nE3, $08, nRst, $04
	smpsAlterVol        $03
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04
	smpsAlterVol        $04
	dc.b	nA3, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	smpsAlterVol        $FF
	dc.b	nA3, $04, nRst, $08, nG3, $04
	smpsAlterVol        $01
	dc.b	nA3, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04
	smpsAlterVol        $01
	dc.b	nE3, $08, nRst, $04, nA3, $08, nA3, $04, nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nA3, $08
	smpsAlterVol        $01
	dc.b	nA3, $04, nRst, $08
	smpsAlterVol        $FF
	dc.b	nG3, $04, nRst, $18
	smpsAlterVol        $FA
	smpsJump            Snd_TTZPU_Jump01

; PSG1 Data
Snd_TTZPU_PSG1:
	dc.b	nRst, $4E, $4E, $4E, $4E, $4E, $4E, $4E, $4E, $4E, $4E, nG2
	dc.b	$30, nBb1, $18, nD2, $18, nF2, $30, nA1, $18, nC2, $18, nEb2
	dc.b	$30, nG1, $18, nBb1, $18, nC2, $18, nD2, $0C, nC2, $0C, nD2
	dc.b	$0C, nC2, $18, nRst, $0C, nG2, $30, nBb1, $18, nD2, $18, nF2
	dc.b	$30, nA1, $18, nC2, $18, nEb2, $30, nG1, $18, nBb1, $18, nC2
	dc.b	$18, nD2, $0C, nC2, $0C, nD2, $0C, nC2, $18, nRst, $0C
	smpsPSGAlterVol     $FC
	dc.b	nG3, $30, nBb2, $18, nD3, $18, nF3, $30, nA2, $18, nC3, $18
	dc.b	nEb3, $30, nG2, $18, nBb2, $18, nC3, $18, nD3, $0C, nC3, $0C
	dc.b	nD3, $0C, nC3, $18, nRst, $0C, nG3, $30, nBb2, $18, nD3, $18
	dc.b	nF3, $30, nA2, $18, nC3, $18, nEb3, $30, nG2, $18, nBb2, $18
	dc.b	nC3, $18, nD3, $0C, nC3, $0C, nD3, $0C, nC3, $0C, nBb2, $0C
	smpsPSGAlterVol     $07
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $34
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $34
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $34
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $04
	dc.b	nD3, $08, nRst, $04, nD3, $08, nRst, $04, nD3, $08, nRst, $04
	smpsPSGAlterVol     $03
	dc.b	nD3, $08, nRst, $52, $52, $52, $52, $52, $52, $52, $52, $52
	dc.b	$52
	smpsPSGAlterVol     $FA
	dc.b	nA2, $30, nC2, $18, nE2, $18, nG2, $30, nB1, $18, nD2, $18
	dc.b	nF2, $30, nA1, $18, nC2, $18, nD2, $18, nE2, $0C, nD2, $0C
	dc.b	nE2, $0C, nD2, $18, nRst, $0C, nA2, $30, nC2, $18, nE2, $18
	dc.b	nG2, $30, nB1, $18, nD2, $18, nF2, $30, nA1, $18, nC2, $18
	dc.b	nD2, $18, nE2, $0C, nD2, $0C, nE2, $0C, nD2, $18, nRst, $0C
	smpsPSGAlterVol     $FC
	dc.b	nA3, $30, nC3, $18, nE3, $18, nG3, $30, nB2, $18, nD3, $18
	dc.b	nF3, $30, nA2, $18, nC3, $18, nD3, $18, nE3, $0C, nD3, $0C
	dc.b	nE3, $0C, nD3, $18, nRst, $0C, nA3, $30, nC3, $18, nE3, $18
	smpsPSGAlterVol     $02
	dc.b	nG3, $30
	smpsPSGAlterVol     $FF
	dc.b	nB2, $18, nD3, $18, nF3, $30, nRst, $0C
	smpsPSGAlterVol     $03
	smpsJump            Snd_TTZPU_PSG1

; PSG2 Data
Snd_TTZPU_PSG2:
	dc.b	nRst, $60, $60, $60, $60, $60, $60, $60, $60, nG1, $04, nRst
	dc.b	$08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nG1, $08, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $04, nRst, $08, nEb1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nEb2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $08, nRst, $04, nBb0, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nD2, $10, nRst, $08, nD2, $08, nRst, $02, nD2, $01, nRst, $01
	dc.b	nC2, $0C, nBb1, $0C, nG1, $0C, nF1, $0C
	smpsPSGAlterVol     $FF
	dc.b	nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nG1, $08, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $04, nRst, $08, nEb1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nEb2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $08, nRst, $04, nBb0, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nA2, $10, nRst, $08, nA2, $08, nRst, $02, nBb2, $01, nRst, $01
	dc.b	nG2, $0C, nF2, $0C, nD2, $0C, nC2, $0C
	smpsPSGAlterVol     $FF
	dc.b	nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nG1, $08, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $04, nRst, $08, nEb1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nEb2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $08, nRst, $04, nBb0, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nA2, $10, nRst, $08, nA2, $08, nRst, $02, nBb2, $01, nRst, $01
	dc.b	nG2, $0C, nF2, $0C, nD2, $0C, nC2, $0C
	smpsPSGAlterVol     $FF
	dc.b	nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nG1, $08, nRst, $04, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nEb1, $04, nRst, $08, nEb1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nEb2, $30, nRst, $7F, $7F, $0A
	smpsPSGAlterVol     $01
	dc.b	nA1, $0C, nBb1, $08, nC2, $04, nA1, $0C, nFs1, $08, nFs1, $0C
	dc.b	nFs1, $24, nRst, $10
	smpsPSGAlterVol     $FD
	dc.b	nD1, $24, nRst, $0C
	smpsPSGAlterVol     $01
	dc.b	nD3, $24, nRst, $0C, nFs1, $24, nRst, $7F, $11
	smpsPSGAlterVol     $02
	dc.b	nA1, $0C, nBb1, $08, nC2, $04, nA1, $0C, nFs1, $08, nFs1, $0C
	dc.b	nFs1, $24, nRst, $10
	smpsPSGAlterVol     $FD
	dc.b	nD1, $24, nRst, $0C
	smpsPSGAlterVol     $01
	dc.b	nD3, $24, nRst, $66, $66, $66, $66, $66, $66, $66, $66
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nA1, $08, nRst, $04, nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nF1, $08, nRst, $04, nC1, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nE2, $10, nRst, $08, nE2, $08, nRst, $02, nE2, $01, nRst, $01
	dc.b	nD2, $0C, nC2, $0C, nA1, $0C, nG1, $0C
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nA1, $08, nRst, $04, nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nF1, $08, nRst, $04, nC1, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nA2, $10, nRst, $08, nA2, $08, nRst, $02, nB2, $01, nRst, $01
	dc.b	nG2, $0C, nE2, $0C, nD2, $0C, nC2, $0C
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nA1, $08, nRst, $04, nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nG2, $30, nRst, $18
	smpsPSGAlterVol     $FE
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nF2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nF1, $08, nRst, $04, nC1, $04, nRst, $08
	smpsPSGAlterVol     $01
	dc.b	nB2, $10, nRst, $08, nB2, $08, nRst, $02, nC3, $01, nRst, $01
	dc.b	nA2, $0C, nG2, $0C, nE2, $0C, nD2, $0C
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04, nRst, $08, nA1, $04, nRst, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $30, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nA1, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nG1, $04, nRst, $08, nG1, $04, nRst, $08
	smpsPSGAlterVol     $04
	dc.b	nG2, $30, nRst, $18
	smpsPSGAlterVol     $FB
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nC2, $30
	smpsJump            Snd_TTZPU_PSG2

; PSG3 Data
Snd_TTZPU_PSG3:
	smpsPSGform         $E7

Snd_TTZPU_Jump06:
	smpsPSGvoice        sTone_02
	dc.b	nA5, $30, nA5, $30, nA5, $30
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $04
	dc.b	nA5, $30, nA5, $30, nA5, $30
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $04
	dc.b	nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04, nA5, $04
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FF
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FC
	smpsPSGAlterVol     $01
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FF
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FC
	smpsPSGAlterVol     $01
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $3C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C, nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $04
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $08
	smpsPSGAlterVol     $FF
	dc.b	nA5, $04
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FC
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04, nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	nA5, $08
	smpsPSGAlterVol     $01
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGAlterVol     $FD
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $01
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $07
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $FA
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $04
	smpsPSGAlterVol     $02
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_08
	dc.b	nA5, $0C
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $07
	dc.b	nA5, $08
	smpsPSGAlterVol     $03
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $F8
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $08
	dc.b	nA5, $04
	smpsPSGAlterVol     $FA
	dc.b	nA5, $04
	smpsPSGAlterVol     $06
	dc.b	nA5, $04
	smpsPSGAlterVol     $FA
	dc.b	nA5, $04
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $03
	dc.b	nA5, $18
	smpsPSGAlterVol     $03
	dc.b	nA5, $08
	smpsPSGvoice        sTone_01
	dc.b	nA5, $1C
	smpsPSGAlterVol     $F5
	smpsJump            Snd_TTZPU_Jump06