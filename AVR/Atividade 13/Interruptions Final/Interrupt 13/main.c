/*
 * main01.c
 *
 * Created: 08/10/2017 23:20:04
 *  Author: emdan
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <math.h>

void write_value(const unsigned char value);
void start_timer(void);
void stop_timer(void);

void sine_wave(void);
void square_wave(void);
void triangle_wave(void);

volatile unsigned int it=0;
volatile unsigned char mode=0x00, freq=0x00;

int main(void){
	
	DDRC=0x1C; //0b00011100
	DDRD=0xFC; //0b11111100
	DDRB=0x03; //0b00000011
	while(1){
		switch(0x03 & PINC){ //0x00000011 & 0b76543210
			case 0x00:
			sine_wave();
			break;
			
			case 0x01:
			square_wave();
			break;
			
			case 0x02:
			triangle_wave();
			break;
			
			default:
			stop_timer();
			PORTC=0x04<<2;
			PORTB=0x00;
			PORTD=0x00;
		};
	};

	return 0;
};

void start_timer(void){
	OCR1A=0x0CFF;
	TCCR1B|=(1<<WGM12)|(1<<CS10);
	TIMSK1|=(1<<OCIE1A);
	sei();
}

void stop_timer(void){
	TCCR1B&=(0<<CS10);
	TIMSK1&=(0<<OCIE1A);
	cli();
}

void sine_wave(void){
	it=0;
	mode=0x00;
	PORTC=0x00;
	start_timer();
	while((0x03 & PINC)==0x00){};
	stop_timer();
};
void square_wave(void){
	it=0;
	mode=0x01;
	PORTC=0x01<<2;
	start_timer();
	while((0x03 & PINC)==0x01){};
	stop_timer();
}
void triangle_wave(void){
	it=0;
	mode=0x02;
	PORTC=0x02<<2;
	start_timer();
	while((0x03 & PINC)==0x02){};
	stop_timer();
}

ISR(TIMER1_COMPA_vect){	
	switch(mode){
		case 0x00:
			write_value(127.5*(1+sin(2*M_PI*60*it*2.083E-4)));
			it++;
		break;
		
		case 0x01:
			if(it<=40){write_value(0xFF);}
			else{write_value(0x00);};
			it++;
		break;
		
		case 0x02:
			if(it<=40){write_value(round((it*255)/40));}
			else{write_value(round(510-(it*6.375)));}
			it++;
		break;
		
		default:
		break;
	};
	if(it==80){it=0;}
	else{};
}

void write_value(const unsigned char value){
	PORTB=value>>6;
	PORTD=value<<2;
	return;
};