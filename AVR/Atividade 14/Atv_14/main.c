/*
 * Atv_14.c
 *
 * Created: 10/10/2017 1:17:38 PM
 * Author : Dina Livia e Emerson Matheus
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <math.h>

void write_value(const unsigned char value);
void start_timer(void);
void stop_timer(void);
void adc_init(void);
unsigned int read_adc(void);

volatile unsigned int it=0;
float out=0;

int main(void){
		
	DDRD=0xFC; //0b11111100
	DDRB=0x03; //0b00000011
	DDRC=0x00;
	start_timer();
	adc_init();
		
	while(1){
	out=read_adc();
	out=out/8;
	out=127.5+(out*cos(2*M_PI*120*it*4.167e-4));
	};

	return 0;
};

void start_timer(void){
	OCR1A=0x1A0A;
	TCCR1B|=(1<<WGM12)|(1<<CS10);
	TIMSK1|=(1<<OCIE1A);
	sei();
}

void stop_timer(void){
	TCCR1B&=~(1<<CS10);
	TIMSK1&=~(1<<OCIE1A);
	cli();
}

void adc_init(void){
	ADMUX|=(1<<REFS0);
	ADCSRA|=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //enabling ADC and setting prescaler to 1/128
}

unsigned int read_adc(void){
	unsigned int adc_out;
	
	ADCSRA|=(1<<ADSC);

	while((0x10&ADCSRA)!=0x10){};
		
	adc_out=ADCW;
	
	return adc_out;
}

ISR(TIMER1_COMPA_vect){
	write_value(round(out));
	it++;
}

void write_value(const unsigned char value){
	PORTB=value>>6;
	PORTD=value<<2;
	return;
}