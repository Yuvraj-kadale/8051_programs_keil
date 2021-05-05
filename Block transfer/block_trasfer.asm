// 8051 program to transfer block of 10 bytes from location 20H to 30H

		MOV R2,#10H 	//COUNTER
		MOV R1,#20H 	//SOURCE
		MOV R0,#30H		//DESTINATION
	
LOOP:	MOV	A,@R1
		MOV @R0,A
		INC	R1
		INC R0
		DJNZ R2,LOOP
		END