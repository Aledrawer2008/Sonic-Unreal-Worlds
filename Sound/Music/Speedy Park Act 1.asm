Speedy_Park1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Speedy_Park1_Voices
	smpsHeaderChan      $06, $00
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       Speedy_Park1_DAC
	smpsHeaderFM        Speedy_Park1_FM1,	$00, $08
	smpsHeaderFM        Speedy_Park1_FM2,	$00, $16
	smpsHeaderFM        Speedy_Park1_FM3,	$00, $0A
	smpsHeaderFM        Speedy_Park1_FM4,	$00, $12
	smpsHeaderFM        Speedy_Park1_FM5,	$00, $12

; DAC Data
Speedy_Park1_DAC:
	dc.b	nRst, $7F, $7F, $7F, $04, dKickAlt

Speedy_Park1_Loop00:
	dc.b	$06, dSnareAlt, dKickAlt, $03, $03, dSnareAlt, $06, dKickAlt, dSnareAlt, $09, dKickAlt, $03
	dc.b	dSnareAlt, dKickAlt
	smpsLoop            $00, $08, Speedy_Park1_Loop00
	dc.b	dKickAlt

Speedy_Park1_Loop01:
	dc.b	$06, dSnareAlt, $09, dKickAlt, $03, dSnareAlt, dKickAlt
	smpsLoop            $00, $0C, Speedy_Park1_Loop01
	dc.b	dKickAlt, $06, dSnareAlt, $12
	smpsJump            Speedy_Park1_DAC

; FM1 Data
Speedy_Park1_FM1:
	smpsSetvoice        $00

Speedy_Park1_Loop1E:
	smpsPan             panLeft, $00
	dc.b	nC3, $18, nF3, nEb3, nF3, $0F, nD3, $06, nCs3, $03, nC3, $18
	dc.b	nF3, nBb2, nC3, $0F, $03, $03, nBb2
	smpsLoop            $00, $02, Speedy_Park1_Loop1E

Speedy_Park1_Loop1F:
	dc.b	nRst, $01, nC3, $02
	smpsLoop            $00, $05, Speedy_Park1_Loop1F
	dc.b	nRst, $01, nD3, $02, nRst, $01, nBb2, $02, nRst, $01, nG2, $05

Speedy_Park1_Loop20:
	dc.b	nRst, $01, nG2, $02
	smpsLoop            $00, $07, Speedy_Park1_Loop20
	smpsLoop            $01, $02, Speedy_Park1_Loop1F

Speedy_Park1_Loop21:
	dc.b	nRst, $01, nCs3, $02
	smpsLoop            $00, $05, Speedy_Park1_Loop21
	dc.b	nRst, $01, nEb3, $02, nRst, $01, nCs3, $02, nRst, $01, nAb2, $05

Speedy_Park1_Loop22:
	dc.b	nRst, $01, nAb2, $02
	smpsLoop            $00, $07, Speedy_Park1_Loop22
	smpsLoop            $01, $02, Speedy_Park1_Loop21
	smpsLoop            $02, $02, Speedy_Park1_Loop1F
	dc.b	nRst, $01

Speedy_Park1_Loop24:
	dc.b	nC3, $03, $03, $03, $03, $03, nD3, nBb2, nG2, $06

Speedy_Park1_Loop23:
	dc.b	$03
	smpsLoop            $00, $07, Speedy_Park1_Loop23
	smpsLoop            $01, $02, Speedy_Park1_Loop24
	dc.b	nB2, nB2

Speedy_Park1_Loop25:
	dc.b	nB2, nB2, nB2, nCs3, nB2, nFs2, $06, nB2, $03
	smpsLoop            $00, $03, Speedy_Park1_Loop25
	dc.b	$03, $03, $03, nCs3, nB2, nFs2, nEb2, nEb2, nEb2, nEb2, nE2, nE2
	dc.b	nE2, nE2

Speedy_Park1_Loop26:
	dc.b	nB2
	smpsLoop            $00, $08, Speedy_Park1_Loop26
	dc.b	nFs3, nFs3, nFs3, nFs3, nCs3, nCs3, nCs3, nCs3

Speedy_Park1_Loop27:
	dc.b	nB2
	smpsLoop            $00, $0C, Speedy_Park1_Loop27
	dc.b	nC3, nC3, nC3, nC3
	smpsJump            Speedy_Park1_FM1

; FM2 Data
Speedy_Park1_FM2:
	smpsSetvoice        $01

Speedy_Park1_Loop1D:
	smpsPan             panCenter, $00
	dc.b	nC4

Speedy_Park1_Loop18:
	dc.b	$03
	smpsLoop            $00, $0F, Speedy_Park1_Loop18

Speedy_Park1_Loop19:
	dc.b	nEb4
	smpsLoop            $00, $08, Speedy_Park1_Loop19

Speedy_Park1_Loop1A:
	dc.b	nC4
	smpsLoop            $00, $18, Speedy_Park1_Loop1A

Speedy_Park1_Loop1B:
	dc.b	nEb4
	smpsLoop            $00, $08, Speedy_Park1_Loop1B

Speedy_Park1_Loop1C:
	dc.b	nC4
	smpsLoop            $00, $09, Speedy_Park1_Loop1C
	smpsLoop            $01, $02, Speedy_Park1_Loop1D
	dc.b	nRst, $01, $7F, $41, $7F, $7F, $7F, $72
	smpsSetvoice        $02
	smpsAlterVol        $F2
	dc.b	nEb4, $03, nCs4, nC4, $01, nRst, nC4
	smpsAlterVol        $0E
	smpsJump            Speedy_Park1_FM2

; FM3 Data
Speedy_Park1_FM3:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nC4, $18, nF4, nEb4, nF4, $0F, nD4, $06, nCs4, $03, nC4, $18
	dc.b	nF4, nBb3, nC4, $0F
	smpsAlterVol        $FE
	dc.b	$03, $03, nBb2
	smpsPan             panRight, $00
	smpsAlterVol        $02
	dc.b	nC4, $18, nF4, nEb4, nF4, $0F, nD4, $06, nCs4, $03, nC4, $18
	dc.b	nF4, nBb3, nC4, $0F
	smpsAlterVol        $FE
	dc.b	$03, $03, nBb2, nRst, $01
	smpsSetvoice        $02

Speedy_Park1_Loop17:
	smpsPan             panCenter, $00
	dc.b	nF6, $08, nRst, $01, nEb6, $08, nRst, $01, nD6, $05, nRst, $01
	dc.b	nC6, $08, nRst, $01, nD6, $08, nRst, $01, nEb6, $05, nRst, $01
	dc.b	nF6, $08, nRst, $01, nEb6, $08, nRst, $01, nD6, $05, nRst, $01
	dc.b	nC6, $0B, nRst, $07, nC6, $01, nD6, nRst, nEb6, nF6, nRst, nG6
	dc.b	$08, nRst, $01, nF6, $08, nRst, $01, nBb6, $05, nRst, $01, nAb6
	dc.b	$08, nRst, $01, nG6, $08, nRst, $01, nF6, $05, nRst, $01, nG6
	dc.b	$08, nRst, $01, nF6, $08, nRst, $01, nEb6, $05, nRst, $01, nD6
	dc.b	$08, nRst, $01, nC6, $08, nRst, $01, nBb5, $05, nRst, $01
	smpsLoop            $00, $02, Speedy_Park1_Loop17
	smpsPan             panCenter, $00
	dc.b	nA5, $06, nRst, $09, nG5, $03, nA5, nBb5, nC6, $06, nRst, $09
	dc.b	nG5, $03, nA5, nBb5, nD6, $06, nRst, $09, nA5, $03, nBb5, nD6
	dc.b	nEb6, $06, nRst, $09, nBb5, $03, nD6, nEb6, nF6, $06, nRst, $09
	dc.b	nAb4, $03, nCs5, nEb5, nF5, $06, nRst, $09, nCs5, $03, nF5, nAb5
	dc.b	nCs6, $06, nRst, $09, nF5, $03, nAb5, nCs6, nF6, $06, nRst, $09
	dc.b	nAb5, $03, nCs6, nF6, nFs6, $04, nRst, $01, nF6, $04, nEb6, $03
	dc.b	nCs6, $04, nRst, $01, nB5, $04, nCs6, $03, nBb5, $04, nRst, $01
	dc.b	nAb5, $04, nFs5, $03, nF5, $04, nRst, $01, nEb5, $04, nCs5, $03
	dc.b	nEb5, $04, nRst, $01, nF5, $04, nFs5, $03, nEb5, $04, nRst, $01
	dc.b	nF5, $04, nBb5, $03, nEb6, $18, nRst, $0C, nFs6, $02, nE6, nD6
	dc.b	nCs6, nB5, nA5
	smpsAlterVol        $02
	smpsJump            Speedy_Park1_FM3

; FM4 Data
Speedy_Park1_FM4:
	smpsSetvoice        $01

Speedy_Park1_Loop13:
	smpsPan             panRight, $00
	dc.b	nG4

Speedy_Park1_Loop0B:
	dc.b	$03
	smpsLoop            $00, $07, Speedy_Park1_Loop0B

Speedy_Park1_Loop0C:
	dc.b	nA4
	smpsLoop            $00, $08, Speedy_Park1_Loop0C

Speedy_Park1_Loop0D:
	dc.b	nBb4
	smpsLoop            $00, $08, Speedy_Park1_Loop0D

Speedy_Park1_Loop0E:
	dc.b	nA4
	smpsLoop            $00, $09, Speedy_Park1_Loop0E

Speedy_Park1_Loop0F:
	dc.b	nBb4
	smpsLoop            $00, $07, Speedy_Park1_Loop0F

Speedy_Park1_Loop10:
	dc.b	nA4
	smpsLoop            $00, $08, Speedy_Park1_Loop10

Speedy_Park1_Loop11:
	dc.b	nBb4
	smpsLoop            $00, $08, Speedy_Park1_Loop11

Speedy_Park1_Loop12:
	dc.b	nA4
	smpsLoop            $00, $09, Speedy_Park1_Loop12
	smpsLoop            $01, $02, Speedy_Park1_Loop13
	dc.b	nRst, $01
	smpsSetvoice        $03
	smpsPan             panRight, $00

Speedy_Park1_Loop14:
	dc.b	nBb4, $08, nRst, $01, nBb4, $08, nRst, $01, nBb4, $05, nRst, $01
	smpsLoop            $00, $02, Speedy_Park1_Loop14
	dc.b	nC5, $08, nRst, $01, nC5, $08, nRst, $01, nC5, $05, nRst, $01
	dc.b	nBb4, $0B, nRst, $07, nG4, $01, nBb4, nRst, nC5, nC5, nRst, nEb5
	dc.b	$08, nRst, $01, nCs5, $08, nRst, $01, nG5, $05, nRst, $01, nF5
	dc.b	$08, nRst, $01, nEb5, $08, nRst, $01, nCs5, $05, nRst, $01, nEb5
	dc.b	$08, nRst, $01, nCs5, $08, nRst, $01, nBb4, $05, nRst, $01, nBb4
	dc.b	$08, nRst, $01, nG4, $08, nRst, $01, nG4, $05, nRst, $01
	smpsPan             panRight, $00

Speedy_Park1_Loop15:
	dc.b	nBb4, $08, nRst, $01, nBb4, $08, nRst, $01, nBb4, $05, nRst, $01
	smpsLoop            $00, $02, Speedy_Park1_Loop15
	dc.b	nC5, $08, nRst, $01, nC5, $08, nRst, $01, nC5, $05, nRst, $01
	dc.b	nBb4, $0B, nRst, $07, nG4, $01, nBb4, nRst, nC5, nC5, nRst, nEb5
	dc.b	$08, nRst, $01, nCs5, $08, nRst, $01, nG5, $05, nRst, $01, nF5
	dc.b	$08, nRst, $01, nEb5, $08, nRst, $01, nCs5, $05, nRst, $01, nEb5
	dc.b	$08, nRst, $01, nCs5, $08, nRst, $01, nBb4, $05, nRst, $01, nBb4
	dc.b	$08, nRst, $01, nG4, $08, nRst, $01, nG4, $05, nRst, $07

Speedy_Park1_Loop16:
	dc.b	nG4, $03, nA4, $0F, nRst, $06, nBb4, $03, nC5, $0F, nRst, $06
	smpsLoop            $00, $02, Speedy_Park1_Loop16
	dc.b	nF4, $03, nAb4, $0F, nRst, $06, nAb4, $03, nCs5, $0F, nRst, $06
	dc.b	nF4, $03, nAb4, $0F, nRst, $06, nAb4, $03, nCs5, $0F
	smpsSetvoice        $02
	smpsAlterVol        $FE
	dc.b	nBb5, $04, nRst, $01, nAb5, $04, nFs5, $03, nEb5, $04, nRst, $01
	dc.b	nEb5, $04, $03, $04, nRst, $01, nBb4, $04, $03, nAb4, $04, nRst
	dc.b	$01, nAb4, $04, nF4, $03, nFs4, $04, nRst, $01, nAb4, $04, nBb4
	dc.b	$03, nFs4, $04, nRst, $01, nAb4, $04, nEb5, $03, nFs5, $18, nRst
	dc.b	$0C, nB5, $02
	smpsAlterVol        $03
	dc.b	nA5, nG5, nE5, nD5, nCs5
	smpsAlterVol        $FF
	smpsJump            Speedy_Park1_FM4

; FM5 Data
Speedy_Park1_FM5:
	smpsSetvoice        $01

Speedy_Park1_Loop07:
	smpsPan             panLeft, $00

Speedy_Park1_Loop06:
	dc.b	nEb4

Speedy_Park1_Loop02:
	dc.b	$03
	smpsLoop            $00, $07, Speedy_Park1_Loop02

Speedy_Park1_Loop03:
	dc.b	nF4
	smpsLoop            $00, $08, Speedy_Park1_Loop03

Speedy_Park1_Loop04:
	dc.b	nG4
	smpsLoop            $00, $08, Speedy_Park1_Loop04

Speedy_Park1_Loop05:
	dc.b	nF4
	smpsLoop            $00, $09, Speedy_Park1_Loop05
	smpsLoop            $01, $02, Speedy_Park1_Loop06
	smpsLoop            $02, $02, Speedy_Park1_Loop07

Speedy_Park1_Loop09:
	dc.b	nRst, $01
	smpsSetvoice        $03
	smpsPan             panLeft, $00

Speedy_Park1_Loop08:
	dc.b	nG4, $08, nRst, $01, nG4, $08, nRst, $01, nG4, $05, nRst, $01
	smpsLoop            $00, $02, Speedy_Park1_Loop08
	dc.b	nG4, $08, nRst, $01, nBb4, $08, nRst, $01, nG4, $05, nRst, $01
	dc.b	nG4, $0B, nRst, $07, nEb4, $01, nF4, nRst, nG4, nA4, nRst, nBb4
	dc.b	$08, nRst, $01, nAb4, $08, nRst, $01, nEb5, $05, nRst, $01, nCs5
	dc.b	$08, nRst, $01, nBb4, $08, nRst, $01, nAb4, $05, nRst, $01, nBb4
	dc.b	$08, nRst, $01, nAb4, $08, nRst, $01, nG4, $05, nRst, $01, nG4
	dc.b	$08, nRst, $01, nF4, $08, nRst, $01, nEb4, $05
	smpsLoop            $01, $02, Speedy_Park1_Loop09
	dc.b	nRst, $07

Speedy_Park1_Loop0A:
	dc.b	nEb4, $03, nF4, $0F, nRst, $06, nG4, $03, nA4, $0F, nRst, $06
	smpsLoop            $00, $02, Speedy_Park1_Loop0A
	dc.b	nCs4, $03, nF4, $0F, nRst, $06, nF4, $03, nAb4, $0F, nRst, $06
	dc.b	nCs4, $03, nF4, $0F, nRst, $06, nF4, $03, nAb4, $0F
	smpsSetvoice        $02
	smpsAlterVol        $FE
	dc.b	nEb6, $04, nRst, $01, nCs6, $04, nBb5, $03, nFs5, $04, nRst, $01
	dc.b	nFs5, $04, $03, $04, nRst, $01, nEb5, $04, $03, nCs5, $04, nRst
	dc.b	$01, nCs5, $04, nAb4, $03, nBb4, $04, nRst, $01, nCs5, $04, nEb5
	dc.b	$03, nBb4, $04, nRst, $01, nCs5, $04, nFs5, $03, nBb5, $18, nRst
	dc.b	$0C, nD6, $02
	smpsAlterVol        $03
	dc.b	nCs6, nB5, nA5, nG5, nE5
	smpsAlterVol        $FF
	smpsJump            Speedy_Park1_FM5

Speedy_Park1_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$2C
;	$71, $71, $31, $31, 	$1F, $12, $1F, $1F, 	$0A, $00, $0A, $00
;	$00, $01, $00, $01, 	$30, $36, $30, $36, 	$16, $00, $17, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0A, $00, $0A
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $03, $03, $03
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $02
;	$3D
;	$01, $00, $01, $02, 	$12, $1F, $1F, $14, 	$07, $02, $02, $0A
;	$05, $05, $05, $05, 	$2F, $2F, $2F, $AF, 	$1C, $00, $02, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $02, $02, $07
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0A, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $02, $00, $1C

;	Voice $03
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

