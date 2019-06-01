.ORIG x3000

; Start of program
LD R1, ARR               	; Loading the array into R1

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
LD R1, ARR
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
ARR .FILL x5000
N1 .FILL #4
N2 .FILL #9
N3 .FILL #2
N4 .FILL #80
N5 .FILL #11
N6 .FILL #7
N7 .FILL #12
N8 .FILL #15

.END