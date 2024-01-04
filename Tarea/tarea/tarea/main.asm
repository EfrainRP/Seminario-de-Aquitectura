;
; tarea.asm
;
; Created: 16/11/2021 00:22:45
; Author : efrain
;
.CSEG ; MEMORIA FLASH
.ORG 0 ;comienza en la 0

INICIA:
    LDI R16, 0XFF ; cargar el valor 0XFF en el registro 16 (todos en valor de 1 en los 8 bits)
	OUT DDRB, R16 ; configura el puerto B de acuerdo al valor del registro 16 anterior, como salida

	LDI R16, 0B00000001 ; vuelve a cargar el valor 1 en binario en el registro 16
	OUT PORTB, R16 ; saca en el puerto B el valor del registro 16 anterior(1 en binario)

	LDI R16, 0B00000000 ; vuelve a cargar el valor 0 en binario en el registro 16
	OUT PORTB, R16 ; saca en el puerto B el valor del registro 16 anterior(0 en binario)

RJMP INICIA ; hara un salto a la etiqueta INICIA, para hacer las instrucciones dentro de ella 

