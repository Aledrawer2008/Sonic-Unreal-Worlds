S2SMSBoss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     S2SMSBoss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $0F

	smpsHeaderDAC       S2SMSBoss_DAC
	smpsHeaderFM        S2SMSBoss_FM1,	$00, $16
	smpsHeaderFM        S2SMSBoss_FM2,	$00, $14
	smpsHeaderFM        S2SMSBoss_FM3,	$00, $14
	smpsHeaderFM        S2SMSBoss_FM4,	$00, $16
	smpsHeaderFM        S2SMSBoss_FM5,	$00, $16
	smpsHeaderPSG       S2SMSBoss_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       S2SMSBoss_PSG2,	$00, $03, $00, $00
	smpsHeaderPSG       S2SMSBoss_PSG3,	$00, $00, $00, fTone_02

; DAC Data
S2SMSBoss_DAC:
	dc.b	dSnareAlt, $09, $03, $0C

S2SMSBoss_Jump00:
	dc.b	dKick

S2SMSBoss_Loop00:
	dc.b	$0C, dSnareAlt, $03, dKick, $09
	smpsLoop            $00, $0E, S2SMSBoss_Loop00
	dc.b	$03, dSnareAlt, $09, $03, $09, dKick, $03, dSnareAlt, dSnareAlt, $06, $03, $06
	dc.b	$03, dKick

S2SMSBoss_Loop01:
	dc.b	$0C, dSnareAlt, $03, dKick, $09
	smpsLoop            $00, $0F, S2SMSBoss_Loop01
	dc.b	$03, dSnareAlt, $09, $03, $06, $03, dKick

S2SMSBoss_Loop02:
	dc.b	$0C, dSnareAlt, $03, dKick, $09
	smpsLoop            $00, $0E, S2SMSBoss_Loop02
	dc.b	$03, dSnareAlt, $09, $03, $06, $03, dKick, dSnareAlt, dSnareAlt, $06, $03, $06
	dc.b	$03, dKick

S2SMSBoss_Loop03:
	dc.b	$0C
	smpsLoop            $00, $0B, S2SMSBoss_Loop03
	dc.b	$1B, $21
	smpsJump            S2SMSBoss_Jump00

; FM1 Data
S2SMSBoss_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $18

S2SMSBoss_Jump03:
	dc.b	nC3

S2SMSBoss_Loop19:
	dc.b	$03, $03, nRst, nC3, nBb3, nC4, nC3, nC3, nRst, nBb3, nC4, nC3
	dc.b	nBb3, nC4, nC3, nC3
	smpsLoop            $00, $10, S2SMSBoss_Loop19

S2SMSBoss_Loop1A:
	dc.b	nD3, nD3, nRst, nD3, nC4, nD4, nD3, nD3, nRst, nC4, nD4, nD3
	dc.b	nC4, nD4, nD3, nD3
	smpsLoop            $00, $08, S2SMSBoss_Loop1A

S2SMSBoss_Loop1B:
	dc.b	nC3, nC3, nRst, nC3, nBb3, nC4, nC3, nC3, nRst, nBb3, nC4, nC3
	dc.b	nBb3, nC4, nC3, nC3
	smpsLoop            $00, $03, S2SMSBoss_Loop1B
	dc.b	nC3, $06
	smpsAlterVol        $04
	dc.b	$06
	smpsAlterVol        $03
	dc.b	$06
	smpsAlterVol        $03
	dc.b	$06
	smpsAlterVol        $02
	dc.b	$06
	smpsAlterVol        $02
	dc.b	$06
	smpsAlterVol        $04
	dc.b	$06
	smpsAlterVol        $02
	dc.b	$06
	smpsAlterVol        $EC
	smpsJump            S2SMSBoss_Jump03

; FM2 Data
S2SMSBoss_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $18

S2SMSBoss_Loop10:
	dc.b	nEb5, $03, nC5, nRst
	smpsLoop            $00, $04, S2SMSBoss_Loop10
	dc.b	nEb5, nC5, nG5

S2SMSBoss_Loop11:
	dc.b	nRst, nF5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop11
	dc.b	nAb5

S2SMSBoss_Loop12:
	dc.b	nRst, nEb5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop12
	dc.b	nFs5

S2SMSBoss_Loop13:
	dc.b	nRst, nEb5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop13
	dc.b	nG5
	smpsLoop            $01, $02, S2SMSBoss_Loop13

S2SMSBoss_Loop14:
	dc.b	nRst, nF5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop14
	dc.b	nAb5

S2SMSBoss_Loop15:
	dc.b	nRst, nEb5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop15
	dc.b	nFs5

S2SMSBoss_Loop16:
	dc.b	nRst, nEb5, nC5
	smpsLoop            $00, $05, S2SMSBoss_Loop16
	dc.b	nG5, nG5
	smpsSetvoice        $03
	smpsAlterVol        $FD
	dc.b	$03, nEb5
	smpsAlterVol        $03
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $0A
	dc.b	nG5, nEb5
	smpsAlterVol        $11
	dc.b	nG5, nEb5
	smpsAlterVol        $CE
	dc.b	nAb5, nF5
	smpsAlterVol        $03
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $0A
	dc.b	nAb5, nF5
	smpsAlterVol        $11
	dc.b	nAb5, nF5
	smpsAlterVol        $CE
	dc.b	nFs5, nEb5
	smpsAlterVol        $03
	dc.b	nFs5, nEb5
	smpsAlterVol        $04
	dc.b	nFs5, nEb5
	smpsAlterVol        $04
	dc.b	nFs5, nEb5
	smpsAlterVol        $06
	dc.b	nFs5, nEb5
	smpsAlterVol        $06
	dc.b	nFs5, nEb5
	smpsAlterVol        $0A
	dc.b	nFs5, nEb5
	smpsAlterVol        $11
	dc.b	nFs5

S2SMSBoss_Loop17:
	dc.b	nEb5
	smpsAlterVol        $CE
	dc.b	nG5, nEb5
	smpsAlterVol        $03
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $0A
	dc.b	nG5, nEb5
	smpsAlterVol        $11
	dc.b	nG5
	smpsLoop            $00, $02, S2SMSBoss_Loop17
	dc.b	nEb5
	smpsAlterVol        $CE
	dc.b	nAb5, nF5
	smpsAlterVol        $03
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $0A
	dc.b	nAb5, nF5
	smpsAlterVol        $11
	dc.b	nAb5, nF5
	smpsAlterVol        $CE
	dc.b	nFs5, nEb5
	smpsAlterVol        $03
	dc.b	nFs5, nEb5
	smpsAlterVol        $04
	dc.b	nFs5, nEb5
	smpsAlterVol        $04
	dc.b	nFs5, nEb5
	smpsAlterVol        $06
	dc.b	nFs5, nEb5
	smpsAlterVol        $06
	dc.b	nFs5, nEb5
	smpsAlterVol        $0A
	dc.b	nFs5, nEb5
	smpsAlterVol        $11
	dc.b	nFs5, nEb5
	smpsAlterVol        $CE
	dc.b	nG5, nEb5
	smpsAlterVol        $03
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $04
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $06
	dc.b	nG5, nEb5
	smpsAlterVol        $0A
	dc.b	nG5, nEb5
	smpsAlterVol        $11
	dc.b	nG5, nEb5

S2SMSBoss_Loop18:
	smpsAlterVol        $CE
	dc.b	nAb5, nF5
	smpsAlterVol        $03
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $0A
	dc.b	nAb5, nF5
	smpsAlterVol        $11
	dc.b	nAb5, nF5
	smpsAlterVol        $CE
	dc.b	nC6, nAb5
	smpsAlterVol        $03
	dc.b	nC6, nAb5
	smpsAlterVol        $04
	dc.b	nC6, nAb5
	smpsAlterVol        $04
	dc.b	nC6, nAb5
	smpsAlterVol        $06
	dc.b	nC6, nAb5
	smpsAlterVol        $06
	dc.b	nC6, nAb5
	smpsAlterVol        $0A
	dc.b	nC6, nAb5
	smpsAlterVol        $11
	dc.b	nC6, nAb5
	smpsAlterVol        $CE
	dc.b	$03, nF5
	smpsAlterVol        $03
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $04
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $06
	dc.b	nAb5, nF5
	smpsAlterVol        $0A
	dc.b	nAb5, nF5
	smpsAlterVol        $11
	dc.b	nAb5, nF5
	smpsAlterVol        $CE
	dc.b	$03, nD5
	smpsAlterVol        $03
	dc.b	nF5, nD5
	smpsAlterVol        $04
	dc.b	nF5, nD5
	smpsAlterVol        $04
	dc.b	nF5, nD5
	smpsAlterVol        $06
	dc.b	nF5, nD5
	smpsAlterVol        $06
	dc.b	nF5, nD5
	smpsAlterVol        $0A
	dc.b	nF5, nD5
	smpsAlterVol        $11
	dc.b	nF5, nD5
	smpsLoop            $00, $02, S2SMSBoss_Loop18
	smpsSetvoice        $01
	smpsAlterVol        $D1
	dc.b	nC6, $02, nRst, $01, nC6, $02, nRst, $01, nC6, $02, nRst, $04
	smpsAlterVol        $02
	dc.b	nC6, $03, nRst
	smpsAlterVol        $01
	dc.b	nC6, nRst
	smpsAlterVol        $03
	dc.b	nC6, nRst
	smpsAlterVol        $04
	dc.b	nC6, nRst
	smpsAlterVol        $03
	dc.b	nC6, nRst
	smpsAlterVol        $02
	dc.b	nC6, nRst
	smpsAlterVol        $F1
	dc.b	nC6, $02, nRst, $01, nC6, $02, nRst, $01, nC6, $02, nRst, $04
	smpsAlterVol        $02
	dc.b	nC6, $03, nRst
	smpsAlterVol        $01
	dc.b	nC6, nRst
	smpsAlterVol        $03
	dc.b	nC6, nRst
	smpsAlterVol        $04
	dc.b	nC6, nRst
	smpsAlterVol        $03
	dc.b	nC6, nRst
	smpsAlterVol        $02
	dc.b	nC6, nRst, $63
	smpsAlterVol        $F1
	smpsJump            S2SMSBoss_Loop10

; FM3 Data
S2SMSBoss_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $18

S2SMSBoss_Loop08:
	dc.b	nC5, $03, nG4, nRst
	smpsLoop            $00, $04, S2SMSBoss_Loop08
	dc.b	nC5, nG4, nC5

S2SMSBoss_Loop09:
	dc.b	nRst, nC5, nF4
	smpsLoop            $00, $05, S2SMSBoss_Loop09

S2SMSBoss_Loop0B:
	dc.b	nC5

S2SMSBoss_Loop0A:
	dc.b	nRst, nC5, nG4
	smpsLoop            $00, $05, S2SMSBoss_Loop0A
	smpsLoop            $01, $03, S2SMSBoss_Loop0B
	dc.b	nC5

S2SMSBoss_Loop0C:
	dc.b	nRst, nC5, nF4
	smpsLoop            $00, $05, S2SMSBoss_Loop0C

S2SMSBoss_Loop0E:
	dc.b	nC5

S2SMSBoss_Loop0D:
	dc.b	nRst, nC5, nG4
	smpsLoop            $00, $05, S2SMSBoss_Loop0D
	smpsLoop            $01, $02, S2SMSBoss_Loop0E
	dc.b	nC5, nC5, nRst

S2SMSBoss_Loop0F:
	dc.b	$78
	smpsLoop            $00, $08, S2SMSBoss_Loop0F
	smpsJump            S2SMSBoss_Loop08

; FM4 Data
S2SMSBoss_FM4:
	smpsSetvoice        $02
	dc.b	nRst, $18

S2SMSBoss_Jump02:
	dc.b	nG5

S2SMSBoss_Loop06:
	dc.b	$30
	smpsLoop            $00, $10, S2SMSBoss_Loop06

S2SMSBoss_Loop07:
	dc.b	nF6
	smpsLoop            $00, $08, S2SMSBoss_Loop07
	dc.b	nG5, $60, nRst
	smpsJump            S2SMSBoss_Jump02

; FM5 Data
S2SMSBoss_FM5:
	smpsSetvoice        $02
	dc.b	nRst, $18

S2SMSBoss_Jump01:
	dc.b	nEb5

S2SMSBoss_Loop04:
	dc.b	$30, nF5, nEb5, $60
	smpsLoop            $00, $04, S2SMSBoss_Loop04
	dc.b	nC6

S2SMSBoss_Loop05:
	dc.b	$30
	smpsLoop            $00, $08, S2SMSBoss_Loop05
	dc.b	nC5, $7F, smpsNoAttack, $41
	smpsJump            S2SMSBoss_Jump01

; PSG2 Data
S2SMSBoss_PSG2:
	dc.b	nRst, $18

S2SMSBoss_Jump05:
	dc.b	nRst, $7F, $7F, $7F, $03

S2SMSBoss_Loop21:
	smpsAlterNote       $FB
	dc.b	nA0, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nBb0
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, nB0
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nC1
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nCs1
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nD1
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nEb1
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nE1
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nF1
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nG1
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nAb1
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $08, S2SMSBoss_Loop21

S2SMSBoss_Loop22:
	smpsAlterNote       $FB
	dc.b	nBb0
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nB0
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nC1
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs1
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nD1
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nEb1
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE1
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nF1
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nG1
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nAb1
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nA1
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $08, S2SMSBoss_Loop22
	smpsAlterNote       $00
	dc.b	nRst, $7F, $41
	smpsJump            S2SMSBoss_Jump05

; PSG3 Data
S2SMSBoss_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $03, $03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$09, $03

S2SMSBoss_Jump04:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03, $03, $03, $03

S2SMSBoss_Loop1D:
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06, $06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02

S2SMSBoss_Loop1C:
	dc.b	$03
	smpsLoop            $00, $07, S2SMSBoss_Loop1C
	smpsLoop            $01, $07, S2SMSBoss_Loop1D
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06, $09

S2SMSBoss_Loop1E:
	dc.b	$03
	smpsLoop            $00, $07, S2SMSBoss_Loop1E
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06, $06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $01, $10, S2SMSBoss_Loop1E
	dc.b	$03, $03, $03

S2SMSBoss_Loop1F:
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $0C, S2SMSBoss_Loop1F

S2SMSBoss_Loop20:
	dc.b	$03
	smpsLoop            $00, $07, S2SMSBoss_Loop20
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsJump            S2SMSBoss_Jump04

; PSG1 Data
S2SMSBoss_PSG1:
	smpsStop

S2SMSBoss_Voices:
;	Voice $00
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
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

;	Voice $01
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
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

;	Voice $02
;	$3B
;	$00, $71, $71, $01, 	$1F, $16, $0F, $12, 	$00, $00, $00, $08
;	$00, $00, $00, $00, 	$00, $01, $01, $16, 	$19, $17, $19, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $06, $01, $01, $00
	smpsVcTotalLevel    $00, $19, $17, $19

;	Voice $03
;	$02
;	$5F, $06, $12, $01, 	$9F, $91, $91, $51, 	$07, $05, $00, $00
;	$09, $06, $00, $00, 	$71, $83, $14, $05, 	$25, $28, $1E, $00
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

