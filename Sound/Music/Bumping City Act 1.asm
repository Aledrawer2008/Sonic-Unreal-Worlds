CSZ1_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     CSZ1_Voices
        smpsHeaderChan      $05, $03
        smpsHeaderTempo     $02, $00

        smpsHeaderDAC       CSZ1_DAC
        smpsHeaderFM        CSZ1_FM1,   $00, $0F
        smpsHeaderFM        CSZ1_FM2,   $00, $0F
        smpsHeaderFM        CSZ1_FM3,   $00, $14
        smpsHeaderFM        CSZ1_FM4,   $00, $0F
        smpsHeaderPSG       CSZ1_PSG1,  $00, $00, $00, $00
        smpsHeaderPSG       CSZ1_PSG2,  $00, $00, $00, $00
        smpsHeaderPSG       CSZ1_PSG3,  $00, $03, $00, $00

; DAC Data
CSZ1_DAC:
        smpsPan             panCenter, $00
        dc.b    dSnareAlt, $04, $04, $04, $0C, $08, dKickAlt, $10, $0C

CSZ1_Loop00:
        dc.b    dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $0C, dKickAlt, dSnareAlt
        dc.b    dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $08, $04, dKickAlt, $0C
        dc.b    dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $0C, dKickAlt, dSnareAlt
        dc.b    dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $08, $04, dKickAlt, dSnareAlt, $08, $08, $04, dKickAlt
        dc.b    $0C
        smpsLoop            $00, $03, CSZ1_Loop00
        dc.b    dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $0C, dKickAlt, dSnareAlt
        dc.b    dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $08, $04, dKickAlt, $0C
        dc.b    dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $08, dSnareAlt, $04, $0C, dKickAlt, dSnareAlt
        dc.b    dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $08, $04, dKickAlt, dSnareAlt, $08, $08, $04
        smpsJump            CSZ1_DAC

; FM1 Data
CSZ1_FM1:
        smpsSetvoice        $00
        smpsPan             panCenter, $00
        dc.b    nRst, $30, nC4, $04, nRst, nC4, nE4, $08, nF4, $04, nG4, $0A
        dc.b    nRst, $02, nC5, $0A, nRst, $02, nB4, $14, nG4, $0C, nRst, $04
        dc.b    nE4, $0A, nRst, $02, nA4, $14, nE4, $31, nRst, $1B, nC4, $04
        dc.b    nRst, nC4, nE4, $08, nF4, $04, nG4, $0A, nRst, $02, nC5, $0A
        dc.b    nRst, $02, nB4, $14, nG4, $0C, nRst, $04, nE4, $0A, nRst, $02
        dc.b    nA4, $14, nE5, $31, nRst, $0F, nC5, $08, nD5, $04, nE5, $06
        dc.b    nRst, nE5, $0A, nRst, $02, nD5, $06, nRst, nC5, $0A, nRst, $02
        dc.b    nB4, $21, nRst, $03, nG4, $0A, nRst, $02, nA4, $06, nRst, nA4
        dc.b    $0A, nRst, $02, nG4, $06, nRst, nF4, $0A, nRst, $02, nG4, $15
        dc.b    nRst, $03, nE4, $06, nRst, nC4, $0A

CSZ1_Loop04:
        dc.b    nRst, $02, nD4, $06, nRst, nE4, $0A
        smpsLoop            $00, $02, CSZ1_Loop04
        dc.b    nRst, $02, nD4, $06, nRst, nE4, $08, nFs4, $04, nRst, $08, nFs4
        dc.b    $04, nA4, $0A, nRst, $02, nG4, $45, nRst, $1B, nC4, $04, nRst
        dc.b    nC4, nE4, nF4, nFs4, nG4, $0A, nRst, $02, nC5, $0A, nRst, $02
        dc.b    nB4, $08, nC5, $04, nB4, $08, nG4, $04, nRst, $08, nG4, $04
        dc.b    nE4, $0A, nRst, $02, nA4, $08, nAb4, $04, nA4, $08, nE4, $31
        dc.b    nRst, $1B, nC4, $04, nRst, nC4, nE4, nF4, nFs4, nG4, $0A, nRst
        dc.b    $02, nC5, $0A, nRst, $02, nB4, $08, nC5, $04, nB4, $08, nG4
        dc.b    $04, nRst, $08, nG4, $04, nE4, $0A, nRst, $02, nA4, $08, nAb4
        dc.b    $04, nA4, $08, nE5, $31, nRst, $0B, nB4, $04, nC5, $08, nD5
        dc.b    $04, nE5, nRst, nF5, nE5, $0A, nRst, $02, nD5, $06, nRst, nC5
        dc.b    $0A, nRst, $02, nB4, $08, nBb4, $04, nB4, $08, nE4, $0E, nRst
        dc.b    $02, nG4, $0A, nRst, $02, nA4, $04, nRst, nAb4, nA4, $0A, nRst
        dc.b    $02, nG4, $06, nRst, nF4, $0A, nRst, $02, nG4, $08, nFs4, $04
        dc.b    nG4, $0A, nRst, $02, nE4, $06, nRst, nC4, $0A, nRst, $02, nD4
        dc.b    $04, nRst, nD4, nE4, $0A, nRst, $02, nD4, $06, nRst, nE4, $0A
        dc.b    nRst, $02, nD4, $04, nRst, nD4, nE4, $08, nFs4, $04, nRst, $08
        dc.b    nFs4, $04, nA4, $0A, nRst, $02, nG4, $2D, nRst, $03, nG4, $04
        dc.b    nA4, nB4, nA4, nB4, nC5, nB4, nC5, nD5, nE5, nF5, nG5
        smpsJump            CSZ1_FM1

; FM2 Data
CSZ1_FM2:
        smpsSetvoice        $00
        smpsPan             panCenter, $00
        dc.b    nRst, $30, nG3, $04, nRst, nG3, nC4, $08, nD4, $04, nE4, $0A
        dc.b    nRst, $02, nE4, $0A, nRst, $02, nG4, $14, nE4, $0C, nRst, $04
        dc.b    nB3, $0A, nRst, $02, nE4, $14, nC4, $31, nRst, $1B, nG3, $04
        dc.b    nRst, nG3, nC4, $08, nD4, $04, nE4, $0A, nRst, $02, nA4, $0A
        dc.b    nRst, $02, nG4, $14, nE4, $0C, nRst, $04, nB3, $0A, nRst, $02
        dc.b    nC4, $14, nA4, $31, nRst, $0F, nE4, $08, nG4, $04, nA4, $06
        dc.b    nRst, nA4, $0A, nRst, $02, nG4, $06, nRst, nE4, $0A, nRst, $02
        dc.b    nG4, $21, nRst, $03, nB3, $0A, nRst, $02, nF4, $06, nRst, nF4
        dc.b    $0A, nRst, $02, nE4, $06, nRst, nD4, $0A, nRst, $02, nE4, $15
        dc.b    nRst, $03, nC4, $06, nRst, nG3, $0A

CSZ1_Loop03:
        dc.b    nRst, $02, nA3, $06, nRst, nC4, $0A
        smpsLoop            $00, $02, CSZ1_Loop03
        dc.b    nRst, $02, nA3, $06, nRst, nC4, $08, nA3, $04, nRst, $08, nA3
        dc.b    $04, nC4, $0A, nRst, $02, nD4, $45, nRst, $1B, nG3, $04, nRst
        dc.b    nG3, nC4, nD4, nEb4, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
        dc.b    nG4, $08, nF4, $04, nE4, $08, nB3, $04, nRst, $08, nB3, $04
        dc.b    nD4, $0A, nRst, $02, nC4, $08, nB3, $04, nC4, $08, nA3, $31
        dc.b    nRst, $1B, nG3, $04, nRst, nG3, nC4, nD4, nEb4, nE4, $0A, nRst
        dc.b    $02, nE4, $0A, nRst, $02, nG4, $08, nF4, $04, nE4, $08, nB3
        dc.b    $04, nRst, $08, nB3, $04, nD4, $0A, nRst, $02, nC4, $08, nB3
        dc.b    $04, nC4, $08, nA4, $31, nRst, $0B, nD4, $04, nE4, $08, nG4
        dc.b    $04, nA4, nRst, nA4, nA4, $0A, nRst, $02, nB4, $06, nRst, nA4
        dc.b    $0A, nRst, $02, nG4, $08, nFs4, $04, nG4, $08, nB3, $0E, nRst
        dc.b    $02, nD4, $0A, nRst, $02, nF4, $04, nRst, nE4, nF4, $0A, nRst
        dc.b    $02, nE4, $06, nRst, nD4, $0A, nRst, $02, nE4, $08, nEb4, $04
        dc.b    nE4, $0A, nRst, $02, nC4, $06, nRst, nA3, $0A, nRst, $02, nA3
        dc.b    $04, nRst, nA3, nC4, $0A, nRst, $02, nA3, $06, nRst, nC4, $0A
        dc.b    nRst, $02, nA3, $04, nRst, nA3, nC4, $08, $04, nRst, $08, nA3
        dc.b    $04, nC4, $0A, nRst, $02, nD4, $2D, nRst, $03, nD4, $04, nE4
        dc.b    nG4, nD4, nG4, nD4, nG4, nD4, nG4, nE4, nF4, nG4
        smpsJump            CSZ1_FM2

; FM3 Data
CSZ1_FM3:
        smpsSetvoice        $00
        smpsPan             panCenter, $00
        dc.b    nRst, $30

CSZ1_Loop02:
        dc.b    nC3, $15, nRst, $03, nG2, $15, nRst, $03, nE2, $15, nRst, $03
        dc.b    nB2, $15, nRst, $03, nA2, $15, nRst, $03, nC3, $15, nRst, $03
        dc.b    nA2, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08, nG3, $04
        dc.b    nF3, nE3, nD3, nC3, $15, nRst, $03, nG2, $15, nRst, $03, nE2
        dc.b    $15, nRst, $03, nB2, $15, nRst, $03, nA2, $15, nRst, $03, nC3
        dc.b    $15, nRst, $03, nA2, $08, nA3, $04, nRst, $08, nG3, $04, nRst
        dc.b    $08, nG3, $04, nE3, $08, nG3, $04, nA2, $0A, nRst, $02, nA2
        dc.b    $0A, nRst, $02, nB2, $0A, nRst, $02, nC3, $0A, nRst, $02, nE3
        dc.b    $21, nRst, $03, nE3, $0A, nRst, $02, nF3, $0A, nRst, $02, nF3
        dc.b    $0A, nRst, $02, nE3, $0A, nRst, $02, nD3, $0A, nRst, $02, nC3
        dc.b    $15, nRst, $03, nA2, $08, nB2, $04, nC3, $0A, nRst, $62, nG3
        dc.b    $06, nRst, nG3, $0A, nRst, $02, nF3, $06, nRst, nF3, $0A, nRst
        dc.b    $02, nE3, $06, nRst, nE3, $08, nD3, $04, nRst, $08, nD3, $04
        dc.b    $0A, nRst, $02
        smpsLoop            $00, $02, CSZ1_Loop02
        smpsJump            CSZ1_FM3

; FM4 Data
CSZ1_FM4:
        smpsSetvoice        $01
        smpsPan             panCenter, $00
        dc.b    nRst, $14, nE3, $04, nD3, $08, nC3, $04, nB2, $08, nG2, $04

CSZ1_Loop01:
        dc.b    nC3, $14, $04, nG2, $14, $04, nE2, $14, $04, nB2, $14, $04
        dc.b    nA2, $14, $04, nC3, $14, $04, nA2, $08, $04, nRst, $08, nC3
        dc.b    $04, nRst, $08, nG2, $04, nA2, $08, nB2, $04
        smpsLoop            $00, $02, CSZ1_Loop01
        dc.b    nA2, $0A, nRst, $02, nA2, $0A, nRst, $02, nB2, $0A, nRst, $02
        dc.b    nC3, $0A, nRst, $02, nE3, $0A, nRst, $02, nD3, $08, nC3, $04
        dc.b    nE2, $08, nB2, $04, nG2, $0A, nRst, $02, nF2, $0A, nRst, $02
        dc.b    nC3, $0A, nRst, $02, nE2, $0A, nRst, $02, nD3, $0A, nRst, $02
        dc.b    nC3, $0A, nRst, $02, nG2, $0A, nRst, $02, nF2, $08, nG2, $04
        dc.b    nA2, $0A, nRst, $02, nD3, $0A, nRst, $02, nD3, $0A, nRst, $02
        dc.b    nC3, $0A, nRst, $02, nC3, $0A, nRst, $02, nB2, $0A, nRst, $02
        dc.b    nB2, $0A, nRst, $02, nA2, $0A, nRst, $02, nD3, $0A, nRst, $02
        dc.b    nG3, $08, nG2, $04, nG3, $08, nG2, $04, nF3, $08, nF2, $04
        dc.b    nF3, $08, nF2, $04, nE3, $08, nE2, $04, nE3, $08, nE2, $04
        dc.b    nD3, $08, nD2, $04, nD3, $08, nD2, $04
        smpsLoop            $01, $02, CSZ1_Loop01
        smpsJump            CSZ1_FM4

; PSG3 Data
CSZ1_PSG3:
        smpsPSGform         $E7

CSZ1_Jump00:
        dc.b    nRst, $14
        smpsPSGvoice        fTone_01
        dc.b    nMaxPSG, $04, $0C, $0C

CSZ1_Loop05:
        dc.b    $14, $04
        smpsLoop            $00, $0E, CSZ1_Loop05
        dc.b    $10, $10, $08, $08
        smpsLoop            $01, $04, CSZ1_Loop05
        smpsJump            CSZ1_Jump00

; PSG1 Data
CSZ1_PSG1:
; PSG2 Data
CSZ1_PSG2:
        smpsStop

CSZ1_Voices:
;       Voice $00
;       $3A
;       $01, $07, $31, $71,     $8E, $8E, $8D, $53,     $0E, $0E, $0E, $06
;       $00, $00, $00, $00,     $1F, $FF, $1F, $2F,     $18, $28, $27, $00
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

;       Voice $01
;       $2A
;       $30, $70, $08, $01,     $1F, $1F, $1F, $1F,     $08, $10, $0E, $0C
;       $00, $03, $06, $05,     $30, $20, $29, $28,     $22, $14, $2A, $00
        smpsVcAlgorithm     $02
        smpsVcFeedback      $05
        smpsVcUnusedBits    $00
        smpsVcDetune        $00, $00, $07, $03
        smpsVcCoarseFreq    $01, $08, $00, $00
        smpsVcRateScale     $00, $00, $00, $00
        smpsVcAttackRate    $1F, $1F, $1F, $1F
        smpsVcAmpMod        $00, $00, $00, $00
        smpsVcDecayRate1    $0C, $0E, $10, $08
        smpsVcDecayRate2    $05, $06, $03, $00
        smpsVcDecayLevel    $02, $02, $02, $03
        smpsVcReleaseRate   $08, $09, $00, $00
        smpsVcTotalLevel    $00, $2A, $14, $22


