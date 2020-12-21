ORG 0000H
MOV TMOD,#00000001B ;timer 0 mode 1
MOV A,#00H
MOV R1,#00000110B ;1 in  7 segment
MOV R2,#01011011B ;2 in 7 segment
MOV R3,#01111111B  ;8 in 7 segment
REPEAT: MOV A,R1
MOV P2,A
ACALL DELAY ;1 sec delay
MOV A,R2
MOV P2,A
ACALL DELAY ;2 sec delay
ACALL DELAY
MOV A,R3
MOV P2,A
ACALL DELAY ; 3 sec delay
ACALL DELAY
ACALL DELAY
SJMP REPEAT
DELAY: MOV R0,#14D
GO: MOV TH0, #00H
MOV TL0, #00H
HERE: SETB TR0
STAY: JNB TF0, STAY
CLR TR0
CLR TF0
DJNZ R0,Go
RET
END
