;
; Atividade 12.asm
;
; Created: 20/09/2017 14:17:38
; Author : emdan
;


; Replace with your application code
.include "m328Pdef.inc"
.org 0x0000
rjmp setup

setup:
	ldi R16, 0b11111100
	out DDRD, R16
	ldi R16, 0b00000011
	out DDRB, R16
	ldi R16, 0b00000111
	out DDRC, R16
	
	
ldvalue:
	ldi R16, 0x1F
	ldi R17, 0x01
	clr R18
	clr R19

bcd_break:
	cpi R17, 0x01
	brsh reduce100
	cpi R16, 0x64
	brsh reduce100
	cpi R16, 0x0A
	brsh reduce10
	mov R17, R19
	jmp write

reduce100:
	subi R16, 0x64
	inc R18
	brcs ajust
	jmp bcd_break

ajust:
	dec R17
	jmp bcd_break

reduce10:
	subi R16, 0x0A
	inc R19
	jmp bcd_break

write:
	mov R19, R18
	call todisplay
	ldi R22, 0x04
	out PORTC, R22
	call delay

	mov R19, R17
	call todisplay
	ldi R22, 0x02
	out PORTC, R22
	call delay

	mov R19, R16
	call todisplay
	ldi R22, 0x01
	out PORTC, R22
	call delay

	jmp write

delay:
	ldi  r20, 104
    ldi  r21, 229
L1: dec  r21
    brne L1
    dec  r20
    brne L1

    ret


todisplay:
		cpi r19, 0x00
		breq write_zero	
		
		cpi r19, 0x01
		breq write_one
		
		cpi r19, 0x02
		breq write_two
		
		cpi r19, 0x03
		breq write_three
		
		cpi r19, 0x04
		breq write_four
		
		cpi r19, 0x05
		breq write_five
		
		cpi r19, 0x06
		breq write_six
		
		cpi r19, 0x07
		breq write_seven
		
		cpi r19, 0x08
		breq write_eight
		
		cpi r19, 0x09
		breq write_nine
		
		cpi r19, 0x0A
		breq write_a
		
		cpi r19, 0x0B
		breq write_b
		
		cpi r19, 0x0C
		breq write_c
		
		cpi r19, 0x0D
		breq write_d
		
		cpi r19, 0x0E
		breq write_e
		
		cpi r19, 0x0F
		breq write_f

	write_zero:
		ldi R20, 0b11111100
		ldi R21, 0b00000000
		jmp export

	write_one:
		ldi R20, 0b00011000
		ldi R21, 0b00000000
		jmp export

	write_two:
		ldi R20, 0b01101100
		ldi R21, 0b00000001
		jmp export

	write_three:
		ldi R20, 0b00111100
		ldi R21, 0b00000001
		jmp export

	write_four:
		ldi R20, 0b10011000
		ldi R21, 0b00000001
		jmp export

	write_five:
		ldi R20, 0b10110100
		ldi R21, 0b00000001
		jmp export

	write_six:
		ldi R20, 0b11110100
		ldi R21, 0b00000001
		jmp export

	write_seven:
		ldi R20, 0b00011100
		ldi R21, 0b00000000
		jmp export

	write_eight:
		ldi R20, 0b11111100
		ldi R21, 0b00000001
		jmp export

	write_nine:
		ldi R20, 0b10011100
		ldi R21, 0b00000001
		jmp export

	write_a:
		ldi R20, 0b11011100
		ldi R21, 0b00000001
		jmp export

	write_b:
		ldi R20, 0b11110000
		ldi R21, 0b00000001
		jmp export

	write_c:
		ldi R20, 0b11100100
		ldi R21, 0b00000000
		jmp export
	
	write_d:
		ldi R20, 0b01111000
		ldi R21, 0b00000001
		jmp export

	write_e:
		ldi R20, 0b11100100
		ldi R21, 0b00000001
		jmp export

	write_f:
		ldi R20, 0b11000100
		ldi R21, 0b00000001
		jmp export

	export:
		out PORTD, R20
		out PORTB, R21
	ret
	
	