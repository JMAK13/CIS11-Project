; CIS 11 Project 1
; Josh McIntyre, Juan Castellon
; 05/09/2019
; Option A: Bubble Sort

; Program starts at x3000
.ORIG x3000
LEA R0, N1P			; Prompts the user for 1st number
PUTS
LEA R0, N2P			; Prompts the user for 2nd number
PUTS
LEA R0, N3P			; Prompts the user for 3rd number
PUTS
LEA R0, N4P			; Prompts the user for 4th number
PUTS
LEA R1, N5P			; Prompts the user for 5th number
PUTS
LEA R1, N6P			; Prompts the user for 6th number
PUTS
LEA R0, N7P			; Prompts the user for 7th number
PUTS
LEA R0, N8P			; Prompts the user for 8th number
PUTS

HALT

N1P	.STRINGZ	"Enter number 1: \n"
N2P	.STRINGZ	"Enter number 2: \n"
N3P	.STRINGZ	"Enter number 3: \n"
N4P	.STRINGZ	"Enter number 4: \n"
N5P	.STRINGZ	"Enter number 5: \n"
N6P	.STRINGZ	"Enter number 6: \n"
N7P	.STRINGZ	"Enter number 7: \n"
N8P	.STRINGZ	"Enter number 8: \n"

ARRAY	.FILL		x4000
SIZE	.FILL		#8

.END

; TODO List
; Declare & Intialize Array to store input values
; Create functions for reading in 3 digits max decimal values
; Push value functions to array
; Sort array
; Output and pop array values