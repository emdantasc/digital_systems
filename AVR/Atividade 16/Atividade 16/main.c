/*
 * Atv_14.c
 *
 * Created: 10/10/2017 1:17:38 PM
 * Author : Dina Livia e Emerson Matheus
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <math.h>

void write_value(const uint8_t value);
void start_timer(void);
void stop_timer(void);
void adc_init(void);

/*

FIR filter designed with
http://t-filter.appspot.com

sampling frequency: 500 Hz

* 0 Hz - 20 Hz
  gain = 1
  desired ripple = 1 dB
  actual ripple = 0.6651434180173467 dB

* 40 Hz - 250 Hz
  gain = 0
  desired attenuation = -40 dB
  actual attenuation = -41.06523637145544 dB

*/

#define FILTER_TAP_NUM 45

static double filter_taps[FILTER_TAP_NUM] = {
  0.005970872620829325,
  0.003226438976042929,
  0.0031240930593123737,
  0.002142910672199266,
  0.00012416469943367966,
  -0.0029048059554293492,
  -0.006748781253560068,
  -0.010968974583864978,
  -0.01493643394934848,
  -0.0178815623770653,
  -0.018965591498204138,
  -0.017405140109350285,
  -0.01258456671734664,
  -0.004173037726847347,
  0.007784608264937476,
  0.022831917113054444,
  0.04010370895464751,
  0.058390667324079756,
  0.07625457551818819,
  0.0921780030637111,
  0.10474068353690555,
  0.1127846198857463,
  0.11555322779546091,
  0.1127846198857463,
  0.10474068353690555,
  0.0921780030637111,
  0.07625457551818819,
  0.058390667324079756,
  0.04010370895464751,
  0.022831917113054444,
  0.007784608264937476,
  -0.004173037726847347,
  -0.01258456671734664,
  -0.017405140109350285,
  -0.018965591498204138,
  -0.0178815623770653,
  -0.01493643394934848,
  -0.010968974583864978,
  -0.006748781253560068,
  -0.0029048059554293492,
  0.00012416469943367966,
  0.002142910672199266,
  0.0031240930593123737,
  0.003226438976042929,
  0.005970872620829325
};


volatile uint8_t out=0, in=0, calcule=0, delayed[FILTER_TAP_NUM];
volatile float tmp=0;

int main(void){
		
	DDRD=0xFC; //0b11111100
	DDRB=0x03; //0b00000011
	DDRC=0x00;

	uint8_t it=0;
	
	for(it=0; it<FILTER_TAP_NUM; it++){delayed[it]=0;}
	
	start_timer();
	adc_init();
		
	while(1){	
		if (calcule==0){
			while((0x10&ADCSRA)!=0x10){}
			in=ADCW>>2;
			for(it=(FILTER_TAP_NUM-1); it>=1; it--){delayed[it]=delayed[it-1];}
			delayed[0]=in;
			for(it=0; it<FILTER_TAP_NUM; it++){tmp+=delayed[it]*filter_taps[it];}
			out=(uint8_t)tmp;
			calcule=1;
		}
		else{};
		/*in=read_adc();*/
	}
	return 0;
};

void start_timer(void){
	OCR1A=0x0F9F; //set interruption to 500Hz
	TCCR1B|=(1<<WGM12)|(1<<CS11);//set prescale to 8 and mode CTC
	TIMSK1|=(1<<OCIE1A); //enable interrupt for TCNT1=OCR1A and TCNT1=OCR1B;
	sei();
}

void stop_timer(void){
	TCCR1B&=~(1<<CS10);
	TIMSK1&=~(1<<OCIE1A);
	cli();
}

void adc_init(void){
	ADMUX|=(1<<REFS0); //set admux to read ADC0
	ADCSRA|=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //enabling ADC and setting prescaler to 1/128
}

ISR(TIMER1_COMPA_vect){
	write_value(out);
	tmp=0;
	ADCSRA|=(1<<ADSC);
	calcule=0;
}

void write_value(const uint8_t value){
	PORTB=value>>6;
	PORTD=value<<2;
	return;
}
