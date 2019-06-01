; CIS 11 Project 1
; Josh McIntyre, Juan Castellon
; 05/09/2019
; Option A: Bubble Sort


; ----------- MAIN PROGRAM -----------
; Program starts at x3000
.ORIG x3000
LD R1, ARR			; Loads starting index array pointer into R

; Prompt User for 1st Number
; and Store value in Array
LEA R0, N1P			; Prompts the user for 1st number
PUTS
JSR INPUT1			; Call Input1 function
LDI R0, NUM1_V1			; Load number1's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL1			; Prints newline feed for next input prompt
OUT

; Declare Prompt 1
NUM1_V1		.FILL	x3903
N1P		.STRINGZ	"Enter number 1: "
NL1		.FILL	#10
ARR		.FILL	x3999



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

; Prompt User for 5th Number
; and Store value in Array
LEA R0, N5P			; Prompts the user for 5th number
PUTS
JSR INPUT5			; Reads 3 char of user input then OUT displays it
LDI R0, NUM5_V1			; Load number5's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL5			; Prints newline feed for next input prompt
OUT

; Declare Prompt 5
NUM5_V1		.FILL	x3943
N5P		.STRINGZ	"Enter number 5: "
NL5		.FILL	#10

; Prompt User for 6th Number
; and Store value in Array
LEA R0, N6P			; Prompts the user for 6th number
PUTS
JSR INPUT6			; Reads 3 char of user input then OUT displays it
LDI R0, NUM6_V1			; Load number6's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL6			; Prints newline feed for next input prompt
OUT

; Declare Prompt 6
NUM6_V1		.FILL	x3953
N6P		.STRINGZ	"Enter number 6: "
NL6		.FILL	#10

; Prompt User for 7th Number
; and Store value in Array
LEA R0, N7P			; Prompts the user for 7th number
PUTS
JSR INPUT7			; Reads 3 char of user input then OUT displays it
LDI R0, NUM7_V1			; Load number7's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL7			; Prints newline feed for next input prompt
OUT

; Declare Prompt 7
NUM7_V1		.FILL	x3963
N7P		.STRINGZ	"Enter number 7: "
NL7		.FILL	#10

; Prompt User for 8th Number
; and Store value in Array
LEA R0, N8P			; Prompts the user for 8th number
PUTS
JSR INPUT8			; Reads 3 char of user input then OUT displays it
LDI R0, NUM8_V1			; Load number8's value into R0
STR R0, R1, #0			; Stores inputted character into array
ADD R1, R1, #1			; Increments array pointer
AND R0, R0, #0			; Clear R0
LD R0, NL8			; Prints newline feed for next input prompt
OUT

; Declare Prompt 8
NUM8_V1		.FILL	x3973
N8P		.STRINGZ	"Enter number 8: "
NL8		.FILL	#10


; ----------- DISPLAY UNSORTED ARRAY -----------
AND R0, R0, #0			; Clear R0
LEA R0, UNARR			; Load string
PUTS				; Display string

AND R1, R1, #0			; Clear R1
AND R0, R0, #0			; Clear R0
AND R2, R2, #0			; Clear R2
AND R3, R3, #0			; Clear R3
LD R3, ASCII0
LD R2, COUNT1
LD R1, DIGITS
REPEAT AND R0, R0, #0
LDR R0, R1, #0
ADD R0, R0, R3
OUT
ADD R1, R1, #1

AND R0, R0, #0
LDR R0, R1, #0
ADD R0, R0, R3
OUT
ADD R1, R1, #1

AND R0, R0, #0
LDR R0, R1, #0
ADD R0, R0, R3
OUT
ADD R1, R1, #1

AND R0, R0, #0
LD R0, NEWLINE
OUT

ADD R2, R2, #-1
BRp REPEAT

DIGITS	.FILL	x3980
ASCII0	.FILL	#48
COUNT1	.FILL	#8
NEWLINE	.FILL	#10
UNARR	.STRINGZ	"\nThe Unsorted Array\n"


HALT

; ----------- INPUT HANDLING -----------

; Number 1 Input Handling Function
INPUT1
	STI R1, svReg1			; Saves R1
	STI R7, svReg7			; Saves place in program
	LD R1, NUM1_A			; Loads number1array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII1
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP2 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num1 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number1array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII1			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP2

STOP	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT1_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT1_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT1_3D
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

ENT1_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM1_A
	LDR R0, R7, #0			; Store number1 first digit in R0
	LDR R1, R7, #1			; Store number1 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT1 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT1
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM1_V
	STR R1, R7, #2			; Store value of R3 in number1 second digit
	STR R0, R7, #1			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number1 first digit
	LDI R7, svReg7			; Loads original place in program to return to
	LDI R1, svReg1			; Loads original value of R1
RET

ENT1_3D	AND R7, R7, #0			; R7 = 0	
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

; Declare Variables
svReg1		.FILL	x3700
svReg7		.FILL	x3701
NUM1_A		.FILL	x3980
NUM1_V		.FILL	x3903
ARRAY1		.FILL	x3999
ASCII1		.FILL	#48

; Number 2 Input Handling Function
INPUT2
	STI R1, svReg1_2		; Saves R1
	STI R7, svReg7_2		; Saves place in program
	LD R1, NUM2_A			; Loads number2array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII2
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP3 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP2			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num2 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number2array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII2			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP3

STOP2	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT2_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT2_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT2_3D
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

ENT2_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM2_A
	LDR R0, R7, #0			; Store number2 first digit in R0
	LDR R1, R7, #1			; Store number2 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT2 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT2
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM2_V
	STR R1, R7, #2			; Store value of R3 in number2 second digit
	STR R0, R7, #1			; Store value of R0 in number2 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number2 first digit
	LDI R7, svReg7_2		; Loads original place in program to return to
	LDI R1, svReg1_2		; Loads original value of R1
RET

ENT2_3D	AND R7, R7, #0			; R7 = 0	
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

; Declare Variables
svReg1_2	.FILL	x3702
svReg7_2	.FILL	x3703
NUM2_A		.FILL	x3983
NUM2_V		.FILL	x3913
ARRAY2		.FILL	x3999

ENTER2		.FILL	#13
ASCII2		.FILL	#48

; Number 3 Input Handling Function
INPUT3
	STI R1, svReg1_3		; Saves R1
	STI R7, svReg7_3		; Saves place in program
	LD R1, NUM3_A			; Loads number3array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII3
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP4 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP3			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num3 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number3array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII3			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP4

STOP3	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT3_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT3_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT3_3D
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

ENT3_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM3_A
	LDR R0, R7, #0			; Store number3 first digit in R0
	LDR R1, R7, #1			; Store number3 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT3 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT3
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM3_V
	STR R1, R7, #2			; Store value of R3 in number3 second digit
	STR R0, R7, #1			; Store value of R0 in number3 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number3 first digit
	LDI R7, svReg7_3		; Loads original place in program to return to
	LDI R1, svReg1_3		; Loads original value of R1
RET

ENT3_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM3_V			; Store value of R7(100) into NUM1_V
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

; Declare Variables
svReg1_3	.FILL	x3704
svReg7_3	.FILL	x3705
NUM3_A		.FILL	x3986
NUM3_V		.FILL	x3923
ARRAY3		.FILL	x3999

ENTER3		.FILL	#13
ASCII3		.FILL	#48

; Number 4 Input Handling Function
INPUT4
	STI R1, svReg1_4		; Saves R1
	STI R7, svReg7_4		; Saves place in program
	LD R1, NUM4_A			; Loads number4array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII4
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP5 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP4			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num4 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number4array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII4			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP5

STOP4	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT4_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT4_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT4_3D
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

ENT4_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM4_A
	LDR R0, R7, #0			; Store number4 first digit in R0
	LDR R1, R7, #1			; Store number4 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT4 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT4
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM4_V
	STR R1, R7, #2			; Store value of R3 in number4 second digit
	STR R0, R7, #1			; Store value of R0 in number4 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number4 first digit
	LDI R7, svReg7_4		; Loads original place in program to return to
	LDI R1, svReg1_4		; Loads original value of R1
RET

ENT4_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM4_V			; Store value of R7(100) into NUM1_V
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

; Declare Variables
svReg1_4	.FILL	x3706
svReg7_4	.FILL	x3707
NUM4_A		.FILL	x3989
NUM4_V		.FILL	x3933
ARRAY4		.FILL	x3999

ENTER4		.FILL	#13
ASCII4		.FILL	#48

; Number 5 Input Handling Function
INPUT5
	STI R1, svReg1_5		; Saves R1
	STI R7, svReg7_5		; Saves place in program
	LD R1, NUM5_A			; Loads number5array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII5
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP6 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP5			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num5 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number5array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII5			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP6

STOP5	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT5_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT5_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT5_3D
	LDI R7, svReg7_5		; Loads original place in program to return to
	LDI R1, svReg1_5		; Loads original value of R1
RET

ENT5_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM5_A
	LDR R0, R7, #0			; Store number5 first digit in R0
	STI R0, NUM5_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number5 first digit
	STR R0, R7, #1			; Clear number5 second digit
	LDI R7, svReg7_5		; Loads original place in program to return to
	LDI R1, svReg1_5		; Loads original value of R1
RET

ENT5_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM5_A
	LDR R0, R7, #0			; Store number5 first digit in R0
	LDR R1, R7, #1			; Store number5 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT5 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT5
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM5_V
	STR R1, R7, #2			; Store value of R3 in number5 second digit
	STR R0, R7, #1			; Store value of R0 in number5 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number5 first digit
	LDI R7, svReg7_5		; Loads original place in program to return to
	LDI R1, svReg1_5		; Loads original value of R1
RET

ENT5_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM5_V			; Store value of R7(100) into NUM5_V
	AND R7, R7, #0
	LD R7, NUM5_A			; R7 is number5array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number5 third digit as 0
	STR R0, R7, #1			; Store number5 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number5 first digit as 1
	LDI R7, svReg7_5		; Loads original place in program to return to
	LDI R1, svReg1_5		; Loads original value of R1
RET

; Declare Variables
svReg1_5	.FILL	x3708
svReg7_5	.FILL	x3709
NUM5_A		.FILL	x398C
NUM5_V		.FILL	x3943
ARRAY5		.FILL	x3999

ENTER5		.FILL	#13
ASCII5		.FILL	#48

; Number 6 Input Handling Function
INPUT6
	STI R1, svReg1_6		; Saves R1
	STI R7, svReg7_6		; Saves place in program
	LD R1, NUM6_A			; Loads number6array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII6
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP7 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP6			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num6 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number6array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII6			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP7

STOP6	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT6_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT6_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT6_3D
	LDI R7, svReg7_6		; Loads original place in program to return to
	LDI R1, svReg1_6		; Loads original value of R1
RET

ENT6_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM6_A
	LDR R0, R7, #0			; Store number6 first digit in R0
	STI R0, NUM6_V
	STR R0, R7, #2			; Store value of R0 in number1 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number6 first digit
	STR R0, R7, #1			; Clear number6 second digit
	LDI R7, svReg7_6		; Loads original place in program to return to
	LDI R1, svReg1_6		; Loads original value of R1
RET

ENT6_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM6_A
	LDR R0, R7, #0			; Store number6 first digit in R0
	LDR R1, R7, #1			; Store number6 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT6 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT6
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM6_V
	STR R1, R7, #2			; Store value of R3 in number6 second digit
	STR R0, R7, #1			; Store value of R0 in number6 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number6 first digit
	LDI R7, svReg7_6		; Loads original place in program to return to
	LDI R1, svReg1_6		; Loads original value of R1
RET

ENT6_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM6_V			; Store value of R7(100) into NUM6_V
	AND R7, R7, #0
	LD R7, NUM6_A			; R7 is number6array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number6 third digit as 0
	STR R0, R7, #1			; Store number6 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number6 first digit as 1
	LDI R7, svReg7_6		; Loads original place in program to return to
	LDI R1, svReg1_6		; Loads original value of R1
RET

; Declare Variables
svReg1_6	.FILL	x370A
svReg7_6	.FILL	x370B
NUM6_A		.FILL	x398F
NUM6_V		.FILL	x3953
ARRAY6		.FILL	x3999

ENTER6		.FILL	#13
ASCII6		.FILL	#48

; Number 7 Input Handling Function
INPUT7
	STI R1, svReg1_7		; Saves R1
	STI R7, svReg7_7		; Saves place in program
	LD R1, NUM7_A			; Loads number7array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII7
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP8 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP7			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num7 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number7array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII7			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP8

STOP7	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT7_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT7_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT7_3D
	LDI R7, svReg7_7		; Loads original place in program to return to
	LDI R1, svReg1_7		; Loads original value of R1
RET

ENT7_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM7_A
	LDR R0, R7, #0			; Store number7 first digit in R0
	STI R0, NUM7_V
	STR R0, R7, #2			; Store value of R0 in number7 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number7 first digit
	STR R0, R7, #1			; Clear number7 second digit
	LDI R7, svReg7_7		; Loads original place in program to return to
	LDI R1, svReg1_7		; Loads original value of R1
RET

ENT7_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM7_A
	LDR R0, R7, #0			; Store number7 first digit in R0
	LDR R1, R7, #1			; Store number7 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT7 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT7
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM7_V
	STR R1, R7, #2			; Store value of R3 in number7 second digit
	STR R0, R7, #1			; Store value of R0 in number7 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number7 first digit
	LDI R7, svReg7_7		; Loads original place in program to return to
	LDI R1, svReg1_7		; Loads original value of R1
RET

ENT7_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM7_V			; Store value of R7(100) into NUM6_V
	AND R7, R7, #0
	LD R7, NUM7_A			; R7 is number7array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number7 third digit as 0
	STR R0, R7, #1			; Store number7 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number7 first digit as 1
	LDI R7, svReg7_7		; Loads original place in program to return to
	LDI R1, svReg1_7		; Loads original value of R1
RET

; Declare Variables
svReg1_7	.FILL	x370C
svReg7_7	.FILL	x370D
NUM7_A		.FILL	x3992
NUM7_V		.FILL	x3963
ARRAY7		.FILL	x3999

ENTER7		.FILL	#13
ASCII7		.FILL	#48

; Number 8 Input Handling Function
INPUT8
	STI R1, svReg1_8		; Saves R1
	STI R7, svReg7_8		; Saves place in program
	LD R1, NUM8_A			; Loads number8array pointer into R1
	AND R2, R2, #0			; Clears R2
	LD R2, ASCII8
	AND R4, R4, #0			; Clears R4
	AND R5, R5, #0			; Clears R5
	LOOP9 GETC			; Reads a char of input from user
	OUT				; Displays inputted char
	ADD R4, R0, #-10		; Copy input into R4
	BRz STOP8			; If 0 they hit enter and it exits loop
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2
	STR R0, R1, #0			; Stores decimal value digits into num8 array
	ADD R5, R5, #1			; Increment digit counter
	ADD R1, R1, #1			; Increment number8array pointer
	AND R2, R2, #0			; R2 = 0
	LD R2, ASCII8			; R2 = 48(ASCII)
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted
	BRn LOOP9

STOP8	ADD R7, R5, #-1			; Checks if 1 digit has been inputted	<-- account for ENTER
	BRz ENT8_1D
	ADD R7, R5, #-2			; Checks if 2 digits have been inputted	<-- account for ENTER
	BRz ENT8_2D
	ADD R7, R5, #-3			; Checks if 3 digits have been inputted	<-- account for ENTER
	BRz ENT8_3D
	LDI R7, svReg7_8		; Loads original place in program to return to
	LDI R1, svReg1_8		; Loads original value of R1
RET

ENT8_1D	AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	LD R7, NUM8_A
	LDR R0, R7, #0			; Store number8 first digit in R0
	STI R0, NUM8_V
	STR R0, R7, #2			; Store value of R0 in number8 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number8 first digit
	STR R0, R7, #1			; Clear number8 second digit
	LDI R7, svReg7_8		; Loads original place in program to return to
	LDI R1, svReg1_8		; Loads original value of R1
RET

ENT8_2D AND R7, R7, #0			; R7 = 0
	AND R0, R0, #0			; R0 = 0
	AND R1, R1, #0			; R1 = 0
	AND R2, R2, #0
	ADD R2, R2, #9			; R2 = 9
	LD R7, NUM8_A
	LDR R0, R7, #0			; Store number8 first digit in R0
	LDR R1, R7, #1			; Store number8 second digit in R1
	ADD R3, R0, #0			; Copy first digit into R3

	MULT8 ADD R3, R0, R3
	ADD R2, R2, #-1
	BRp MULT8
	ADD R3, R3, R1			; Add ones and tens place digits together

	STI R3, NUM8_V
	STR R1, R7, #2			; Store value of R3 in number8 second digit
	STR R0, R7, #1			; Store value of R0 in number8 third digit
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #0			; Clear number8 first digit
	LDI R7, svReg7_8		; Loads original place in program to return to
	LDI R1, svReg1_8		; Loads original value of R1
RET

ENT8_3D	AND R7, R7, #0			; R7 = 0	
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #15
	ADD R7, R7, #10			; R7 = 100
	STI R7, NUM8_V			; Store value of R7(100) into NUM8_V
	AND R7, R7, #0
	LD R7, NUM8_A			; R7 is number8array pointer
	AND R0, R0, #0			; R0 = 0
	STR R0, R7, #2			; Store number8 third digit as 0
	STR R0, R7, #1			; Store number8 second digit as 0
	ADD R0, R0, #1			; R0 = 1
	STR R0, R7, #0			; Store number8 first digit as 1
	LDI R7, svReg7_8		; Loads original place in program to return to
	LDI R1, svReg1_8		; Loads original value of R1
RET

; Declare Variables
svReg1_8	.FILL	x370E
svReg7_8	.FILL	x370F
NUM8_A		.FILL	x3995
NUM8_V		.FILL	x3973
ARRAY8		.FILL	x3999

ENTER8		.FILL	#13
ASCII8		.FILL	#48





; Print Array Function
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

NL	.FILL		#10
ENTER	.FILL		#13
ASCII	.FILL		#48






; Start of program
LD R1, ARR9               	; Loading the array into R1

; Putting values into the array for testing
AND R0, R0, #0
LD R0, N1
STR R0, R1, #0

AND R0, R0, #0
LD R0, N2
STR R0, R1, #1

AND R0, R0, #0
LD R0, N3
STR R0, R1, #2

AND R0, R0, #0
LD R0, N4
STR R0, R1, #3

AND R0, R0, #0
LD R0, N5
STR R0, R1, #4

AND R0, R0, #0
LD R0, N6
STR R0, R1, #5

AND R0, R0, #0
LD R0, N7
STR R0, R1, #6

AND R0, R0, #0
LD R0, N8
STR R0, R1, #7

AND R4, R4, #0			; Clear R4
ADD R4, R4, #1			; Outter loop counter

; Outter Loop
OLOOP AND R1, R1, #0
LD R1, ARR9
AND R7, R7, #0			; Clear R7
ADD R7, R7, #-8			; R7 = -8 for loop condition -> i=8
ADD R7, R4, R7
BRzp BREAK1			; If outter loop is done

ADD R4, R4, #1			; Increment outter loop counter
AND R6, R6, #0			; Clear R6
ADD R6, R6, #1			; R6 = 1

; Inner Loop
ILOOP AND R7, R7, #0		; Clear R7
ADD R7, R7, #-8			; R7 = -8
ADD R5, R6, R7			; NOTE -> results in a negative always unless done looping
BRzp OLOOP			; Go to outter loop once inner loop is done
NOT R5, R5
ADD R5, R5, #1			; Negate R5 to make it positive -> j = n-i where n=8
LDR R2, R1, #0			; First value
LDR R3, R1, #1			; Second value
NOT R0, R3
ADD R0, R0, #1			; R0 = -R3
ADD R0, R0, R2
BRn SWAP			; Compare the values to possibly swap
ADD R1, R1, #1
ADD R6, R6, #1			; Increment inner loop counter
BR ILOOP

SWAP ADD R0, R3, #0		; Copy second value into R3
STR R2, R1, #1			; Store first value in second value place
STR R0, R1, #0			; Store copy of second value into place of first value
ADD R1, R1, #1			; Increment array pointer
ADD R6, R6, #1			; Increment inner loop counter
BR ILOOP

BREAK1 HALT

; Declare variables
ARR9 .FILL x3999
N1 .FILL #4
N2 .FILL #9
N3 .FILL #2
N4 .FILL #80
N5 .FILL #11
N6 .FILL #7
N7 .FILL #12
N8 .FILL #15

.END					