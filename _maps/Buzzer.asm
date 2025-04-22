Buzzer_Internal:
	dc.w	Buzzer_Internal_000E-Buzzer_Internal
	dc.w	Buzzer_Internal_0020-Buzzer_Internal
	dc.w	Buzzer_Internal_003A-Buzzer_Internal
	dc.w	Buzzer_Internal_0054-Buzzer_Internal
	dc.w	Buzzer_Internal_005E-Buzzer_Internal
	dc.w	Buzzer_Internal_0068-Buzzer_Internal
	dc.w	Buzzer_Internal_0072-Buzzer_Internal

Buzzer_Internal_000E:	dc.b 2
	dc.b $F8, 9, 0, 0, $E8
	dc.b $F8, 9, 0, 6, 0

Buzzer_Internal_0020:	dc.b 3
	dc.b $F8, 9, 0, 0, $E8
	dc.b $F8, 5, 0, $C, 0
	dc.b 8, 5, 0, $10, 2

Buzzer_Internal_003A:	dc.b 3
	dc.b $F8, 9, 0, 0, $E8
	dc.b $F8, 5, 0, $C, 0
	dc.b 8, 5, 0, $14, 2

Buzzer_Internal_0054:	dc.b 1
	dc.b $F0, 1, 0, $14, 4

Buzzer_Internal_005E:	dc.b 1
	dc.b $F0, 1, 0, $16, 4

Buzzer_Internal_0068:	dc.b 1
	dc.b $10, 1, 0, $18, 9

Buzzer_Internal_0072:	dc.b 1
	dc.b $10, 1, 0, $1A, 9

	even
