; ---------------------------------------------------------------------------
; Animation script - Super Sonic
; ---------------------------------------------------------------------------
Ani_SprSonic:

ptrS_Walk:	dc.w SprAni_Walk-Ani_SprSonic
ptrS_Run:	dc.w SprAni_Run-Ani_SprSonic
ptrS_Roll:	dc.w SprAni_Roll-Ani_SprSonic
ptrS_Roll2:	dc.w SprAni_Roll2-Ani_SprSonic
ptrS_Push:	dc.w SprAni_Push-Ani_SprSonic
ptrS_Wait:	dc.w SprAni_Wait-Ani_SprSonic
ptrS_Balance:	dc.w SprAni_Balance-Ani_SprSonic
ptrS_LookUp:	dc.w SprAni_LookUp-Ani_SprSonic
ptrS_Duck:	dc.w SprAni_Duck-Ani_SprSonic
ptrS_Warp:	dc.w SprAni_Warp-Ani_SprSonic
ptrS_Warp2:	dc.w SprAni_Warp2-Ani_SprSonic
ptrS_Warp3:	dc.w SprAni_Warp3-Ani_SprSonic
ptrS_Warp4:	dc.w SprAni_Warp4-Ani_SprSonic
ptrS_Stop:	dc.w SprAni_Stop-Ani_SprSonic
ptrS_Float1:	dc.w SprAni_Float1-Ani_SprSonic
ptrS_Float2:	dc.w SprAni_Float2-Ani_SprSonic
ptrS_Spring:	dc.w SprAni_Spring-Ani_SprSonic
ptrS_Hang:	dc.w SprAni_Hang-Ani_SprSonic
ptrS_Leap1:	dc.w SprAni_Leap1-Ani_SprSonic
ptrS_Leap2:	dc.w SprAni_Leap2-Ani_SprSonic
ptrS_Surf:	dc.w SprAni_Surf-Ani_SprSonic
ptrS_GetAir:	dc.w SprAni_GetAir-Ani_SprSonic
ptrS_Burnt:	dc.w SprAni_Burnt-Ani_SprSonic
ptrS_Drown:	dc.w SprAni_Drown-Ani_SprSonic
ptrS_Death:	dc.w SprAni_Death-Ani_SprSonic
ptrS_Shrink:	dc.w SprAni_Shrink-Ani_SprSonic
ptrS_Hurt:	dc.w SprAni_Hurt-Ani_SprSonic
ptrS_WaterSlide:	dc.w SprAni_WaterSlide-Ani_SprSonic
ptrS_Null:	dc.w SprAni_Null-Ani_SprSonic
ptrS_Float3:	dc.w SprAni_Float3-Ani_SprSonic
ptrS_Float4:	dc.w SprAni_Float4-Ani_SprSonic
ptrS_Spindash:	dc.w SprAni_SpinDash-Ani_SprSonic
ptrS_Balance2:	dc.w SprAni_Balance2-Ani_SprSonic

SprAni_Walk:	dc.b $FF, fr_Walk13, fr_Walk14,	fr_Walk15, fr_Walk16, fr_Walk17, fr_Walk18, fr_Walk11, fr_Walk12, afEnd
		even
SprAni_Run:	dc.b $FF,  fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14,     afEnd,     afEnd, afEnd
		even
SprAni_Roll:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll3,  fr_Roll4,  fr_Roll5,     afEnd, afEnd
		even
SprAni_Roll2:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll5,  fr_Roll3,  fr_Roll4,  fr_Roll5, afEnd
		even
SprAni_Push:	dc.b $FD,  fr_Push1,  fr_Push2,  fr_Push3,  fr_Push4,     afEnd,     afEnd, afEnd
		even
SprAni_Wait:	dc.b 5, fr_Stand, fr_Wait1, fr_Wait2, fr_Wait3, afEnd
		even
SprAni_Balance:	dc.b 9, fr_Balance1, fr_Balance2, fr_Balance3, fr_Balance4, afEnd
		even
SprAni_LookUp:	dc.b 4, fr_LookUp1, fr_LookUp2, afBack, 1
		even
SprAni_Duck:	dc.b 4, fr_Duck1, fr_Duck2, afBack, 1
		even
SprAni_Warp:	dc.b 3, fr_Warp1, fr_Warp2, fr_Warp3, fr_Warp4, fr_Warp5, afEnd
		even
SprAni_Warp2:	dc.b $3F, fr_Warp2, afEnd
		even
SprAni_Warp3:	dc.b $3F, fr_Warp3, afEnd
		even
SprAni_Warp4:	dc.b $3F, fr_Warp4, afEnd
		even
SprAni_Stop:	dc.b 7,	fr_Stop1, fr_Stop2, fr_Stop1, fr_Stop3, afBack, 1
		even
SprAni_Float1:	dc.b 7,	fr_Float1, fr_Stop3, afEnd
		even
SprAni_Float2:	dc.b 7,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
SprAni_Spring:	dc.b 3, fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4, fr_Twirl5,fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4
		dc.b fr_Twirl5, afChange, id_Surf
		even
SprAni_Hang:	dc.b 4,	fr_Hang1, fr_Hang2, afEnd
		even
SprAni_Leap1:	dc.b 7, fr_Victory1, fr_Victory2, fr_Victory3, fr_Victory4, fr_Victory3, afBack, 4
		even
SprAni_Leap2:	dc.b $F, fr_Leap1, fr_Leap2, afBack, 1
		even
SprAni_Surf:	dc.b 7, fr_Fall1, fr_Fall2, afEnd
		even
SprAni_GetAir:	dc.b $B, fr_GetAir, fr_GetAir, fr_Walk15, fr_Walk16, afChange, id_Walk
		even
SprAni_Burnt:	dc.b $20, fr_Burnt, afEnd
		even
SprAni_Drown:	dc.b $2F, fr_Drown, afEnd
		even
SprAni_Death:	dc.b 3,	fr_Death, afEnd
		even
SprAni_Shrink:	dc.b 3,	fr_Shrink1, fr_Shrink2, fr_Shrink3, fr_Shrink4, fr_Shrink5, fr_Shrink4, fr_Shrink5, afChange, id_Run
		even
SprAni_Hurt:	dc.b 3,	fr_Injury, afEnd
		even
SprAni_WaterSlide:
		dc.b 7, fr_Injury, fr_WaterSlide, afEnd
		even
SprAni_Null:	dc.b $77, fr_Null, afChange, id_Walk
		even
SprAni_Float3:	dc.b 3,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
SprAni_Float4:	dc.b 3,	fr_Float1, afChange, id_Walk
		even
SprAni_SpinDash: dc.b 0, fr_Spindash1, fr_Spindash2, fr_Spindash1, fr_Spindash3, fr_Spindash1, fr_Spindash4, fr_Spindash1, fr_Spindash5, fr_Spindash1, fr_Spindash6, afEnd
		even
SprAni_Balance2:
		dc.b 9, fr_Balance5, fr_Balance6, fr_Balance7, afEnd
		even