; CIS 11 Project 1
; Josh McIntyre, Juan Castellon
; 05/09/2019
; Option A: Bubble Sort

; Program starts at x3000
.ORIG x3000
LD R1, ARRAY1			; Loads starting index array pointer into R

; Prompt User for 1st Number
; and Store value in Array
LEA R0, N1P			; Prompts the user for 1st number
PUTS
JSR INPUT1			; Call Input1 function
LDI R0, NUM1_V			; Load number1's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL1			; Prints newline feed for next input prompt
OUT

; Declare Prompt 1
N1P		.STRINGZ	"Enter number 1: "
NL1		.FILL	#10



; Prompt User for 2nd Number
; and Store value in Array
LEA R0, N2P			; Prompts the user for 2nd number
PUTS
JSR INPUT2			; Reads 3 char of user input then OUT displays it
LDI R0, NUM2_V1			; Load number2's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL2			; Prints newline feed for next input prompt
OUT

; Declare Prompt 2
NUM2_V1		.FILL	x3913
N2P		.STRINGZ	"Enter number 2: "
NL2		.FILL	#10



; Prompt User for 3rd Number
; and Store value in Array
LEA R0, N3P			; Prompts the user for 3rd number
PUTS
JSR INPUT3			; Reads 3 char of user input then OUT displays it
LDI R0, NUM3_V1			; Load number3's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL3			; Prints newline feed for next input prompt
OUT

; Declare Prompt 3
NUM3_V1		.FILL	x3923
N3P		.STRINGZ	"Enter number 3: "
NL3		.FILL	#10


; ---------------------STOPS


; Prompt User for 4th Number
; and Store value in Array
LEA R0, N4P			; Prompts the user for 4th number
PUTS
JSR INPUT4			; Reads 3 char of user input then OUT displays it
LDI R0, NUM4_V1			; Load number4's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL4			; Prints newline feed for next input prompt
OUT

; Declare Prompt 4
NUM4_V1		.FILL	x3933
N4P		.STRINGZ	"Enter number 4: "
NL4		.FILL	#10

HALT


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
svReg1		.FILL	x3200
svReg7		.FILL	x3201
NUM1_A		.FILL	x3900
NUM1_V		.FILL	x3903
ARRAY1		.FILL	x5000

ENTER1		.FILL	#13
ASCII1		.FILL	#48


; Input Reading Function for Number 2
INPUT2
	STI R1, svReg1_2		; Saves R1
	STI R7, svReg7_2		; Saves place in program
	LD R1, NUM2_A			; Loads number1array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII2
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LD R3, ENTER2			; Loads the ASCII code for the ENTER key into R3
	NOT R3, R3			; Negates R3
	ADD R3, R3, #1			; 2's compliment of the ASCII ENTER key
	LOOP3 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores digits into num1 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number1array pointer
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRz EXIT2
	AND R2, R2, #0
	LD R2, ASCII2
	ADD R0, R0, R2
	ADD R4, R0, #0			; Puts input value into R4
	ADD R4, R4, R3			; Puts ASCII value of input into R4
	BRp	LOOP3			; If positive they hit ENTER and exits loop
	; handle if they only input 1 or 2
	; digits and hit ENTER
	ADD R7, R5, #-2			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT2_1D
	ADD R7, R5, #-3			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT2_2D
	LDI R7, svReg7_2		; Loads original place in program to return to
	LDI R1, svReg1_2		; Loads original value of R1
RET
	
EXIT2	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM2_V			; Store value of R7(100) into NUM1_V
	AND R7, R7, #0
	LD R7, NUM2_A			; R7 is number2array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number2 third digit as 0
	STR R0, R7, #1			; Store number2 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number2 first digit as 1
	LDI R7, svReg7_2		; Loads original place in program to return to
	LDI R1, svReg1_2		; Loads original value of R1
RET

ENT2_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM2_A
	LDR R0, R7, #0			; Store number2 first digit in R0
	STI R0, NUM2_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number2 first digit
	STR R0, R7, #1			; Clear number2 second digit
	LDI R7, svReg7_2		; Loads original place in program to return to
	LDI R1, svReg1_2		; Loads original value of R1
RET

ENT2_2D HALT

; Declare Variables
svReg1_2	.FILL	x3202
svReg7_2	.FILL	x3203
NUM2_A		.FILL	x3910
NUM2_V		.FILL	x3913
ARRAY2		.FILL	x5000

ENTER2		.FILL	#13
ASCII2		.FILL	#48

; Input Reading Function for Number 3
INPUT3
	STI R1, svReg1_3		; Saves R1
	STI R7, svReg7_3		; Saves place in program
	LD R1, NUM3_A			; Loads number1array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII3
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LD R3, ENTER3			; Loads the ASCII code for the ENTER key into R3
	NOT R3, R3			; Negates R3
	ADD R3, R3, #1			; 2's compliment of the ASCII ENTER key
	LOOP4 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores digits into num1 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number1array pointer
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRz EXIT3
	AND R2, R2, #0
	LD R2, ASCII3
	ADD R0, R0, R2
	ADD R4, R0, #0			; Puts input value into R4
	ADD R4, R4, R3			; Puts ASCII value of input into R4
	BRp	LOOP4			; If positive they hit ENTER and exits loop
	; handle if they only input 1 or 2
	; digits and hit ENTER
	ADD R7, R5, #-2			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT3_1D
	ADD R7, R5, #-3			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT3_2D
	LDI R7, svReg7_3		; Loads original place in program to return to
	LDI R1, svReg1_3		; Loads original value of R1
RET
	
EXIT3	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM3_V			; Store value of R7(100) into NUM3_V
	AND R7, R7, #0
	LD R7, NUM3_A			; R7 is number3array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number3 third digit as 0
	STR R0, R7, #1			; Store number3 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number3 first digit as 1
	LDI R7, svReg7_3		; Loads original place in program to return to
	LDI R1, svReg1_3		; Loads original value of R1
RET

ENT3_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM3_A
	LDR R0, R7, #0			; Store number3 first digit in R0
	STI R0, NUM3_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number3 first digit
	STR R0, R7, #1			; Clear number3 second digit
	LDI R7, svReg7_3		; Loads original place in program to return to
	LDI R1, svReg1_3		; Loads original value of R1
RET

ENT3_2D HALT

; Declare Variables
svReg1_3	.FILL	x3204
svReg7_3	.FILL	x3205
NUM3_A		.FILL	x3920
NUM3_V		.FILL	x3923
ARRAY3		.FILL	x5000

ENTER3		.FILL	#13
ASCII3		.FILL	#48

; ---- TESTING PLACEMENT ----

; Input Reading Function for Number 4
INPUT4
	STI R1, svReg1_4		; Saves R1
	STI R7, svReg7_4		; Saves place in program
	LD R1, NUM4_A			; Loads number4array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII4
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LD R3, ENTER4			; Loads the ASCII code for the ENTER key into R3
	NOT R3, R3			; Negates R3
	ADD R3, R3, #1			; 2's compliment of the ASCII ENTER key
	LOOP5 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores digits into num1 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number1array pointer
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRz EXIT4
	AND R2, R2, #0
	LD R2, ASCII4
	ADD R0, R0, R2
	ADD R4, R0, #0			; Puts input value into R4
	ADD R4, R4, R3			; Puts ASCII value of input into R4
	BRp	LOOP5			; If positive they hit ENTER and exits loop
	; handle if they only input 1 or 2
	; digits and hit ENTER
	ADD R7, R5, #-2			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT4_1D
	ADD R7, R5, #-3			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT4_2D
	LDI R7, svReg7_4		; Loads original place in program to return to
	LDI R1, svReg1_4		; Loads original value of R1
RET
	
EXIT4	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM4_V			; Store value of R7(100) into NUM3_V
	AND R7, R7, #0
	LD R7, NUM4_A			; R7 is number4array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number4 third digit as 0
	STR R0, R7, #1			; Store number4 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number4 first digit as 1
	LDI R7, svReg7_4		; Loads original place in program to return to
	LDI R1, svReg1_4		; Loads original value of R1
RET

ENT4_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM4_A
	LDR R0, R7, #0			; Store number4 first digit in R0
	STI R0, NUM4_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number4 first digit
	STR R0, R7, #1			; Clear number4 second digit
	LDI R7, svReg7_4		; Loads original place in program to return to
	LDI R1, svReg1_4		; Loads original value of R1
RET

ENT4_2D HALT

; Declare Variables
svReg1_4	.FILL	x3206
svReg7_4	.FILL	x3207
NUM4_A		.FILL	x3930
NUM4_V		.FILL	x3933
ARRAY4		.FILL	x5000

ENTER4		.FILL	#13
ASCII4		.FILL	#48

; --------- Unfinished Stuff ----------

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



; Prints Array
PRNTARR	STI R7, svReg7_X		; Saves place in program
	LD R2, SIZE
	ADD R1, R1, #-8			; Put array index back at 0
	LOOP 	LDR R0, R1, #0		; Puts array value at first array index into R0
		OUT			; Prints first value in array
		LD R0, NL		; Load new line ASCII value into R0 and print it
		OUT
		ADD R1, R1, #1		; Increment array index pointer
		ADD R2, R2, #-1		; Decrement loop counter
	BRp LOOP
	LDI R7, svReg7_X		; Loads original place in program to return to
RET

; Declare Variables
SIZE    .FILL 	#8
svReg7_X	.FILL	x3111

N5P	.STRINGZ	"Enter number 5: "
N6P	.STRINGZ	"Enter number 6: "
N7P	.STRINGZ	"Enter number 7: "
N8P	.STRINGZ	"Enter number 8: "

NL	.FILL		#10
ENTER	.FILL		#13
ASCII	.FILL		#48

; ---- PROBLEM THEORY
; Functions are trying to return to an address
; that cannot fit into the trap vector's allocated
; vector space, giving it an incorrect trap vector
; address and causing program to crash.
; 
; 

.END					