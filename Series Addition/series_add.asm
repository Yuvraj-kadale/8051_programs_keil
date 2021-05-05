// write a program to add series of 10 numbers.
// series starts from 20H
// save the result at 30 & 31H

		MOV R7,#0AH		//COUNTER
		MOV R0,#20H		//SERIES BEGIN
		MOV R2,#00H		//HIGHER BYTE STORED HERE
		CLR A			//FLUSH ACC.
		
LOOP:	ADD A,@R0
		JNC SKIP
		INC R2
SKIP:	INC R0
		DJNZ R7,LOOP
		MOV 30H,R2
		MOV 31H,A
		END