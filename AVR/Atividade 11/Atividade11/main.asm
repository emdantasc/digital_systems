;
; Atividade11.asm
;
; Created: 20/09/2017 09:17:45
; Author : emdan
;


; Replace with your application code
.include "M328PDEF.INC"

.org 0x0000
rjmp setup

setup:
    ldi R16, 0xf0
    ldi R17, 0xfc
	ldi R18, 0x03
	

	out DDRC, R16
	out DDRD, R17
	out DDRB, R18

start:
	in R16, PINC

compare:
	cpi R16, 0x00
	breq write_zero
	
	cpi r16, 0x01
	breq write_one
	
	cpi r16, 0x02
	breq write_two
	
	cpi r16, 0x03
	breq write_three
	
	cpi r16, 0x04
	breq write_four
	
	cpi r16, 0x05
	breq write_five
	
	cpi r16, 0x06
	breq write_six

	cpi r16, 0x07
	breq write_seven

	cpi r16, 0x08
	breq write_eight

	cpi r16, 0x09
	breq write_nine

	cpi r16, 0x0A
	breq write_a

	cpi r16, 0x0B
	breq write_b

	cpi r16, 0x0C
	breq write_c

	cpi r16, 0x0D
	breq write_d

	cpi r16, 0x0E
	breq write_e

	cpi r16, 0x0F
	breq write_f

write_zero:
	ldi R17, 0b11111100
	ldi R18, 0b00000000
	jmp export

write_one:
	ldi R17, 0b00011000
	ldi R18, 0b00000000
	jmp export

write_two:
	ldi R17, 0b01101100
	ldi R18, 0b00000001
	jmp export

write_three:
	ldi R17, 0b00111100
	ldi R18, 0b00000001
	jmp export

write_four:
	ldi R17, 0b10011000
	ldi R18, 0b00000001
	jmp export

write_five:
	ldi R17, 0b10110100
	ldi R18, 0b00000001
	jmp export

write_six:
	ldi R17, 0b11110100
	ldi R18, 0b00000001
	jmp export

write_seven:
	ldi R17, 0b00011100
	ldi R18, 0b00000000
	jmp export

write_eight:
	ldi R17, 0b11111100
	ldi R18, 0b00000001
	jmp export

write_nine:
	ldi R17, 0b10011100
	ldi R18, 0b00000001
	jmp export

write_a:
	ldi R17, 0b11011100
	ldi R18, 0b00000001
	jmp export

write_b:
	ldi R17, 0b11110000
	ldi R18, 0b00000001
	jmp export

write_c:
	ldi R17, 0b11100100
	ldi R18, 0b00000000
	jmp export
	
write_d:
	ldi R17, 0b01111000
	ldi R18, 0b00000001
	jmp export

write_e:
	ldi R17, 0b11100100
	ldi R18, 0b00000001
	jmp export

write_f:
	ldi R17, 0b11000100
	ldi R18, 0b00000001
	jmp export

export:
	out PORTD, R17
	out PORTB, R18
	jmp start