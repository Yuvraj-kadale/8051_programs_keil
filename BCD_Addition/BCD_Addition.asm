// add series of 10 BCD numbers. 
// The series begins from location 20H.
// Store the result at locations 30H and 31H.

		ORG 0000H
		MOV R7,#0AH 	//Counter
		MOV R0,#20H		//Source
		MOV R2,#00H 	//Result of Higher byte will be stored here
		CLR A 			// Flushing Accumulator
		
LOOP:	ADD A,@R0
		DA  A			//Decimal Adjust
		JNC SKIP
		INC R2
SKIP:	INC R0
		DJNZ R7,LOOP
		MOV 30H,R2		//Higher byte result at 30H
		MOV 31H,A		//Lower byte result at 31H
		END