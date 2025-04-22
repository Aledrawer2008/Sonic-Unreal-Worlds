Drowning_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Drowning_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Drowning_DAC
	smpsHeaderFM        Drowning_FM1,	$00, $00
	smpsHeaderFM        Drowning_FM2,	$00, $00
	smpsHeaderFM        Drowning_FM3,	$00, $00
	smpsHeaderFM        Drowning_FM4,	$00, $00
	smpsHeaderFM        Drowning_FM5,	$00, $00
	smpsHeaderPSG       Drowning_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Drowning_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Drowning_PSG3,	$00, $00, $00, $00

; PSG1 Data
Drowning_PSG1:
; PSG2 Data
Drowning_PSG2:
	smpsStop

; FM1 Data
Drowning_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panLeft, $00
	dc.b	nC4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FD
	dc.b	nCs5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nCs4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5

Drowning_Loop09:
	dc.b	nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsLoop            $00, $02, Drowning_Loop09
	dc.b	nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FD
	dc.b	nC5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nC5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nC4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	nCs5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nCs4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nC4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nC4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nCs4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $15
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	nCs5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nC4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nC5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nCs4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nCs4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nCs5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $15
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $EA
	dc.b	nC4, nRst, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $1A
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E

Drowning_Loop0A:
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	smpsLoop            $00, $03, Drowning_Loop0A
	dc.b	smpsNoAttack, $7F, $1B
	smpsStop

; FM2 Data
Drowning_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panRight, $00
	dc.b	nEb4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FD
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5

Drowning_Loop07:
	dc.b	nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsLoop            $00, $02, Drowning_Loop07
	dc.b	nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FD
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4, nRst, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nEb4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nE4, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nEb4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nEb4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nEb4
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nE4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $15
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nEb4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nE4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $EA
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FD
	dc.b	nE5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $15
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EA
	dc.b	nEb4, nRst, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $1A
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E

Drowning_Loop08:
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	smpsLoop            $00, $03, Drowning_Loop08
	dc.b	smpsNoAttack, $7F, $1B
	smpsStop

; FM3 Data
Drowning_FM3:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsSetvoice        $01
	smpsAlterVol        $10
	dc.b	nC5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $05
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nCs5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E5
	dc.b	nCs6, $05
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E5
	dc.b	nCs5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E5
	dc.b	nCs6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E5
	dc.b	nC5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nC5, $05
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nCs5, $05
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E5
	dc.b	nCs6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E5
	dc.b	nCs5, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E5
	dc.b	nCs6, $06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC6, $04

Drowning_Loop05:
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs6, $04
	smpsLoop            $00, $02, Drowning_Loop05
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nC6
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs6
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E5
	dc.b	nCs6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nC5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $E5
	dc.b	nCs6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E5
	dc.b	nCs6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E5
	dc.b	nC5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nC5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E5
	dc.b	nC6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $E5
	dc.b	nCs6, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E5
	dc.b	nCs5, $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E5
	dc.b	nCs6, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $EA
	dc.b	nC5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E4
	dc.b	nC5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E4
	dc.b	nCs6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E4
	dc.b	nC5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E4
	dc.b	nC5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $E4
	dc.b	nC6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E4
	dc.b	nCs5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs5
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs6
	smpsAlterVol        $E4
	dc.b	nC5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $1C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC5, $03
	smpsAlterVol        $1C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs5, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs6, $03
	smpsAlterVol        $1C
	dc.b	smpsNoAttack, $02
	smpsSetvoice        $02
	smpsAlterVol        $E3
	smpsPan             panLeft, $00
	dc.b	nG5, $0C
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02

Drowning_Loop06:
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nG5
	smpsLoop            $00, $02, Drowning_Loop06
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $18
	smpsStop

; FM4 Data
Drowning_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsSetvoice        $02
	smpsAlterVol        $14
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nFs5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $F9
	dc.b	nFs5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nG5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EB
	dc.b	nE5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nG5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nFs5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nFs5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nG5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FE
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $F9
	dc.b	nG5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FE
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $EB
	dc.b	nEb5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nEb5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $F9
	dc.b	nG5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5, nRst, $01
	smpsAlterVol        $EB
	dc.b	nE5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterVol        $FE
	dc.b	nEb5, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EB
	dc.b	nEb5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FE
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EB
	dc.b	nEb5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $EB
	dc.b	$02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EB
	dc.b	nE5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE
	dc.b	nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EB
	dc.b	nEb5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FE
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $EB
	dc.b	nEb5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nFs5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nFs5
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $EB
	dc.b	$02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FE
	dc.b	nE5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $EB
	dc.b	nE5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $F9
	dc.b	nG5, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FE
	dc.b	nEb5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $E6
	dc.b	$03, nFs5, $04, nEb5, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $E6
	dc.b	$03, nFs5, $04, nE5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $E6
	dc.b	nE5, nG5, $04, nE5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $E6
	dc.b	$03, nG5, $04, nEb5, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $E6
	dc.b	$03, nFs5, $04, nEb5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nEb5
	smpsAlterVol        $E6
	dc.b	nEb5, nFs5, $04, nE5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $E6
	dc.b	$03, nG5, $04, nE5, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $E6
	dc.b	$03, nG5, $04, nEb5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nFs5, $02, nEb5, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nFs5, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	nE5, nG5, $03, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nG5, nEb5
	smpsAlterVol        $1A
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nFs5, nEb5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nFs5, nE5, $02
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nG5, nE5
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E6
	dc.b	$03, nG5, $02
	smpsPan             panRight, $00
	dc.b	nC6, $0C
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02

Drowning_Loop04:
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC6
	smpsLoop            $00, $02, Drowning_Loop04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $18
	smpsStop

; FM5 Data
Drowning_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $0D
	dc.b	nC3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nC3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $05
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $05
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nCs3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nCs4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nC3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nC4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $06
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nC4, $04

Drowning_Loop02:
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nCs3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nCs4, $04
	smpsLoop            $00, $02, Drowning_Loop02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nC4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nCs4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FB
	dc.b	nCs4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FB
	dc.b	nCs4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FB
	dc.b	nCs4, $04
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nCs3, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nC3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FB
	dc.b	nC4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nCs3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nCs3
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nCs4
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $1C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nCs4
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nC4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nCs3, $03
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FB
	dc.b	nCs4, $03
	smpsAlterVol        $1C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $E4
	dc.b	nC3, $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02

Drowning_Loop03:
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $0F
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, nC3
	smpsLoop            $00, $02, Drowning_Loop03
	smpsAlterVol        $0E
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $12
	smpsStop

; PSG3 Data
Drowning_PSG3:
	dc.b	nRst, $02
	smpsPSGAlterVol     $02
	smpsPSGform         $E7

Drowning_Loop0B:
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Drowning_Loop0B
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop0C:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $04, Drowning_Loop0C
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop0D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $03, Drowning_Loop0D
	dc.b	nRst, $7F, $7F, $7F, $0B
	smpsPSGAlterVol     $F4

Drowning_Loop0E:
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Drowning_Loop0E
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop0F:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $04, Drowning_Loop0F
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop10:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $03, Drowning_Loop10
	dc.b	nRst, $39
	smpsPSGAlterVol     $F4
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG

Drowning_Loop12:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop11:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $04, Drowning_Loop11
	smpsLoop            $01, $02, Drowning_Loop12
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03, nRst, $2A
	smpsPSGAlterVol     $F4

Drowning_Loop13:
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Drowning_Loop13
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop14:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $04, Drowning_Loop14
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03

Drowning_Loop15:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsLoop            $00, $03, Drowning_Loop15
	dc.b	nRst, $7F, $06
	smpsStop

; DAC Data
Drowning_DAC:
	dc.b	nRst, $02,dKickAlt, $17, dSnareAlt,dKickAlt, dSnareAlt,dKickAlt, dSnareAlt,dKickAlt, $16, dSnareAlt
	dc.b	$17,dKickAlt, $11, dSnareAlt, $12,dKickAlt, $11, dSnareAlt,dKickAlt, dSnareAlt

Drowning_Loop00:
	dc.b	dKickAlt, dSnareAlt,dKickAlt, $10, dSnareAlt, $0F
	smpsLoop            $00, $02, Drowning_Loop00
	dc.b	dKickAlt, dSnareAlt

Drowning_Loop01:
	dc.b	dKickAlt, $07, dSnareAlt,dKickAlt, $06, dSnareAlt, $07,dKickAlt, dSnareAlt, $06
	smpsLoop            $00, $02, Drowning_Loop01
	dc.b	dKickAlt, $07, dSnareAlt,dKickAlt, $06, dSnareAlt, $07,dKickAlt, $03, dClap, dSnareAlt, dClap
	dc.b	$02,dKickAlt, $03, dClap, dSnareAlt, dClap,dKickAlt, dClap, dSnareAlt, $02, dClap, $03
	dc.b	dKickAlt, dClap, dSnareAlt, dClap,dKickAlt, dClap, $02, dSnareAlt, $03, dClap,dKickAlt, dClap
	dc.b	dSnareAlt, dClap,dKickAlt, $02, dClap, $03, dSnareAlt, dClap,dKickAlt, dClap, dSnareAlt, dClap
	dc.b	$02, dSnareAlt, $7F, nRst, $38
	smpsStop

Drowning_Voices:
;	Voice $00
;	$34
;	$30, $32, $01, $01, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $00, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $03
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $18, $00, $10

;	Voice $01
;	$3C
;	$01, $22, $20, $00, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $0A, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $02, $00
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $0A, $1A

;	Voice $02
;	$3D
;	$71, $70, $74, $73, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $18, $1A, 	$12, $02, $02, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $07, $07
	smpsVcCoarseFreq    $03, $04, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $08, $0A, $05
	smpsVcTotalLevel    $00, $02, $02, $12

;	Voice $03
;	$3B
;	$1C, $11, $10, $10, 	$18, $1F, $1F, $1F, 	$13, $10, $09, $09
;	$00, $00, $00, $00, 	$EF, $EF, $EF, $EF, 	$12, $1B, $0D, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $00, $00, $01, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $10, $13
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0E, $0E, $0E, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0D, $1B, $12