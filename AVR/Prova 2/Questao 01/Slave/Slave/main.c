/*
 * Slave.c
 *
 * Created: 31/10/2017 17:59:36
 * Author : Monitor
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

void SPI_SlaveInit(void);
uint8_t SPI_SlaveReceive(void);
void init_PWM(void);


int main(void)
{
	DDRB|=(1<<PB1);
	
	OCR1A=0x00F0;
	
	uint8_t SPI_receive, read_key;
	
	SPI_SlaveInit();
	init_PWM();
	
	
    while (1) 
    {
		if((SPSR & (1<<SPIF))){
			
			SPI_receive=SPDR;
			
			OCR1A=SPI_receive;
			
			read_key=0b00111100 & PIND;
			read_key=read_key>>2;
			
			SPDR=read_key;
			
		}
		else{};	
    }
}

void init_PWM(void){
	TCCR1A|=(1<<COM1A1)|(1<<WGM10);
	TCCR1B|=(1<<WGM12)|(1<<CS11);
}

void SPI_SlaveInit(void){
	/* Set MISO output, all others input */
	DDRB |= (1<<PB4);
	/* Enable SPI */
	SPCR |= (1<<SPE);
}