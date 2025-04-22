Burning_Temple1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Burning_Temple1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       Burning_Temple1_DAC
	smpsHeaderFM        Burning_Temple1_FM1,	$00, $0E
	smpsHeaderFM        Burning_Temple1_FM2,	$00, $17
	smpsHeaderFM        Burning_Temple1_FM3,	$00, $0E
	smpsHeaderFM        Burning_Temple1_FM4,	$00, $0E
	smpsHeaderFM        Burning_Temple1_FM5,	$00, $13
	smpsHeaderPSG       Burning_Temple1_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       Burning_Temple1_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       Burning_Temple1_PSG3,	$00, $02, $00, $00

; DAC Data
Burning_Temple1_DAC:
	smpsPan             panCenter, $00
	dc.b	dKickAlt, $0C, $0C, dHiTimpani

Burning_Temple1_Loop00:
	dc.b	$06, dKickAlt, dSnareAlt, dKickAlt
	smpsLoop            $00, $10, Burning_Temple1_Loop00
	dc.b	dHiTimpani

Burning_Temple1_Loop01:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dKickAlt
	smpsLoop            $00, $07, Burning_Temple1_Loop01

Burning_Temple1_Loop02:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dHiTimpani, dKickAlt, dSnareAlt, dKickAlt, dKickAlt
	smpsLoop            $00, $03, Burning_Temple1_Loop02
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, $03, $03
	dc.b	$06

Burning_Temple1_Loop03:
	dc.b	dHiTimpani, $12, dKickAlt, $06, $0C, dSnareAlt, $06, dKickAlt
	smpsLoop            $00, $03, Burning_Temple1_Loop03
	dc.b	dHiTimpani, $12, dKickAlt, $06

Burning_Temple1_Jump00:
	dc.b	dKickAlt, $0C, dSnareAlt, $06, dKickAlt, dHiTimpani

Burning_Temple1_Loop04:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dKickAlt
	smpsLoop            $00, $0F, Burning_Temple1_Loop04
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dHiTimpani

Burning_Temple1_Loop05:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dKickAlt
	smpsLoop            $00, $07, Burning_Temple1_Loop05

Burning_Temple1_Loop06:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dHiTimpani, dKickAlt, dSnareAlt, dKickAlt, dKickAlt
	smpsLoop            $00, $03, Burning_Temple1_Loop06
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt, $03, $03
	dc.b	$06

Burning_Temple1_Loop07:
	dc.b	dHiTimpani, $12, dKickAlt, $06, $0C, dSnareAlt, $06, dKickAlt
	smpsLoop            $00, $03, Burning_Temple1_Loop07
	dc.b	dHiTimpani, $12, dKickAlt, $06
	smpsJump            Burning_Temple1_Jump00

; FM1 Data
Burning_Temple1_FM1:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00
	dc.b	nA3, $06, nB3, nC4, nE4

Burning_Temple1_Loop26:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop26
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $4E

Burning_Temple1_Loop27:
	dc.b	nA4, $0C, $06, nG4
	smpsLoop            $00, $03, Burning_Temple1_Loop27
	dc.b	nA4, $0C, nB4, nF4, $12, nE4, $36, nA3, $06, nB3, nC4, nE4

Burning_Temple1_Loop28:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop28
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $4E, nA4, $24
	dc.b	nB4, $0C, nAb4, $24, nB4, $0C, $12, nA4, $4E, nRst, $06, nE5
	dc.b	$03, nRst, nC5, nRst, nA4, nRst, $09, nD5, $03, nRst, nB4, nRst
	dc.b	nG4, nRst, $09, nC5, $03, nRst, nA4, nRst, nF4, nRst, $09, nD5
	dc.b	$03, nRst, nB4, nRst, nG4, nRst, $09, nE5, $03, nRst, nC5, nRst
	dc.b	nA4, nRst, $09, nD5, $03, nRst, nB4, nRst, nG4, nRst, $09, nC5
	dc.b	$03, nRst, nA4, nRst, nF4, nRst

Burning_Temple1_Jump05:
	dc.b	nA3, $06, nB3, nC4, nE4

Burning_Temple1_Loop29:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop29
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $4E

Burning_Temple1_Loop2A:
	dc.b	nA4, $0C, $06, nG4
	smpsLoop            $00, $03, Burning_Temple1_Loop2A
	dc.b	nA4, $0C, nB4, nF4, $12, nE4, $36, nA3, $06, nB3, nC4, nE4

Burning_Temple1_Loop2B:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop2B
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $4E, nA4, $24
	dc.b	nB4, $0C, nAb4, $24, nB4, $0C, $12, nA4, $4E, nRst, $06, nE5
	dc.b	$03, nRst, nC5, nRst, nA4, nRst, $09, nD5, $03, nRst, nB4, nRst
	dc.b	nG4, nRst, $09, nC5, $03, nRst, nA4, nRst, nF4, nRst, $09, nD5
	dc.b	$03, nRst, nB4, nRst, nG4, nRst, $09, nE5, $03, nRst, nC5, nRst
	dc.b	nA4, nRst, $09, nD5, $03, nRst, nB4, nRst, nG4, nRst, $09, nC5
	dc.b	$03, nRst, nA4, nRst, nF4, nRst
	smpsJump            Burning_Temple1_Jump05

; FM2 Data
Burning_Temple1_FM2:
	smpsModSet          $00, $01, $04, $04
	smpsLoop            $00, $03, Burning_Temple1_FM2
	smpsModOn
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00
	smpsModSet          $00, $01, $04, $04
	dc.b	nRst, $06, nA3, nB3, nC4, nRst

Burning_Temple1_Loop20:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop20
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $48, nRst, $06

Burning_Temple1_Loop21:
	dc.b	nA4, $0C, $06, nG4
	smpsLoop            $00, $03, Burning_Temple1_Loop21
	dc.b	nA4, $0C, nB4, nF4, $12, nE4, $36, nA3, $06, nB3, nC4, nRst

Burning_Temple1_Loop22:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop22
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $48, nRst, $06
	dc.b	nA4, $24, nB4, $0C, nAb4, $24, nB4, $0C, $12, nA4, $48, nRst
	dc.b	$09, nE5, $03, nRst, nC5, nRst, nA4, nRst, $09, nD5, $03, nRst
	dc.b	nB4, nRst, nG4, nRst, $09, nC5, $03, nRst, nA4, nRst, nF4, nRst
	dc.b	$09, nD5, $03, nRst, nB4, nRst, nG4, nRst, $09, nE5, $03, nRst
	dc.b	nC5, nRst, nA4, nRst, $09, nD5, $03, nRst, nB4, nRst, nG4, nRst
	dc.b	$09, nC5, $03, nRst, nA4, nRst, nF4

Burning_Temple1_Jump04:
	dc.b	nRst, $03, nA3, $06, nB3, nC4, nE4, $03, nRst, $06

Burning_Temple1_Loop23:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop23
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $48, nRst, $06

Burning_Temple1_Loop24:
	dc.b	nA4, $0C, $06, nG4
	smpsLoop            $00, $03, Burning_Temple1_Loop24
	dc.b	nA4, $0C, nB4, nF4, $12, nE4, $36, nA3, $06, nB3, nC4, nRst

Burning_Temple1_Loop25:
	dc.b	nB4, $0C, $06, nA4
	smpsLoop            $00, $03, Burning_Temple1_Loop25
	dc.b	nB4, nA4, nE4, nC4, nG4, $0C, nA4, $06, nF4, $48, nRst, $06
	dc.b	nA4, $24, nB4, $0C, nAb4, $24, nB4, $0C, $12, nA4, $48, nRst
	dc.b	$09, nE5, $03, nRst, nC5, nRst, nA4, nRst, $09, nD5, $03, nRst
	dc.b	nB4, nRst, nG4, nRst, $09, nC5, $03, nRst, nA4, nRst, nF4, nRst
	dc.b	$09, nD5, $03, nRst, nB4, nRst, nG4, nRst, $09, nE5, $03, nRst
	dc.b	nC5, nRst, nA4, nRst, $09, nD5, $03, nRst, nB4, nRst, nG4, nRst
	dc.b	$09, nC5, $03, nRst, nA4, nRst, nF4
	smpsJump            Burning_Temple1_Jump04

; FM3 Data
Burning_Temple1_FM3:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $01
	dc.b	nRst, $18

Burning_Temple1_Loop14:
	dc.b	nA1, $06, $06, nE2, nE2, nD2, nD2, nE2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop14

Burning_Temple1_Loop15:
	dc.b	nD2, nD2, nA2, nA2, nF2, nF2, nA2, nA2
	smpsLoop            $00, $02, Burning_Temple1_Loop15

Burning_Temple1_Loop16:
	dc.b	nB1, nB1, nG2, nG2, nD2, nD2, nG2, nG2
	smpsLoop            $00, $02, Burning_Temple1_Loop16
	dc.b	nC2, nC2, nG2, nG2, nE2, nE2, nG2, nG2, nB1, nB1, nF2, nF2
	dc.b	nE2, nE2, nB1, nB1

Burning_Temple1_Loop17:
	dc.b	nA1, nA1, nE2, nE2, nD2, nD2, nE2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop17

Burning_Temple1_Loop18:
	dc.b	nD2, nD2, nA2, nA2, nF2, nF2, nA2, nA2
	smpsLoop            $00, $02, Burning_Temple1_Loop18
	dc.b	nB1, nB1, nF2, nF2, nD2, nD2, nF2, nF2, nE2, nE2, nB2, nB2
	dc.b	nAb2, nAb2, nB2, nB2

Burning_Temple1_Loop19:
	dc.b	nA1, nA1, nE2, nE2, nD2, nD2, nE2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop19
	dc.b	nA2, nA2, nA2, nA2, nG2, nG2, nG2, nG2, nF2, nF2, nF2, nF2
	dc.b	nG2, nG2, nG2, nG2, nA2, nA2, nA2, nA2, nG2, nG2, nG2, nG2
	dc.b	nF2, nF2, nF2, nF2

Burning_Temple1_Jump03:
	dc.b	nG2, $06, $06, $06

Burning_Temple1_Loop1A:
	dc.b	$06, nA1, nA1, nE2, nE2, nD2, nD2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop1A
	dc.b	nE2

Burning_Temple1_Loop1B:
	dc.b	nD2, nD2, nA2, nA2, nF2, nF2, nA2, nA2
	smpsLoop            $00, $02, Burning_Temple1_Loop1B

Burning_Temple1_Loop1C:
	dc.b	nB1, nB1, nG2, nG2, nD2, nD2, nG2, nG2
	smpsLoop            $00, $02, Burning_Temple1_Loop1C
	dc.b	nC2, nC2, nG2, nG2, nE2, nE2, nG2, nG2, nB1, nB1, nF2, nF2
	dc.b	nE2, nE2, nB1, nB1

Burning_Temple1_Loop1D:
	dc.b	nA1, nA1, nE2, nE2, nD2, nD2, nE2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop1D

Burning_Temple1_Loop1E:
	dc.b	nD2, nD2, nA2, nA2, nF2, nF2, nA2, nA2
	smpsLoop            $00, $02, Burning_Temple1_Loop1E
	dc.b	nB1, nB1, nF2, nF2, nD2, nD2, nF2, nF2, nE2, nE2, nB2, nB2
	dc.b	nAb2, nAb2, nB2, nB2

Burning_Temple1_Loop1F:
	dc.b	nA1, nA1, nE2, nE2, nD2, nD2, nE2, nE2
	smpsLoop            $00, $02, Burning_Temple1_Loop1F
	dc.b	nA2, nA2, nA2, nA2, nG2, nG2, nG2, nG2, nF2, nF2, nF2, nF2
	dc.b	nG2, nG2, nG2, nG2, nA2, nA2, nA2, nA2, nG2, nG2, nG2, nG2
	dc.b	nF2, nF2, nF2, nF2
	smpsJump            Burning_Temple1_Jump03

; FM4 Data
Burning_Temple1_FM4:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $02
	dc.b	nRst, $18

Burning_Temple1_Loop08:
	dc.b	nA2, $06, $06, nE3, nE3, nD3, nD3, nE3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop08

Burning_Temple1_Loop09:
	dc.b	nD3, nD3, nA3, nA3, nF3, nF3, nA3, nA3
	smpsLoop            $00, $02, Burning_Temple1_Loop09

Burning_Temple1_Loop0A:
	dc.b	nB2, nB2, nG3, nG3, nD3, nD3, nG3, nG3
	smpsLoop            $00, $02, Burning_Temple1_Loop0A
	dc.b	nC3, nC3, nG3, nG3, nE3, nE3, nG3, nG3, nB2, nB2, nF3, nF3
	dc.b	nE3, nE3, nB2, nB2

Burning_Temple1_Loop0B:
	dc.b	nA2, nA2, nE3, nE3, nD3, nD3, nE3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop0B

Burning_Temple1_Loop0C:
	dc.b	nD3, nD3, nA3, nA3, nF3, nF3, nA3, nA3
	smpsLoop            $00, $02, Burning_Temple1_Loop0C
	dc.b	nB2, nB2, nF3, nF3, nD3, nD3, nF3, nF3, nE3, nE3, nB3, nB3
	dc.b	nAb3, nAb3, nB3, nB3

Burning_Temple1_Loop0D:
	dc.b	nA2, nA2, nE3, nE3, nD3, nD3, nE3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop0D
	dc.b	nA3, nA3, nA3, nA3, nG3, nG3, nG3, nG3, nF3, nF3, nF3, nF3
	dc.b	nG3, nG3, nG3, nG3, nA3, nA3, nA3, nA3, nG3, nG3, nG3, nG3
	dc.b	nF3, nF3, nF3, nF3

Burning_Temple1_Jump02:
	dc.b	nG3, $06, $06, $06

Burning_Temple1_Loop0E:
	dc.b	$06, nA2, nA2, nE3, nE3, nD3, nD3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop0E
	dc.b	nE3

Burning_Temple1_Loop0F:
	dc.b	nD3, nD3, nA3, nA3, nF3, nF3, nA3, nA3
	smpsLoop            $00, $02, Burning_Temple1_Loop0F

Burning_Temple1_Loop10:
	dc.b	nB2, nB2, nG3, nG3, nD3, nD3, nG3, nG3
	smpsLoop            $00, $02, Burning_Temple1_Loop10
	dc.b	nC3, nC3, nG3, nG3, nE3, nE3, nG3, nG3, nB2, nB2, nF3, nF3
	dc.b	nE3, nE3, nB2, nB2

Burning_Temple1_Loop11:
	dc.b	nA2, nA2, nE3, nE3, nD3, nD3, nE3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop11

Burning_Temple1_Loop12:
	dc.b	nD3, nD3, nA3, nA3, nF3, nF3, nA3, nA3
	smpsLoop            $00, $02, Burning_Temple1_Loop12
	dc.b	nB2, nB2, nF3, nF3, nD3, nD3, nF3, nF3, nE3, nE3, nB3, nB3
	dc.b	nAb3, nAb3, nB3, nB3

Burning_Temple1_Loop13:
	dc.b	nA2, nA2, nE3, nE3, nD3, nD3, nE3, nE3
	smpsLoop            $00, $02, Burning_Temple1_Loop13
	dc.b	nA3, nA3, nA3, nA3, nG3, nG3, nG3, nG3, nF3, nF3, nF3, nF3
	dc.b	nG3, nG3, nG3, nG3, nA3, nA3, nA3, nA3, nG3, nG3, nG3, nG3
	dc.b	nF3, nF3, nF3, nF3
	smpsJump            Burning_Temple1_Jump02

; FM5 Data
Burning_Temple1_FM5:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $03
	dc.b	nRst, $18, nC4, $60, nF4, nD4, nE4, $30, nD4, $18, $18, nC4
	dc.b	$60, nF4, nD4, $30, nE4, nC4, $60, nRst, nC4, $18, nB3, nA3

Burning_Temple1_Jump01:
	dc.b	nB3, $18, nC4, $60, nF4, nD4, nE4, $30, nD4, $18, $18, nC4
	dc.b	$60, nF4, nD4, $30, nE4, nC4, $60, nRst, nC4, $18, nB3, nA3
	smpsJump            Burning_Temple1_Jump01

; PSG1 Data
Burning_Temple1_PSG1:
	smpsAlterNote       $00
	smpsPSGvoice        $00
	dc.b	nRst, $7F, $29, nF3, $03, nD3, nA2, nF2, nD3, nA2, nF2, nD2
	dc.b	nA2, nF2, nD2, nA1, nF2, nD2, nA1, nF1, nRst, $7F, $0B, nF3
	dc.b	$0C, $06, nD3, $0C, nB2, $06, nAb2, $12, nRst, $7F, $11, nF3
	dc.b	$03, nD3, nA2, nF2, nD3, nA2, nF2, nD2, nA2, nF2, nD2, nA1
	dc.b	nF2, nD2, nA1, nF1, nRst, $7F, $0B, nE3, $0C, $06, nD3, $0C
	dc.b	nC3, $06, nB2, $12, nA2, $06, nC3, $03, nA2, nC3, $06, nA2
	dc.b	nB2, nG2, nD2, nB2, nF2, nA2, $03, nF2, nA2, $06, nF2, nG2
	dc.b	nA2, nB2, nG2, nA2, nC3, $03, nA2, nC3, $06, nA2, nB2, nG2
	dc.b	nD2, nB2, nF2, nA2, $03, nF2, nA2, $06, nF2

Burning_Temple1_Jump08:
	dc.b	nG2, $06, nA2, nB2, nG2, nRst, $7F, $11, nF3, $03, nD3, nA2
	dc.b	nF2, nD3, nA2, nF2, nD2, nA2, nF2, nD2, nA1, nF2, nD2, nA1
	dc.b	nF1, nRst, $7F, $0B, nF3, $0C, $06, nD3, $0C, nB2, $06, nAb2
	dc.b	$12, nRst, $7F, $11, nF3, $03, nD3, nA2, nF2, nD3, nA2, nF2
	dc.b	nD2, nA2, nF2, nD2, nA1, nF2, nD2, nA1, nF1, nRst, $7F, $0B
	dc.b	nE3, $0C, $06, nD3, $0C, nC3, $06, nB2, $12, nA2, $06, nC3
	dc.b	$03, nA2, nC3, $06, nA2, nB2, nG2, nD2, nB2, nF2, nA2, $03
	dc.b	nF2, nA2, $06, nF2, nG2, nA2, nB2, nG2, nA2, nC3, $03, nA2
	dc.b	nC3, $06, nA2, nB2, nG2, nD2, nB2, nF2, nA2, $03, nF2, nA2
	dc.b	$06, nF2
	smpsJump            Burning_Temple1_Jump08

; PSG2 Data
Burning_Temple1_PSG2:
	smpsAlterNote       $00
	smpsPSGvoice        $00
	dc.b	nRst, $18, nE1, $60, nA1, nG1, nG1, $30, nF1, $18, nE1, nE1
	dc.b	$60, nA1, nG1, $30, $30, nE1, $60, nA0, $18, nG0, nF0, nG0
	dc.b	nE1, nD1, nC1

Burning_Temple1_Jump07:
	dc.b	nD1, $18, nE1, $60, nA1, nG1, nG1, $30, nF1, $18, nE1, nE1
	dc.b	$60, nA1, nG1, $30, $30, nE1, $60, nA0, $18, nG0, nF0, nG0
	dc.b	nE1, nD1, nC1
	smpsJump            Burning_Temple1_Jump07

; PSG3 Data
Burning_Temple1_PSG3:
	smpsPSGform         $E7
	smpsAlterNote       $00
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG

Burning_Temple1_Loop2C:
	dc.b	$06
	smpsLoop            $00, $0B, Burning_Temple1_Loop2C

Burning_Temple1_Loop2E:
	dc.b	$03, $03

Burning_Temple1_Loop2D:
	dc.b	$06
	smpsLoop            $00, $07, Burning_Temple1_Loop2D
	smpsLoop            $01, $0F, Burning_Temple1_Loop2E
	dc.b	$03, $03

Burning_Temple1_Loop2F:
	dc.b	$06, $06, $06, $06, $06, $06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, Burning_Temple1_Loop2F
	dc.b	$06, $06, $06, $06

Burning_Temple1_Jump06:
	dc.b	nMaxPSG, $06, $06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02

Burning_Temple1_Loop30:
	dc.b	$06
	smpsLoop            $00, $07, Burning_Temple1_Loop30
	dc.b	$03, $03
	smpsLoop            $01, $10, Burning_Temple1_Loop30

Burning_Temple1_Loop31:
	dc.b	$06, $06, $06, $06, $06, $06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, Burning_Temple1_Loop31
	dc.b	$06, $06, $06, $06
	smpsJump            Burning_Temple1_Jump06

Burning_Temple1_Voices:
;	Voice $00
;	$3A
;	$01, $00, $02, $02, 	$8E, $DF, $8D, $53, 	$0E, $00, $0E, $03
;	$00, $00, $00, $07, 	$14, $00, $10, $08, 	$17, $00, $32, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $00, $01
	smpsVcRateScale     $01, $02, $03, $02
	smpsVcAttackRate    $13, $0D, $1F, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $00, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $08, $00, $00, $04
	smpsVcTotalLevel    $00, $32, $00, $17

;	Voice $01
;	$3B
;	$19, $71, $10, $01, 	$19, $1E, $1E, $1E, 	$10, $01, $15, $01
;	$0E, $00, $00, $0A, 	$FF, $39, $59, $19, 	$28, $2E, $0E, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $07, $01
	smpsVcCoarseFreq    $01, $00, $01, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1E, $1E, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $15, $01, $10
	smpsVcDecayRate2    $0A, $00, $00, $0E
	smpsVcDecayLevel    $01, $05, $03, $0F
	smpsVcReleaseRate   $09, $09, $09, $0F
	smpsVcTotalLevel    $00, $0E, $2E, $28

;	Voice $02
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

;	Voice $03
;	$3A
;	$41, $45, $35, $42, 	$59, $59, $5C, $52, 	$0F, $12, $0D, $04
;	$00, $00, $00, $00, 	$15, $58, $67, $06, 	$1A, $1A, $26, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $04, $04
	smpsVcCoarseFreq    $02, $05, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $12, $1C, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0D, $12, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $06, $05, $01
	smpsVcReleaseRate   $06, $07, $08, $05
	smpsVcTotalLevel    $00, $26, $1A, $1A

