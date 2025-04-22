Invincibility_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Invincibility_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $02, $08

	smpsHeaderDAC       Invincibility_DAC
	smpsHeaderFM        Invincibility_FM1,	$00, $10
	smpsHeaderFM        Invincibility_FM2,	$00, $12
	smpsHeaderFM        Invincibility_FM3,	$00, $19
	smpsHeaderFM        Invincibility_FM4,	$00, $1A
	smpsHeaderPSG       Invincibility_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Invincibility_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Invincibility_PSG3,	$00, $09, $00, $00

; DAC Data
Invincibility_DAC:
	smpsPan             panCenter, $00

Invincibility_Jump00:
	dc.b	dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C
	dc.b	dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C
	dc.b	dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C
	dc.b	dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $06
	dc.b	dSnareAlt, $03, dSnareAlt, $03,dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C
	dc.b	dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C
	dc.b	dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C
	dc.b	dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $09,dKickAlt, $03, dSnareAlt, $06,dKickAlt, $0C
	dc.b	dKickAlt, $06, dSnareAlt, $06, dSnareAlt, $03, dSnareAlt, $03,dKickAlt, $09,dKickAlt, $03
	dc.b	dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $09,dKickAlt, $03
	dc.b	dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $09,dKickAlt, $03
	dc.b	dSnareAlt, $06,dKickAlt, $0C,dKickAlt, $06, dSnareAlt, $0C,dKickAlt, $03,dKickAlt, $03
	dc.b	dKickAlt, $06,dKickAlt, $03,dKickAlt, $03,dKickAlt, $06,dKickAlt, $03,dKickAlt, $03
	dc.b	dKickAlt, $03,dKickAlt, $03, dSnareAlt, $0C
	smpsJump            Invincibility_Jump00

; FM1 Data
Invincibility_FM1:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00

Invincibility_Jump04:
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nEb3, $03
	smpsAlterVol        $04
	dc.b	nEb3, $03
	smpsAlterVol        $FC
	dc.b	nEb3, $03
	smpsAlterVol        $04
	dc.b	nEb3, $03
	smpsAlterVol        $F9
	dc.b	nEb4, $06
	smpsAlterVol        $05
	dc.b	nEb3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $FC
	dc.b	nF3, $03
	smpsAlterVol        $04
	dc.b	nF3, $03
	smpsAlterVol        $F9
	dc.b	nC4, $06
	smpsAlterVol        $05
	dc.b	nF3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $FC
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $F9
	dc.b	nCs4, $06
	smpsAlterVol        $05
	dc.b	nFs3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $FC
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $F9
	dc.b	nCs4, $06
	smpsAlterVol        $05
	dc.b	nFs3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $FC
	dc.b	nFs3, $03
	smpsAlterVol        $04
	dc.b	nFs3, $03
	smpsAlterVol        $F9
	dc.b	nCs4, $06
	smpsAlterVol        $05
	dc.b	nFs3, $06, nRst, $18
	smpsAlterVol        $FE
	dc.b	nE3, $03
	smpsAlterVol        $04
	dc.b	nE3, $03
	smpsAlterVol        $FC
	dc.b	nE3, $03
	smpsAlterVol        $04
	dc.b	nE3, $03
	smpsAlterVol        $F9
	dc.b	nB3, $06
	smpsAlterVol        $05
	dc.b	nE3, $06
	smpsAlterVol        $FE
	dc.b	nE3, $03
	smpsAlterVol        $04
	dc.b	nE3, $03
	smpsAlterVol        $FC
	dc.b	nE3, $03
	smpsAlterVol        $04
	dc.b	nE3, $03
	smpsAlterVol        $F9
	dc.b	nFs3, $06, nRst, $06
	smpsAlterVol        $03
	smpsJump            Invincibility_Jump04

; FM2 Data
Invincibility_FM2:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $01

Invincibility_Jump03:
	dc.b	nF2, $03, nF2, $06, nF2, $03, nF3, $06, nF2, $06, nRst, $18
	dc.b	nF2, $03, nF2, $06, nF2, $03, nF3, $06, nF2, $06, nRst, $18
	dc.b	nF2, $03, nF2, $06, nF2, $03, nF3, $06, nF2, $06, nRst, $18
	dc.b	nEb2, $03, nEb2, $06, nEb2, $03, nEb3, $06, nEb2, $06, nC3, $03
	dc.b	nC3, $06, nC3, $03, nRst, $0C, nF2, $03, nF2, $06, nF2, $03
	dc.b	nF3, $06, nF2, $06, nRst, $18, nF2, $03, nF2, $06, nF2, $03
	dc.b	nF3, $06, nF2, $06, nRst, $18, nF2, $03, nF2, $06, nF2, $03
	dc.b	nF3, $06, nF2, $06, nRst, $18, nF2, $03, nF2, $06, nF2, $03
	dc.b	nF3, $06, nF2, $06, nEb2, $03, nF2, $06, nF2, $03, nRst, $0C
	dc.b	nFs2, $03, nFs2, $06, nFs2, $03, nFs3, $06, nFs2, $06, nRst, $18
	dc.b	nFs2, $03, nFs2, $06, nFs2, $03, nFs3, $06, nFs2, $06, nRst, $18
	dc.b	nFs2, $03, nFs2, $06, nFs2, $03, nFs3, $06, nFs2, $06, nRst, $18
	dc.b	nE2, $03, nE2, $06, nE2, $03, nE3, $06, nE2, $06, nE2, $03
	dc.b	nE2, $06, nE2, $03, nFs2, $06, nRst, $06
	smpsJump            Invincibility_Jump03

; FM3 Data
Invincibility_FM3:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $02

Invincibility_Jump02:
	dc.b	nF5, $06, nF5, $03, nC6, $03, nF6, $06, nC6, $06, nF4, $06
	dc.b	nF5, $06, nEb6, $06, nF5, $06, nF5, $06, nF5, $06, nD6, $06
	dc.b	nF5, $06, nC6, $06, nF5, $06, nBb5, $06, nF5, $06, nF5, $06
	dc.b	nF5, $03, nC6, $03, nF6, $06, nC6, $06, nF5, $06, nF5, $06
	dc.b	nEb6, $06, nF5, $06, nEb4, $06, nEb5, $06, nC6, $06, nEb5, $06
	dc.b	nBb5, $06, nC5, $06, nG5, $06, nC5, $06, nF4, $06, nF5, $03
	dc.b	nC6, $03, nF6, $06, nC6, $06, nF5, $06, nF5, $06, nEb6, $06
	dc.b	nF5, $06, nF4, $06, nF5, $06, nD6, $06, nF5, $06, nC6, $06
	dc.b	nF5, $06, nBb5, $06, nF5, $06, nF5, $06, nF5, $03, nC6, $03
	dc.b	nF6, $06, nC6, $06, nF5, $06, nF5, $06, nEb6, $06, nF5, $06
	dc.b	nF4, $06, nF5, $06, nD6, $06, nF5, $06, nC6, $06, nF5, $06
	dc.b	nD6, $06, nF5, $06, nFs4, $06, nFs5, $03, nCs6, $03, nFs6, $06
	dc.b	nCs6, $06, nFs5, $06, nFs5, $06, nE6, $06, nFs5, $06, nFs4, $06
	dc.b	nFs5, $06, nEb6, $06, nFs5, $06, nCs6, $06, nFs5, $06, nB5, $06
	dc.b	nFs5, $06, nFs5, $06, nFs5, $03, nCs6, $03, nFs6, $06, nCs6, $06
	dc.b	nFs5, $06, nFs5, $06, nE6, $06, nFs5, $06, nE4, $06, nFs5, $06
	dc.b	nEb6, $06, nFs5, $06, nE5, $06, nE5, $06, nFs5, $06, nRst, $06
	smpsJump            Invincibility_Jump02

; FM4 Data
Invincibility_FM4:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $03

Invincibility_Jump01:
	dc.b	nF5, $06, nF5, $03, nC6, $03, nF6, $06, nC6, $06, nF5, $06
	dc.b	nF5, $06, nEb6, $06, nF5, $06, nF5, $06, nF5, $06, nD6, $06
	dc.b	nF5, $06, nC6, $06, nF5, $06, nBb5, $06, nF5, $06, nF5, $06
	dc.b	nF5, $03, nC6, $03, nF6, $06, nC6, $06, nF5, $06, nF5, $06
	dc.b	nEb6, $06, nF5, $06, nEb5, $06, nEb5, $06, nC6, $06, nEb5, $06
	dc.b	nBb5, $06, nC5, $06, nG5, $06, nC5, $06, nF5, $06, nF5, $03
	dc.b	nC6, $03, nF6, $06, nC6, $06, nF5, $06, nF5, $06, nEb6, $06
	dc.b	nF5, $06, nF5, $06, nF5, $06, nD6, $06, nF5, $06, nC6, $06
	dc.b	nF5, $06, nBb5, $06, nF5, $06, nF5, $06, nF5, $03, nC6, $03
	dc.b	nF6, $06, nC6, $06, nF5, $06, nF5, $06, nEb6, $06, nF5, $06
	dc.b	nF5, $06, nF5, $06, nD6, $06, nF5, $06, nC6, $06, nF5, $06
	dc.b	nD6, $06, nF5, $06, nFs5, $06, nFs5, $03, nCs6, $03, nFs6, $06
	dc.b	nCs6, $06, nFs5, $06, nFs5, $06, nE6, $06, nFs5, $06, nFs5, $06
	dc.b	nFs5, $06, nEb6, $06, nFs5, $06, nCs6, $06, nFs5, $06, nB5, $06
	dc.b	nFs5, $06, nFs5, $06, nFs5, $03, nCs6, $03, nFs6, $06, nCs6, $06
	dc.b	nFs5, $06, nFs5, $06, nE6, $06, nFs5, $06, nE5, $06, nFs5, $06
	dc.b	nEb6, $06, nFs5, $06, nE5, $06, nE5, $06, nFs5, $06, nRst, $06
	smpsJump            Invincibility_Jump01

; PSG3 Data
Invincibility_PSG3:
	smpsPSGform         $E7
	smpsAlterNote       $00

Invincibility_Jump05:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $12
	smpsJump            Invincibility_Jump05

; PSG1 Data
Invincibility_PSG1:
; PSG2 Data
Invincibility_PSG2:
	smpsStop

Invincibility_Voices:
;	Voice $00
;	$28
;	$03, $0C, $32, $72, 	$1F, $12, $1F, $1F, 	$04, $01, $04, $0C
;	$04, $04, $04, $04, 	$16, $10, $10, $18, 	$08, $1B, $16, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $02, $02, $0C, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $00, $00, $06
	smpsVcTotalLevel    $00, $16, $1B, $08

;	Voice $01
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

;	Voice $02
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

;	Voice $03
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

