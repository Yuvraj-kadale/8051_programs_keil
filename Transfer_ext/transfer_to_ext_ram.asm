// 8051 program to transfer a block of 10 bytes from internal RAM locations 20h to external RAM Location 2000H

		MOV R2,#0AH		//COUNTER
		MOV R0,#20H 	//SOURCE
		MOV DPTR,#2000H //DESTINATION
	
LOOP:	MOV A,@R0
		MOVX @DPTR,A
		INC R0
		INC DPTR
		DJNZ R2,LOOP
		END 