// Add two 16 bit nummbers
// Store first number higher nibble at 50H and lower nibble at 51H
// Store second number higher nibble at 53H and lower nibble at 54H
// Store final result's higher nibble at 56H and lower nibble at 57H

ORG 0000H
MOV A,50H
ADD A,53H
MOV 56H,A
MOV A,51H
ADD A,54H
MOV 57H,A
END