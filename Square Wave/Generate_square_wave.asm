// 8051 program to generate a square wave of 1KHz from port P1.2.
// Assuming 50% duty cycle


		MOV P1,#00H
		MOV TMOD,#01H
MAIN:	MOV TL0,#0F2H
		MOV TH0,#0FFH
		CPL P1.2
		ACALL DELAY
		SJMP MAIN
DELAY:	SETB TR0
HERE:	JNB TF0,HERE
		CLR TR0
		CLR TF0
		RET
		END