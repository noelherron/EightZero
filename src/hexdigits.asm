XREF RAM_CHR
XREF RAM_PAL

XREF COLOR_A
XREF COLOR_R
XREF COLOR_G
XREF COLOR_B

XREF video_copy

XDEF hexdigits_load

DEFC COLOR_BACKGROUND = 0

DEFC SHADE_1 = @01100
DEFC SHADE_2 = @10000
DEFC SHADE_3 = @10100

DEFC DARK_SHADE_1 = @00100
DEFC DARK_SHADE_2 = @01000
DEFC DARK_SHADE_3 = @01100

DEFC LIGHT_SHADE_1 = @10000
DEFC LIGHT_SHADE_2 = @10100
DEFC LIGHT_SHADE_3 = @11100

.hexdigits_load
	; load character data
	LD	DE, RAM_CHR + ($80*16)
	; repeat the same characters 8 times (once for each color)
	EXX
	LD	B, 8
.hexdigits_load_loop_characters
	EXX
	LD	HL, hexdigits_characters
	LD	BC, #end_hexdigits_characters-hexdigits_characters
	CALL	video_copy
	INC	D ; <- this works because we wrote exactly 256 bytes
	EXX
	DJNZ	hexdigits_load_loop_characters
	EXX

	; load palette data
	LD	IX, hexdigits_colors
	LD	IY, RAM_PAL + ($80*8)
	EXX
	; outer loop: 8 palettes
	LD	B, 8
.hexdigits_load_loop_palette_outer
	LD	C, B
	; repeat the same colors 16 times (once for each character)
	LD	B, 16
.hexdigits_load_loop_palette_inner
	EXX
	; eZ80 instruction: LEA HL, IX + 0
	DEFB	$ED, $22, 0
	; eZ80 instruction: LEA DE, IY + 0
	DEFB	$ED, $13, 0
	; eZ80 instruction: LEA IY, IY + 8
	DEFB	$ED, $33, 4*2
	LD	BC, 4*2 ; 4 color words
	CALL	video_copy
	EXX
	DJNZ	hexdigits_load_loop_palette_inner
	; next palette
	; eZ80 instruction: LEA IX, IX + 8
	DEFB	$ED, $32, 4*2
	LD	B, C
	DJNZ	hexdigits_load_loop_palette_outer
	EXX
	RET

.hexdigits_colors
; gray   (000)
	DEFW	COLOR_BACKGROUND
	DEFW	DARK_SHADE_1 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	DARK_SHADE_2 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	DARK_SHADE_3 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)

; blue   (001)
; make this a bit brighter because blue is less readable on black background
	DEFW	COLOR_BACKGROUND
	DEFW	LIGHT_SHADE_1 * (0*COLOR_R + 0*COLOR_G + 1*COLOR_B)
	DEFW	LIGHT_SHADE_2 * (0*COLOR_R + 0*COLOR_G + 1*COLOR_B)
	DEFW	LIGHT_SHADE_3 * (0*COLOR_R + 0*COLOR_G + 1*COLOR_B)

; green  (010)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (0*COLOR_R + 1*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_2 * (0*COLOR_R + 1*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_3 * (0*COLOR_R + 1*COLOR_G + 0*COLOR_B)
; cyan   (011)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (0*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_2 * (0*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_3 * (0*COLOR_R + 1*COLOR_G + 1*COLOR_B)
; red    (100)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (1*COLOR_R + 0*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_2 * (1*COLOR_R + 0*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_3 * (1*COLOR_R + 0*COLOR_G + 0*COLOR_B)
; purple (101)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (1*COLOR_R + 0*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_2 * (1*COLOR_R + 0*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_3 * (1*COLOR_R + 0*COLOR_G + 1*COLOR_B)
; yellow (110)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (1*COLOR_R + 1*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_2 * (1*COLOR_R + 1*COLOR_G + 0*COLOR_B)
	DEFW	SHADE_3 * (1*COLOR_R + 1*COLOR_G + 0*COLOR_B)
; white  (111)
	DEFW	COLOR_BACKGROUND
	DEFW	SHADE_1 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_2 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)
	DEFW	SHADE_3 * (1*COLOR_R + 1*COLOR_G + 1*COLOR_B)

.hexdigits_characters
;0
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00111000, @10110100

	DEFB	@00111010, @00110100
	DEFB	@00110100, @00110100
	DEFB	@00001010, @11110000
	DEFB	@00000000, @00000000

;1
	DEFB	@00000000, @00000000
	DEFB	@00000000, @11100000
	DEFB	@00000011, @11100000
	DEFB	@00001111, @11010000

	DEFB	@00000000, @11010000
	DEFB	@00000000, @10010000
	DEFB	@00000000, @11010000
	DEFB	@00000000, @00000000

;2
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00000000, @00110100

	DEFB	@00000011, @11110000
	DEFB	@00001111, @00000000
	DEFB	@00111111, @10111000
	DEFB	@00000000, @00000000

;3
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00000000, @10100000

	DEFB	@00000000, @00110100
	DEFB	@00111100, @00110100
	DEFB	@00001110, @11110000
	DEFB	@00000000, @00000000

;4
	DEFB	@00000000, @00000000
	DEFB	@00000011, @11100000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @10010000

	DEFB	@00111111, @11100100
	DEFB	@00000000, @11010000
	DEFB	@00000000, @11010000
	DEFB	@00000000, @00000000

;5
	DEFB	@00000000, @00000000
	DEFB	@00111011, @11111000
	DEFB	@00111100, @00000000
	DEFB	@00111010, @11100000

	DEFB	@00000000, @00111000
	DEFB	@00111000, @00110100
	DEFB	@00001110, @11110000
	DEFB	@00000000, @00000000

;6
	DEFB	@00000000, @00000000
	DEFB	@00000011, @11100000
	DEFB	@00001111, @00000000
	DEFB	@00111100, @00000000

	DEFB	@00111110, @10110000
	DEFB	@00101000, @00111000
	DEFB	@00001010, @11100000
	DEFB	@00000000, @00000000

;7
	DEFB	@00000000, @00000000
	DEFB	@00111111, @11111000
	DEFB	@00000000, @00111000
	DEFB	@00000000, @11100000

	DEFB	@00000011, @11000000
	DEFB	@00000011, @10000000
	DEFB	@00000011, @01000000
	DEFB	@00000000, @00000000

;8
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00001110, @11100000

	DEFB	@00111000, @00110100
	DEFB	@00111000, @00110100
	DEFB	@00001010, @11110000
	DEFB	@00000000, @00000000

;9
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00111000, @00110100

	DEFB	@00001010, @11110100
	DEFB	@00000000, @00110100
	DEFB	@00001111, @11100000
	DEFB	@00000000, @00000000

;A
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00111000, @00110100

	DEFB	@00111010, @11110100
	DEFB	@00110100, @00110100
	DEFB	@00110100, @00100100
	DEFB	@00000000, @00000000

;B
	DEFB	@00000000, @00000000
	DEFB	@00111111, @11100000
	DEFB	@00111000, @00111000
	DEFB	@00111010, @11100000

	DEFB	@00111000, @00110100
	DEFB	@00100100, @00110100
	DEFB	@00111010, @11110000
	DEFB	@00000000, @00000000

;C
	DEFB	@00000000, @00000000
	DEFB	@00001111, @11100000
	DEFB	@00111100, @00111000
	DEFB	@00111000, @00000000

	DEFB	@00110100, @00000000
	DEFB	@00100100, @00111000
	DEFB	@00001010, @11110000
	DEFB	@00000000, @00000000

;D
	DEFB	@00000000, @00000000
	DEFB	@00111111, @11100000
	DEFB	@00111000, @00111000
	DEFB	@00110100, @00110100

	DEFB	@00110100, @00110100
	DEFB	@00100100, @00100100
	DEFB	@00111010, @11110000
	DEFB	@00000000, @00000000

;E
	DEFB	@00000000, @00000000
	DEFB	@00111111, @11111000
	DEFB	@00111000, @00000000
	DEFB	@00111010, @10000000

	DEFB	@00110100, @00000000
	DEFB	@00110100, @00000000
	DEFB	@00111010, @10111000
	DEFB	@00000000, @00000000

;F
	DEFB	@00000000, @00000000
	DEFB	@00111111, @11111000
	DEFB	@00111000, @00000000
	DEFB	@00111010, @10000000

	DEFB	@00110100, @00000000
	DEFB	@00110100, @00000000
	DEFB	@00110100, @00000000
	DEFB	@00000000, @00000000
.end_hexdigits_characters