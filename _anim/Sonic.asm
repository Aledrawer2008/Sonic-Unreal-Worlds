; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
Ani_Sonic:

ptr_Walk:	dc.w SonAni_Walk-Ani_Sonic
ptr_Run:	dc.w SonAni_Run-Ani_Sonic
ptr_Roll:	dc.w SonAni_Roll-Ani_Sonic
ptr_Roll2:	dc.w SonAni_Roll2-Ani_Sonic
ptr_Push:	dc.w SonAni_Push-Ani_Sonic
ptr_Wait:	dc.w SonAni_Wait-Ani_Sonic
ptr_Balance:	dc.w SonAni_Balance-Ani_Sonic
ptr_LookUp:	dc.w SonAni_LookUp-Ani_Sonic
ptr_Duck:	dc.w SonAni_Duck-Ani_Sonic
ptr_Warp:	dc.w SonAni_Warp-Ani_Sonic
ptr_GiveUp:	dc.w SonAni_GiveUp-Ani_Sonic
ptr_Warp3:	dc.w SonAni_Warp3-Ani_Sonic
ptr_Warp4:	dc.w SonAni_Warp4-Ani_Sonic
ptr_Stop:	dc.w SonAni_Stop-Ani_Sonic
ptr_Float1:	dc.w SonAni_Float1-Ani_Sonic
ptr_Float2:	dc.w SonAni_Float2-Ani_Sonic
ptr_Spring:	dc.w SonAni_Spring-Ani_Sonic
ptr_Hang:	dc.w SonAni_Hang-Ani_Sonic
ptr_Leap1:	dc.w SonAni_Leap1-Ani_Sonic
ptr_Leap2:	dc.w SonAni_Leap2-Ani_Sonic
ptr_Surf:	dc.w SonAni_Surf-Ani_Sonic
ptr_GetAir:	dc.w SonAni_GetAir-Ani_Sonic
ptr_Burnt:	dc.w SonAni_Burnt-Ani_Sonic
ptr_Drown:	dc.w SonAni_Drown-Ani_Sonic
ptr_Death:	dc.w SonAni_Death-Ani_Sonic
ptr_Shrink:	dc.w SonAni_Shrink-Ani_Sonic
ptr_Hurt:	dc.w SonAni_Hurt-Ani_Sonic
ptr_WaterSlide:	dc.w SonAni_WaterSlide-Ani_Sonic
ptr_Null:	dc.w SonAni_Null-Ani_Sonic
ptr_Float3:	dc.w SonAni_Float3-Ani_Sonic
ptr_Float4:	dc.w SonAni_Float4-Ani_Sonic
ptr_Spindash:	dc.w SonAni_SpinDash-Ani_Sonic
ptr_Balance2:	dc.w SonAni_Balance2-Ani_Sonic
ptr_Peelout:	dc.w SonAni_Peelout-Ani_Sonic

SonAni_Walk:	dc.b $FF, fr_Walk13, fr_Walk14,	fr_Walk15, fr_Walk16, fr_Walk17, fr_Walk18, fr_Walk11, fr_Walk12, afEnd
		even
SonAni_Run:	dc.b $FF,  fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14,     afEnd,     afEnd, afEnd
		even
SonAni_Roll:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll3,  fr_Roll4,  fr_Roll5,     afEnd, afEnd
		even
SonAni_Roll2:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll5,  fr_Roll3,  fr_Roll4,  fr_Roll5, afEnd
		even
SonAni_Push:	dc.b $FD,  fr_Push1,  fr_Push2,  fr_Push3,  fr_Push4,     afEnd,     afEnd, afEnd
		even
SonAni_Wait:	dc.b $17, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand
		dc.b fr_Stand, fr_Stand, fr_Stand, fr_Wait1, fr_Wait2, fr_Wait3, afBack, 2
		even
SonAni_Balance:	dc.b 9, fr_Balance1, fr_Balance2, fr_Balance3, afEnd
		even
SonAni_LookUp:	dc.b 4, fr_LookUp1, fr_LookUp2, afBack, 1
		even
SonAni_Duck:	dc.b 4, fr_Duck1, fr_Duck2, afBack, 1
		even
SonAni_Warp:	dc.b 3, fr_Warp1, fr_Warp2, fr_Warp3, fr_Warp4, fr_Warp5, afEnd
		even
SonAni_GiveUp:	dc.b	4, fr_GiveUp1, fr_GiveUp2, fr_GiveUp2, fr_GiveUp3, fr_GiveUp3, fr_GiveUp2, fr_GiveUp2, fr_GiveUp3, fr_GiveUp3, fr_GiveUp2, fr_GiveUp2, fr_GiveUp3, fr_GiveUp3, fr_GiveUp1, fr_GiveUp1
		dc.b	fr_GiveUp1, fr_GiveUp1, fr_GiveUp4, fr_GiveUp4, fr_GiveUp4, fr_GiveUp4, fr_GiveUp5, fr_GiveUp5, fr_GiveUp6, fr_GiveUp6, fr_GiveUp6, fr_GiveUp6, fr_GiveUp6, fr_GiveUp6, fr_Fall1, fr_Fall1
		dc.b	fr_Fall1, fr_Fall1, fr_Fall1, fr_Fall1, fr_Fall1, fr_Fall2, afBack, 2
		even
SonAni_Warp3:	dc.b $3F, fr_Warp3, afEnd
		even
SonAni_Warp4:	dc.b $3F, fr_Warp4, afEnd
		even
SonAni_Stop:	dc.b 7,	fr_Stop1, fr_Stop2, fr_Stop3, fr_Stop4, afBack, 1
		even
SonAni_Float1:	dc.b 7,	fr_Float1, fr_Stop3, afEnd
		even
SonAni_Float2:	dc.b 7,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
SonAni_Spring:	dc.b 3, fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4, fr_Twirl5,fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4
		dc.b fr_Twirl5, afChange, id_Surf
		even
SonAni_Hang:	dc.b 4,	fr_Hang1, fr_Hang2, afEnd
		even
SonAni_Leap1:	dc.b 7, fr_Victory1, fr_Victory2, fr_Victory3, fr_Victory4, fr_Victory3, afBack, 4
		even
SonAni_Leap2:	dc.b $F, fr_Leap1, fr_Leap2, afBack, 1
		even
SonAni_Surf:	dc.b 7, fr_Fall1, fr_Fall2, afEnd
		even
SonAni_GetAir:	dc.b $B, fr_GetAir, fr_GetAir, fr_Walk15, fr_Walk16, afChange, id_Walk
		even
SonAni_Burnt:	dc.b $20, fr_Burnt, afEnd
		even
SonAni_Drown:	dc.b $2F, fr_Drown, afEnd
		even
SonAni_Death:	dc.b 3,	fr_Death, afEnd
		even
SonAni_Shrink:	dc.b 3,	fr_Shrink1, fr_Shrink2, fr_Shrink3, fr_Shrink4, fr_Shrink5, fr_Null, afBack, 1
		even
SonAni_Hurt:	dc.b 3,	fr_Injury, afEnd
		even
SonAni_WaterSlide:
		dc.b 7, fr_Injury, fr_WaterSlide, afEnd
		even
SonAni_Null:	dc.b $77, fr_Null, afChange, id_Walk
		even
SonAni_Float3:	dc.b 3,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
SonAni_Float4:	dc.b 3,	fr_GetUp, afChange, id_Walk
		even
SonAni_SpinDash: dc.b 0, fr_Spindash1, fr_Spindash2, fr_Spindash1, fr_Spindash3, fr_Spindash1, fr_Spindash4, fr_Spindash1, fr_Spindash5, fr_Spindash1, fr_Spindash6, afEnd
		even
SonAni_Balance2:
		dc.b 5, fr_Balance4, fr_Balance5, fr_Balance6, fr_Balance7, afEnd
		even
SonAni_Peelout:
		dc.b	0, fr_Walk11, fr_Walk11, fr_Walk11, fr_Walk11, fr_Walk11, fr_Walk11, fr_Walk11, fr_Walk11
		dc.b	fr_Walk12, fr_Walk12, fr_Walk12, fr_Walk12, fr_Walk13, fr_Walk13, fr_Run14, fr_Run14
		dc.b	fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14, fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14
		dc.b	afBack, 4
		even