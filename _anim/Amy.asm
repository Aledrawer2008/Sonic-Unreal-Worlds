; ---------------------------------------------------------------------------
; Animation script - Amy
; ---------------------------------------------------------------------------
Ani_Amy:

ptr2_Walk:	dc.w RoseAni_Walk-Ani_Amy
ptr2_Run:	dc.w RoseAni_Run-Ani_Amy
ptr2_Roll:	dc.w RoseAni_Roll-Ani_Amy
ptr2_Roll2:	dc.w RoseAni_Roll2-Ani_Amy
ptr2_Push:	dc.w RoseAni_Push-Ani_Amy
ptr2_Wait:	dc.w RoseAni_Wait-Ani_Amy
ptr2_Balance:	dc.w RoseAni_Balance-Ani_Amy
ptr2_LookUp:	dc.w RoseAni_LookUp-Ani_Amy
ptr2_Duck:	dc.w RoseAni_Duck-Ani_Amy
ptr2_Warp1:	dc.w RoseAni_Warp1-Ani_Amy
ptr2_Warp2:	dc.w RoseAni_Warp2-Ani_Amy
ptr2_Warp3:	dc.w RoseAni_Warp3-Ani_Amy
ptr2_Warp4:	dc.w RoseAni_Warp4-Ani_Amy
ptr2_Stop:	dc.w RoseAni_Stop-Ani_Amy
ptr2_Float1:	dc.w RoseAni_Float1-Ani_Amy
ptr2_Float2:	dc.w RoseAni_Float2-Ani_Amy
ptr2_Spring:	dc.w RoseAni_Spring-Ani_Amy
ptr2_Hang:	dc.w RoseAni_Hang-Ani_Amy
ptr2_Leap1:	dc.w RoseAni_Leap1-Ani_Amy
ptr2_Leap2:	dc.w RoseAni_Leap2-Ani_Amy
ptr2_Surf:	dc.w RoseAni_Surf-Ani_Amy
ptr2_GetAir:	dc.w RoseAni_GetAir-Ani_Amy
ptr2_Burnt:	dc.w RoseAni_Burnt-Ani_Amy
ptr2_Drown:	dc.w RoseAni_Drown-Ani_Amy
ptr2_Death:	dc.w RoseAni_Death-Ani_Amy
ptr2_Shrink:	dc.w RoseAni_Shrink-Ani_Amy
ptr2_Hurt:	dc.w RoseAni_Hurt-Ani_Amy
ptr2_WaterSlide:	dc.w RoseAni_WaterSlide-Ani_Amy
ptr2_Null:	dc.w RoseAni_Null-Ani_Amy
ptr2_Float3:	dc.w RoseAni_Float3-Ani_Amy
ptr2_Float4:	dc.w RoseAni_Float4-Ani_Amy
ptr2_Spindash:	dc.w RoseAni_SpinDash-Ani_Amy
ptr2_Balance2:	dc.w RoseAni_Balance2-Ani_Amy

RoseAni_Walk:	dc.b $FF, fr_Walk13, fr_Walk14,	fr_Walk15, fr_Walk16, fr_Walk17, fr_Walk18, fr_Walk11, fr_Walk12, afEnd
		even
RoseAni_Run:	dc.b $FF,  fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14,     afEnd,     afEnd, afEnd
		even
RoseAni_Roll:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll3,  fr_Roll4,  fr_Roll5,     afEnd, afEnd
		even
RoseAni_Roll2:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll5,  fr_Roll3,  fr_Roll4,  fr_Roll5, afEnd
		even
RoseAni_Push:	dc.b $FD,  fr_Push1,  fr_Push2,  fr_Push3,  fr_Push4,     afEnd,     afEnd, afEnd
		even
RoseAni_Wait:	dc.b $17, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand
		dc.b fr_Stand, fr_Stand, fr_Stand, fr_Wait1, fr_Wait2, fr_Wait3, fr_Wait2, afBack, 4
		even
RoseAni_Balance:	dc.b 9, fr_Balance1, fr_Balance2, fr_Balance3, fr_Balance4, afEnd
		even
RoseAni_LookUp:	dc.b 4, fr_LookUp1, fr_LookUp2, afBack, 1
		even
RoseAni_Duck:	dc.b 4, fr_Duck1, fr_Duck2, afBack, 1
		even
RoseAni_Warp1:	dc.b $7, fr_Warp1, fr_Warp2, fr_Warp3, fr_Warp4, fr_Warp5, afEnd
		even
RoseAni_Warp2:	dc.b $3F, fr_Warp2, afEnd
		even
RoseAni_Warp3:	dc.b $3F, fr_Warp3, afEnd
		even
RoseAni_Warp4:	dc.b $3F, fr_Warp4, afEnd
		even
RoseAni_Stop:	dc.b 7,	fr_Stop1, fr_Stop2, fr_Stop1, fr_Stop3, afBack, 1
		even
RoseAni_Float1:	dc.b 7,	fr_Float1, fr_Stop3, afEnd
		even
RoseAni_Float2:	dc.b 7,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
RoseAni_Spring:	dc.b 3, fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4, fr_Twirl5,fr_Twirl1, fr_Twirl2, fr_Twirl3, fr_Twirl4
		dc.b fr_Twirl5, afChange, id_Surf
		even
RoseAni_Hang:	dc.b 4,	fr_Hang1, fr_Hang2, afEnd
		even
RoseAni_Leap1:	dc.b 7, fr_Victory1, fr_Victory2, fr_Victory3, fr_Victory4, afBack, 1
		even
RoseAni_Leap2:	dc.b 7, fr_Leap1, fr_Leap2, afEnd
		even
RoseAni_Surf:	dc.b 7, fr_Fall1, fr_Fall2, afBack, 1
		even
RoseAni_GetAir:	dc.b $B, fr_GetAir, fr_GetAir, fr_Walk15, fr_Walk16, afChange, id_Walk
		even
RoseAni_Burnt:	dc.b $20, fr_Burnt, afEnd
		even
RoseAni_Drown:	dc.b $2F, fr_Drown, afEnd
		even
RoseAni_Death:	dc.b 3,	fr_Death, afEnd
		even
RoseAni_Shrink:	dc.b 3,	fr_Shrink1, fr_Shrink2, fr_Shrink3, fr_Shrink4, fr_Shrink5, fr_Null, afBack, 1
		even
RoseAni_Hurt:	dc.b 3,	fr_Injury, afEnd
		even
RoseAni_WaterSlide:
		dc.b 7, fr_Injury, fr_WaterSlide, afEnd
		even
RoseAni_Null:	dc.b $77, fr_Null, afChange, id_Walk
		even
RoseAni_Float3:	dc.b 3,	fr_Float1, fr_Float2, fr_Float3, fr_Float4, fr_Float5, fr_Float6, fr_Float7, fr_Float8, afEnd
		even
RoseAni_Float4:	dc.b 3,	fr_GetUp, afChange, id_Walk
		even
RoseAni_SpinDash: dc.b 3, fr_Spindash1, fr_Spindash2, fr_Spindash1, fr_Spindash3, fr_Spindash1, fr_Spindash4, fr_Spindash1, fr_Spindash5, fr_Spindash1, fr_Spindash6, afEnd
		even
RoseAni_Balance2:
		dc.b 9, fr_Balance5, fr_Balance6, fr_Balance7, afEnd
		even