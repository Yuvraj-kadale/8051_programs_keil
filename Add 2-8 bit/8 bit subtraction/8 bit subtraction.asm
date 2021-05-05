// 8051 program to Subtract two 8-bit numbers.
// 1st number is stored in 50H 
// 2nd Number is store in 52H 
// Save the result at 54H

ORG 0000H
MOV A,50H
SUBB A,52H
MOV 54H,A
END