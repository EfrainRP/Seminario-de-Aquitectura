;
; CONTADOR.asm
;
; Created: 17/11/2021 19:46:40
; Author : ING efrain
;


.CSEG
.ORG 0

LDI R16, 0XFF
OUT DDRB, R16

;CALL realiza una llamada 


INICIA:
	LDI R16, 0X00
	OUT PORTB, R16
	CALL TEMP

CICLO:
	INC R16
	OUT PORTB, R16
	CALL TEMP
	CPI R16,32
	BREQ INICIA

RJMP CICLO

TEMP:
		LDI R20, 250
TEMP2: 
		NOP;es una instruccion sin operacion
		NOP
		NOP
		NOP
		DEC R20 ;destino(decrementa)
		BRNE TEMP2
		DEC R19 ;destino(decrementa)
		BRNE TEMP; realiza un desvio condicional relativo 
		RET ;se detiene