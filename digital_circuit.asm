Org 0000h
SETB P1.0
SETB P1.1
SETB P1.2
MOV C, P1.0
ANL  C,P2.1
MOV ACC.7,C
MOV C,P1.1
ORL C,P1.2
MOV ACC.6, C
MOV C,P1.1
ANL C, P1.2
ANL C, ACC.6
ORL C, ACC.7
MOV P2.0, C
END

