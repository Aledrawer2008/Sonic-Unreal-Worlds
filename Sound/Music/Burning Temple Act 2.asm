RVZ_Header:
        smpsHeaderStartSong 1
        smpsHeaderVoice     RVZ_Voices
        smpsHeaderChan      $04, $03
        smpsHeaderTempo     $02, $03

        smpsHeaderDAC       RVZ_DAC
        smpsHeaderFM        RVZ_FM1,    $00, $12
        smpsHeaderFM        RVZ_FM2,    $00, $10
        smpsHeaderFM        RVZ_FM3,    $00, $12
        smpsHeaderPSG       RVZ_PSG1,   $00, $09, $00, $00
        smpsHeaderPSG       RVZ_PSG2,   $00, $09, $00, $00
        smpsHeaderPSG       RVZ_PSG3,   $00, $02, $00, $00

; DAC Data
RVZ_DAC:
        dc.b    dKick, $0C, dClap, dKick, dClap, $06, $06
        smpsLoop            $00, $03, RVZ_DAC
        dc.b    dKick, $0C, dClap, $0F, $03, $03, $03, $03, $03

RVZ_Loop00:
        dc.b    $06, dKick, $0C, dClap, dKick, dClap, $06
        smpsLoop            $00, $03, RVZ_Loop00
        dc.b    $06, dKick, $0C, dClap, $12, $03, $03, dKick, dClap, dClap

RVZ_Loop01:
        dc.b    dClap, dKick, $0C, dClap, dKick, dClap, $06
        smpsLoop            $00, $03, RVZ_Loop01
        dc.b    $06, dKick, $1E, dClap, $03, $03, dKick, dClap, dClap

RVZ_Loop02:
        dc.b    dClap, dKick, $0C, dClap, dKick, dClap, $06
        smpsLoop            $00, $02, RVZ_Loop02
        dc.b    $09, dKick, $12, $0F, $03, dClap, dClap, dClap, dClap, $0C, $0C, $12
        dc.b    $03
        smpsLoop            $01, $02, RVZ_Loop02
        dc.b    $03

RVZ_Loop03:
        dc.b    dKick, $0C, dClap, dKick, dClap, $06, $06
        smpsLoop            $00, $03, RVZ_Loop03
        dc.b    dKick, $0C, dClap, $12, $03, $03, $03, $03, $06
        smpsJump            RVZ_DAC

; FM1 Data
RVZ_FM1:
        smpsSetvoice        $00

RVZ_Jump01:
        dc.b    nEb4, $03, nRst, $09, nC4, $03, nRst, $09, nEb4, $03, nC4, nG4
        dc.b    nRst
        smpsAlterVol        $08
        dc.b    nEb4, nC4, nG4, nRst
        smpsAlterVol        $09
        dc.b    nEb4, nC4, nG4
        smpsAlterVol        $EF
        dc.b    nC5, $02, nD5, $01, nEb5, $03
        smpsAlterVol        $08
        dc.b    nC5, $02, nD5, $01, nEb5, $03
        smpsAlterVol        $09
        dc.b    nC5, $02, nD5, $01, nEb5, $03
        smpsAlterVol        $08
        dc.b    nC5, $02, nD5, $01, nEb5, $03
        smpsAlterVol        $E7
        dc.b    nC6, $02, nD6, $01, nEb6, $03
        smpsAlterVol        $08
        dc.b    nC6, $02, nD6, $01, nEb6, $03
        smpsAlterVol        $09
        dc.b    nC6, $02, nD6, $01, nEb6, $02, nRst, $04
        smpsAlterVol        $EF
        dc.b    nD5, $02

RVZ_Loop2C:
        smpsAlterVol        $0B
        dc.b    $01
        smpsAlterVol        $F5
        dc.b    nEb5, $02
        smpsLoop            $00, $03, RVZ_Loop2C
        smpsAlterVol        $0B
        dc.b    $01
        smpsAlterVol        $F5
        dc.b    nF5, $03
        smpsAlterVol        $0B
        dc.b    $03
        smpsAlterVol        $F5
        dc.b    nG5, nD5, nEb5
        smpsAlterVol        $0B
        dc.b    $03
        smpsAlterVol        $F5
        dc.b    nF5, nEb5, nD5, nBb4, nC4, nD4, nEb4, nF4, nG4, nAb4, nBb4, nC5
        dc.b    nD5, nEb5, nF5, nG5, nAb5, nBb5, nC6, nBb4, $02, nB4, $01, nC5

RVZ_Loop2D:
        dc.b    $18, nG5, nFs5, $2A, nD5, $03, nEb5, nF5, $18, nFs5, $0C, nG5
        dc.b    nC5, $30
        smpsLoop            $00, $02, RVZ_Loop2D
        dc.b    nAb4

RVZ_Loop2E:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop2E
        dc.b    nD4, nEb4, nAb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    $03, nA4, $02, nBb4, $01, nC5, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nEb5, nD5, nC5, nBb4

RVZ_Loop2F:
        dc.b    nBb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop2F
        dc.b    nEb4, nF4, nBb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb5, nF5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nD5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nEb5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF5, nD4, nC4, nD4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nD4, $03, nC4, nD4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3

RVZ_Loop30:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nD4
        smpsLoop            $00, $02, RVZ_Loop30
        dc.b    nC4, $02, nD4, $01, nEb4, $0C, nF4, nG4, $18, nAb4

RVZ_Loop31:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop31
        dc.b    nD4, nEb4, nAb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    $03, nA4, $02, nBb4, $01, nC5, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nEb5, nD5, nC5, nBb4

RVZ_Loop32:
        dc.b    nBb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop32
        dc.b    nEb4, nF4, nBb4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb5, nF5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nD5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nEb5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF5, nD4, nC4, nD4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nD4, $03, nC4, nD4
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3

RVZ_Loop33:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nD4
        smpsLoop            $00, $02, RVZ_Loop33
        dc.b    nC4, $02, nD4, $01, nEb4, $0C, nF4, nG4, nBb4, nEb4, $03
        smpsAlterVol        $0E
        dc.b    $03, $03
        smpsAlterVol        $11
        dc.b    $03
        smpsAlterVol        $EC
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EF
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F0
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EC

RVZ_Loop34:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $03, RVZ_Loop34
        dc.b    nG4
        smpsAlterVol        $0E
        dc.b    $03, $03
        smpsAlterVol        $11
        dc.b    $03
        smpsAlterVol        $EC
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EF
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F0
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EC

RVZ_Loop35:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $03, RVZ_Loop35
        dc.b    nEb4
        smpsAlterVol        $0E
        dc.b    $03, $03
        smpsAlterVol        $11
        dc.b    $03
        smpsAlterVol        $EC
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EF
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F0
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $EC

RVZ_Loop36:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $03, RVZ_Loop36
        dc.b    $0C, nD4, nBb3, $18
        smpsJump            RVZ_Jump01

; FM2 Data
RVZ_FM2:
        smpsSetvoice        $01

RVZ_Jump00:
        dc.b    nC3, $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2

RVZ_Loop19:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $02, RVZ_Loop19
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3

RVZ_Loop1A:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $03, RVZ_Loop1A
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2

RVZ_Loop1B:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $02, RVZ_Loop1B
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3, nEb3, nF3, nG3, nAb3, nBb3, nC4

RVZ_Loop1C:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $02, RVZ_Loop1C
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3, nC3

RVZ_Loop1D:
        dc.b    nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $03, RVZ_Loop1D
        dc.b    nC3, nEb3, nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nFs3, $0C, nD3, nEb3, nFs3, nF3

RVZ_Loop1E:
        dc.b    $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $02, RVZ_Loop1E
        dc.b    nD3, nEb3, nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nG3, nD3, nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    $0C, nG3, nBb2, nC3, nC3

RVZ_Loop1F:
        dc.b    $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $02, RVZ_Loop1F
        dc.b    nEb3, nC3

RVZ_Loop20:
        dc.b    nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $03, RVZ_Loop20
        dc.b    nC3, nEb3, nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nFs3, $0C, nD3, nEb3, nFs3, nF3

RVZ_Loop21:
        dc.b    $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $02, RVZ_Loop21
        dc.b    nD3, nEb3, nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nG3, nD3, nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    $0C, nG3, nBb2, nC3, nEb3

RVZ_Loop22:
        dc.b    $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $02, RVZ_Loop22
        dc.b    nC3

RVZ_Loop23:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsLoop            $00, $02, RVZ_Loop23
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3

RVZ_Loop24:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsLoop            $00, $02, RVZ_Loop24
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3

RVZ_Loop25:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsLoop            $00, $02, RVZ_Loop25
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3, $0C, nEb3, nD3, nBb2, nC3, nD3, nD3, nF3, nEb3

RVZ_Loop26:
        dc.b    $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        smpsLoop            $00, $02, RVZ_Loop26
        dc.b    nC3

RVZ_Loop27:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsLoop            $00, $02, RVZ_Loop27
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3

RVZ_Loop28:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsLoop            $00, $02, RVZ_Loop28
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3

RVZ_Loop29:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsLoop            $00, $02, RVZ_Loop29
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nF3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3, $0C, nEb3, nD3, nBb2, nG3, nAb3, nBb3, nC4, nC3, $03
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2

RVZ_Loop2A:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $02, RVZ_Loop2A
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3

RVZ_Loop2B:
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsLoop            $00, $03, RVZ_Loop2B
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nG3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nD3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nC3
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nBb2
        smpsAlterVol        $0D
        dc.b    $03
        smpsAlterVol        $F3
        dc.b    nEb3, $0C, nD3, nG3, $18
        smpsJump            RVZ_Jump00

; FM3 Data
RVZ_FM3:
        smpsSetvoice        $00

RVZ_Loop04:
        dc.b    nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06
        smpsLoop            $00, $02, RVZ_Loop04
        dc.b    nG3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF3, nG3, nEb3

RVZ_Loop05:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3, $03
        smpsLoop            $00, $02, RVZ_Loop05
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nBb3, $03

RVZ_Loop06:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsLoop            $00, $02, RVZ_Loop06
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF3, nG3, nEb3
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nD4, $03, nEb4, nF4, nG4, nA4, nBb4, nC5, nD5, nEb5
        dc.b    nF5, nG5
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2

RVZ_Loop07:
        dc.b    nG4, $0C, nAb4, nC4, $18, nB3, nC4, $0C, nD4, $09, nAb4, $01
        dc.b    nBb4, nC5, nD5, $18, nEb5, nG4, $0C, nC4, nD4, nEb4
        smpsLoop            $00, $02, RVZ_Loop07
        dc.b    nAb3

RVZ_Loop08:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop08
        dc.b    nRst, $06, nAb3

RVZ_Loop09:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop09
        dc.b    nRst, $06, nBb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nAb3

RVZ_Loop0A:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3
        smpsLoop            $00, $02, RVZ_Loop0A
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nBb3

RVZ_Loop0B:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop0B
        dc.b    nRst, $06, nC4, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3

RVZ_Loop0C:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nG3
        smpsLoop            $00, $02, RVZ_Loop0C
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3

RVZ_Loop0D:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop0D
        dc.b    nRst, $06, nG3

RVZ_Loop0E:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop0E
        dc.b    nAb3, $0C, nG3, nF3, nBb2, nAb3

RVZ_Loop0F:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop0F
        dc.b    nRst, $06, nAb3

RVZ_Loop10:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop10
        dc.b    nRst, $06, nBb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nAb3

RVZ_Loop11:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3
        smpsLoop            $00, $02, RVZ_Loop11
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nBb3

RVZ_Loop12:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop12
        dc.b    nRst, $06, nC4, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nBb3

RVZ_Loop13:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nG3
        smpsLoop            $00, $02, RVZ_Loop13
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3

RVZ_Loop14:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop14
        dc.b    nRst, $06, nG3

RVZ_Loop15:
        dc.b    $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        smpsLoop            $00, $02, RVZ_Loop15
        dc.b    nBb3, $0C, nC4, nD4, nEb4

RVZ_Loop16:
        dc.b    nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06
        smpsLoop            $00, $02, RVZ_Loop16
        dc.b    nG3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF3, nG3, nEb3

RVZ_Loop17:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3, $03
        smpsLoop            $00, $02, RVZ_Loop17
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nBb3, $03

RVZ_Loop18:
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsLoop            $00, $02, RVZ_Loop18
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nG3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nRst, $06, nEb3, $03
        smpsAlterVol        $0E
        dc.b    $03
        smpsAlterVol        $F2
        dc.b    nF3, nG3, nBb3, $0C, nA3, nD3, $18
        smpsJump            RVZ_Loop04

; PSG1 Data
RVZ_PSG1:
        smpsPSGvoice        $00
        dc.b    nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, $03, nRst
        dc.b    $1E, nEb1, $03, nRst, $09, nC1, $03, nRst, $15, nEb1, $03, nRst
        dc.b    $09, nEb1, $03, nRst, $09, nEb1, $03, $03, nRst, $1E, nEb1, $03
        dc.b    nRst, $09, nF1, $03, nRst, $15, nC1

RVZ_Loop3F:
        dc.b    $18, nG1, nFs1, $30, nF1, $18, nFs1, $0C, nG1, nC1, $30
        smpsLoop            $00, $02, RVZ_Loop3F
        dc.b    nAb0, $03, $03, $03, nRst, $09, nAb0, $03, $03, $03, nRst, $15
        dc.b    nBb0, $03, $03, $03, nRst, $09, nBb0, $03, $03, $03, nRst, $15

RVZ_Loop40:
        dc.b    nG0, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop40
        dc.b    nAb0, $0C, nBb0, nC1, nBb0, nAb0, $03, $03, $03, nRst, $09, nAb0
        dc.b    $03, $03, $03, nRst, $15, nBb0, $03, $03, $03, nRst, $09, nBb0
        dc.b    $03, $03, $03, nRst, $15

RVZ_Loop41:
        dc.b    nG0, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop41
        dc.b    nBb0, $0C, nC1, nD1, nEb1

RVZ_Loop42:
        dc.b    nEb1, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop42
        dc.b    nG1, nRst, $2A

RVZ_Loop43:
        dc.b    nEb1, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop43
        dc.b    nEb1, $0C, nD1, nBb0, $18
        smpsJump            RVZ_PSG1

; PSG2 Data
RVZ_PSG2:
        dc.b    nC1, $03, nRst, $09, nC1, $03, nRst, $09, nC1, $03, $03, nRst
        dc.b    $1E, nC1, $03, nRst, $09, nG0, $03, nRst, $15, nC1, $03, nRst
        dc.b    $09, nC1, $03, nRst, $09, nC1, $03, $03, nRst, $1E, nC1, $03
        dc.b    nRst, $09, nD1, $03, nRst, $15, nG0

RVZ_Loop3A:
        dc.b    $18, nC1, nD1, $0C, nB0, nC1, nD1, nD1, nB0, nC1, nD1, nG0
        dc.b    $30
        smpsLoop            $00, $02, RVZ_Loop3A
        dc.b    nEb0, $03, $03, $03, nRst, $09, nEb0, $03, $03, $03, nRst, $15
        dc.b    nF0, $03, $03, $03, nRst, $09, nF0, $03, $03, $03, nRst, $15

RVZ_Loop3B:
        dc.b    nEb0, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop3B
        dc.b    nEb0, $0C, nF0, nG0, $18, nEb0, $03, $03, $03, nRst, $09, nEb0
        dc.b    $03, $03, $03, nRst, $15, nF0, $03, $03, $03, nRst, $09, nF0
        dc.b    $03, $03, $03, nRst, $15

RVZ_Loop3C:
        dc.b    nEb0, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop3C
        dc.b    nEb0, $0C, nF0, nG0, nBb0

RVZ_Loop3D:
        dc.b    nC1, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop3D
        dc.b    nEb1, nRst, $2A

RVZ_Loop3E:
        dc.b    nC1, $06, nRst
        smpsLoop            $00, $04, RVZ_Loop3E
        dc.b    nBb0, $0C, nA0, nG0, $18
        smpsJump            RVZ_PSG2

; PSG3 Data
RVZ_PSG3:
        smpsPSGform         $E7

RVZ_Jump02:
        smpsPSGvoice        fTone_01
        dc.b    nMaxPSG, $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03, $06, $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03, $06, $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03, $03, $15
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $02

RVZ_Loop37:
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGvoice        fTone_01
        smpsLoop            $00, $03, RVZ_Loop37
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $02
        smpsPSGAlterVol     $FE
        dc.b    $02, $14
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $02

RVZ_Loop38:
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGvoice        fTone_01
        smpsLoop            $00, $03, RVZ_Loop38
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $03, $02
        smpsPSGAlterVol     $FE
        dc.b    $02, $14

RVZ_Loop39:
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $02
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGAlterVol     $FE
        dc.b    $06
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $06, $06
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $18
        smpsPSGAlterVol     $02
        dc.b    $03
        smpsPSGAlterVol     $FE
        dc.b    $09
        smpsPSGAlterVol     $02
        dc.b    $03
        smpsPSGAlterVol     $FE
        dc.b    $0C, $03, $02, $02, $08
        smpsLoop            $00, $02, RVZ_Loop39
        smpsPSGvoice        fTone_01
        smpsPSGAlterVol     $02
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03, $06, $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03
        smpsPSGvoice        fTone_01
        dc.b    $06
        smpsPSGvoice        fTone_02
        dc.b    $03, $09, $03
        smpsPSGAlterVol     $FE
        dc.b    $03
        smpsPSGAlterVol     $02
        dc.b    $06, $03, $09, $03, $03, $06, $03, $0C
        smpsPSGAlterVol     $FE
        dc.b    $03, $03, $12
        smpsPSGAlterVol     $02
        dc.b    $03
        smpsJump            RVZ_Jump02

RVZ_Voices:
;       Voice $00
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


