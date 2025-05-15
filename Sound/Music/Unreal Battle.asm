Extra_Final_Boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Extra_Final_Boss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Extra_Final_Boss_DAC
	smpsHeaderFM        Extra_Final_Boss_FM1,	$00, $00
	smpsHeaderFM        Extra_Final_Boss_FM2,	$00, $00
	smpsHeaderFM        Extra_Final_Boss_FM3,	$00, $00
	smpsHeaderFM        Extra_Final_Boss_FM4,	$00, $00
	smpsHeaderFM        Extra_Final_Boss_FM5,	$00, $00
	smpsHeaderPSG       Extra_Final_Boss_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Extra_Final_Boss_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Extra_Final_Boss_PSG3,	$00, $00, $00, $00

; PSG3 Data
Extra_Final_Boss_PSG3:
	smpsStop

; FM1 Data
Extra_Final_Boss_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $3C
	smpsSetvoice        $02
	smpsAlterVol        $12
	dc.b	nCs4, $04, nD4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nF4, nFs4, nG4, nAb4, nA4
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	dc.b	nB4
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nCs5, nD5
	smpsAlterNote       $2B
	dc.b	nD5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $2B
	dc.b	nD5
	smpsAlterNote       $00
	dc.b	nD5, nCs5
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nB4
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	dc.b	nA4, nAb4, nG4, nFs4, nF4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nD4, nCs4
	smpsAlterNote       $03
	dc.b	nC4
	smpsAlterNote       $00
	dc.b	nB3, nRst, $48
	smpsAlterNote       $03
	dc.b	nC5, $04, nC5
	smpsAlterNote       $00
	dc.b	nB4
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	dc.b	nA4, nAb4, nG4, nFs4, nF4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nD4, nCs4
	smpsAlterNote       $03
	dc.b	nC4
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $00
	dc.b	nA3, nAb3, nG3, nAb3, nA3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $03
	dc.b	nC4
	smpsAlterNote       $00
	dc.b	nCs4, nD4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nF4, nFs4
	smpsAlterNote       $2B
	dc.b	nD4, $0C
	smpsAlterNote       $00
	dc.b	nFs4, nA4, nD4, nF4, nAb4, nCs4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nG4, nCs4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nFs4, nB3, nD4, nF4, $18, nA4, $3C
	smpsAlterNote       $02
	dc.b	nBb4, $0C
	smpsAlterNote       $00
	dc.b	nA4, nG4, $6C

Extra_Final_Boss_Jump04:
	dc.b	nRst, $7F, $7F, $5E, nA3, $06, nB3, nCs4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nF4, nG4

Extra_Final_Boss_Loop8D:
	dc.b	nA4
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	smpsLoop            $00, $0C, Extra_Final_Boss_Loop8D
	dc.b	nA4, nAb4, nG4, nFs4, nF4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nCs4, nRst, $7F, $7F, $7F, $7F, $20, nA3, $06, nB3, nCs4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nF4, nG4

Extra_Final_Boss_Loop8E:
	dc.b	nA4
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	smpsLoop            $00, $0C, Extra_Final_Boss_Loop8E
	dc.b	nA4, nAb4, nG4, nFs4, nF4
	smpsAlterNote       $FF
	dc.b	nE4
	smpsAlterNote       $2B
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nCs4, nRst, $7F, $41
	smpsSetvoice        $05
	smpsAlterVol        $FC

Extra_Final_Boss_Loop8F:
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nBb4, $0D, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	smpsLoop            $00, $02, Extra_Final_Boss_Loop8F

Extra_Final_Boss_Loop90:
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nA4
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nG4, nA4, nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	smpsLoop            $00, $02, Extra_Final_Boss_Loop90
	dc.b	$08

Extra_Final_Boss_Loop91:
	dc.b	nA4, $07, nG4, $09, nD5, $08
	smpsLoop            $00, $07, Extra_Final_Boss_Loop91
	dc.b	nA4, $07, nG4, $09

Extra_Final_Boss_Loop92:
	dc.b	nCs5, $08, nA4, $07, nFs4, $09
	smpsLoop            $00, $0A, Extra_Final_Boss_Loop92

Extra_Final_Boss_Loop93:
	dc.b	nB4, $08, nAb4, $07
	smpsAlterNote       $FF
	dc.b	nE4, $09
	smpsAlterNote       $00
	smpsLoop            $00, $02, Extra_Final_Boss_Loop93
	dc.b	nA4, $08, nFs4, $07, nCs4, $09, nAb4, $08, nA4, $07, nB4, $09
	dc.b	nFs4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nCs4, $07
	smpsAlterNote       $FF
	dc.b	nE4, $09
	smpsAlterNote       $00

Extra_Final_Boss_Loop94:
	dc.b	nFs4, $08, nCs4, $07, nA3, $09
	smpsLoop            $00, $02, Extra_Final_Boss_Loop94

Extra_Final_Boss_Loop95:
	dc.b	nAb4, $08
	smpsAlterNote       $FF
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nB3, $09
	smpsLoop            $00, $03, Extra_Final_Boss_Loop95
	dc.b	nAb4, $08, nA4, $07, nB4, $09, nCs5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07

Extra_Final_Boss_Loop96:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	smpsLoop            $00, $02, Extra_Final_Boss_Loop96

Extra_Final_Boss_Loop97:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	smpsLoop            $00, $02, Extra_Final_Boss_Loop97
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nCs4, $07
	smpsAlterNote       $FF
	dc.b	nE4, $09
	smpsAlterNote       $00

Extra_Final_Boss_Loop98:
	dc.b	nFs4, $08, nCs4, $07, nA3, $09
	smpsLoop            $00, $02, Extra_Final_Boss_Loop98

Extra_Final_Boss_Loop99:
	dc.b	nAb4, $08
	smpsAlterNote       $FF
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nB3, $09
	smpsLoop            $00, $03, Extra_Final_Boss_Loop99
	dc.b	nAb4, $08, nA4, $07, nB4, $09, nCs5

Extra_Final_Boss_Loop9A:
	dc.b	$06
	smpsAlterVol        $07
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $F4
	smpsLoop            $00, $02, Extra_Final_Boss_Loop9A
	dc.b	nCs5
	smpsAlterVol        $07
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F9
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, $0C
	smpsAlterVol        $04
	smpsAlterNote       $00

Extra_Final_Boss_Loop9F:
	dc.b	nF4

Extra_Final_Boss_Loop9B:
	dc.b	$06
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_Loop9B
	smpsAlterNote       $FF

Extra_Final_Boss_Loop9C:
	dc.b	nE4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_Loop9C
	smpsAlterNote       $00

Extra_Final_Boss_Loop9D:
	dc.b	nAb4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_Loop9D

Extra_Final_Boss_Loop9E:
	dc.b	nG4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_Loop9E
	smpsLoop            $01, $02, Extra_Final_Boss_Loop9F

Extra_Final_Boss_LoopA0:
	dc.b	nF4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA0
	smpsAlterNote       $FF

Extra_Final_Boss_LoopA1:
	dc.b	nE4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA1
	smpsAlterNote       $00

Extra_Final_Boss_LoopA2:
	dc.b	nAb4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $DA
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA2
	dc.b	nG4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $DA
	dc.b	nG4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F2

Extra_Final_Boss_LoopA3:
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nBb4, $0D, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA3
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nA4
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nG4, nA4, nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nA4
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nG4, nA4, nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0C, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $06
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nD5, $0C
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $24

Extra_Final_Boss_LoopA4:
	smpsAlterNote       $00
	dc.b	nD4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0A, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $09, nA4, nG4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $09, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $04
	smpsAlterNote       $FF
	dc.b	nE5, $05
	smpsAlterNote       $00
	dc.b	nD5, $09
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nA4
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nG4, nA4, nF4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nD4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $0A, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $09, nA4, nG4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $09, nA4
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $00
	dc.b	nF5, $04
	smpsAlterNote       $FF
	dc.b	nE5, $05
	smpsAlterNote       $00
	dc.b	nD5, $09
	smpsAlterNote       $03
	dc.b	nC5
	smpsAlterNote       $00
	dc.b	nD5, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA4
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsSetvoice        $02
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Extra_Final_Boss_Jump04

; FM2 Data
Extra_Final_Boss_FM2:
	smpsSetvoice        $00
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	nC3, $18
	smpsAlterNote       $00
	dc.b	nB2, $24, $0C
	smpsAlterNote       $02
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nA2, nAb2, nG2, nFs2, nG2, nAb2, nA2
	smpsAlterNote       $02
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $03
	dc.b	nC3, $18
	smpsAlterNote       $00
	dc.b	nB2, $24
	smpsAlterNote       $02
	dc.b	nBb2, nRst, $0C, nBb2
	smpsAlterNote       $00
	dc.b	nA2, nAb2, nG2, nFs2, nF2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $2B
	dc.b	nD3, $24
	smpsAlterNote       $00
	dc.b	nD3, nCs3
	smpsAlterNote       $03
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nB2, $30
	smpsAlterNote       $02
	dc.b	nBb2, $54
	smpsAlterNote       $00
	dc.b	nA2, $6C

Extra_Final_Boss_Jump03:
	dc.b	nD4, $06, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop6F:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop6F
	dc.b	nCs4, nCs3, nCs3, nCs3, nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00

Extra_Final_Boss_Loop70:
	dc.b	nCs3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop70
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop71:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop71
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $FF

Extra_Final_Boss_Loop72:
	dc.b	nE3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop72
	smpsAlterNote       $00
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop73:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop73
	dc.b	nCs4, nCs3, nCs3, nCs3, nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00

Extra_Final_Boss_Loop74:
	dc.b	nCs3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop74
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop75:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop75
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $FF

Extra_Final_Boss_Loop76:
	dc.b	nE3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop76
	smpsAlterNote       $02

Extra_Final_Boss_Loop78:
	dc.b	nBb3, nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nF3
	smpsAlterNote       $02
	dc.b	nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nCs3
	smpsAlterNote       $02

Extra_Final_Boss_Loop77:
	dc.b	nBb2
	smpsLoop            $00, $07, Extra_Final_Boss_Loop77
	smpsLoop            $01, $03, Extra_Final_Boss_Loop78
	smpsAlterNote       $03
	dc.b	nC4, nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $03
	dc.b	nC3, nC3, nC3
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $03

Extra_Final_Boss_Loop79:
	dc.b	nC3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop79
	smpsAlterNote       $00
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop7A:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop7A
	dc.b	nCs4, nCs3, nCs3, nCs3, nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00

Extra_Final_Boss_Loop7B:
	dc.b	nCs3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop7B

Extra_Final_Boss_Loop7D:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop7C:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop7C
	smpsLoop            $01, $02, Extra_Final_Boss_Loop7D

Extra_Final_Boss_Loop7E:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nCs4, nCs3, nCs3, nCs3
	dc.b	nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $2B
	dc.b	nD4, nD3, nD3, nD3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $2B
	dc.b	nD3, nD3, nD3
	smpsAlterNote       $00
	smpsLoop            $00, $03, Extra_Final_Boss_Loop7E
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nCs4, nCs3, nCs3, nCs3
	dc.b	nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $2B
	dc.b	nD4, nD3, nD3, nD3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $2B
	dc.b	nD3, nD3, nD3

Extra_Final_Boss_Loop80:
	smpsAlterNote       $02
	dc.b	nBb3, nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nF3
	smpsAlterNote       $02
	dc.b	nBb2, nBb2, nBb2
	smpsAlterNote       $03
	dc.b	nC4, nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $03
	dc.b	nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nB3, nB2, nB2, nB2
	dc.b	nFs3, nB2, nB2, nB2
	smpsAlterNote       $02
	dc.b	nBb3, nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nF3
	smpsAlterNote       $02
	dc.b	nBb2, nBb2, nBb2
	smpsAlterNote       $03
	dc.b	nC4, nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $03
	dc.b	nC3, nC3, nC3
	smpsAlterNote       $00

Extra_Final_Boss_Loop7F:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3
	smpsLoop            $00, $02, Extra_Final_Boss_Loop7F
	smpsLoop            $01, $04, Extra_Final_Boss_Loop80

Extra_Final_Boss_Loop82:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nF3

Extra_Final_Boss_Loop81:
	dc.b	nD3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop81
	smpsLoop            $01, $02, Extra_Final_Boss_Loop82

Extra_Final_Boss_Loop84:
	dc.b	nFs4, nFs3, nFs3, nFs3, nCs4, nFs3, nFs3, nFs3, nA3

Extra_Final_Boss_Loop83:
	dc.b	nFs3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop83
	smpsLoop            $01, $02, Extra_Final_Boss_Loop84

Extra_Final_Boss_Loop86:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nFs4, nFs3, nFs3, nFs3, nCs4, nFs3, nFs3, nFs3, nA3

Extra_Final_Boss_Loop85:
	dc.b	nFs3
	smpsLoop            $00, $07, Extra_Final_Boss_Loop85
	smpsLoop            $01, $03, Extra_Final_Boss_Loop86
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nF4, nF3, nF3, nF3, nCs4, nF3, nF3, nF3

Extra_Final_Boss_Loop87:
	dc.b	nF3
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $15
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $E3
	smpsLoop            $00, $02, Extra_Final_Boss_Loop87
	dc.b	nF3
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F8

Extra_Final_Boss_Loop88:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nCs4, nCs3, nCs3, nCs3
	dc.b	nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $2B
	dc.b	nD4, nD3, nD3, nD3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $2B
	dc.b	nD3, nD3, nD3
	smpsAlterNote       $00
	smpsLoop            $00, $07, Extra_Final_Boss_Loop88
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nCs4, nCs3, nCs3, nCs3
	dc.b	nAb3, nCs3, nCs3, nCs3
	smpsAlterNote       $FF
	dc.b	nE4, nE3, nE3, nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nE3, nE3, nE3
	smpsAlterNote       $2B
	dc.b	nD4, nD3, nD3, nD3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $2B
	dc.b	nD3, nD3, nD3

Extra_Final_Boss_Loop8A:
	smpsAlterNote       $02
	dc.b	nBb3, nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nF3
	smpsAlterNote       $02
	dc.b	nBb2, nBb2, nBb2
	smpsAlterNote       $03
	dc.b	nC4, nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $03
	dc.b	nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nB3, nB2, nB2, nB2
	dc.b	nFs3, nB2, nB2, nB2
	smpsAlterNote       $02
	dc.b	nBb3, nBb2, nBb2, nBb2
	smpsAlterNote       $00
	dc.b	nF3
	smpsAlterNote       $02
	dc.b	nBb2, nBb2, nBb2
	smpsAlterNote       $03
	dc.b	nC4, nC3, nC3, nC3
	smpsAlterNote       $00
	dc.b	nG3
	smpsAlterNote       $03
	dc.b	nC3, nC3, nC3
	smpsAlterNote       $00

Extra_Final_Boss_Loop89:
	dc.b	nD4, nD3, nD3, nD3, nA3, nD3, nD3, nD3
	smpsLoop            $00, $02, Extra_Final_Boss_Loop89
	smpsLoop            $01, $04, Extra_Final_Boss_Loop8A
	dc.b	nRst, $24

Extra_Final_Boss_Loop8C:
	smpsAlterNote       $02
	dc.b	nBb3, $04, nBb2, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nF3, $04
	smpsAlterNote       $02
	dc.b	nBb2, $05, $04, $05
	smpsAlterNote       $03
	dc.b	nC4, $04, nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nG3, $04
	smpsAlterNote       $03
	dc.b	nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nD4, $04, nD3, $05, $04, $05, nA3, $04, nD3, $05, $04, $05
	dc.b	nB3, $04, nB2, $05, $04, $05, nFs3, $04, nB2, $05, $04, $05
	smpsAlterNote       $02
	dc.b	nBb3, $04, nBb2, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nF3, $04
	smpsAlterNote       $02
	dc.b	nBb2, $05, $04, $05
	smpsAlterNote       $03
	dc.b	nC4, $04, nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nG3, $04
	smpsAlterNote       $03
	dc.b	nC3, $05, $04, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop8B:
	dc.b	nD4, $04, nD3, $05, $04, $05, nA3, $04, nD3, $05, $04, $05
	smpsLoop            $00, $02, Extra_Final_Boss_Loop8B
	smpsLoop            $01, $03, Extra_Final_Boss_Loop8C
	smpsAlterNote       $02
	dc.b	nBb3, $04, nBb2, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nF3, $04
	smpsAlterNote       $02
	dc.b	nBb2, $05, $04, $05
	smpsAlterNote       $03
	dc.b	nC4, $04, nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nG3, $04
	smpsAlterNote       $03
	dc.b	nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nD4, $04, nD3, $05, $04, $05, nA3, $04, nD3, $05, $04, $05
	dc.b	nB3, $04, nB2, $05, $04, $05, nFs3, $04, nB2, $05, $04, $05
	smpsAlterNote       $02
	dc.b	nBb3, $04, nBb2, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nF3, $04
	smpsAlterNote       $02
	dc.b	nBb2, $05, $04, $05
	smpsAlterNote       $03
	dc.b	nC4, $04, nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nG3, $04
	smpsAlterNote       $03
	dc.b	nC3, $05, $04, $05
	smpsAlterNote       $00
	dc.b	nD4, $04, nD3, $05, $04, $05, nA3, $04, nD3, $05, nD3, nD3
	dc.b	$06, nD4, nD3, $07, nD3, nD3, $08, nA3, nD3, $09, nD3, nD3
	smpsPan             panCenter, $00
	smpsJump            Extra_Final_Boss_Jump03

; FM3 Data
Extra_Final_Boss_FM3:
	smpsPan             panRight, $00
	dc.b	nRst, $0C
	smpsSetvoice        $01
	smpsAlterVol        $0C
	smpsAlterNote       $2B
	dc.b	nD5, $06, nRst
	smpsAlterNote       $00
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, nRst, $0C
	smpsAlterNote       $2B
	dc.b	nD5, $06, nRst
	smpsAlterNote       $00
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nC5, $18, smpsNoAttack
	smpsAlterNote       $48
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $4D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $50
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $4E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $49
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $43
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $40
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $3E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $40
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $45
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $4A
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nBb4, $19, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04

Extra_Final_Boss_Loop3C:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop3C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01

Extra_Final_Boss_Jump02:
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $00

Extra_Final_Boss_Loop3D:
	dc.b	nF4, $06, nD4
	smpsAlterVol        $09
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $F7
	smpsLoop            $00, $05, Extra_Final_Boss_Loop3D
	dc.b	nD4
	smpsAlterNote       $FF
	dc.b	nE4, $24, nE4, nE4, $18
	smpsAlterNote       $00

Extra_Final_Boss_Loop3E:
	dc.b	nF4, $06, nD4
	smpsAlterVol        $09
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $F7
	smpsLoop            $00, $05, Extra_Final_Boss_Loop3E
	dc.b	nD4, nG4, $24, nG4, nG4, $18
	smpsLoop            $01, $04, Extra_Final_Boss_Loop3D
	smpsAlterVol        $04
	dc.b	nD5, $30, nCs5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $2B
	dc.b	nD5, nRst, $0C
	smpsAlterNote       $00

Extra_Final_Boss_Loop43:
	dc.b	nF5

Extra_Final_Boss_Loop3F:
	dc.b	$06
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop3F
	smpsAlterNote       $FF

Extra_Final_Boss_Loop40:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop40
	smpsAlterNote       $00

Extra_Final_Boss_Loop41:
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop41

Extra_Final_Boss_Loop42:
	dc.b	nG5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop42
	smpsLoop            $01, $02, Extra_Final_Boss_Loop43

Extra_Final_Boss_Loop44:
	dc.b	nF5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop44
	smpsAlterNote       $FF

Extra_Final_Boss_Loop45:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop45
	smpsAlterNote       $00
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $34
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst
	smpsSetvoice        $01
	smpsAlterVol        $FD
	smpsAlterNote       $00

Extra_Final_Boss_Loop46:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop46
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop47:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop47
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop48:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop48
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop49:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop49
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nA5, $08, nRst, $04, nA5
	dc.b	$03, nRst, nA5, nRst, nA5, nRst, nA5, $07, nRst, $05, nA5, $07
	dc.b	nRst, $05
	smpsLoop            $01, $04, Extra_Final_Boss_Loop46
	smpsSetvoice        $03
	dc.b	nD4, $60, nD4, nFs4, nFs4, nD3, $0C, nA3, nD3, nA3

Extra_Final_Boss_Loop4A:
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsLoop            $00, $02, Extra_Final_Boss_Loop4A
	dc.b	nFs3, nCs4, nFs3, nCs4, nFs3, nCs4
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3, nD3, nA3, nD3, nA3

Extra_Final_Boss_Loop4B:
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsLoop            $00, $04, Extra_Final_Boss_Loop4B
	dc.b	nFs3, nCs4
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3, nD3, nA3, nD3, nA3

Extra_Final_Boss_Loop4C:
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsLoop            $00, $02, Extra_Final_Boss_Loop4C
	dc.b	nFs3, nCs4, nFs3, nCs4, nFs3, nCs4
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3, nD3, nA3, nD3, nA3

Extra_Final_Boss_Loop4D:
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nB3
	smpsLoop            $00, $04, Extra_Final_Boss_Loop4D
	smpsAlterVol        $FC
	dc.b	nF3

Extra_Final_Boss_Loop4E:
	dc.b	$06
	smpsAlterVol        $09
	dc.b	smpsNoAttack, nF3
	smpsAlterVol        $16
	dc.b	smpsNoAttack, nF3
	smpsAlterVol        $E1
	smpsLoop            $00, $02, Extra_Final_Boss_Loop4E
	dc.b	nF3
	smpsAlterVol        $09
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FB
	dc.b	nD5, $30, nCs5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $2B
	dc.b	nD5, nRst, $0C
	smpsAlterNote       $00

Extra_Final_Boss_Loop53:
	dc.b	nF5

Extra_Final_Boss_Loop4F:
	dc.b	$06
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop4F
	smpsAlterNote       $FF

Extra_Final_Boss_Loop50:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop50
	smpsAlterNote       $00

Extra_Final_Boss_Loop51:
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop51

Extra_Final_Boss_Loop52:
	dc.b	nG5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop52
	smpsLoop            $01, $02, Extra_Final_Boss_Loop53

Extra_Final_Boss_Loop54:
	dc.b	nF5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop54
	smpsAlterNote       $FF

Extra_Final_Boss_Loop55:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop55
	smpsAlterNote       $00

Extra_Final_Boss_Loop56:
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop56
	dc.b	nG5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $D8
	dc.b	nG5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F6
	dc.b	nD5, $30, nCs5
	smpsAlterNote       $FF
	dc.b	nE5
	smpsAlterNote       $2B
	dc.b	nD5, nRst, $0C
	smpsAlterNote       $00

Extra_Final_Boss_Loop5B:
	dc.b	nF5

Extra_Final_Boss_Loop57:
	dc.b	$06
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop57
	smpsAlterNote       $FF

Extra_Final_Boss_Loop58:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop58
	smpsAlterNote       $00

Extra_Final_Boss_Loop59:
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop59

Extra_Final_Boss_Loop5A:
	dc.b	nG5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop5A
	smpsLoop            $01, $02, Extra_Final_Boss_Loop5B

Extra_Final_Boss_Loop5C:
	dc.b	nF5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop5C
	smpsAlterNote       $FF

Extra_Final_Boss_Loop5D:
	dc.b	nE5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $D8
	smpsLoop            $00, $02, Extra_Final_Boss_Loop5D
	smpsAlterNote       $00
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $D8
	dc.b	nAb5
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $34
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst
	smpsSetvoice        $01
	smpsAlterVol        $FD
	smpsAlterNote       $00

Extra_Final_Boss_Loop5E:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop5E
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop5F:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop5F
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop60:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop60
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop61:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop61
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nA5, $08, nRst, $04, nA5
	dc.b	$03, nRst, nA5, nRst, nA5, nRst, nA5, $07, nRst, $05, nA5, $07
	dc.b	nRst, $05
	smpsLoop            $01, $03, Extra_Final_Boss_Loop5E

Extra_Final_Boss_Loop62:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop62
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop63:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop63
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop64:
	dc.b	nD5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop64
	dc.b	nD5, $07, nRst, $05, nD5, $03, nRst
	smpsAlterNote       $FF
	dc.b	nE5, $08, nRst, $04, nE5, $03, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	$07, nRst, $05, nE5, $07, nRst, $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop65:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop65
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nA5, $08, nRst, $04, nA5
	dc.b	$03, nRst, nA5, nRst, nA5, nRst, nA5, $07, nRst, $05, nA5, $07
	dc.b	nRst, $29

Extra_Final_Boss_Loop66:
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop66
	dc.b	nD5, $05, nRst, $04, nD5, $03, nRst, $01
	smpsAlterNote       $FF
	dc.b	nE5, $07, nRst, $02, nE5, $03, nRst, $02, nE5, $03, nRst, $01
	dc.b	nE5, $03, nRst, $02, nE5, $05, nRst, $04, nE5, $05, nRst, $04
	smpsAlterNote       $00

Extra_Final_Boss_Loop67:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop67
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop68:
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop68
	dc.b	nD5, $05, nRst, $04, nD5, $03, nRst, $01
	smpsAlterNote       $FF
	dc.b	nE5, $07, nRst, $02, nE5, $03, nRst, $02, nE5, $03, nRst, $01
	dc.b	nE5, $03, nRst, $02, nE5, $05, nRst, $04, nE5, $05, nRst, $04
	smpsAlterNote       $00

Extra_Final_Boss_Loop69:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop69
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nA5, $07, nRst, $02
	dc.b	nA5, $03, nRst, $02, nA5, $03, nRst, $01, nA5, $03, nRst, $02
	dc.b	nA5, $05, nRst, $04, nA5, $05, nRst, $04
	smpsLoop            $01, $03, Extra_Final_Boss_Loop66

Extra_Final_Boss_Loop6A:
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop6A
	dc.b	nD5, $05, nRst, $04, nD5, $03, nRst, $01
	smpsAlterNote       $FF
	dc.b	nE5, $07, nRst, $02, nE5, $03, nRst, $02, nE5, $03, nRst, $01
	dc.b	nE5, $03, nRst, $02, nE5, $05, nRst, $04, nE5, $05, nRst, $04
	smpsAlterNote       $00

Extra_Final_Boss_Loop6B:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop6B
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop6C:
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop6C
	dc.b	nD5, $05, nRst, $04, nD5, $03, nRst, $01
	smpsAlterNote       $FF
	dc.b	nE5, $07, nRst, $02, nE5, $03, nRst, $02, nE5, $03, nRst, $01
	dc.b	nE5, $03, nRst, $02, nE5, $05, nRst, $04, nE5, $05, nRst, $04
	smpsAlterNote       $00

Extra_Final_Boss_Loop6D:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop6D
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $02, nA5, $08

Extra_Final_Boss_Loop6E:
	dc.b	nRst, $04, nA5, $03
	smpsLoop            $00, $03, Extra_Final_Boss_Loop6E
	dc.b	nRst, $05, nA5, $09, nRst, $08, nA5, $0A, nRst, $08
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	smpsAlterNote       $FB
	smpsJump            Extra_Final_Boss_Jump02

; FM4 Data
Extra_Final_Boss_FM4:
	smpsPan             panLeft, $00
	dc.b	nRst, $0C
	smpsSetvoice        $01
	smpsAlterVol        $0C
	smpsAlterNote       $03
	dc.b	nC5, $06, nRst
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, nRst, $0C
	smpsAlterNote       $02
	dc.b	nBb4, $06, nRst
	smpsAlterNote       $00
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02

Extra_Final_Boss_Loop1D:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $19, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	smpsLoop            $00, $02, Extra_Final_Boss_Loop1D
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE4, $19, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01

Extra_Final_Boss_Jump01:
	dc.b	nRst, $7F, $7F, $7F, $7F, $44
	smpsSetvoice        $04
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nD6, $0C, nF6, nAb6, nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nG6
	smpsAlterNote       $03
	dc.b	nC6
	smpsAlterNote       $2B
	dc.b	nD6
	smpsAlterNote       $00
	dc.b	nFs6, nB5, nD6, nF6
	smpsAlterNote       $02
	dc.b	nBb5
	smpsAlterNote       $00
	dc.b	nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nA5, nRst, $7F, $7F, $7F, $7F, $44, nD6, $0C, nF6, nAb6, nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nG6
	smpsAlterNote       $03
	dc.b	nC6
	smpsAlterNote       $2B
	dc.b	nD6
	smpsAlterNote       $00
	dc.b	nFs6, nB5, nD6, nF6
	smpsAlterNote       $02
	dc.b	nBb5
	smpsAlterNote       $00
	dc.b	nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nA5, nRst, $7F, $41
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nA3, $30, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $00
	dc.b	nA3, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsSetvoice        $04
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nD6, $0C, nF6, nAb6, nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nG6
	smpsAlterNote       $03
	dc.b	nC6
	smpsAlterNote       $2B
	dc.b	nD6
	smpsAlterNote       $00
	dc.b	nFs6, nB5, nD6, nF6
	smpsAlterNote       $02
	dc.b	nBb5
	smpsAlterNote       $00
	dc.b	nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nA5
	smpsSetvoice        $01
	smpsAlterVol        $FE

Extra_Final_Boss_Loop1E:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop1E
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop1F:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop1F
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nB5, $08, nRst, $04, nB5
	dc.b	$03, nRst, nB5, nRst, nB5, nRst, nB5, $07, nRst, $05, nB5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop20:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop20
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop21:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop21
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst
	smpsAlterNote       $03
	dc.b	nC6, $08, nRst, $04, nC6, $03, nRst, nC6, nRst, nC6, nRst, nC6
	dc.b	$07, nRst, $05, nC6, $07, nRst, $05
	smpsAlterNote       $00
	smpsLoop            $01, $03, Extra_Final_Boss_Loop1E

Extra_Final_Boss_Loop22:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop22
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop23:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop23
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nB5, $08, nRst, $04, nB5
	dc.b	$03, nRst, nB5, nRst, nB5, nRst, nB5, $07, nRst, $05, nB5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop24:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop24
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop25:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop25
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst
	smpsAlterNote       $03
	dc.b	nC6, $08, nRst, $04, nC6, $03, nRst, nC6, nRst, nC6, nRst, nC6
	dc.b	$07, nRst, $05, nC6, $07, nRst, $7F, $7F, $7F, $08
	smpsAlterVol        $05
	smpsAlterNote       $00

Extra_Final_Boss_Loop26:
	dc.b	nFs5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop26
	dc.b	nFs5, $07, nRst, $05, nFs5, $03, nRst, nAb5, $08, nRst, $04, nAb5
	dc.b	$03, nRst, nAb5, nRst, nAb5, nRst, nAb5, $07, nRst, $05, nAb5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop27:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop27
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nCs6, $08, nRst, $04, nCs6
	dc.b	$03, nRst, nCs6, nRst, nCs6, nRst, nCs6, $07, nRst, $05, nCs6, $07
	dc.b	nRst, $05
	smpsLoop            $01, $03, Extra_Final_Boss_Loop26

Extra_Final_Boss_Loop28:
	dc.b	nFs5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop28
	dc.b	nFs5, $07, nRst, $05, nFs5, $03, nRst, nAb5, $08, nRst, $04, nAb5
	dc.b	$03, nRst, nAb5, nRst, nAb5, nRst, nAb5, $07, nRst, $05, nAb5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop29:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop29
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nCs6, $06, nRst, $7F, $71
	smpsSetvoice        $03
	smpsAlterVol        $FB
	dc.b	nA3, $30, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $00
	dc.b	nA3, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsSetvoice        $04
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nD6, $0C, nF6, nAb6, nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nG6
	smpsAlterNote       $03
	dc.b	nC6
	smpsAlterNote       $2B
	dc.b	nD6
	smpsAlterNote       $00
	dc.b	nFs6, nB5, nD6, nF6
	smpsAlterNote       $02
	dc.b	nBb5
	smpsAlterNote       $00
	dc.b	nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nA5, nRst, $7F, $41
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nA3, $30, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsAlterNote       $00
	dc.b	nA3, nAb3, nB3
	smpsAlterNote       $02
	dc.b	nBb3
	smpsSetvoice        $04
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nD6, $0C, nF6, nAb6, nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nG6
	smpsAlterNote       $03
	dc.b	nC6
	smpsAlterNote       $2B
	dc.b	nD6
	smpsAlterNote       $00
	dc.b	nFs6, nB5, nD6, nF6
	smpsAlterNote       $02
	dc.b	nBb5
	smpsAlterNote       $00
	dc.b	nCs6
	smpsAlterNote       $FF
	dc.b	nE6
	smpsAlterNote       $00
	dc.b	nA5
	smpsSetvoice        $01
	smpsAlterVol        $FE

Extra_Final_Boss_Loop2A:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2A
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop2B:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2B
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nB5, $08, nRst, $04, nB5
	dc.b	$03, nRst, nB5, nRst, nB5, nRst, nB5, $07, nRst, $05, nB5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop2C:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2C
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop2D:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2D
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst
	smpsAlterNote       $03
	dc.b	nC6, $08, nRst, $04, nC6, $03, nRst, nC6, nRst, nC6, nRst, nC6
	dc.b	$07, nRst, $05, nC6, $07, nRst, $05
	smpsAlterNote       $00
	smpsLoop            $01, $03, Extra_Final_Boss_Loop2A

Extra_Final_Boss_Loop2E:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2E
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop2F:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop2F
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst, nB5, $08, nRst, $04, nB5
	dc.b	$03, nRst, nB5, nRst, nB5, nRst, nB5, $07, nRst, $05, nB5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop30:
	dc.b	nF5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop30
	dc.b	nF5, $07, nRst, $05, nF5, $03, nRst, nG5, $08, nRst, $04, nG5
	dc.b	$03, nRst, nG5, nRst, nG5, nRst, nG5, $07, nRst, $05, nG5, $07
	dc.b	nRst, $05

Extra_Final_Boss_Loop31:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $04, Extra_Final_Boss_Loop31
	dc.b	nA5, $07, nRst, $05, nA5, $03, nRst
	smpsAlterNote       $03
	dc.b	nC6, $08, nRst, $04, nC6, $03, nRst, nC6, nRst, nC6, nRst, nC6
	dc.b	$07, nRst, $05, nC6, $07, nRst, $29

Extra_Final_Boss_Loop36:
	smpsAlterNote       $00

Extra_Final_Boss_Loop32:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop32
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop33:
	dc.b	nA5, $03, nRst, $01, nA5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop33
	dc.b	nA5, $05, nRst, $04, nA5, $03, nRst, $01, nB5, $07, nRst, $02
	dc.b	nB5, $03, nRst, $02, nB5, $03, nRst, $01, nB5, $03, nRst, $02
	dc.b	nB5, $05, nRst, $04, nB5, $05, nRst, $04

Extra_Final_Boss_Loop34:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop34
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop35:
	dc.b	nA5, $03, nRst, $01, nA5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop35
	dc.b	nA5, $05, nRst, $04, nA5, $03, nRst, $01
	smpsAlterNote       $03
	dc.b	nC6, $07, nRst, $02, nC6, $03, nRst, $02, nC6, $03, nRst, $01
	dc.b	nC6, $03, nRst, $02, nC6, $05, nRst, $04, nC6, $05, nRst, $04
	smpsLoop            $01, $03, Extra_Final_Boss_Loop36
	smpsAlterNote       $00

Extra_Final_Boss_Loop37:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop37
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop38:
	dc.b	nA5, $03, nRst, $01, nA5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop38
	dc.b	nA5, $05, nRst, $04, nA5, $03, nRst, $01, nB5, $07, nRst, $02
	dc.b	nB5, $03, nRst, $02, nB5, $03, nRst, $01, nB5, $03, nRst, $02
	dc.b	nB5, $05, nRst, $04, nB5, $05, nRst, $04

Extra_Final_Boss_Loop39:
	dc.b	nF5, $03, nRst, $01, nF5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop39
	dc.b	nF5, $05, nRst, $04, nF5, $03, nRst, $01, nG5, $07, nRst, $02
	dc.b	nG5, $03, nRst, $02, nG5, $03, nRst, $01, nG5, $03, nRst, $02
	dc.b	nG5, $05, nRst, $04, nG5, $05, nRst, $04

Extra_Final_Boss_Loop3A:
	dc.b	nA5, $03, nRst, $01, nA5, $03, nRst, $02
	smpsLoop            $00, $02, Extra_Final_Boss_Loop3A
	dc.b	nA5, $05, nRst, $04, nA5, $03, nRst, $02
	smpsAlterNote       $03
	dc.b	nC6, $08

Extra_Final_Boss_Loop3B:
	dc.b	nRst, $04, nC6, $03
	smpsLoop            $00, $03, Extra_Final_Boss_Loop3B
	dc.b	nRst, $05, nC6, $09, nRst, $08, nC6, $0A, nRst, $08
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	smpsAlterNote       $FA
	smpsJump            Extra_Final_Boss_Jump01

; FM5 Data
Extra_Final_Boss_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $42
	smpsSetvoice        $02
	smpsAlterVol        $1B
	smpsAlterNote       $FE
	dc.b	nCs4, $04, nD4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $FE
	dc.b	nF4, nFs4
	smpsAlterNote       $FD
	dc.b	nG4, nAb4, nA4
	smpsAlterNote       $FF
	dc.b	nBb4
	smpsAlterNote       $FD
	dc.b	nB4
	smpsAlterNote       $01
	dc.b	nC5
	smpsAlterNote       $FE
	dc.b	nCs5, nD5
	smpsAlterNote       $28
	dc.b	nD5
	smpsAlterNote       $FD
	dc.b	nE5
	smpsAlterNote       $28
	dc.b	nD5
	smpsAlterNote       $FE
	dc.b	nD5, nCs5
	smpsAlterNote       $01
	dc.b	nC5
	smpsAlterNote       $FD
	dc.b	nB4
	smpsAlterNote       $FF
	dc.b	nBb4
	smpsAlterNote       $FD
	dc.b	nA4, nAb4, nG4
	smpsAlterNote       $FE
	dc.b	nFs4, nF4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FE
	dc.b	nD4, nCs4
	smpsAlterNote       $01
	dc.b	nC4
	smpsAlterNote       $FD
	dc.b	nB3, nRst, $48
	smpsAlterNote       $01
	dc.b	nC5, $04, nC5
	smpsAlterNote       $FD
	dc.b	nB4
	smpsAlterNote       $FF
	dc.b	nBb4
	smpsAlterNote       $FD
	dc.b	nA4, nAb4, nG4
	smpsAlterNote       $FE
	dc.b	nFs4, nF4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FE
	dc.b	nD4, nCs4
	smpsAlterNote       $01
	dc.b	nC4
	smpsAlterNote       $FD
	dc.b	nB3
	smpsAlterNote       $FF
	dc.b	nBb3
	smpsAlterNote       $FD
	dc.b	nA3, nAb3, nG3, nAb3, nA3
	smpsAlterNote       $FF
	dc.b	nBb3
	smpsAlterNote       $FD
	dc.b	nB3
	smpsAlterNote       $01
	dc.b	nC4
	smpsAlterNote       $FE
	dc.b	nCs4, nD4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $FE
	dc.b	nF4, $03, $04, nFs4, $07
	smpsAlterNote       $28
	dc.b	nD4, $0C
	smpsAlterNote       $FE
	dc.b	nFs4
	smpsAlterNote       $FD
	dc.b	nA4
	smpsAlterNote       $FE
	dc.b	nD4, nF4
	smpsAlterNote       $FD
	dc.b	nAb4
	smpsAlterNote       $FE
	dc.b	nCs4
	smpsAlterNote       $FD
	dc.b	nE4, nG4
	smpsAlterNote       $FE
	dc.b	nCs4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FE
	dc.b	nFs4
	smpsAlterNote       $FD
	dc.b	nB3
	smpsAlterNote       $FE
	dc.b	nD4, nF4, $18
	smpsAlterNote       $FD
	dc.b	nA4, $3C
	smpsAlterNote       $FF
	dc.b	nBb4, $0C
	smpsAlterNote       $FD
	dc.b	nA4, nG4, $60

Extra_Final_Boss_Jump00:
	dc.b	nRst, $7F, $7F, $6A, nA3, $06, nB3
	smpsAlterNote       $FE
	dc.b	nCs4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $FE
	dc.b	nF4
	smpsAlterNote       $FD
	dc.b	nG4

Extra_Final_Boss_Loop07:
	dc.b	nA4
	smpsAlterNote       $FF
	dc.b	nBb4
	smpsAlterNote       $FD
	smpsLoop            $00, $0C, Extra_Final_Boss_Loop07
	dc.b	nA4, nAb4, nG4
	smpsAlterNote       $FE
	dc.b	nFs4, nF4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FE
	dc.b	nCs4, nRst, $7F, $7F, $7F, $7F, $20
	smpsAlterNote       $FD
	dc.b	nA3, $06, nB3
	smpsAlterNote       $FE
	dc.b	nCs4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $FE
	dc.b	nF4
	smpsAlterNote       $FD
	dc.b	nG4

Extra_Final_Boss_Loop08:
	dc.b	nA4
	smpsAlterNote       $FF
	dc.b	nBb4
	smpsAlterNote       $FD
	smpsLoop            $00, $0C, Extra_Final_Boss_Loop08
	dc.b	nA4, nAb4, nG4
	smpsAlterNote       $FE
	dc.b	nFs4, nF4
	smpsAlterNote       $FD
	dc.b	nE4
	smpsAlterNote       $28
	dc.b	nD4
	smpsAlterNote       $FE
	dc.b	nCs4, nRst, $7F, $41
	smpsSetvoice        $05
	smpsAlterVol        $F7

Extra_Final_Boss_Loop09:
	smpsAlterNote       $FA
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nBb4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, Extra_Final_Boss_Loop09
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nA4
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nG4, nA4
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FC
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nA4
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nG4, nA4
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FC
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, nRst, $0C
	smpsAlterVol        $04

Extra_Final_Boss_Loop0A:
	smpsAlterNote       $FC
	dc.b	nD5, $08
	smpsAlterNote       $FA
	dc.b	nA4, $07
	smpsAlterNote       $FB
	dc.b	nG4, $09
	smpsLoop            $00, $08, Extra_Final_Boss_Loop0A

Extra_Final_Boss_Loop0B:
	smpsAlterNote       $FD
	dc.b	nCs5, $08
	smpsAlterNote       $FA
	dc.b	nA4, $07
	smpsAlterNote       $FC
	dc.b	nFs4, $09
	smpsLoop            $00, $0A, Extra_Final_Boss_Loop0B

Extra_Final_Boss_Loop0C:
	smpsAlterNote       $FA
	dc.b	nB4, $08
	smpsAlterNote       $FB
	dc.b	nAb4, $07, nE4, $09
	smpsLoop            $00, $02, Extra_Final_Boss_Loop0C
	smpsAlterNote       $FA
	dc.b	nA4, $08
	smpsAlterNote       $FC
	dc.b	nFs4, $07
	smpsAlterNote       $FD
	dc.b	nCs4, $09
	smpsAlterNote       $FB
	dc.b	nAb4, $08
	smpsAlterNote       $FA
	dc.b	nA4, $07, nB4, $09
	smpsAlterNote       $FC
	dc.b	nFs4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs4, $07
	smpsAlterNote       $FB
	dc.b	nE4, $09

Extra_Final_Boss_Loop0D:
	smpsAlterNote       $FC
	dc.b	nFs4, $08
	smpsAlterNote       $FD
	dc.b	nCs4, $07
	smpsAlterNote       $FA
	dc.b	nA3, $09
	smpsLoop            $00, $02, Extra_Final_Boss_Loop0D

Extra_Final_Boss_Loop0E:
	smpsAlterNote       $FB
	dc.b	nAb4, $08, nE4, $07
	smpsAlterNote       $FA
	dc.b	nB3, $09
	smpsLoop            $00, $03, Extra_Final_Boss_Loop0E
	smpsAlterNote       $FB
	dc.b	nAb4, $08
	smpsAlterNote       $FA
	dc.b	nA4, $07, nB4, $09
	smpsAlterNote       $FD
	dc.b	nCs5, $0D, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE

Extra_Final_Boss_Loop0F:
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	smpsLoop            $00, $02, Extra_Final_Boss_Loop0F
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2

Extra_Final_Boss_Loop10:
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	smpsLoop            $00, $02, Extra_Final_Boss_Loop10
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nFs4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nCs4, $07
	smpsAlterNote       $FB
	dc.b	nE4, $09

Extra_Final_Boss_Loop11:
	smpsAlterNote       $FC
	dc.b	nFs4, $08
	smpsAlterNote       $FD
	dc.b	nCs4, $07
	smpsAlterNote       $FA
	dc.b	nA3, $09
	smpsLoop            $00, $02, Extra_Final_Boss_Loop11

Extra_Final_Boss_Loop12:
	smpsAlterNote       $FB
	dc.b	nAb4, $08, nE4, $07
	smpsAlterNote       $FA
	dc.b	nB3, $09
	smpsLoop            $00, $03, Extra_Final_Boss_Loop12
	smpsAlterNote       $FB
	dc.b	nAb4, $08
	smpsAlterNote       $FA
	dc.b	nA4, $07, nB4, $09
	smpsAlterNote       $FD
	dc.b	nCs5, $06
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $F3
	dc.b	nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $06, nRst, $0C
	smpsAlterVol        $EF
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, nRst, $18
	smpsAlterVol        $04

Extra_Final_Boss_Loop17:
	smpsAlterNote       $FC
	dc.b	nF4

Extra_Final_Boss_Loop13:
	dc.b	$06
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop13
	smpsAlterNote       $FB

Extra_Final_Boss_Loop14:
	dc.b	nE4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop14

Extra_Final_Boss_Loop15:
	dc.b	nAb4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop15

Extra_Final_Boss_Loop16:
	dc.b	nG4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop16
	smpsLoop            $01, $02, Extra_Final_Boss_Loop17
	smpsAlterNote       $FC

Extra_Final_Boss_Loop18:
	dc.b	nF4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop18
	smpsAlterNote       $FB

Extra_Final_Boss_Loop19:
	dc.b	nE4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop19

Extra_Final_Boss_Loop1A:
	dc.b	nAb4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nAb4
	smpsAlterVol        $D9
	smpsLoop            $00, $02, Extra_Final_Boss_Loop1A
	dc.b	nG4
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nG4, nRst, $0C
	smpsAlterVol        $D5

Extra_Final_Boss_Loop1B:
	smpsAlterNote       $FA
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nBb4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nAb4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, Extra_Final_Boss_Loop1B
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nA4
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nG4, nA4
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FC
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nA4
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nG4, nA4
	smpsAlterNote       $FC
	dc.b	nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nF4, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $0C, nA4, nG4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0D, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD5, $0C
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $06
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nD5, $0C
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FC
	dc.b	nD5, $0D, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, nRst, $2D

Extra_Final_Boss_Loop1C:
	smpsAlterNote       $FC
	dc.b	nD4, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $09, nA4, nG4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD5, $09
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $04
	smpsAlterNote       $FB
	dc.b	nE5, $05
	smpsAlterNote       $FC
	dc.b	nD5, $09
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nA4
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FB
	dc.b	nG4, nA4
	smpsAlterNote       $FC
	dc.b	nF4, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nD4, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nA4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nF4, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nG4, $09, nA4, nG4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nD5, $09
	smpsAlterNote       $FB
	dc.b	nA4, nE5
	smpsAlterNote       $FC
	dc.b	nF5
	smpsAlterNote       $FB
	dc.b	nE5
	smpsAlterNote       $FC
	dc.b	nF5, $04
	smpsAlterNote       $FB
	dc.b	nE5, $05
	smpsAlterNote       $FC
	dc.b	nD5, $09
	smpsAlterNote       $00
	dc.b	nC5
	smpsAlterNote       $FC
	dc.b	nD5, $0A, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsLoop            $00, $02, Extra_Final_Boss_Loop1C
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsSetvoice        $02
	smpsAlterVol        $09
	smpsPan             panCenter, $00
	smpsAlterNote       $FD
	smpsJump            Extra_Final_Boss_Jump00

; PSG1 Data
Extra_Final_Boss_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $03
	smpsPSGAlterVol     $05
	dc.b	nD3, $06, nD4

Extra_Final_Boss_LoopA9:
	dc.b	nD3, $0C, nD4, $06
	smpsLoop            $00, $0E, Extra_Final_Boss_LoopA9
	dc.b	nD3, $0C

Extra_Final_Boss_LoopAA:
	smpsAlterNote       $FF
	dc.b	nCs4, $06
	smpsAlterNote       $00
	dc.b	nCs3, $0C
	smpsLoop            $00, $06, Extra_Final_Boss_LoopAA

Extra_Final_Boss_LoopAC:
	smpsAlterNote       $01
	dc.b	nBb1, $06
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, $0C

Extra_Final_Boss_LoopAB:
	smpsAlterNote       $01
	dc.b	nB1, $06, nRst
	smpsAlterNote       $00
	dc.b	nB2
	smpsLoop            $00, $02, Extra_Final_Boss_LoopAB
	smpsAlterNote       $01
	dc.b	nB1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $12
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, nRst, nD2, nRst, nD3, nD2
	dc.b	nRst, nD3, nD2, $0C, nD3, $06
	smpsLoop            $01, $09, Extra_Final_Boss_LoopAC
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, $0C

Extra_Final_Boss_LoopAD:
	smpsAlterNote       $01
	dc.b	nB1, $06, nRst
	smpsAlterNote       $00
	dc.b	nB2
	smpsLoop            $00, $02, Extra_Final_Boss_LoopAD
	smpsAlterNote       $01
	dc.b	nB1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $12
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, nRst, nD2, nRst, nD3, nD2
	dc.b	nRst, nD3, nD2, $0C, nD3

Extra_Final_Boss_LoopAE:
	dc.b	$7F
	smpsLoop            $00, $09, Extra_Final_Boss_LoopAE
	dc.b	$0F

Extra_Final_Boss_LoopB0:
	smpsAlterNote       $01
	dc.b	nBb1, $06
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, $0C

Extra_Final_Boss_LoopAF:
	smpsAlterNote       $01
	dc.b	nB1, $06, nRst
	smpsAlterNote       $00
	dc.b	nB2
	smpsLoop            $00, $02, Extra_Final_Boss_LoopAF
	smpsAlterNote       $01
	dc.b	nB1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $12
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nBb2, $06
	smpsAlterNote       $01
	dc.b	nBb1, $0C
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, nC3, nC2, $0C, nC3, $06, nC2, $0C, nD2, $06
	dc.b	nRst, nD3, nD2, $0C, nD3, $06, nD2, nRst, nD2, nRst, nD3, nD2
	dc.b	nRst, nD3, nD2, $0C, nD3, $06
	smpsLoop            $01, $08, Extra_Final_Boss_LoopB0
	dc.b	nRst, $24

Extra_Final_Boss_LoopB1:
	smpsAlterNote       $01
	dc.b	nBb1, $04
	smpsAlterNote       $00
	dc.b	nBb2, $05
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $04
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nC2, $05, nRst, $04, nC3, $05, nC2, $09, nC3, $04, nC2, $09
	dc.b	nD2, $05, nRst, $04, nD3, $05, nD2, $09, nD3, $04, nD2, $09
	smpsAlterNote       $01
	dc.b	nB1, $05, nRst, $04
	smpsAlterNote       $00
	dc.b	nB2, $05
	smpsAlterNote       $01
	dc.b	nB1, $04, nRst, $05
	smpsAlterNote       $00
	dc.b	nB2, $04
	smpsAlterNote       $01
	dc.b	nB1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $0E
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $04
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nC2, $05, nRst, $04, nC3, $05, nC2, $09, nC3, $04, nC2, $09
	dc.b	nD2, $05, nRst, $04, nD3, $05, nD2, $09, nD3, $04, nD2, $05
	dc.b	nRst, $04, nD2, $05, nRst, $04, nD3, $05, nD2, $04, nRst, $05
	dc.b	nD3, $04, nD2, $09, nD3, $05
	smpsLoop            $00, $03, Extra_Final_Boss_LoopB1
	smpsAlterNote       $01
	dc.b	nBb1, $04
	smpsAlterNote       $00
	dc.b	nBb2, $05
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $04
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nC2, $05, nRst, $04, nC3, $05, nC2, $09, nC3, $04, nC2, $09
	dc.b	nD2, $05, nRst, $04, nD3, $05, nD2, $09, nD3, $04, nD2, $09
	smpsAlterNote       $01
	dc.b	nB1, $05, nRst, $04
	smpsAlterNote       $00
	dc.b	nB2, $05
	smpsAlterNote       $01
	dc.b	nB1, $04, nRst, $05
	smpsAlterNote       $00
	dc.b	nB2, $04
	smpsAlterNote       $01
	dc.b	nB1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $0E
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nBb2, $04
	smpsAlterNote       $01
	dc.b	nBb1, $09
	smpsAlterNote       $00
	dc.b	nC2, $05, nRst, $04, nC3, $05, nC2, $09, nC3, $04, nC2, $09
	dc.b	nD2, $05, nRst, $04, nD3, $05, nD2, $09, nD3, $04, nD2, $05
	dc.b	nRst, nD2, $06, nRst, nD3, $07, nD2, nRst, $08, nD3, nD2, $12
	dc.b	nD3, $09
	smpsJump            Extra_Final_Boss_LoopAC

; PSG2 Data
Extra_Final_Boss_PSG2:
	dc.b	nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nG1, $06, nRst, nF1, $07
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1

Extra_Final_Boss_LoopA5:
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA5
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01, nRst, $0C
	smpsAlterNote       $00
	dc.b	nG1, $06, nRst, nF1, $07
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nE1, $0D
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $04

Extra_Final_Boss_LoopA6:
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $05
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA6
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nFs1, $0D
	smpsAlterNote       $FF
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nF1, $0D
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $03
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	nF1
	smpsAlterNote       $06
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $02
	dc.b	nF1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF1
	smpsAlterNote       $04
	dc.b	nF1
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FE
	dc.b	nF1
	smpsAlterNote       $FD
	dc.b	nF1
	smpsAlterNote       $00
	dc.b	nE1, $0D
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $02
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FC
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nE1
	smpsAlterNote       $04
	dc.b	nE1
	smpsAlterNote       $06
	dc.b	nE1
	smpsAlterNote       $05
	dc.b	nE1
	smpsAlterNote       $03
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FD
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nEb1, $0D
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nEb1
	smpsAlterNote       $04
	dc.b	nEb1
	smpsAlterNote       $06
	dc.b	nEb1
	smpsAlterNote       $07
	dc.b	nEb1
	smpsAlterNote       $06
	dc.b	nEb1
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FE
	dc.b	nEb1
	smpsAlterNote       $FD
	dc.b	nEb1
	smpsAlterNote       $FE
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $02
	dc.b	nEb1
	smpsAlterNote       $05
	dc.b	nEb1
	smpsAlterNote       $07
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsAlterNote       $FD
	dc.b	nEb1

Extra_Final_Boss_LoopA7:
	smpsAlterNote       $00
	dc.b	nD1, $0D
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $FF
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $05
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FE
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $FF
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsLoop            $00, $02, Extra_Final_Boss_LoopA7
	smpsAlterNote       $FF
	dc.b	nD1
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $05
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FE
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $FF
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsAlterNote       $FF
	dc.b	nD1
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $05
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $04
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $01
	dc.b	nCs1, $0D
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $04
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $FC
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $FF
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $FF
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $04
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $FC
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $FE
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $FC
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $04
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $FE
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $FF
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $FC
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $04
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $FE
	dc.b	nCs1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nCs1
	smpsAlterNote       $07
	dc.b	nCs1
	smpsAlterNote       $08
	dc.b	nCs1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $02
	dc.b	nCs1
	smpsAlterNote       $FF
	dc.b	nCs1

Extra_Final_Boss_Jump05:
	dc.b	nRst

Extra_Final_Boss_LoopA8:
	dc.b	$7F
	smpsLoop            $00, $49, Extra_Final_Boss_LoopA8
	dc.b	$0A
	smpsJump            Extra_Final_Boss_Jump05

; DAC Data
Extra_Final_Boss_DAC:
	dc.b	dKickAlt, $18, dSnareAlt, $24, dKickAlt, $0C, dSnareAlt, $24, dKickAlt, $0C, dSnareAlt, $18
	dc.b	dKickAlt, $0C, dKickAlt, dSnareAlt, $18, dKickAlt, dSnareAlt, $24, dKickAlt, $0C, dSnareAlt, $24
	dc.b	dKickAlt, $0C, dSnareAlt, $18, dKickAlt, $0C, dKickAlt, dSnareAlt, $06, dKickAlt, $12, $18
	dc.b	dSnareAlt, $0C, dKickAlt, $18, $0C, dSnareAlt, dKickAlt, $06, dKickAlt, dSnareAlt, $0C, dKickAlt
	dc.b	dSnareAlt, $06, dKickAlt, $0C, $06, $0C, dKickAlt, dSnareAlt, dKickAlt, dKickAlt, dKickAlt, dSnareAlt
	dc.b	dKickAlt, $18, $0C, dSnareAlt, dKickAlt, $18, $0C, dSnareAlt, dKickAlt, dKickAlt, $06

Extra_Final_Boss_Loop00:
	dc.b	dSnareAlt
	smpsLoop            $00, $07, Extra_Final_Boss_Loop00

Extra_Final_Boss_Loop01:
	dc.b	dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $06, dKickAlt, $0C, $06, dSnareAlt
	dc.b	$0C
	smpsLoop            $00, $07, Extra_Final_Boss_Loop01
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dSnareAlt
	smpsLoop            $01, $06, Extra_Final_Boss_Loop01

Extra_Final_Boss_Loop02:
	dc.b	dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $06, dKickAlt, $0C, $06, dSnareAlt
	dc.b	$0C
	smpsLoop            $00, $03, Extra_Final_Boss_Loop02

Extra_Final_Boss_Loop04:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dSnareAlt

Extra_Final_Boss_Loop03:
	dc.b	dKickAlt, $0C, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $06, dKickAlt, $0C, $06, dSnareAlt
	dc.b	$0C
	smpsLoop            $00, $07, Extra_Final_Boss_Loop03
	smpsLoop            $01, $04, Extra_Final_Boss_Loop04
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $06, dSnareAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt
	dc.b	dSnareAlt, $18, $04, $05, $09

Extra_Final_Boss_Loop05:
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $04, dKickAlt, $09, $05, dSnareAlt, $09
	smpsLoop            $00, $07, Extra_Final_Boss_Loop05
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, $04, dSnareAlt, $05, $04, dKickAlt, $05, dSnareAlt
	dc.b	$04, dKickAlt, $05, dSnareAlt, $04, $05

Extra_Final_Boss_Loop06:
	dc.b	dKickAlt, $09, dSnareAlt, dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $04, dKickAlt, $09, $05, dSnareAlt
	dc.b	$09
	smpsLoop            $00, $07, Extra_Final_Boss_Loop06
	dc.b	dKickAlt, dSnareAlt, dKickAlt, dSnareAlt, $0B, dKickAlt, $06, dSnareAlt, $07, dSnareAlt, dKickAlt, $08
	dc.b	dSnareAlt, dKickAlt, $09, dSnareAlt, dSnareAlt
	smpsJump            Extra_Final_Boss_Loop01

Extra_Final_Boss_Voices:
;	Voice $00
;	$2D
;	$71, $24, $00, $71, 	$1F, $1F, $1F, $1F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$0E, $05, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $02, $07
	smpsVcCoarseFreq    $01, $00, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $05, $0E

;	Voice $01
;	$3D
;	$11, $60, $32, $31, 	$12, $17, $56, $17, 	$04, $06, $06, $03
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$1A, $00, $03, $03
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $06, $01
	smpsVcCoarseFreq    $01, $02, $00, $01
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $17, $16, $17, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $06, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $03, $00, $1A

;	Voice $02
;	$3A
;	$18, $26, $24, $11, 	$0F, $14, $53, $14, 	$04, $06, $06, $03
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$22, $13, $26, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $02, $01
	smpsVcCoarseFreq    $01, $04, $06, $08
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $14, $13, $14, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $06, $04
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $26, $13, $22

;	Voice $03
;	$12
;	$52, $00, $20, $31, 	$0E, $12, $11, $1A, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1A, $17, $17, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $00, $05
	smpsVcCoarseFreq    $01, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $11, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $17, $1A

;	Voice $04
;	$04
;	$67, $73, $76, $34, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $00, $00, $0A, 	$0F, $FF, $0F, $0F, 	$1C, $01, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $06
	smpsVcCoarseFreq    $04, $06, $03, $07
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $08, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $01, $1C

;	Voice $05
;	$05
;	$31, $11, $10, $32, 	$12, $17, $16, $1A, 	$00, $00, $00, $00
;	$0C, $13, $0C, $0B, 	$FF, $FF, $FF, $FF, 	$10, $13, $0F, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $01, $03
	smpsVcCoarseFreq    $02, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $16, $17, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0B, $0C, $13, $0C
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $13, $10