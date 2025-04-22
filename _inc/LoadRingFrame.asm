; ---------------------------------------------------------------------------
; Queue ring frame graphics loading
; ---------------------------------------------------------------------------

LoadRingFrame:
        moveq   #0,d1                           ; Get ring frame offset for regular rings
        move.b  (v_ani1_frame).w,d1
        lsl.w   #7,d1                           ; Each ring frame takes $80 bytes, so multiply by $80
        add.l   #Art_Ring,d1                    ; Queue a DMA transfer for this ring frame
        move.w  #$F640,d2
        move.w  #$80/2,d3
        jsr     QueueDMATransfer

        cmpi.b  #id_Special,(v_gamemode).w      ; Are we in a special stage?
        beq.s   .noringloss                     ; If so, branch
        
        moveq   #0,d1                           ; Get ring frame offset for lost rings
        move.b  (v_ani3_frame).w,d1
        lsl.w   #7,d1                           ; Each ring frame takes $80 bytes, so multiply by $80
        add.l   #Art_Ring,d1                    ; Queue a DMA transfer for this ring frame
        move.w  #$F640+$80,d2
        move.w  #$80/2,d3
        jmp     QueueDMATransfer

.noringloss:
        rts