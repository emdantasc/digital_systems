;
; Question 3.asm
;
; Created: 31/10/2017 15:19:24
; Author : Monitor
;


; Replace with your application code
.include "m328Pdef.inc"
.org 0x0000
rjmp setup

setup:
	ldi R16, 0b11111100
	out DDRD, R16
	ldi R16, 0b00000001
	out DDRB, R16
	ldi R16, 0b00000000
	out DDRC, R16

read:
	in R16, PINC
	andi R16, 0b00000001

compare:
	cpi R16, 0b00000000
	breq sequence01
	cpi R16, 0b00000001
	breq sequence02
	rjmp read

sequence01:
	ldi R17, 0b10000000
	out PORTD, R17
	call delay

	ldi R17, 0b01000000
	out PORTD, R17
	call delay
	
	ldi R17, 0b00100000
	out PORTD, R17
	call delay

	ldi R17, 0b00010000
	out PORTD, R17
	call delay

	ldi R17, 0b00001000
	out PORTD, R17
	call delay

	ldi R17, 0b00000100
	out PORTD, R17
	call delay

	rjmp read

sequence02:
	
	ldi R17, 0b10000000
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00000000
	ldi R18, 0b00000001
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00010000
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00100000
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b01000000
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00000000
	ldi R18, 0b00000001
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00001000
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	ldi R17, 0b00000100
	ldi R18, 0b00000000
	out PORTD, R17
	out PORTB, R18
	call delay

	rjmp read

delay:
	ldi  r19, 25 
    ldi  r20, 90 
    ldi  r21, 178
L1: dec  r21
    brne L1
    dec  r20
    brne L1
    dec  r19
    brne L1
	ret