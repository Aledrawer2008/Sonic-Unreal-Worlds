; ---------------------------------------------------------------------------
; Load DAC driver (Mega PCM)
; ---------------------------------------------------------------------------
; SoundDriverLoad: JmpTo_SoundDriverLoad 
SMPS_LoadDACDriver:
	jsr	(MegaPCM_LoadDriver).l
	lea	(MegaPCM_DAC_Table).l,a0
	jsr	(MegaPCM_LoadSampleTable).l
	tst.w	d0										; was sample table loaded successfully?
	beq.s	.SampleTableOk							; if yes, branch

	ifdef __DEBUG__
		; for MD Debugger v.2.5 or above
		RaiseError	"Bad sample table (code %<.b d0>)"
	else
		illegal
	endif

.SampleTableOk
	rts
; End of function SMPS_LoadDACDriver

; ---------------------------------------------------------------------------
; Queue sound for play (queue 1)
; ---------------------------------------------------------------------------
; sub_135E: PlayMusic:
SMPS_QueueSound1:
	tst.b	(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd1).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd1).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd4).w
	rts
; End of function SMPS_QueueSound1

; ---------------------------------------------------------------------------
; Queue sound for play (queue 2)
; and optionally only do so if object is on-screen (Sonic engine feature)
; ---------------------------------------------------------------------------
; sub_137C: PlaySoundLocal:
    if SMPS_EnablePlaySoundLocal
SMPS_QueueSound2Local:
	tst.b	render_flags(a0)
	bpl.s	++	; rts
    endif
; sub_1370: PlaySound:
SMPS_QueueSound2:
	tst.b	(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd2).w
	bne.s	+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd2).w
	rts
+
	move.b	d0,(Clone_Driver_RAM+SMPS_RAM.variables.queue.v_playsnd3).w
+	rts
; End of function SMPS_QueueSound2

; ---------------------------------------------------------------------------
; Play a DAC sample
;
; d0 = Sample ID
; ---------------------------------------------------------------------------
SMPS_PlayDACSample:
	SMPS_stopZ80_safe
	move.b  d0,(SMPS_z80_ram+Z_MPCM_CommandInput).l
	; This is a DAC SFX: set to full volume
	clr.b	(SMPS_z80_ram+Z_MPCM_VolumeInput).l	; 100% volume
	SMPS_startZ80_safe
	rts
; End of function SMPS_PlayDACSample

    if SMPS_EnablePWM

; ---------------------------------------------------------------------------
; Play a PWM sample
;
; d0 = Sample ID
; d1 = Sample volume/panning
; d2 = PWM channel*2 (0 = channel 1, 2 = channel 2, etc.)
; ---------------------------------------------------------------------------

SMPS_PlayPWMSample:
	; Merge ID with volume/pan to get PWM command
	lsl.w	#8,d1
	move.b	d0,d1
	; Save a0
	move.l	a0,d0
	; Send PWM command
	lea	(SMPS_pwm_comm).l,a0
	move.w	d1,(a0,d2.w)
	; Restore a0
	movea.l	d0,a0
	rts
; End of function SMPS_PlayPWMSample
    endif
