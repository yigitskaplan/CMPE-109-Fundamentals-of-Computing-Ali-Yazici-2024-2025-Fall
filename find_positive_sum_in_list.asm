		OAD R0, 0 				; R0 end indicator
		LOAD R1, 0 				; R1 sum
		LOAD R2, 1 				; R2 address increment
		LOAD R3, LIST			; R3 list address

BACK:	LOAD R4, [R3]			; R4 list values
		JMPEQ R4=R0, END		; end of the list check
		JMPLE R4<=R0, INC		; if value is less than 0, skip value

		ADDI R1, R1, R4			; add positive value to sum
INC:	ADDI R3, R3, R2			; update list address
		JMP BACK				; loop back

END:	STORE R1, [$FF]			; store the sum to FF
		HALT					; ending program

LIST:	DB 10,8,9,-3,5,-4,-1,-2,7,6,0

; sum is 2D for positive values
; sum is F6 for negative values
