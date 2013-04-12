; loader - load data into ram from the serial interface

INCLUDE "loader.inc"
INCLUDE "keyboard.inc"

XREF keyboard_getchar
XREF serial_transmit
XREF serial_receive

XREF dialog_style
XREF draw_box
XREF print_string
XREF icon_show
XREF icon_hide

XREF video_start_write
XREF video_spi_transmit_A
XREF video_end_transfer
XREF video_fill

XDEF loader_open

DEFC LOADER_WIDTH = 31
DEFC LOADER_HEIGHT = 13
DEFC LOADER_TOP = 12
DEFC LOADER_LEFT = 10

DEFC ADDRESS_CHAR_OFFSET = $B0 ; cyan hex chars

.loader_help_string
	DEFM	"Load data into memory", 10
	DEFM	"from the serial interface.", 10, 10
	DEFM	"Target address: ", 10, 10, 10, 10
	DEFM	"0% (waiting for data...)", 10, 10, 10
	DEFM	"Press ESC to cancel.", 0

.progress_chars
	DEFB	0 ; black square
	DEFB	1 ; green square

	; opens the loader screen
.loader_open
	; box
	LD	BC, LOADER_WIDTH*256 + LOADER_HEIGHT
	LD	IY, LOADER_TOP*64 + LOADER_LEFT
	LD	HL, dialog_style
	CALL	draw_box
	; icon
	LD	BC, [LOADER_LEFT + 1]*256 + [LOADER_TOP + 1]
	LD	A, 1 ; icon 1
	CALL	icon_show
	; text
	LD	HL, loader_help_string
	LD	IY, [LOADER_TOP + 1]*64 + [LOADER_LEFT + 4]
	CALL	print_string
	; progress bar
	LD	HL, progress_chars
	LD	DE, [LOADER_TOP + 6]*64 + [LOADER_LEFT + 4]
	LD	BC, LOADER_WIDTH - 5
	CALL	video_fill
	; target address
	LD	DE, [LOADER_TOP + 4]*64 + [LOADER_LEFT + 20]
	CALL	video_start_write
	LD	B, IXH
	CALL	loader_print_byte
	LD	B, IXL
	CALL	loader_print_byte
	CALL	video_end_transfer
	JR	loader_wait_data_start
.loader_print_byte
	LD	A, B
	RRA
	RRA
	RRA
	RRA
	AND	A, $0F
	OR	A, ADDRESS_CHAR_OFFSET
	CALL	video_spi_transmit_A
	; low nibble
	LD	A, B
	AND	A, $0F
	OR	A, ADDRESS_CHAR_OFFSET
	JP	video_spi_transmit_A
	; RET optimized away by JP above

.loader_wait_data_start
	CALL	loader_input_loop
	RET	NC ; cancelled by user
	CP	A, '!'
	JR	NZ, loader_wait_data_start
	LD	A, '?'
	CALL	serial_transmit

	CALL	icon_hide
	RET

	; wait for input
	; returns with C flag set if a byte was received
	; received byte is in A
	; returns with C flag cleared if ESC was pressed
	; this also hides the icon
.loader_input_loop
	CALL	serial_receive
	RET	C ; byte received
	CALL	keyboard_getchar
	LD	A, K_ESC
	CP	A, C
	JR	NZ, loader_input_loop ; ESC not pressed
	CALL	icon_hide
	OR	A, A ; clear carry flag
	RET
