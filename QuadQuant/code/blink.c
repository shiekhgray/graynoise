#define DDRB	(*(volatile unsigned char*) 0x52)
#define PORTB	(*(volatile unsigned char*) 0x53)

int delay (volatile long time) {
	while (time > 0) {
		time--;
	}

	return 0;
}

int main() {
	DDRB = (1<<1);	//PB1 as output

	while (1) {
		PORTB ^= (1<<1);
		delay(1000);
	}
}
