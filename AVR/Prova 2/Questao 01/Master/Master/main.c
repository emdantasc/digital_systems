/*
 * Master.c
 *
 * Created: 31/10/2017 17:41:16
 * Author : Monitor
 */ 

#include <avr/io.h>
// #define F_CPU 16000000
// #include <util/delay.h>


void adc_init(void);
uint8_t read_adc(void);
uint8_t sev_seg(uint8_t data);
void write_value(uint8_t data);
void SPI_MasterInit(void);
uint8_t SPI_MasterTransmit(uint8_t cData);

// void configure_UART(void);
// void write_serial(uint8_t word);


int main(void)
{
	uint8_t adc_read=0, to_display=0, in_SPI=0;
	
	DDRD=0b11111100;
	DDRB=0b00000101;
	
	adc_init();
	SPI_MasterInit();
	
	while(1){

		adc_read=read_adc();
		
		in_SPI=SPI_MasterTransmit(adc_read);
				
		to_display=sev_seg(in_SPI);
		
		write_value(to_display);
	};
   
}

void adc_init(void){
	ADMUX|=(1<<REFS0);
	ADCSRA|=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0); //enabling ADC and setting prescaler to 1/128
}

uint8_t read_adc(void){
	uint16_t adc_read;
	uint8_t adc_out;
	
	ADCSRA|=(1<<ADSC);

	while((0x10&ADCSRA)!=0x10){};
	
	adc_read=ADCW;
	adc_out=adc_read>>2;
	
	return adc_out;
}

void write_value(uint8_t data){
	PORTD=data<<2;
	PORTB=data>>6;
}

uint8_t sev_seg(uint8_t data){
	switch(data){
		case 0x00:
		return 0b00111111;
		break;
		
		case 0x01:
		return 0b00000110;
		break;
		
		case 0x02:
		return 0b01011011;
		break;
		
		case 0x03:
		return 0b01001111;
		break;
		
		case 0x04:
		return 0b01100110;
		break;
		
		case 0x05:
		return 0b01101101;
		break;
		
		case 0x06:
		return 0b01111101;
		break;
		
		case 0x07:
		return 0b00000111;
		break;
		
		case 0x08:
		return 0b01111111;
		break;
		
		case 0x09:
		return 0b01100111;
		break;
		
		case 0x0A:
		return 0b01110111;
		break;
		
		case 0x0B:
		return 0b01111100;
		break;
		
		case 0x0C:
		return 0b00111001;
		break;
		
		case 0x0D:
		return 0b01011110;
		break;
		
		case 0x0E:
		return 0b01111001;
		break;
		
		case 0x0F:
		return 0b01110001;
		break;
		
		default:
		return 0x00;
		break;
	};
};

void SPI_MasterInit(void){
	/* Set MOSI and SCK output*/
	DDRB |= (1<<PB3)|(1<<PB5);
	/* Enable SPI, Master, set clock rate fck/16 */
	SPCR |= (1<<SPE)|(1<<MSTR)|(1<<SPR0);
	
	return;
}

uint8_t SPI_MasterTransmit(uint8_t cData){
	PORTB&=~(1<<PB2);
	/* Start transmission */
	SPDR = cData;
	/* Wait for transmission complete */
	while(!(SPSR & (1<<SPIF))){};
	
	PORTB|=(1<<PB2);
	
	return SPDR;
}
