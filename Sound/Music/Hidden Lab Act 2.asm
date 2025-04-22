SkyFortress2_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     SkyFortress2_Voices
        smpsHeaderChan      $05, $03
        smpsHeaderTempo     $02, $00

        smpsHeaderDAC       SkyFortress2_DAC
        smpsHeaderFM        SkyFortress2_FM1,   $00, $0E
        smpsHeaderFM        SkyFortress2_FM2,   $00, $0A
        smpsHeaderFM        SkyFortress2_FM3,   $00, $0A
        smpsHeaderFM        SkyFortress2_FM4,   $00, $0B
        smpsHeaderPSG       SkyFortress2_PSG1,  $00, $00, $00, fTone_06
        smpsHeaderPSG       SkyFortress2_PSG2,  $00, $00, $00, $00
        smpsHeaderPSG       SkyFortress2_PSG3,  $00, $03, $00, $00

; DAC Data
SkyFortress2_DAC:
        smpsPan             panCenter, $00

SkyFortress2_Loop01:
        dc.b    dKick, $06, $06, dSnareAlt, $09, $03, dKick, $06, dSnareAlt, $03, $03, $03
        dc.b    $03, dKick, $0C, $06, dSnareAlt, dKick, $03, dSnareAlt, $09, dKick

SkyFortress2_Loop00:
        dc.b    $06, dSnareAlt, $09, $03, dKick, $06
        smpsLoop            $00, $02, SkyFortress2_Loop00
        dc.b    dSnareAlt, $03, $03, $03, $03, dKick, $0C, $06, dSnareAlt, dKick, $03, dSnareAlt
        dc.b    $06, dKick, $03, dSnareAlt, $06, $03, $03, $06
        smpsLoop            $01, $07, SkyFortress2_Loop01
        dc.b    dKick, dKick, dSnareAlt, $09, $03, dKick, $06, dSnareAlt, $03, $03, $03, $03
        dc.b    dKick, $0C, $06, dSnareAlt, dKick, $03, dSnareAlt, $09, dKick

SkyFortress2_Loop02:
        dc.b    $06, dSnareAlt, $09, $03, dKick, $06
        smpsLoop            $00, $02, SkyFortress2_Loop02
        dc.b    dSnareAlt, $03, $03, $03, $03, dKick, $0C, dSnareAlt, $06, dKick, $03, dSnareAlt
        dc.b    $09, dKick, $03, dSnareAlt, $06, $03, dKick, dSnareAlt, dSnareAlt, dSnareAlt, dKick, $06
        dc.b    $06, dSnareAlt, $09, $03, dKick, $06, dSnareAlt, $03, $03, $03, $03, dKick
        dc.b    $0C, $06, dSnareAlt, dKick, $03, dSnareAlt, $09, dKick

SkyFortress2_Loop03:
        dc.b    $06, dSnareAlt, $09, $03, dKick, $06
        smpsLoop            $00, $02, SkyFortress2_Loop03
        dc.b    dSnareAlt, $03, $03, $03, $03, dKick, $0C, $06, dSnareAlt, dKick, $03, dSnareAlt
        dc.b    $06, dKick, $03, dSnareAlt, $06, $03, $03, $06, dKick, dKick, dSnareAlt, $09
        dc.b    $03, dKick, $06, dSnareAlt, $03, $03, $03, $03, dKick, $0C, $06, dSnareAlt
        dc.b    dKick, $03, dSnareAlt, $09, dKick

SkyFortress2_Loop04:
        dc.b    $06, dSnareAlt, $09, $03, dKick, $06
        smpsLoop            $00, $02, SkyFortress2_Loop04
        dc.b    dSnareAlt, $03, $03, $03, $03, dKick, $24, $03, $03, dSnareAlt, $06, dKick
        dc.b    $1E, dSnareAlt, $06, dKick, $03, $03, dSnareAlt, $06, dKick
        smpsJump            SkyFortress2_DAC

; FM1 Data
SkyFortress2_FM1:
        smpsSetvoice        $00
        smpsPan             panCenter, $00
        dc.b    nBb2, $05, nRst, $01, nBb2, $05, nRst, $01, nBb2, $03, $03, $03
        dc.b    $03, $05, nRst, $01, nBb2, $03, $03, $05
        smpsAlterNote       $00

SkyFortress2_Loop10:
        dc.b    nRst, $01, nC2, $02, smpsNoAttack, nD2, $0A, $05, nRst, $01, nD2, $03
        dc.b    $03, $05

SkyFortress2_Loop0E:
        dc.b    nRst, $01, nD2, $05
        smpsLoop            $00, $04, SkyFortress2_Loop0E
        dc.b    nRst, $01, nG2, $05, nRst, $01, nG2, $05, nRst, $01, nG2, $03
        dc.b    $03, $03, $03, $05, nRst, $01, nG2, $03, $03, $05, nRst, $01
        dc.b    nG2, $02, smpsNoAttack, nA2, $0A, $05, nRst, $01, nA2, $03, $03, $05

SkyFortress2_Loop0F:
        dc.b    nRst, $01, nA2, $05
        smpsLoop            $00, $04, SkyFortress2_Loop0F
        dc.b    nRst, $01, nBb2, $05, nRst, $01, nBb2, $05, nRst, $01, nBb2, $03
        dc.b    $03, $03, $03, $05, nRst, $01, nBb2, $03, $03, $05
        smpsLoop            $01, $09, SkyFortress2_Loop10
        dc.b    nRst, $01, nC2, $02, smpsNoAttack, nD2, $0A, $05, nRst, $01, nD2, $03
        dc.b    $03, $05

SkyFortress2_Loop11:
        dc.b    nRst, $01, nD2, $05
        smpsLoop            $00, $04, SkyFortress2_Loop11
        dc.b    nRst, $01, nG2, $05, nRst, $01, nG2, $05, nRst, $01, nG2, $03
        dc.b    $03, $03, $03, $05, nRst, $01, nG2, $03, $03, $05, nRst, $01
        dc.b    nG2, $02, smpsNoAttack, nA2, $0A, $05, nRst, $01, nA2, $03, $03, $05
        dc.b    nRst, $01, nA2, $05, nRst, $01, nA2, $05, nRst, $01, nBb2, $05
        dc.b    nRst, $01, nG2, $05, nRst, $01, nA2, $05, nRst, $01, nA2, $05
        dc.b    nRst, $01, nA2, $03, $03, $03, $03, $05, nRst, $01, nE2, $05
        dc.b    nRst, $01, nA2, $0C
        smpsJump            SkyFortress2_FM1

; FM2 Data
SkyFortress2_FM2:
        smpsSetvoice        $01
        smpsPan             panRight, $00

SkyFortress2_Loop0A:
        dc.b    nBb3, $0C, nD4, $06, nA4, nRst, nG4, nRst, nF4, nRst, nF4, nRst
        dc.b    nG4, nF4, nRst, nD4, nRst, nBb3, $0C, nD4, $06, nA4, nRst, nG4
        dc.b    nRst, nF4, $1E, nE4, $18
        smpsLoop            $00, $02, SkyFortress2_Loop0A
        smpsAlterVol        $06

SkyFortress2_Loop0B:
        dc.b    nA3, $2A, nC4, $18, nD4, $1E, $2A, nE4, $36
        smpsLoop            $00, $02, SkyFortress2_Loop0B
        smpsAlterVol        $FA

SkyFortress2_Loop0C:
        dc.b    nD4, $06, nG3, $03, nRst, nBb3, $06, nD4, $03, nRst, nF4, $06
        dc.b    nD4, $03, nRst, nC4, nRst, nD4, $09, nRst, $03, nC4, $09, nRst
        dc.b    $03, nA3, $09, nRst, $03, nC4, nRst, nA3, $09, nRst, $03, nD4
        dc.b    $06, nG3, $03, nRst, nBb3, $06, nG3, $03, nRst, nBb3, $06, nD4
        dc.b    $03, nRst, nC4, nRst, nF4, $18, nG4, $03, nF4, nE4, $18
        smpsLoop            $00, $02, SkyFortress2_Loop0C
        smpsAlterVol        $06
        dc.b    nA3, $2A, nC4, $18, nD4, $1E, $2A, nE4, $36, nA3, $2A, nC4
        dc.b    $18, nD4, $1E, $2A, nE4, $1E, nG4, $18

SkyFortress2_Loop0D:
        dc.b    nF4, $24, nG4, $06, nA4, $1E, nC5, $06, nRst, nCs5, nRst, nD5
        dc.b    $1E, nG5, $06, nRst, nF5, $0C, $06, nE5, nRst, nD5, nC5, nA4
        dc.b    nG4
        smpsLoop            $00, $02, SkyFortress2_Loop0D
        dc.b    nCs6, nCs6, nA5, nRst, nE5, nCs5, nA4, nE4
        smpsAlterVol        $FA
        smpsJump            SkyFortress2_Loop0A

; FM3 Data
SkyFortress2_FM3:
        smpsSetvoice        $01
        smpsPan             panRight, $00

SkyFortress2_Loop06:
        dc.b    nD4, $0C, nF4, $06, nC5, nRst, nBb4, nRst, nA4, nRst, nA4, nRst
        dc.b    nBb4, nA4, nRst, nF4, nRst, nD4, $0C, nF4, $06, nC5, nRst, nBb4
        dc.b    nRst, nA4, $36
        smpsLoop            $00, $02, SkyFortress2_Loop06
        smpsAlterVol        $06

SkyFortress2_Loop07:
        dc.b    nD4, $2A, nE4, $18, nF4, $1E, nG4, $2A, nA4, $36
        smpsLoop            $00, $02, SkyFortress2_Loop07
        smpsAlterVol        $FA

SkyFortress2_Loop08:
        dc.b    nF4, $06, nBb3, $03, nRst, nD4, $06, nF4, $03, nRst, nBb4, $06
        dc.b    nA4, $03, nRst, nG4, nRst, nA4, $09, nRst, $03, nF4, $09, nRst
        dc.b    $03, nD4, $09, nRst, $03, nF4, nRst, nF4, $09, nRst, $03, nF4
        dc.b    $06, nBb3, $03, nRst, nD4, $06, nF4, $03, nRst, nBb4, $06, nA4
        dc.b    $03, nRst, nG4, nRst, nA4, $18, nBb4, $03, nA4, nG4, $18
        smpsLoop            $00, $02, SkyFortress2_Loop08
        smpsAlterVol        $06
        dc.b    nD4, $2A, nE4, $18, nF4, $1E, nG4, $2A, nA4, $36, nD4, $2A
        dc.b    nE4, $18, nF4, $1E, nG4, $2A, nA4, $1E, nC5, $18

SkyFortress2_Loop09:
        dc.b    nBb4, $24, nC5, $06, nD5, $1E, nF5, $06, nRst, nFs5, nRst, nG5
        dc.b    $1E, nCs6, $06, nRst, nA5, $0C, $06, nG5, nRst, nF5, nE5, nD5
        dc.b    nC5
        smpsLoop            $00, $02, SkyFortress2_Loop09
        dc.b    nE6, nE6, nCs6, nRst, nA5, nG5, nF5, nE5
        smpsAlterVol        $FA
        smpsJump            SkyFortress2_FM3

; FM4 Data
SkyFortress2_FM4:
        smpsSetvoice        $01

SkyFortress2_Jump00:
        smpsPan             panCenter, $00
        dc.b    nRst

SkyFortress2_Loop05:
        dc.b    $60
        smpsLoop            $00, $10, SkyFortress2_Loop05
        dc.b    nE5, $06, nF5, nE5, nC5, $0F, nRst, $03, nE5, $06, nF5, nE5
        dc.b    nD5, $0C, nRst, $06, nE5, nF5, nE5, nC5, nG5, $0C, nF5, $06
        dc.b    nE5, nRst, nE5, nF5, nE5, $1E, nG5, $18, nE5, $06, nF5, nE5
        dc.b    nC5, $09, nRst, $03, nC5, $06, nE5, nF5, nE5, nD5, $09, nRst
        dc.b    $03, nD5, $06, nE5, nF5, nE5, nC5, nG5, $0C, nF5, $06, nE5
        dc.b    nRst, nE5, nF5, nA5, $1E, nG5, $18, nBb5, nA5
        smpsJump            SkyFortress2_Jump00

; PSG1 Data
SkyFortress2_PSG1:
        dc.b    nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F, nBb1, $0C, nA1, $06
        dc.b    nBb1, nRst, nD2, $0C, nA1, $06, nRst, nG1, nRst, nA1, $03, nRst
        dc.b    nA1, $0C, nD2, nBb1, $06, nD2, nRst, nF2, nRst, nE2, $15
        smpsModSet          $00, $02, $02, $02
        dc.b    smpsNoAttack, $21, nRst, $09
        smpsModOff
        dc.b    nRst, $03, nBb1, $0C, nA1, $06, nBb1, nRst, nD2, $0C, nA1, $06
        dc.b    nRst, nG1, nRst, nA1, $03, nRst, nA1, $0C, nD2, nBb1, $06, nD2
        dc.b    nRst, nF2, nRst, nE2, $15
        smpsModOn
        dc.b    smpsNoAttack, $1E
        smpsModOff
        dc.b    smpsNoAttack, $03, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F, nBb1, $0C
        dc.b    nA1, $06, nBb1, nRst, nD2, $0C, nA1, $06, nRst, nG1, nRst, nA1
        dc.b    $03, nRst, nA1, $0C, nD2, nBb1, $06, nD2, nRst, nF2, nRst, nE2
        dc.b    $15
        smpsModOn
        dc.b    smpsNoAttack, $09, nG2, $18, nRst, $09
        smpsModOff
        dc.b    nRst, $03, nBb1, $0C, nA1, $06, nBb1, nRst, nD2, $0C, nA1, $06
        dc.b    nRst, nG1, nRst, nA1, $03, nRst, nA1, $0C, nD2, nBb1, $06, nD2
        dc.b    nRst, nF2, nRst, nE2, $15
        smpsModOn
        dc.b    smpsNoAttack, $09, nG2, $15
        smpsModOff
        dc.b    smpsNoAttack, $03, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $33
        smpsJump            SkyFortress2_PSG1

; PSG2 Data
SkyFortress2_PSG2:
        smpsPSGvoice        fTone_06
        dc.b    nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F, nD2, $0C, nC2, $06
        dc.b    nD2, nRst, nF2, $0C, nD2, $06, nRst, nC2, nRst, nD2, $03, nRst
        dc.b    nD2, $0C, nF2, nD2, $06, nF2, nRst, nA2, nRst, nC3, $15
        smpsModSet          $00, $02, $02, $02
        dc.b    smpsNoAttack, $21, nRst, $09
        smpsModOff
        dc.b    nRst, $03, nD2, $0C, nC2, $06, nD2, nRst, nF2, $0C, nD2, $06
        dc.b    nRst, nC2, nRst, nD2, $03, nRst, nD2, $0C, nF2, nD2, $06, nF2
        dc.b    nRst, nA2, nRst, nC3, $15
        smpsModOn
        dc.b    smpsNoAttack, $1E
        smpsModOff
        dc.b    smpsNoAttack, $03, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F, nD2, $0C
        dc.b    nC2, $06, nD2, nRst, nF2, $0C, nD2, $06, nRst, nC2, nRst, nD2
        dc.b    $03, nRst, nD2, $0C, nF2, nD2, $06, nF2, nRst, nA2, nRst, nC3
        dc.b    $15
        smpsModOn
        dc.b    smpsNoAttack, $21, nRst, $09
        smpsModOff
        dc.b    nRst, $03, nD2, $0C, nC2, $06, nD2, nRst, nF2, $0C, nD2, $06
        dc.b    nRst, nC2, nRst, nD2, $03, nRst, nD2, $0C, nF2, nD2, $06, nF2
        dc.b    nRst, nA2, nRst, nC3, $15
        smpsModOn
        dc.b    smpsNoAttack, $1E
        smpsModOff
        dc.b    smpsNoAttack, $03, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $33
        smpsJump            SkyFortress2_PSG2

; PSG3 Data
SkyFortress2_PSG3:
        smpsPSGform         $E7

SkyFortress2_Jump01:
        dc.b    nRst, $06
        smpsPSGvoice        fTone_01
        dc.b    nMaxPSG

SkyFortress2_Loop12:
        dc.b    $09, $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $09
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $06, $03
        smpsPSGvoice        fTone_02
        dc.b    $0C
        smpsPSGvoice        fTone_01
        dc.b    $06, $03, $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03, $06, $06, $06
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $09
        smpsLoop            $00, $14, SkyFortress2_Loop12
        dc.b    $06, $03, $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03, $06, $06, $06
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsJump            SkyFortress2_Jump01

SkyFortress2_Voices:
;       Voice $00
;       $20
;       $36, $35, $30, $31,     $DF, $DF, $9F, $9F,     $07, $06, $09, $06
;       $07, $06, $06, $08,     $20, $10, $10, $F8,     $19, $37, $13, $00
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

;       Voice $01
;       $38
;       $75, $13, $71, $11,     $D1, $52, $14, $14,     $0A, $07, $01, $01
;       $00, $00, $00, $00,     $F0, $F0, $F0, $FC,     $1E, $1E, $1E, $00
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


