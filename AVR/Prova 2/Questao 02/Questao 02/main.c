/*
 * Questao 02.c
 *
 * Created: 31/10/2017 16:01:38
 * Author : Monitor
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
// #define F_CPU 16000000
// #include <util/delay.h>

void configure_UART(void);
void EEPROM_write(uint8_t uiAddress, uint8_t ucData);
uint8_t EEPROM_read(uint8_t uiAddress);
void write_serial(uint8_t word);
void write_value(uint8_t data);
uint8_t sev_seg(uint8_t data);

volatile uint8_t actual_address=0, to_write=0, flag_write=0, word_vector[3]={0,0,0}, words=0;
volatile char word_adrs[9]={'A','d','d','r','e','s','s',':',' '};

int main(void)
{
	DDRD=0b11111110; //set portd to write in '1' pins and receive in '0' pins
	DDRB=0b00000001; //set portb to write in '1' pins and receive in '0' pins
	DDRC=0b00000000; //set portc to read in all pins
	UCSR0B|=(1<<RXCIE0); //enable RX interruption
	
	uint8_t valor=0, address_toread=0, output=0;
	
	configure_UART();
	sei();
	
	write_serial(actual_address);
	
    while (1) 
    {
		if(flag_write==1){
			cli();
			EEPROM_write(actual_address, to_write);
			flag_write=0;
			actual_address++;
			write_serial(actual_address);
			sei();
		}
		
		address_toread=0x0F & PINC;
		
		valor=EEPROM_read(address_toread);
		
		output=sev_seg(valor);
		
		write_value(output);
		
    }
}

void configure_UART(void){
	UCSR0B|=(1<<RXEN0)|(1<<TXEN0)|(1<<RXCIE0); //enable RX TX pins
	UCSR0C|=(1<<UCSZ01)|(1<<UCSZ00); //set 8bit message with parity check and 1 stop bit
	UBRR0=103; //set baud to 9600
	return;
}

void EEPROM_write(uint8_t uiAddress, uint8_t ucData){
	/* Wait for completion of previous write */
	while(EECR & (1<<EEPE)){};
	/* Set up address and Data Registers */
	EEAR = uiAddress;
	EEDR = ucData;
	/* Write logical one to EEMPE */
	EECR |= (1<<EEMPE);
	/* Start eeprom write by setting EEPE */
	EECR |= (1<<EEPE);
	
	while(EECR & (1<<EEPE)){};
}

uint8_t EEPROM_read(uint8_t uiAddress){
	/* Wait for completion of previous write */
	while(EECR & (1<<EEPE)){};
	/* Set up address register */
	EEAR = uiAddress;
	/* Start eeprom read by writing EERE */
	EECR |= (1<<EERE);
	/* Return data from Data Register */
	return EEDR;
}

void write_serial(uint8_t word){
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
	
	while(it<13){
		if((UCSR0A & 0x20)==0x20){
			if(it<9){
				UDR0=word_adrs[it];
				it++;
			}
			else if(it>8 || it<13){
				UDR0=coef[it-9];
				it++;
			}
			else{};
		}
		else{}
	
	};

	return;
};

ISR(USART_RX_vect){
	word_vector[words]=UDR0;
	words++;
	
	if(words==3){
		to_write=(word_vector[0]-48)*100+(word_vector[1]-48)*10+(word_vector[2]-48);
		flag_write=1;
		words=0;
	}
	else{};
	
	return;
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