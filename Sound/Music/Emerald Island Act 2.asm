GHZ_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     GHZ_Voices
        smpsHeaderChan      $06, $03
        smpsHeaderTempo     $02, $08

        smpsHeaderDAC       GHZ_DAC
        smpsHeaderFM        GHZ_FM1,    $00, $17
        smpsHeaderFM        GHZ_FM2,    $00, $17
        smpsHeaderFM        GHZ_FM3,    $00, $0F
        smpsHeaderFM        GHZ_FM4,    $00, $35
        smpsHeaderFM        GHZ_FM5,    $00, $23
        smpsHeaderPSG       GHZ_PSG1,   $00, $07, $00, $00
        smpsHeaderPSG       GHZ_PSG2,   $00, $0D, $00, $00
        smpsHeaderPSG       GHZ_PSG3,   $00, $00, $00, $00

; DAC Data
GHZ_DAC:
        smpsPan             panCenter, $00
        dc.b    dKickAlt, $03, $03, $03, dSnareAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dKickAlt
        dc.b    dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt

GHZ_Loop00:
        dc.b    dSnareAlt, dKickAlt, dKickAlt
        smpsLoop            $00, $03, GHZ_Loop00

GHZ_Loop01:
        dc.b    dKickAlt, dKickAlt, dSnareAlt, dKickAlt
        smpsLoop            $00, $03, GHZ_Loop01
        dc.b    dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dSnareAlt
        dc.b    dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dSnareAlt, $1E, dKickAlt, $06, $06, dSnareAlt, dKickAlt
        dc.b    $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, $03, dKickAlt, dKickAlt, dKickAlt, $09
        dc.b    $06, dSnareAlt, dKickAlt, $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, $03, dKickAlt
        dc.b    dKickAlt, dKickAlt, dKickAlt, $06, $06, dSnareAlt, dKickAlt, $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt
        dc.b    $06, dSnareAlt, $03, dKickAlt, dKickAlt, $06, $03, $03, $03, dSnareAlt, dKickAlt, dKickAlt
        dc.b    dSnareAlt, $1E, dKickAlt, $06, $06, dSnareAlt, dKickAlt, $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt
        dc.b    $06, dSnareAlt, $03, dKickAlt, dKickAlt, dKickAlt, $09

GHZ_Loop02:
        dc.b    $06, dSnareAlt, dKickAlt, $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, $03, dKickAlt
        dc.b    dKickAlt, dKickAlt, dKickAlt, $06
        smpsLoop            $00, $02, GHZ_Loop02

GHZ_Loop06:
        dc.b    $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $1B, dKickAlt

GHZ_Loop04:
        dc.b    $09, dSnareAlt, $03, dKickAlt, dKickAlt

GHZ_Loop03:
        dc.b    dKickAlt, dKickAlt, dSnareAlt
        smpsLoop            $00, $03, GHZ_Loop03
        dc.b    dKickAlt
        smpsLoop            $01, $02, GHZ_Loop04
        dc.b    dKickAlt, $09, dSnareAlt

GHZ_Loop05:
        dc.b    $03, dKickAlt
        smpsLoop            $00, $06, GHZ_Loop05
        dc.b    dKickAlt, dKickAlt, $06
        smpsLoop            $02, $02, GHZ_Loop06
        dc.b    $03, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $1B
        smpsJump            GHZ_DAC

; FM1 Data
GHZ_FM1:
        smpsSetvoice        $00
        smpsAlterNote       $00
        smpsPan             panCenter, $00
        dc.b    nA5, $09, $03, nRst, $06, nAb5, $12, nRst, $0C, nA5, $09, $03
        dc.b    nRst, $06, nAb5, nRst, nB5, $0C, nRst, $06, nA5, $09, $03, nRst
        dc.b    $06, nAb5, $12, nRst, $0C

GHZ_Loop0A:
        dc.b    nB5, $03, nRst, $06
        smpsLoop            $00, $03, GHZ_Loop0A
        smpsSetvoice        $03
        smpsAlterVol        $07
        dc.b    nB3, $03
        smpsAlterVol        $F9
        dc.b    nCs4, nD4, nE4, nFs4, nAb4, nA4, nD5, $18, nRst, $06, nD5, $0C
        dc.b    nCs5, $06, nD5, $18, $06, nCs5, $02, nD5, $01, nCs5, $03, nB4
        dc.b    $06, nA4, nA4, $09, nB4, $03, nRst, $06, nAb4, $18, nRst, $21
        dc.b    nB3, $03, nCs4, nD4, nE4, nFs4, nAb4, nA4, nD5, $1E, $0C, nCs5
        dc.b    $06, nD5, $18, $06, nCs5, $02, nD5, $01, nCs5, $03, nB4, $06
        dc.b    nA4, nA4, $09, nAb4, $03, nRst, $06, nE5, $18, nRst, $06
        smpsSetvoice        $00
        dc.b    nRst, $1E
        smpsAlterVol        $07
        dc.b    nE5, $06, nFs5, nAb5

GHZ_Loop0B:
        smpsAlterNote       $0A
        dc.b    nG5, $01
        smpsAlterNote       $F1
        dc.b    smpsNoAttack, nAb5
        smpsAlterNote       $04
        dc.b    smpsNoAttack, nA5, $07
        smpsAlterNote       $00
        dc.b    nAb5, $03, nRst, $06, nFs5, $09, nRst, $03, nE5, $0C, nRst, $06
        smpsLoop            $00, $02, GHZ_Loop0B
        dc.b    nE5, nE5, nFs5, nE5, nFs5, $09, nAb5, $0C, nRst, $03, nE5, nRst
        dc.b    nE5, nRst, nFs5, nRst, nE5, nRst, $09, nE5, $06, nFs5, nAb5

GHZ_Loop0C:
        smpsAlterNote       $0A
        dc.b    nG5, $01
        smpsAlterNote       $F1
        dc.b    smpsNoAttack, nAb5
        smpsAlterNote       $04
        dc.b    smpsNoAttack, nA5, $07
        smpsAlterNote       $00
        dc.b    nAb5, $03, nRst, $06, nFs5, $09, nRst, $03, nE5, $0C, nRst, $06
        smpsLoop            $00, $02, GHZ_Loop0C
        dc.b    nFs5, $09, nA5, nA5, $06, $06, $06, nAb5, nA5, nB5, $03, nRst
        dc.b    nB5, nRst, nCs6, nRst, nB5, nRst, nE4, $02, nRst, $01, nE4, nRst
        dc.b    nRst, nAb4, $02, nRst, $01, nE4, $02, nRst, $01, nAb4, nRst, nRst
        dc.b    nB4, $02, nRst, $01, nCs5, $02, nRst, $01, nD5, $02, nRst, $01
        smpsAlterVol        $F9
        smpsJump            GHZ_FM1

; FM2 Data
GHZ_FM2:
        smpsSetvoice        $00

GHZ_Jump01:
        dc.b    nFs5, $09, $03, nRst, $06, nE5, $12, nRst, $0C, nFs5, $09, $03
        dc.b    nRst, $06, nE5, nRst, nAb5, $0C, nRst, $06, nFs5, $09, $03, nRst
        dc.b    $06, nE5, $12, nRst, $0C, nAb5, $03, nRst, $06, nAb5, $03, nRst
        dc.b    $06, nAb5, $03, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $1E
        smpsAlterVol        $16

GHZ_Loop08:
        dc.b    nD5, $09, nE5, $03, nRst, $06, nD5, $09, nRst, $03, nCs5, $0C
        dc.b    nRst, $06
        smpsLoop            $00, $02, GHZ_Loop08
        dc.b    nCs5, nCs5, nD5, nCs5, nD5, $09, nE5, $0C, nRst, $03, nCs5, nRst
        dc.b    nCs5, nRst, nD5, nRst, nCs5, nRst, $1B

GHZ_Loop09:
        dc.b    nD5, $09, nE5, $03, nRst, $06, nD5, $09, nRst, $03, nCs5, $0C
        dc.b    nRst, $06
        smpsLoop            $00, $02, GHZ_Loop09
        smpsAlterVol        $EF
        dc.b    nA5, $09
        smpsAlterVol        $02
        dc.b    nFs5, nFs5, $06, $06, $06, nE5, nFs5, nAb5, $03, nRst, nAb5, nRst
        dc.b    nA5, nRst, nAb5, nRst, nB3, $02, nRst, $01, nB3, nRst, nRst, nE4
        dc.b    $02, nRst, $01, nB3, $02, nRst, $01, nE4, nRst, nRst, nAb4, $02
        dc.b    nRst, $01, nA4, $02, nRst, $01, nB4, $02, nRst, $01
        smpsAlterVol        $F9
        smpsJump            GHZ_Jump01

; FM3 Data
GHZ_FM3:
        smpsSetvoice        $01
        smpsAlterNote       $00
        smpsPan             panCenter, $00
        dc.b    nE3, $09, $03, nRst, $06, nAb3, $0C, nE3, $03, nAb3, nB3, $06
        dc.b    nA3, $03, nAb3, nE3, $09, $03, nRst, $06, nAb3, $0C, nE3, $03
        dc.b    nFs3, nAb3, nA3, nB3, nCs4, nE3, $09, $03, nRst, $06, nAb3, $0C
        dc.b    nE3, $03, nAb3, nB3, $06, nA3, $03, nAb3, nFs3, nRst, $06, nFs3
        dc.b    $03, nRst, $06, nB2, $03, nRst, $15

GHZ_Loop07:
        dc.b    nB2, $06, nD3, $12, $03, nCs3, nD3, $12
        smpsLoop            $00, $02, GHZ_Loop07
        dc.b    nB2, $06, $30, nE3, $2A
        smpsLoop            $01, $02, GHZ_Loop07
        dc.b    nD3, $03, nCs3, nD3, $09, nCs3, $03, nRst, $06, nG3, $01
        smpsAlterNote       $15
        dc.b    smpsNoAttack, $01
        smpsAlterNote       $EC
        dc.b    smpsNoAttack, nA3
        smpsAlterNote       $04
        dc.b    smpsNoAttack, $09
        smpsAlterNote       $00
        dc.b    $12, nCs3, $09, nB2, $03, nRst, $06, nD3, $01
        smpsAlterNote       $0F
        dc.b    smpsNoAttack, $01
        smpsAlterNote       $F2
        dc.b    smpsNoAttack, nE3
        smpsAlterNote       $03
        dc.b    smpsNoAttack, $09
        smpsAlterNote       $00
        dc.b    $0C, nRst, $06, nE3, nE3, $0C, $03, nD3, nE3, $06, $0C, $03
        dc.b    nD3, nE3, $18, nRst, $12, nD3, $03, nCs3, nD3, $09, nCs3, $03
        dc.b    nRst, $06, nG3, $01
        smpsAlterNote       $15
        dc.b    smpsNoAttack, $01
        smpsAlterNote       $EC
        dc.b    smpsNoAttack, nA3
        smpsAlterNote       $04
        dc.b    smpsNoAttack, $09
        smpsAlterNote       $00
        dc.b    $12, nCs3, $09, nB2, $03, nRst, $06, nD3, $01
        smpsAlterNote       $0F
        dc.b    smpsNoAttack, $01
        smpsAlterNote       $F2
        dc.b    smpsNoAttack, nE3
        smpsAlterNote       $03
        dc.b    smpsNoAttack, $09
        smpsAlterNote       $00
        dc.b    $0C, nB2, $03, nCs3, nFs3, $12, $03, nE3, nA3, $12, $03, nCs3
        dc.b    nB2, nRst, nB2, nRst, nCs3, nRst, nB2, nRst, $1B
        smpsJump            GHZ_FM3

; FM4 Data
GHZ_FM4:
        smpsSetvoice        $02
        dc.b    nRst, $7F, nRst, $41, nD5, $30, $30, nB4, $18, $18, nAb4, $30
        dc.b    nD5, nD5, nB4, $18, nFs4, nE5, $30, nA5, nA5, nE5, nE5, nA5
        dc.b    nA5, nA5, nB5
        smpsJump            GHZ_FM4

; FM5 Data
GHZ_FM5:
        smpsSetvoice        $02

GHZ_Jump00:
        dc.b    nRst, $7F, nRst, $41, nA4, $30, $30, nFs4, $18, $18, nE4, $30
        dc.b    nA4, nA4, nFs4, $18, nB4, nB4, $30, nE5, nE5, nB4, nB4, nE5
        dc.b    nE5, nE5, nAb5
        smpsJump            GHZ_Jump00

; PSG1 Data
GHZ_PSG1:
        smpsAlterNote       $00
        smpsPSGvoice        $00
        dc.b    nRst, $7F, nRst, $41, nAb2, $02, nA2, $01, nAb2, $02, nE2, $01
        dc.b    nE3, $03, nRst, nAb2, nA2, nAb2, nE2, nA2, nAb2, nE2, nB2, nA2
        dc.b    nAb2, nB2, nA2, nB2, $02, $01, $02, $01, nD3, $03, nCs3

GHZ_Loop1D:
        dc.b    nB2, nA3, nE3
        smpsLoop            $00, $03, GHZ_Loop1D
        dc.b    nB2, nAb2, $02, nFs2, $01, nE2, $02, $01, $03, nAb2, nE2, nB2
        dc.b    nA2, nAb2, nE2, nB2, nA2, nE2, nB2, nE2, nFs2, nAb2, nA2, nE2
        dc.b    $02, $01, $03, $03, nB2, nAb2, nB2, nA2, $02, nAb2, $01, nA2
        dc.b    $03, nB2, nE3, nRst, $15, nAb2, $02, nA2, $01, nAb2, $02, nE2
        dc.b    $01, nE3, $03, nRst, nAb2, nA2, nAb2, nE2, nA2, nAb2, nE2, nB2
        dc.b    nA2, nAb2, nB2, nA2, nB2, $02, $01, $02, $01, nD3, $03, nCs3

GHZ_Loop1E:
        dc.b    nB2, nA3, nE3
        smpsLoop            $00, $03, GHZ_Loop1E
        dc.b    nB2, nAb2, nE2, nAb3, nFs3, nE3, nB2, nFs3, nE3, nB2, nAb2, nFs3
        dc.b    nE3, nB2, nAb2, nE2, nB2, nFs3, nE3, $02, $01, $03, nAb2, nE2
        dc.b    nAb2, nE3, nE2, nE3, nE2, nE3, nRst, nA2, nAb2, nA2, nB2, nCs3
        dc.b    nB2, nD3, nCs3, nB2, nA2, nAb2, nA2, nE2, nA2
        smpsPSGAlterVol     $FE
        dc.b    nD4, nA2
        smpsPSGAlterVol     $02
        dc.b    nE2
        smpsPSGAlterVol     $FE
        dc.b    nD4
        smpsPSGAlterVol     $02
        dc.b    nA2, nE2
        smpsPSGAlterVol     $FE
        dc.b    nD4
        smpsPSGAlterVol     $02
        dc.b    nE2, nCs3, nB2, nA2, nAb2, nE2, nFs2, nAb2, nA2, nCs4, nA2, nE2
        dc.b    nCs4, nA2, nE2, nCs4, nA2, nE1, $02, nFs1, $01, nAb1, $02, nB1
        dc.b    $01, nE2, $02, nFs2, $01, nAb2, $02, nA2, $01, nB2, $03, $03
        dc.b    nCs3, nD3, nE3, nE3, $02, nB2, $01, nA2, $02, nAb2, $01, nFs2
        dc.b    $02, nE2, $01, nB1, $02, nAb1, $01, nFs1, $02, nE1, $01, $02
        dc.b    $01, nRst, $03, nAb1, nB1, nE2, nAb2, nE3, nE2, nE3, nE2, nE3
        dc.b    nRst, nA2, nAb2, nA2, nB2, nCs3, nB2, nD3, nCs3, nB2, nA2, nAb2
        dc.b    nA2, nE2, nA2
        smpsPSGAlterVol     $FE
        dc.b    nD4, nA2
        smpsPSGAlterVol     $02
        dc.b    nE2
        smpsPSGAlterVol     $FE
        dc.b    nD4
        smpsPSGAlterVol     $02
        dc.b    nA2, nE2
        smpsPSGAlterVol     $FE
        dc.b    nD4
        smpsPSGAlterVol     $02
        dc.b    nE2, nCs3, nB2, nA2, nAb2, nE2, nFs2, nAb2, nA2, nCs4, nA2, nE2
        dc.b    nCs4, nA2, nE2, nCs4, nA2, nRst, $30, nRst, $30
        smpsJump            GHZ_PSG1

; PSG2 Data
GHZ_PSG2:
        dc.b    nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $71, nB2, $03
        dc.b    nRst, nD3, nRst, nE3, nRst, $7F, nRst, $32
        smpsPSGAlterVol     $FA
        dc.b    nB2, $03, nRst, nD3, nRst, nE3, nRst, $7F, nRst, $41
        smpsPSGAlterVol     $06
        smpsJump            GHZ_PSG2

; PSG3 Data
GHZ_PSG3:
        smpsPSGform         $E7

GHZ_Jump02:
        smpsAlterNote       $00

GHZ_Loop0D:
        smpsPSGvoice        fTone_01
        dc.b    nMaxPSG, $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsLoop            $00, $03, GHZ_Loop0D

GHZ_Loop0E:
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        smpsLoop            $00, $02, GHZ_Loop0E

GHZ_Loop0F:
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsLoop            $00, $03, GHZ_Loop0F
        dc.b    $03

GHZ_Loop10:
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        smpsLoop            $00, $02, GHZ_Loop10

GHZ_Loop11:
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsLoop            $00, $03, GHZ_Loop11
        dc.b    $03

GHZ_Loop12:
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        smpsLoop            $00, $02, GHZ_Loop12

GHZ_Loop13:
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03
        smpsLoop            $00, $02, GHZ_Loop13
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $1E

GHZ_Loop15:
        dc.b    $03, $03
        smpsPSGvoice        fTone_02

GHZ_Loop14:
        dc.b    $03
        smpsLoop            $00, $09, GHZ_Loop14
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $03, $03
        smpsLoop            $01, $03, GHZ_Loop15

GHZ_Loop16:
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        smpsLoop            $00, $02, GHZ_Loop16
        dc.b    $1E

GHZ_Loop18:
        dc.b    $03, $03
        smpsPSGvoice        fTone_02

GHZ_Loop17:
        dc.b    $03
        smpsLoop            $00, $09, GHZ_Loop17
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $03, $03
        smpsLoop            $01, $03, GHZ_Loop18

GHZ_Loop1C:
        dc.b    $03, $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $03, $1B
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02

GHZ_Loop19:
        dc.b    $03
        smpsLoop            $00, $07, GHZ_Loop19
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $03
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $03, $03
        smpsPSGAlterVol     $FD

GHZ_Loop1A:
        dc.b    $03
        smpsLoop            $00, $09, GHZ_Loop1A
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $03
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $03, $03
        smpsPSGAlterVol     $FD
        dc.b    $03
        smpsPSGvoice        fTone_01
        dc.b    $03
        smpsPSGvoice        fTone_02

GHZ_Loop1B:
        dc.b    $03
        smpsLoop            $00, $07, GHZ_Loop1B
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $03
        dc.b    $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $03, $03
        smpsPSGAlterVol     $FD
        dc.b    $03
        smpsPSGvoice        fTone_01
        smpsLoop            $01, $02, GHZ_Loop1C
        dc.b    $03, $03
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $03, $03, $03, $1B
        smpsJump            GHZ_Jump02

GHZ_Voices:
;       Voice $00
;       $35
;       $61, $61, $41, $71,     $10, $11, $50, $D1,     $06, $01, $01, $01
;       $08, $00, $09, $00,     $89, $18, $19, $18,     $18, $00, $00, $00
        smpsVcAlgorithm     $05
        smpsVcFeedback      $06
        smpsVcUnusedBits    $00
        smpsVcDetune        $07, $04, $06, $06
        smpsVcCoarseFreq    $01, $01, $01, $01
        smpsVcRateScale     $03, $01, $00, $00
        smpsVcAttackRate    $11, $10, $11, $10
        smpsVcAmpMod        $00, $00, $00, $00
        smpsVcDecayRate1    $01, $01, $01, $06
        smpsVcDecayRate2    $00, $09, $00, $08
        smpsVcDecayLevel    $01, $01, $01, $08
        smpsVcReleaseRate   $08, $09, $08, $09
        smpsVcTotalLevel    $00, $00, $00, $18

;       Voice $01
;       $2A
;       $50, $03, $11, $00,     $90, $CE, $CD, $9B,     $05, $0A, $09, $08
;       $00, $00, $12, $0C,     $09, $FF, $50, $4A,     $18, $27, $25, $00
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

;       Voice $02
;       $3C
;       $71, $41, $51, $11,     $12, $12, $12, $12,     $00, $00, $00, $00
;       $00, $00, $00, $00,     $00, $06, $00, $06,     $23, $00, $23, $00
        smpsVcAlgorithm     $04
        smpsVcFeedback      $07
        smpsVcUnusedBits    $00
        smpsVcDetune        $01, $05, $04, $07
        smpsVcCoarseFreq    $01, $01, $01, $01
        smpsVcRateScale     $00, $00, $00, $00
        smpsVcAttackRate    $12, $12, $12, $12
        smpsVcAmpMod        $00, $00, $00, $00
        smpsVcDecayRate1    $00, $00, $00, $00
        smpsVcDecayRate2    $00, $00, $00, $00
        smpsVcDecayLevel    $00, $00, $00, $00
        smpsVcReleaseRate   $06, $00, $06, $00
        smpsVcTotalLevel    $00, $23, $00, $23

;       Voice $03
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


