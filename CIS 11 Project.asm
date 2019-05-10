; CIS 11 Project 1
; Josh McIntyre, Juan Castellon
; 05/09/2019
; Option A: Bubble Sort

; Program starts at x3000
.ORIG x3000
LD R1, ARRAY			; Loads starting index array pointer into R1

LEA R0, N1P			; Prompts the user for 1st number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N2P			; Prompts the user for 2nd number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N3P			; Prompts the user for 3rd number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N4P			; Prompts the user for 4th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N5P			; Prompts the user for 5th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N6P			; Prompts the user for 6th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N7P			; Prompts the user for 7th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

LEA R0, N8P			; Prompts the user for 8th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

JSR PRNTARR

JSR INPUT1

HALT

; Prints Array
PRNTARR	STI R7, svReg7			; Saves place in program
	LD R2, SIZE
	ADD R1, R1, #-8			; Put array index back at 0
	LOOP 	LDR R0, R1, #0		; Puts array value at first array index into R0
		OUT			; Prints first value in array
		LD R0, NL		; Load new line ASCII value into R0 and print it
		OUT
		ADD R1, R1, #1		; Increment array index pointer
		ADD R2, R2, #-1		; Decrement loop counter
	BRp LOOP
	LDI R7, svReg7			; Loads original place in program to return to
RET

; Input Reading Function (Prototype)
INPUT1
	STI R7, svReg7			; Saves place in program
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LD R3, ENTER			; Loads the ASCII code for the ENTER key into R3
	NOT R3, R3			; Negates R3
	ADD R3, R3, #1			; 2's compliment of the ASCII ENTER key
	LOOP2 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #0			; Puts input value into R4
	ADD R4, R4, R3			; Puts ASCII value of input into R4
	BRp	LOOP2			; If not 0 they hit ENTER
	LDI R7, svReg7			; Loads original place in program to return to
RET
	
	
	


; Declare Variables
svReg7	.FILL	x4200

SIZE    .FILL 	#8

N1P	.STRINGZ	"Enter number 1: "
N2P	.STRINGZ	"Enter number 2: "
N3P	.STRINGZ	"Enter number 3: "
N4P	.STRINGZ	"Enter number 4: "
N5P	.STRINGZ	"Enter number 5: "
N6P	.STRINGZ	"Enter number 6: "
N7P	.STRINGZ	"Enter number 7: "
N8P	.STRINGZ	"Enter number 8: "

ARRAY	.FILL		x5000

NL	.FILL		#10
ENTER	.FILL		#13
ASCII	.FILL		#48

.END

; TODO List
; Declare & Intialize Array to store input values		DONE
; Create functions for reading in 3 digits max decimal values	
; Push value functions to array					DONE
; Sort array										
; Output and pop array values						