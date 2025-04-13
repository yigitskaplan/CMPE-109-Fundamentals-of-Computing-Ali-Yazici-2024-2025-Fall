	LOAD R1, 0 			; R1 count
	LOAD R2, 1 			; R2 address and count increment
	LOAD R3, LIST		; R3 list address
	LOAD R4, 8			; R4 value to search for
	LOAD R5, -1			; R5 end indicator

BACK:	LOAD R6, [R3]		; R6 list values

	MOVE R0, R5			; making R0 the end indicator
	JMPEQ R6=R0, END		; end of the list check

	MOVE R0, R4			; making R0 the searched value
	JMPEQ R6=R0, INC		; if value is searched value, increase count

	ADDI R3, R3, R2		; update list address
	JMP BACK			; loop back

INC:	ADDI R1, R1, R2		; increasing count
	ADDI R3, R3, R2		; update list address
	JMP BACK			; loop back

END:	STORE R1, [$FF]		; store the count to FF
	HALT				; ending program

LIST:	DB 8,7,8,8,6,6,7,8,6,6,8,7,-1

; there are 4 amount of "6"
; there are 3 amount of "7"
; there are 5 amount of "8"
