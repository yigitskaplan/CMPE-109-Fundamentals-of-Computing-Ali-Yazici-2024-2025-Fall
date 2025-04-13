; D = A + B + 2C
	LOAD R0, [D]
	LOAD R1, [A]
	LOAD R2, [B]
	LOAD R3, [C]
	ADDI R0, R0, R1
	ADDI R0, R0, R2
	ADDI R0, R0, R3
	ADDI R0, R0, R3
	STORE R0, [$FF]
	HALT
A:	DB -10
B:	DB 46
C:	DB 40
D:	DB 0