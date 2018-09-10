/*
 * Atividade 15.c
 *
 * Created: 15/10/2017 18:25:11
 * Author : Matheus Dantas e Dina Lívia
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

void start_PWM(void);

void start_timer1(void);
void stop_timer1(void);

void configure_UART(void);
void write_serial(uint8_t word);
uint8_t read_serial(void);

void adc_init(void);
void adc_stop(void);
uint8_t read_adc(void);

volatile uint8_t ADC_value=0x00, words=0, word_vector[3]={0,0,0};

int main(void){
	DDRB=0x08;//0b00001000
	DDRC=0x00;//0b00001000
	DDRD=0x02;//0x00000010

	start_PWM(); //configure PWM output
	OCR2A=0; //initialize PWM
	configure_UART(); //configure UART device
	sei(); //enable interruption
	
	while(1){
		if(PINC & (1<<PINC3)){
			UCSR0B&=~(1<<RXCIE0); //disable RX complete interruption
			start_timer1(); //init timer 01
			adc_init(); //init ADC
			ADC_value=read_adc(); //read adc value
		}
		else{
			UCSR0B|=(1<<RXCIE0); //enable RX complete interruption
			stop_timer1(); //stop timer 01
			adc_stop(); //stop ad converter
		}
	}
		
	return 0;
};

void start_PWM(void){
	TCCR2A|=(1<<COM2A1)|(1<<WGM21)|(1<<WGM20); // setando modo fast pwm e determinando saida COM1A0
	TCCR2B|=(1<<CS22); //set mode for fast PWM top 0xFF and prescaling of 1/64
	return;
}

void start_timer1(void){
	TCCR1B|=(1<<WGM12)|(1<<CS12); //set mode to CTC and presclaing 1/256
	TIMSK1|=(1<<OCIE1A); //enable interruption when equal
	OCR1A=0x7A11; //set value for a time delay 0.5s
	return;
}

void stop_timer1(void){ //disable timer 01
	TCCR1B&=~((1<<WGM12)|(1<<CS12)); 
	TIMSK1&=~((1<<OCIE1A));
	return;
}

void adc_init(void){
	ADMUX|=(1<<REFS0);
	ADCSRA|=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //enabling ADC and setting prescaler to 1/128
	return;
}

void adc_stop(void){
	ADMUX&=~(1<<REFS0);
	ADCSRA&=~((1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0)); //enabling ADC and setting prescaler to 1/128
}

uint8_t read_adc(void){

	ADCSRA|=(1<<ADSC); //initialize convertion

	while((0x10&ADCSRA)!=0x10){}; //wait until complete
	
	return (ADCW>>2); //reduce to 8bit size
}

void configure_UART(void){
	UCSR0B|=(1<<RXEN0)|(1<<TXEN0)|(1<<RXCIE0); //enable RX TX pins
	UCSR0C|=(1<<UCSZ01)|(1<<UCSZ00); //set 8bit message with parity check and 1 stop bit
	UBRR0=103; //set baud to 9600
	return;
}

void write_serial(uint8_t word){
	/*This function reads a 8bit word and converts it to a 3 byte ASCII word to print the inserted number*/
	uint8_t it=0;
	int coef[4]={0,0,0,0};
		
	for(it=0; it<3; it++){
		if(it==0){coef[0]=word/100;}
		else if(it==1){coef[1]=(word-coef[0]*100)/10;}
		else if(it==2){coef[2]=word-(coef[0]*100)-(coef[1]*10);}
		else{}
	};
	
	for(it=0; it<4; it++){
		if(it<3){coef[it]+=48;}
		else{coef[it]=0x0A;}
	}
	
	it=0;
	
	while(it<4){
		if((UCSR0A & 0x20)==0x20){
			UDR0=coef[it];
			it++;
		}
		else{}
	};
	
	return;
};

ISR(TIMER1_COMPA_vect){
	write_serial(ADC_value); //write to serial port
	return;
};

ISR(USART_RX_vect){
	uint8_t PWM_duty=0;
	
	word_vector[words]=UDR0;
	words++;
	
	if(words==3){
		PWM_duty=(word_vector[0]-48)*100+(word_vector[1]-48)*10+(word_vector[2]-48); //calculates the new duty size for the PWM
		OCR2A=PWM_duty;//sets the new duty
		words=0; //the the word counter to zero
		write_serial(PWM_duty); //writes the value that was written
	}
	return;
}
