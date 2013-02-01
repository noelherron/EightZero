; video - low level code for the gameduino video interface

XREF output_sequence

XDEF video_init

DEFC PB_DR = $9A
DEFC PB_DDR = $9B
DEFC PB_ALT2 = $9D
DEFC SPI_BRG_L = $B8
DEFC SPI_CTL = $BA
DEFC SPI_SR = $BB
DEFC SPI_TSR = $BC

DEFC BG_COLOR = $280E
DEFC RAM_PIC = $0000

; initialize PORTB and SPI
; pin usage:
; 0 - unused
; 1 - slave select for gameduino
; 2 - slave select input (always high)
; 3 - SCK
; 4 - unused
; 5 - unused
; 6 - MISO
; 7 - MOSI  
.video_init
	LD	HL, video_init_sequence
	LD	B, #end_video_init_sequence-video_init_sequence
	CALL	output_sequence
	JR	video_reset
	;RET	optimized away by JR above
.video_init_sequence
	; port configuration (see above)
	DEFB	PB_DR, $02
	DEFB	PB_DDR, $FD
	DEFB	PB_ALT2, $CC
	; fastest possible SPI speed
	DEFB	SPI_BRG_L, $03
	; enable SPI: mode 0, master
	DEFB	SPI_CTL, $30
.end_video_init_sequence

; wait for SPI transaction to complete
; preserves all registers except A
.video_spi_wait
	LD	A, C
	LD	C, SPI_SR
.video_spi_wait_loop
	; check for SPIF (bit 7 in SPI_SR)
	; eZ80 instruction: TSTIO $80
	DEFB	$ED, $74, $80
	; '0' means SPI transfer not finished	
	JR	Z, video_spi_wait_loop
	LD	C, A
	RET

; start data write to video device
; DE contains the target address
.video_start_write
	; set address MSB to initiate write transaction
	LD	A, D
	OR	A, $80
	LD	D, A
	; bring slave select low (active)
	XOR	A, A
	; eZ80 instruction: OUT0 (PB_DR), A
	DEFB	$ED, $39, PB_DR
	; transmit address high byte
	; eZ80 instruction: OUT0 (SPI_TSR), D
	DEFB	$ED, $11, SPI_TSR
	CALL	video_spi_wait
	; transmit address low byte
	; eZ80 instruction: OUT0 (SPI_TSR), E
	DEFB	$ED, $19, SPI_TSR				
	JR	video_spi_wait
	;RET optimized away by JR above

; transfer byte to video device via SPI
; HL points to the byte to write
.video_spi_write
	; transmit data byte
	LD	A, (HL)
	; eZ80 instruction: OUT0 (SPI_TSR), A
	DEFB	$ED, $39, SPI_TSR
	JR	video_spi_wait
	;RET optimized away by JR above

; end video read or write operation
.video_end_transfer
	; bring slave select high (inactive)
	LD	A, $02
	; eZ80 instruction: OUT0 (PB_DR), A
	DEFB	$ED, $39, PB_DR
	RET

; write 16-bit value to video device
; DE contains the target address
; HL points to the word to write
.video_write_16
	CALL	video_start_write
	CALL	video_spi_write
	INC	HL
	CALL	video_spi_write
	JR	video_end_transfer
	;RET	optimized away by JR above

; fill video memory
; DE contains the fill start address
; HL points to the byte to fill with
; BC contains the number of bytes to write
.video_fill
	CALL	video_start_write	
.video_fill_loop
	CALL	video_spi_write
	DEC	BC
	LD	A, B
	OR	C
	JR	NZ, video_fill_loop
	JR	video_end_transfer
	;RET	optimized away by JR above

.video_reset
	; background color
	LD	HL, bg_color_default
	LD	DE, BG_COLOR
	CALL	video_write_16
	; clear character RAM
	LD	HL, clear_character
	LD	DE, RAM_PIC
	LD	BC, 64*64
	CALL	video_fill
	RET
.bg_color_default
	DEFW	$00FF
.clear_character
	DEFM	"B"


