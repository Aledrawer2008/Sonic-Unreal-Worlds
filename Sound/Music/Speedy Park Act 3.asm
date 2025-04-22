Gigalopolis_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     Gigalopolis_Voices
        smpsHeaderChan      $06, $03
        smpsHeaderTempo     $02, $04

        smpsHeaderDAC       Gigalopolis_DAC
        smpsHeaderFM        Gigalopolis_FM1,    $00, $16
        smpsHeaderFM        Gigalopolis_FM2,    $00, $16
        smpsHeaderFM        Gigalopolis_FM3,    $00, $18
        smpsHeaderFM        Gigalopolis_FM4,    $00, $1D
        smpsHeaderFM        Gigalopolis_FM5,    $00, $1A
        smpsHeaderPSG       Gigalopolis_PSG1,   $00, $00, $00, $00
        smpsHeaderPSG       Gigalopolis_PSG2,   $00, $00, $00, $00
        smpsHeaderPSG       Gigalopolis_PSG3,   $00, $05, $00, $00

; DAC Data
Gigalopolis_DAC:
        smpsPan             panCenter, $00
        dc.b    dKickAlt, $18, $24, $12, $0C, $06, $18, $24, $12, $06, dSnareAlt, $03
        dc.b    $03, $03, $03, dKickAlt

Gigalopolis_Loop00:
        dc.b    $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $03, $03, dKickAlt, $06
        smpsLoop            $00, $07, Gigalopolis_Loop00
        dc.b    $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $03, $03, dKickAlt, dSnareAlt
        dc.b    $0F, dKickAlt, $0C, $12, dSnareAlt, $06, dKickAlt, $12, $0F, $09, dSnareAlt, $03
        dc.b    $0F, dKickAlt, $0C, $12, dSnareAlt, $06, dKickAlt, $12, $0F, $03, dSnareAlt, dSnareAlt
        dc.b    dSnareAlt, dSnareAlt
        smpsJump            Gigalopolis_DAC

; FM1 Data
Gigalopolis_FM1:
        smpsSetvoice        $00
        smpsPan             panLeft, $00

Gigalopolis_Loop11:
        dc.b    nAb4, $03, $03, nAb5, nAb4, nFs5, nAb4, nF5, nAb4, nEb5, nAb4, nF5
        dc.b    nAb4, nEb5, nAb4, nFs4, nG4, nAb4, nAb4, nAb5, nAb4, nFs5, nAb4, nF5
        dc.b    nAb4, nEb5, nAb4, nF5, nAb4, nEb5, nAb4, nFs4, nEb4
        smpsLoop            $00, $02, Gigalopolis_Loop11
        dc.b    nRst, nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop12:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop12
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $09
        dc.b    nAb5, nRst
        smpsAlterVol        $06
        dc.b    nAb5, nRst, $06
        smpsAlterVol        $DA
        dc.b    nAb5, $03
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop13:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop13
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $E9
        dc.b    nF5, $02, nFs5, $01, nAb5, $02, nRst, $01, nB5, $06, nRst, $03
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop14:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop14
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $09
        dc.b    nAb5, nRst
        smpsAlterVol        $06
        dc.b    nAb5, nRst, $06
        smpsAlterVol        $DA
        dc.b    nAb5, $03
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop15:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop15
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $E9
        dc.b    nF5, $02, nFs5, $01, nAb5, $02, nRst, $01, nB5, $06, nRst, $03
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7

Gigalopolis_Loop16:
        dc.b    nB5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nBb5
        smpsLoop            $00, $02, Gigalopolis_Loop16
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nB5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nCs6, nRst
        smpsAlterVol        $07
        dc.b    nCs6, nRst
        smpsAlterVol        $09
        dc.b    nCs6, nRst
        smpsAlterVol        $06
        dc.b    nCs6, nRst, $06
        smpsAlterVol        $DA
        dc.b    nCs6, $03
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7

Gigalopolis_Loop17:
        dc.b    nB5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nBb5
        smpsLoop            $00, $02, Gigalopolis_Loop17
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nB5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nCs6
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nBb5, $02, nB5, nC6, nRst, $03, nCs6, nFs5, $06, nB5, $03, nF5
        dc.b    $06, nE5, $03, nRst, nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop18:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop18
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $07
        dc.b    nAb5, nRst
        smpsAlterVol        $09
        dc.b    nAb5, nRst
        smpsAlterVol        $06
        dc.b    nAb5, nRst, $06
        smpsAlterVol        $DA
        dc.b    nAb5, $03
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $FD
        dc.b    $03, nRst
        smpsAlterVol        $F7
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nF5

Gigalopolis_Loop19:
        dc.b    nFs5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        smpsLoop            $00, $03, Gigalopolis_Loop19
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03, nRst
        smpsAlterVol        $F4
        dc.b    nAb5
        smpsAlterVol        $0C
        dc.b    $03
        smpsAlterVol        $F4
        dc.b    nA5, $02, nBb5, nB5, nRst, $03, nC6, nCs6, $06, nD6, $03, nEb6
        dc.b    nE6, $02, nEb6, nD6, nEb5, $06, nEb6, nE5, nE6, $03, nEb5, $06
        dc.b    nEb6, $03, nEb5, $06, nCs5, nEb5, nCs5, nCs6, nEb5, nEb6, $03, nCs5
        dc.b    $06, nCs6, $03, nCs5, $06, nB4, $03, nBb4, nA4, nAb4, nEb5, $06
        dc.b    nEb6, nE5, nE6, $03, nEb5, $06, nEb6, $03, nEb5, $06, nCs5, nEb5
        dc.b    nCs5, nCs6, nEb5, nEb6, $03, nCs5, $06, nCs6, $03, nCs5, $06, nB4
        dc.b    $03, nC5, nCs5, nD5
        smpsJump            Gigalopolis_FM1

; FM2 Data
Gigalopolis_FM2:
        smpsSetvoice        $00
        smpsPan             panRight, $00

Gigalopolis_Loop0D:
        dc.b    nAb3, $03, $03, nAb4, nAb3, nFs4, nAb3, nF4, nAb3, nEb4, nAb3, nF4
        dc.b    nAb3, nEb4, nAb3, nFs3, nG3, nAb3, nAb3, nAb4, nAb3, nFs4, nAb3, nF4
        dc.b    nAb3, nEb4, nAb3, nF4, nAb3, nEb4, nAb3, nFs3, nEb3
        smpsLoop            $00, $06, Gigalopolis_Loop0D

Gigalopolis_Loop0E:
        dc.b    nCs3, nCs3, nCs4, nCs3, nB3, nCs3, nBb3, nCs3, nAb3, nCs3, nBb3, nCs3
        dc.b    nAb3, nCs3, nB3, nC4, nCs3, nCs3, nCs4, nCs3, nB3, nCs3, nBb3, nCs3
        dc.b    nAb3, nCs3, nBb3, nCs3, nAb3, nCs3, nB3, nAb3
        smpsLoop            $00, $02, Gigalopolis_Loop0E

Gigalopolis_Loop0F:
        dc.b    nAb3, nAb3, nAb4, nAb3, nFs4, nAb3, nF4, nAb3, nEb4, nAb3, nF4, nAb3
        dc.b    nEb4, nAb3, nFs3, nG3, nAb3, nAb3, nAb4, nAb3, nFs4, nAb3, nF4, nAb3
        dc.b    nEb4, nAb3, nF4, nAb3, nEb4, nAb3, nFs3, nEb3
        smpsLoop            $00, $02, Gigalopolis_Loop0F

Gigalopolis_Loop10:
        dc.b    nEb3, nRst, nEb4, nRst, nE3, nRst, nE4, nEb3, nRst, nEb4, nEb3, nRst
        dc.b    nCs3, nRst, nEb3, nRst, nCs3, nRst, nCs4, nRst, nEb3, nRst, nEb4, nCs3
        dc.b    nRst, nCs4, nCs3, nRst, nCs3, nRst, nCs3, nRst
        smpsLoop            $00, $02, Gigalopolis_Loop10
        smpsJump            Gigalopolis_FM2

; FM3 Data
Gigalopolis_FM3:
        smpsSetvoice        $00
        smpsPan             panLeft, $00
        dc.b    nRst, $7F, nRst, $44

Gigalopolis_Loop0C:
        dc.b    nAb4, $03, nRst, $06, nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $F8
        dc.b    nFs4, nFs4, nF4, nFs4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, $06
        dc.b    nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $07
        dc.b    nAb4, nRst
        smpsAlterVol        $09
        dc.b    nAb4, nRst
        smpsAlterVol        $05
        dc.b    nAb4, nRst, $06
        smpsAlterVol        $DB
        dc.b    nAb4, $03, nRst, $06, nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $F8
        dc.b    nFs4, nFs4, nF4, nFs4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, $06
        dc.b    nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $07
        dc.b    nAb4, nRst
        smpsAlterVol        $E9
        dc.b    nF4, $02, nFs4, $01, nAb4, $02, nB4, $07, nRst, $03
        smpsLoop            $00, $02, Gigalopolis_Loop0C
        dc.b    nCs5, nRst, $06, nCs5, $03, nRst
        smpsAlterVol        $08
        dc.b    nCs5, nRst
        smpsAlterVol        $F8
        dc.b    nB4, nB4, nBb4, nB4, nRst, nBb4, nRst, nB4, nRst, nCs5, nRst, $06
        dc.b    nCs5, $03, nRst
        smpsAlterVol        $08
        dc.b    nCs5, nRst
        smpsAlterVol        $08
        dc.b    nCs5, nRst
        smpsAlterVol        $07
        dc.b    nCs5, nRst
        smpsAlterVol        $09
        dc.b    nCs5, nRst
        smpsAlterVol        $05
        dc.b    nCs5, nRst, $06
        smpsAlterVol        $DB
        dc.b    nCs5, $03, nRst, $06, nCs5, $03, nRst
        smpsAlterVol        $08
        dc.b    nCs5, nRst
        smpsAlterVol        $F8
        dc.b    nB4, nB4, nBb4, nB4, nRst, nBb4, nRst, nB4, nRst, nCs5, nRst, $06
        dc.b    nCs5, $03, nRst, nBb4, $02, nB4, nC5, nCs5, $03, nRst, $06, nC5
        dc.b    $03, nRst, $07, nB4, $03, nRst, $05, nAb4, $03, nRst, $06, nAb4
        dc.b    $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $F8
        dc.b    nFs4, nFs4, nF4, nFs4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, $06
        dc.b    nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $07
        dc.b    nAb4, nRst
        smpsAlterVol        $09
        dc.b    nAb4, nRst
        smpsAlterVol        $05
        dc.b    nAb4, nRst, $06
        smpsAlterVol        $DB
        dc.b    nAb4, $03, nRst, $06, nAb4, $03, nRst
        smpsAlterVol        $08
        dc.b    nAb4, nRst
        smpsAlterVol        $F8
        dc.b    nFs4, nFs4, nF4, nFs4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, $06
        dc.b    nAb4, $03, nRst, nA4, $02, nBb4, nB4, nFs5, $03, nRst, $06, nAb5
        dc.b    $03, nRst, $06, nE5, $02, nEb5, nD5, nBb4, $06, $06, nB4, nB5
        dc.b    $03, nBb4, $06, $03, $06, nAb4, nBb4, nAb4, nAb4, nBb4, nBb5, $03
        dc.b    nAb4, $06, $03, $06, nFs4, $03, nF4, nE4, nEb4, nBb4, $06, $06
        dc.b    nB4, nB5, $03, nBb4, $06, $03, $06, nAb4, nBb4, nAb4, nAb4, nBb4
        dc.b    nBb5, $03, nAb4, $06, $03, $06, nFs4, $03, nG4, nAb4, nA4
        smpsJump            Gigalopolis_FM3

; FM4 Data
Gigalopolis_FM4:
        smpsSetvoice        $01

Gigalopolis_Loop04:
        dc.b    nAb3

Gigalopolis_Loop02:
        dc.b    $03
        smpsLoop            $00, $0E, Gigalopolis_Loop02
        dc.b    nFs3

Gigalopolis_Loop03:
        dc.b    nAb3
        smpsLoop            $00, $0F, Gigalopolis_Loop03
        dc.b    nFs3, nEb3
        smpsLoop            $01, $02, Gigalopolis_Loop04

Gigalopolis_Loop07:
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst

Gigalopolis_Loop05:
        dc.b    nFs3
        smpsLoop            $00, $08, Gigalopolis_Loop05
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst, $0F, nAb3, $03, $03
        dc.b    nFs3, nEb3, nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst

Gigalopolis_Loop06:
        dc.b    nFs3
        smpsLoop            $00, $08, Gigalopolis_Loop06
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst, $0F, nAb3, $03, $03
        dc.b    nA3, nB3
        smpsLoop            $01, $02, Gigalopolis_Loop07

Gigalopolis_Loop09:
        dc.b    nCs4, nCs4, nCs4, nRst, nCs4, nCs4, nCs4, nRst

Gigalopolis_Loop08:
        dc.b    nCs4
        smpsLoop            $00, $0B, Gigalopolis_Loop08
        dc.b    nRst, nCs4, nCs4, nCs4, nRst, $0F, nCs4, $03, $03, nB3, nAb3
        smpsLoop            $01, $02, Gigalopolis_Loop09
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst

Gigalopolis_Loop0A:
        dc.b    nFs3
        smpsLoop            $00, $08, Gigalopolis_Loop0A
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst, $0F, nAb3, $03, $03
        dc.b    nFs3, nEb3, nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst

Gigalopolis_Loop0B:
        dc.b    nFs3
        smpsLoop            $00, $08, Gigalopolis_Loop0B
        dc.b    nAb3, nAb3, nAb3, nRst, nAb3, nAb3, nAb3, nRst, $0F, nAb3, $03, $03
        dc.b    nA3, nB3, nEb4, nEb4, nEb4, nEb4, nE4, nE4, nE4, $06, nEb4, $03
        dc.b    $03, $03, $03, nCs4, nCs4, nEb4, nEb4, nCs4, nCs4, nCs4, nCs4, nEb4
        dc.b    nEb4, nEb4, $06, nCs4, $03, $03, $03, $03, $03, $03, nEb4, nEb4
        dc.b    nEb4, nEb4, nEb4, nEb4, nE4, nE4, nE4, $06, nEb4, $03, $03, $03
        dc.b    $03, nCs4, nCs4, nEb4, nEb4, nCs4, nCs4, nCs4, nCs4, nEb4, nEb4, nEb4
        dc.b    $06, nCs4, $03, $03, $03, $03, $03, $03, nB3, nAb3
        smpsJump            Gigalopolis_FM4

; FM5 Data
Gigalopolis_FM5:
        smpsSetvoice        $00
        smpsPan             panCenter, $00
        dc.b    nRst, $7F, nRst, $44

Gigalopolis_Loop01:
        dc.b    nEb5, $03, nRst, $06, nEb5, $03, nRst, $09, nCs5, $03, nRst, nC5
        dc.b    nCs5, nRst, nCs5, nRst, nCs5, nRst, nEb5, nRst, $06, nEb5, $03, nRst
        dc.b    $24, nEb5, $03, nRst, $06, nEb5, $03, nRst, $09, nCs5, $03, nRst
        dc.b    nC5, nCs5, nRst, nCs5, nRst, nCs5, nRst, nEb5, nRst, $06, nEb5, $03
        dc.b    nRst, $1B, nFs5, $06, nRst, $03
        smpsLoop            $00, $02, Gigalopolis_Loop01
        dc.b    nAb5, nRst, $06, nAb5, $03, nRst, $09, nFs5, $03, nRst, nF5, nFs5
        dc.b    nRst, nFs5, nRst, nFs5, nRst, nAb5, nRst, $06, nAb5, $03, nRst, $24
        dc.b    nAb5, $03, nRst, $06, nAb5, $03, nRst, $09, nFs5, $03, nRst, nF5
        dc.b    nFs5, nRst, nFs5, nRst, nFs5, nRst, nAb5, nRst, $06, nAb5, $03, nRst
        dc.b    $0C, nAb5, $03, nCs5, $06, nFs5, $03, nCs5, $06, nC5, $03, nRst
        dc.b    nEb5, nRst, $06, nEb5, $03, nRst, $09, nCs5, $03, nRst, nC5, nCs5
        dc.b    nRst, nCs5, nRst, nCs5, nRst, nEb5, nRst, $06, nEb5, $03, nRst, $24
        dc.b    nEb5, $03, nRst, $06, nEb5, $03, nRst, $09, nCs5, $03, nRst, nC5
        dc.b    nCs5, nRst, nCs5, nRst, nCs5, nRst, nEb5, nRst, $06, nEb5, $03, nRst
        dc.b    $0C, nG5, $03, nAb5, $06, nA5, $03, nBb5, nB5, $02, nBb5, nA5
        dc.b    nRst, $7F, nRst, $41
        smpsJump            Gigalopolis_FM5

; PSG3 Data
Gigalopolis_PSG3:
        smpsPSGform         $E7

Gigalopolis_Jump00:
        dc.b    nRst, $03
        smpsPSGvoice        fTone_01
        dc.b    nMaxPSG

Gigalopolis_Loop1B:
        dc.b    nMaxPSG, nMaxPSG, nMaxPSG, $06, $03, $06, $06

Gigalopolis_Loop1A:
        dc.b    $03
        smpsLoop            $00, $08, Gigalopolis_Loop1A
        dc.b    $06, $06, $0C, $02, $01, $09, $06, $03
        smpsLoop            $01, $02, Gigalopolis_Loop1B

Gigalopolis_Loop1C:
        dc.b    $03, $03, $06, $03, $06, $06, $03, $03, $03, $03, $06, $03
        dc.b    $03, $03, $06, $03, $06, $06, $02, $01, $09, $06, $03, $03
        dc.b    $03, $06, $03, $06, $06, $03, $03, $03, $03, $06, $03, $03
        dc.b    $03, $06, $03, $06, $06, $03, $03, $02, $04, $06, $03
        smpsLoop            $00, $03, Gigalopolis_Loop1C
        dc.b    $03, $03, $06, $03, $06, $06, $03, $03, $03, $03, $06, $03
        dc.b    $03, $03, $06, $03, $06, $06, $02, $01, $09, $06, $03, $03
        dc.b    $03, $06, $03, $06, $06, $03, $03, $03, $03, $06, $03, $03
        dc.b    $03, $06, $03, $06, $06, $03, $03, $02, $04, $03, $03, $03
        dc.b    $03, $06, $03, $03, $06, $06, $02, $01, $06, $03, $06, $06
        dc.b    $03, $03, $06, $03, $03, $02, $01

Gigalopolis_Loop1D:
        dc.b    $03
        smpsLoop            $00, $09, Gigalopolis_Loop1D
        dc.b    $06, $03, $03, $06, $06, $02, $01, $06, $03, $06, $06, $03
        dc.b    $03, $06, $03, $03, $02, $01, $03, $03, $03, $03, $03, $03
        smpsJump            Gigalopolis_Jump00

; PSG1 Data
Gigalopolis_PSG1:
; PSG2 Data
Gigalopolis_PSG2:
        smpsStop

Gigalopolis_Voices:
;       Voice $00
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

;       Voice $01
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


