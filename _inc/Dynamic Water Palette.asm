; ====================================================================================================
; DynaWater
; Created August 10, 2021 by Kilo, ProjectFM
; ==================================================================================================== 
 
DynaWater_Init:
        move.w  (v_zone).w,d0
        ror.b   #$02,d0
        lsr.w   #$05,d0
        move.w  DynaWater_AddTable(pc,d0.w),(pal_wateradd).w
        move.w  DynaWater_SubTable(pc,d0.w),(pal_watersub).w
        bra.w   DynaWater_Update
 
DynaWater_AddTable:
        ; Act   1,    2,    3,    4
        dc.w    $000, $000, $000, $000  ; GHZ
        dc.w    $040, $040, $040, $600  ; LZ
        dc.w    $000, $000, $000, $000  ; MZ
        dc.w    $000, $000, $000, $000  ; SLZ
        dc.w    $000, $000, $000, $000  ; SYZ
        dc.w    $000, $000, $000, $000  ; SBZ
        dc.w    $000, $000, $000, $000  ; Ending
        even
 
DynaWater_SubTable:
        ; Act   1,    2,    3,    4
        dc.w    $000, $000, $000, $000  ; GHZ
        dc.w    $006, $006, $006, $002  ; LZ
        dc.w    $000, $000, $000, $000  ; MZ
        dc.w    $000, $000, $000, $000  ; SLZ
        dc.w    $000, $000, $000, $000  ; SYZ
        dc.w    $000, $000, $000, $000  ; SBZ
        dc.w    $000, $000, $000, $000  ; Ending
        even
 
DynaWater_Update:
 
        move.w  (pal_wateradd).w,d0
        or.w    (pal_watersub).w,d0
        beq.w   .Return
 
        lea (v_pal_dry).w,a1
        lea (v_pal_water).w,a2
 
        move.w  #$0EEE,d3
        move.w  (pal_wateradd).w,d2
        and.w   d3,d2
        and.w   (pal_watersub).w,d3
        moveq   #64-1,d7
        move.w  #$1110,d4
        move.w  d4,d5
        not.w   d5
 
    .Loop:
        move.w  (a1)+,d0
        add.w   d2,d0
        move.w  d0,d1
        and.w   d4,d1
        beq.s   .NoCapUp
        move.w  d1,d6
        lsr.w   #$03,d6
        sub.w   d6,d1
        or.w    d1,d0
 
    .NoCapUp:
        or.w    d4,d0
        sub.w   d3,d0
        move.w  d0,d1
        or.w    d5,d1
        addq.w  #1,d1
        beq.s   .NoCapDown
        subq.w  #1,d1
        move.w  d1,d6
        asr.w   #$03,d6
        not.w   d6
        add.w   d6,d1
        and.w   d1,d0
 
    .NoCapDown:
        move.w  d0,(a2)+
        dbf d7,.Loop
 
    .Return:
        rts