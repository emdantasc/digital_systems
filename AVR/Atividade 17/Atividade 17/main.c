/*
 * Atividade 17.c
 *
 * Created: 20/10/2017 09:54:40
 * Author : emdan
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <math.h>

typedef enum machine_states {wait, zero, where_to, increment, show} State;

void write_value(const uint8_t value);
void adc_init(void);
double read_adc(uint8_t channel);


int main(void)
{
	DDRB=0x03; //0b00000011
	DDRC=0x04; //0b00000000
	DDRD=0xFC; //0b11111100
	
	State actual=wait;
	double accumulator=0;
	uint8_t it=0, SAD=0;
	
	/*start_timer();*/
	adc_init();
  
    while (1) 
    {
		switch(actual){
			case wait:
				if((PINC & 0x10)==0x10){
					actual=zero;
					PORTC|=0x04;
				}
				else{
					actual=wait;
					PORTC&=~(0x04);
				}
			break;
			
			case zero:
				accumulator=0;
				it=0;
				actual=where_to;
			break;
			
			case where_to:
				if(it<200){actual=increment;}
				else{actual=show;}
			break;
			
			case increment:
				accumulator+=fabs(read_adc(0x00)-read_adc(0x01));
				it++;
				actual=where_to;
			break;
			
			case show:
				SAD=round(accumulator/803);
				actual=wait;
			break;
			
			default:
				actual=wait;
			break;
		}
		write_value(SAD);
    }
	return 0;
}

void adc_init(void){
	ADMUX|=(1<<REFS0); //setting adc to compare with VCC pin;
	ADCSRA|=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //enabling ADC and setting prescaler to 1/128
}
	
double read_adc(const uint8_t channel){
	ADMUX&=~(0x0F);
	ADMUX|=(0x0F & channel);
	
	ADCSRA|=(1<<ADSC);
	
	while((ADCSRA & 0x10)!=0x10){}
		
	return ADCW;
}

void write_value(const uint8_t value){
	PORTB=value>>6;
	PORTD=value<<2;
	return;
}

