// To generate a rectangular wave of 1KHz from port P1.2 
// with 25% duty cycle.


		MOV P1,#00H
		MOV TMOD,#01H
UP:		MOV TL1,#06H
		MOV TH1,#0FFH
		SETB P1.2
		MOV TCON,#40H
ON:		JNB TCON.7,ON
		CLR P1.2
		MOV TCON,#00H
		MOV TL1,#12H
		MOV TH1,0FDH
		MOV TCON,#40H
OFF:	JNB TCON.7, OFF
		MOV TCON,#00H
		SJMP UP
		END
			
		