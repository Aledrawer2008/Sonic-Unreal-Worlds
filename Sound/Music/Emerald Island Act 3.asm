thz_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     thz_Voices
        smpsHeaderChan      $05, $03
        smpsHeaderTempo     $02, $19

        smpsHeaderDAC       thz_DAC
        smpsHeaderFM        thz_FM1,    $00, $18
        smpsHeaderFM        thz_FM2,    $00, $18
        smpsHeaderFM        thz_FM3,    $00, $18
        smpsHeaderFM        thz_FM4,    $00, $18
        smpsHeaderPSG       thz_PSG1,   $00, $07, $00, $00
        smpsHeaderPSG       thz_PSG2,   $00, $06, $00, $00
        smpsHeaderPSG       thz_PSG3,   $00, $0E, $00, fTone_02

; DAC Data
thz_DAC:
        dc.b    dSnareAlt, $03, $06, $06, $03, $03, $03, $03, $06, $03, $06

thz_Loop00:
        dc.b    $03, $03

thz_Jump00:
        dc.b    dKickAlt, $0C, dSnareAlt, $09, dKickAlt, $06, dSnareAlt, $09, $03, dKickAlt
        smpsLoop            $00, $07, thz_Loop00
        dc.b    dKickAlt, dKickAlt, dSnareAlt, dSnareAlt, $06, $06, $06, dKickAlt, dSnareAlt, dKickAlt, $0F

thz_Loop01:
        dc.b    $0C, dSnareAlt, $09, dKickAlt, $06, dSnareAlt, $09, $03, dKickAlt, dKickAlt, dKickAlt
        smpsLoop            $00, $07, thz_Loop01
        dc.b    dKickAlt, $0C, dSnareAlt, $09, dKickAlt, $06, dSnareAlt, $09, $03, $03

thz_Loop02:
        dc.b    $03, $03, dKickAlt, $0C, dSnareAlt, $09, dKickAlt, $06, dSnareAlt, $09, $03, dKickAlt
        smpsLoop            $00, $07, thz_Loop02
        dc.b    dKickAlt, dKickAlt, dKickAlt, $0C, dSnareAlt, $09, dKickAlt, $06, dSnareAlt, $09, $03, $03
        dc.b    $03, $0F, dKickAlt, $0C, $0C, $0C, $0C, $0C, $06, dSnareAlt, $03, dKickAlt
        dc.b    $0F, $03

thz_Loop03:
        dc.b    $03, dSnareAlt, $06, dKickAlt, $03
        smpsLoop            $00, $03, thz_Loop03
        dc.b    $03, dSnareAlt, $06, $03, $03, $03, $03, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dSnareAlt
        dc.b    $0C, $03, $03, $03, $03
        smpsJump            thz_Jump00

; FM1 Data
thz_FM1:
        smpsSetvoice        $00
        dc.b    nF4, $03, $06, nC4, nF4, $03, nEb4, nC4, nE4, nE4, $06, nEb4
        dc.b    $03, $06, nBb3, $03, $03

thz_Jump04:
        smpsSetvoice        $00
        dc.b    nA4, $06, $12, nRst, $06, nA3, $03, $03, nCs4, nEb4, nE4, $06
        dc.b    nA4, $12, nFs4, $0C, nCs4, $03, nFs4, nFs4, nG4, nAb4, $06, nA4
        dc.b    nA4, $12, nRst, $06, nA3, $03, $03, nCs4, nEb4, nE4, $06, nA4
        dc.b    nA4, $03, nFs4, $0F, nE4, $03, nFs4, nE4, nEb4, nE4, nEb4, nCs4
        dc.b    nCs4, nA4, $06, $12, nRst, $06, nA3, $03, $03, nCs4, nEb4, nE4
        dc.b    $06, nA4, $12, nFs4, $0C, nCs4, $03, nFs4, nFs4, nG4, nAb4, $06
        dc.b    nA4, nA4, $12, nRst, $06, nA3, $03, $03, nCs4, nEb4, nE4, $06
        dc.b    nF4, $03, $06, nC4, nF4, $03, nEb4, nC4, nE4, nE4, $06, nEb4
        dc.b    $03, $06, nBb3, $03, $03

thz_Loop07:
        dc.b    nE5, nEb5, nE5, $06, nEb5, nA4, nCs5, $09, nEb5, $0F, nB3, $03
        dc.b    nC4, nCs4, nE4, nFs5, nFs5, $06, $06, $03, nE5, $06, nA4, nA4
        dc.b    nA4, $09, nB4, nFs4, $1E, nB3, $03, nCs4, nE4, $06, nFs4, $03
        dc.b    nB4, $06, nA4, nAb4, nA4, $03, nB4, nCs5, nD5, nE5, nA5, nAb5
        dc.b    $06, nA5, $03, $03, $06, nAb5, nE5, $15, nB4, $03, nCs5, nB4
        dc.b    $06, nA4, nA4, nE5, $09, nFs5, $03, $06, nA4, nB4, $09, $09
        dc.b    nA4, $1E, nCs5, $06, nB4, $03, nA4, nB4, nA4, nAb4, nFs4, nAb4
        dc.b    nE4, nFs4, nB4, nE4, nCs4, nB3, nA3
        smpsLoop            $00, $02, thz_Loop07
        smpsSetvoice        $02
        dc.b    nRst, $06, nCs4, nCs4, nA3, nCs4, $09, nA3, nAb3, $06, nRst, nAb3
        dc.b    nAb3, nA3, nAb3, $09, nA3, $0F, nRst, $06, nCs4, nCs4, nA3, nCs4
        dc.b    $09, nA3, $0F, nCs4, $09, nB3, nCs4, $06, nE4, $0C, nRst
        smpsJump            thz_Jump04

; FM2 Data
thz_FM2:
        smpsSetvoice        $00
        dc.b    nBb4, $03, $06, nF4, nBb4, $03, nAb4, nFs4, nA4, nA4, $06, nAb4
        dc.b    $03, $06, nEb4, $03, $03

thz_Jump03:
        smpsSetvoice        $00
        dc.b    nCs5, $06, $12, nRst, $06, nCs4, $03, $03, nE4, nFs4, nAb4, $06
        dc.b    nCs5, $12, nB4, $0C, nFs4, $03, nA4, nB4, nC5, nCs5, $06, $06
        dc.b    $12, nRst, $06, nCs4, $03, $03, nE4, nFs4, nAb4, $06, nCs5, nCs5
        dc.b    $03, nB4, $0F, nA4, $03, nB4, nA4, nAb4, nA4, nAb4, nFs4, nFs4
        dc.b    nCs5, $06, $12, nRst, $06, nCs4, $03, $03, nE4, nFs4, nAb4, $06
        dc.b    nCs5, $12, nB4, $0C, nFs4, $03, nA4, nB4, nC5, nCs5, $06, $06
        dc.b    $12, nRst, $06, nCs4, $03, $03, nE4, nFs4, nAb4, $06, nBb4, $03
        dc.b    $06, nF4, nBb4, $03, nAb4, nFs4, nA4, nA4, $06, nAb4, $03, $06
        dc.b    nEb4, $03, $03

thz_Loop06:
        dc.b    nA5, nAb5, nA5, $06, nFs5, nCs5, nE5, $09, nFs5, $0F, nB4, $03
        dc.b    nC5, nCs5, nE5, nB5, nC6, $06, nB5, nB5, $03, nA5, $06, nEb5
        dc.b    nCs5, nCs5, $09, nEb5, nB4, $1E, $03, nCs5, nE5, $06, nFs5, $03
        dc.b    nB5, $06, nA5, nAb5, nA5, $03, nB5, nCs6, nD6, nE6, nCs6, nB5
        dc.b    $06, nCs6, $03, nC6, nCs6, $06, nB5, nA5, $15, nEb5, $03, nE5
        dc.b    nEb5, $06, nCs5, nEb5, nA5, $09, nB5, nCs5, $06, nE5, $09, $09
        dc.b    nEb5, $1E, nCs6, $06, nB5, $03, nA5, nB5, nA5, nAb5, nFs5, nAb5
        dc.b    nE5, nFs5, nB5, nE5, nCs5, nB4, nA4
        smpsLoop            $00, $02, thz_Loop06
        dc.b    nRst, $06, nE4, nE4, nCs4, nE4, $09, nCs4, nB3, $06, nRst, nB3
        dc.b    nB3, nEb4, nB3, $09, nCs4, $0F, nRst, $06, nE4, nE4, nCs4, nE4
        dc.b    $09, nCs4, $0F, nE4, $09, $09, $06, nAb4, $0C, nRst
        smpsJump            thz_Jump03

; FM3 Data
thz_FM3:
        smpsSetvoice        $00
        dc.b    nEb5, $03, $06, nBb4, nEb5, $03, nCs5, nC5, nD5, nD5, $06, nCs5
        dc.b    $03, $06, nAb4, $03, $03

thz_Jump02:
        dc.b    nE5, $06, $12, nRst, $06, nE4, $03, nFs4, nA4, nB4, nCs5, $06
        dc.b    nE5, $12, nEb5, $0C, nRst, $12, nE5, $06, $12, nRst, $06, nE4
        dc.b    $03, nFs4, nA4, nB4, nCs5, $06, nE5, nE5, $03, nEb5, $0F, nCs5
        dc.b    $03, nEb5, nCs5, nB4, nCs5, nB4, nA4, nRst, nE5, $06, $12, nRst
        dc.b    $06, nE4, $03, nFs4, nA4, nB4, nCs5, $06, nE5, $12, nEb5, $0C
        dc.b    nRst, $12, nE5, $06, $12, nRst, $06, nE4, $03, nFs4, nA4, nB4
        dc.b    nCs5, $06, nEb5, $03, $06, nBb4, nEb5, $03, nCs5, nC5, nD5, nD5
        dc.b    $06, nCs5, $03, $06, nAb4, $03, $03, nRst, $54, nFs5, $06, nE5
        dc.b    nE5, $09, nFs5, nEb5, $1E, nRst, $6C, nE5, $06, nFs5, nRst, $12
        dc.b    nE5, $06, nAb5, $09, $09, nFs5, $1E, nRst, $7F, nRst, $05, nFs5
        dc.b    $06, nE5, nE5, $09, nFs5, nEb5, $1E, nRst, $6C, nE5, $06, nFs5
        dc.b    nRst, $12, nE5, $06, nAb5, $09, $09, nFs5, $1E, nRst, $48, nA4
        dc.b    $09, nFs4, nE4, $06, nRst, nE4, nE4, nRst, nE4, $09, nFs4, $0F
        dc.b    nRst, $18, nA4, $09, nFs4, $0F, nA4, $09, nAb4, nA4, $06, nB4
        dc.b    $0C, nRst
        smpsJump            thz_Jump02

; FM4 Data
thz_FM4:
        smpsSetvoice        $01
        smpsAlterVol        $01
        dc.b    nF3, $09, nC3, nF3, $06, nE3, $09, nEb3, nBb2, $06

thz_Jump01:
        dc.b    nA2, $06
        smpsAlterVol        $01

thz_Loop04:
        dc.b    $06, $09, $03, nRst, $06, nA2, nA2, nA2, nA2
        smpsLoop            $00, $06, thz_Loop04
        dc.b    nA2, nA2, $09, $03, nRst, $06, nA2, nA2, nA2, nF3, $09, nC3
        dc.b    nF3, $06, nE3, $09, nEb3, nBb2

thz_Loop05:
        dc.b    $06, nA2, nA2, nA2, $09, $03, nRst, $06, nA2, nA2
        smpsLoop            $00, $10, thz_Loop05
        dc.b    nA2, nA3, $0C
        smpsAlterVol        $05
        dc.b    $0C, $0C, $0C, nAb3, nAb3, nAb3, nAb3, nA3, nA3, nA3, nA3, nE3
        dc.b    $09, $09, $06, $0C, nE2
        smpsAlterVol        $FA
        smpsJump            thz_Jump01

; PSG1 Data
thz_PSG1:
        dc.b    nRst, $30

thz_Jump06:
        dc.b    nRst, $0C

thz_Loop0F:
        dc.b    nA1, $09, $03, nRst, $24
        smpsLoop            $00, $06, thz_Loop0F
        dc.b    nA1, $09, $03, nRst, $18, nEb2, $03, $06, nBb1, nEb2, $03, nCs2
        dc.b    nC2, nD2, nD2, $06, nCs2, $03, $06, nAb1, $03, $03
        smpsPSGAlterVol     $02

thz_Loop10:
        dc.b    nFs2, nFs2, nFs3, nFs3, nCs3, nCs3, nE3, nEb3, nFs2, nCs3, nFs2, nB2
        dc.b    nA2, nA2, nB2, nCs3
        smpsLoop            $00, $10, thz_Loop10
        dc.b    nRst, $7F, nRst, $35
        smpsPSGAlterVol     $FE
        dc.b    nA0, $03, nB0, nCs1, nD1
        smpsJump            thz_Jump06

; PSG2 Data
thz_PSG2:
        smpsPSGAlterVol     $01

thz_Loop0D:
        dc.b    nF1, $09, nC1, nF1, $06, nE1, $09, nEb1, nBb0, $06

thz_Loop0C:
        dc.b    nE1, $06, nFs1, nA1, $09, $03, nRst, $06, nE1, nFs1, nA1
        smpsLoop            $00, $07, thz_Loop0C
        smpsLoop            $01, $02, thz_Loop0D

thz_Loop0E:
        dc.b    nE1, nFs1, nA1, $09, $03, nRst, $06, nE1, nFs1, nA1
        smpsLoop            $00, $09, thz_Loop0E
        dc.b    nA1, $12, nAb1, $1E, nE1, $12, nFs1, nE1, $0C, nA1, $12, nAb1
        dc.b    $1E, nE1, $09, $09, $06, $0C, nRst
        smpsJump            thz_Loop0C

; PSG3 Data
thz_PSG3:
        smpsPSGform         $E7
        dc.b    nMaxPSG, $03, $06
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $06, $03, $06

thz_Loop08:
        dc.b    $03, $03

thz_Jump05:
        dc.b    nMaxPSG, $03
        smpsLoop            $00, $26, thz_Loop08
        dc.b    $03, $06
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $06

thz_Loop09:
        dc.b    $03
        smpsLoop            $00, $FF, thz_Loop09
        dc.b    $0C, $0C, $0C, $0C, $0C, $0C

thz_Loop0A:
        dc.b    $03
        smpsLoop            $00, $0A, thz_Loop0A

thz_Loop0B:
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsLoop            $00, $04, thz_Loop0B
        dc.b    $03, $03, $03, $03, $03, $03, $0C, $03, $03, $03, $03
        smpsJump            thz_Jump05

thz_Voices:
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
;       $2C
;       $70, $40, $21, $60,     $9F, $1F, $1F, $5F,     $0C, $09, $0C, $15
;       $04, $04, $06, $06,     $56, $46, $46, $4F,     $0C, $00, $10, $00
        smpsVcAlgorithm     $04
        smpsVcFeedback      $05
        smpsVcUnusedBits    $00
        smpsVcDetune        $06, $02, $04, $07
        smpsVcCoarseFreq    $00, $01, $00, $00
        smpsVcRateScale     $01, $00, $00, $02
        smpsVcAttackRate    $1F, $1F, $1F, $1F
        smpsVcAmpMod        $00, $00, $00, $00
        smpsVcDecayRate1    $15, $0C, $09, $0C
        smpsVcDecayRate2    $06, $06, $04, $04
        smpsVcDecayLevel    $04, $04, $04, $05
        smpsVcReleaseRate   $0F, $06, $06, $06
        smpsVcTotalLevel    $00, $10, $00, $0C

;       Voice $02
;       $02
;       $5F, $06, $12, $01,     $9F, $91, $91, $51,     $07, $05, $00, $00
;       $09, $06, $00, $00,     $71, $83, $14, $05,     $25, $28, $1E, $00
        smpsVcAlgorithm     $02
        smpsVcFeedback      $00
        smpsVcUnusedBits    $00
        smpsVcDetune        $00, $01, $00, $05
        smpsVcCoarseFreq    $01, $02, $06, $0F
        smpsVcRateScale     $01, $02, $02, $02
        smpsVcAttackRate    $11, $11, $11, $1F
        smpsVcAmpMod        $00, $00, $00, $00
        smpsVcDecayRate1    $00, $00, $05, $07
        smpsVcDecayRate2    $00, $00, $06, $09
        smpsVcDecayLevel    $00, $01, $08, $07
        smpsVcReleaseRate   $05, $04, $03, $01
        smpsVcTotalLevel    $00, $1E, $28, $25