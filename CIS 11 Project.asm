; CIS 11 Project 1
; Josh McIntyre, Juan Castellon
; 05/09/2019
; Option A: Bubble Sort

; Program starts at x3000
.ORIG x3000
LD R1, ARRAY1			; Loads starting index array pointer into R1

; Prompt User for 1st Number
; and Store value in Array
LEA R0, N1P			; Prompts the user for 1st number
PUTS
JSR INPUT1				; Reads 1 char of user input then OUT displays it
LDI R0, NUM1_V			; Load number1's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL1			; Prints newline feed for next input prompt
OUT

; Input Reading Function (Prototype)
INPUT1
	STI R1, svReg1			; Saves R1
	STI R7, svReg7			; Saves place in program
	LD R1, NUM1_A			; Loads number1array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII1
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LD R3, ENTER1			; Loads the ASCII code for the ENTER key into R3
	NOT R3, R3			; Negates R3
	ADD R3, R3, #1			; 2's compliment of the ASCII ENTER key
	LOOP2 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores digits into num1 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number1array pointer
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRz EXIT1
	AND R2, R2, #0
	LD R2, ASCII1
	ADD R0, R0, R2
	ADD R4, R0, #0			; Puts input value into R4
	ADD R4, R4, R3			; Puts ASCII value of input into R4
	BRp	LOOP2			; If positive they hit ENTER and exits loop
	; handle if they only input 1 or 2
	; digits and hit ENTER
	ADD R7, R5, #-2			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT1_1D
	ADD R7, R5, #-3			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT1_2D
	LDI R7, svReg7			; Loads original place in program to return to
	LDI R1, svReg1			; Loads original value of R1
RET
	
EXIT1	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM1_V			; Store value of R7(100) into NUM1_V
	AND R7, R7, #0
	LD R7, NUM1_A			; R7 is number1array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number1 third digit as 0
	STR R0, R7, #1			; Store number1 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number1 first digit as 1
	LDI R7, svReg7			; Loads original place in program to return to
	LDI R1, svReg1			; Loads original value of R1
	RET

ENT1_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM1_A
	LDR R0, R7, #0			; Store number1 first digit in R0
	STI R0, NUM1_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number1 first digit
	STR R0, R7, #1			; Clear number1 second digit
	LDI R7, svReg7			; Loads original place in program to return to
	LDI R1, svReg1			; Loads original value of R1
	RET

ENT1_2D HALT

; Declare Variables
svReg1	.FILL	x4200
NUM1_A	.FILL	x4900
NUM1_V	.FILL	x4903
ARRAY1	.FILL	x5000

NL1	.FILL	#10
ENTER1	.FILL	#13
ASCII1	.FILL	#48

; Prompt User for 2nd Number
; and Store value in Array
LEA R0, N2P			; Prompts the user for 2nd number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 3rd Number
; and Store value in Array
LEA R0, N3P			; Prompts the user for 3rd number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 4th Number
; and Store value in Array
LEA R0, N4P			; Prompts the user for 4th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 5th Number
; and Store value in Array
LEA R0, N5P			; Prompts the user for 5th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 6th Number
; and Store value in Array
LEA R0, N6P			; Prompts the user for 6th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 7th Number
; and Store value in Array
LEA R0, N7P			; Prompts the user for 7th number
PUTS
GETC				; Reads 1 char of user input then OUT displays it
OUT
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL			; Prints newline feed for next input prompt
OUT

; Prompt User for 8th Number
; and Store value in Array
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

; Declare Variables
svReg7	.FILL	x4201

SIZE    .FILL 	#8

N1P	.STRINGZ	"Enter number 1: "
N2P	.STRINGZ	"Enter number 2: "
N3P	.STRINGZ	"Enter number 3: "
N4P	.STRINGZ	"Enter number 4: "
N5P	.STRINGZ	"Enter number 5: "
N6P	.STRINGZ	"Enter number 6: "
N7P	.STRINGZ	"Enter number 7: "
N8P	.STRINGZ	"Enter number 8: "

NL	.FILL		#10
ENTER	.FILL		#13
ASCII	.FILL		#48


.END					