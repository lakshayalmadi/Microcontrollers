ORG 0000H
SETB P0.0 //A
SETB P0.1 //B
SETB P0.2 //C
MOV C,P0.0 // Carry=A
ANL C,P0.1 //AB
MOV P1.1,C // TEMP P1.1=AB
MOV C,P0.2 //CARRY=C
ANL C,P1.1 //ABC
MOV P1.2,C //TEMP P1.2=ABC
MOV C,P0.0 //CARRY = A
CPL C//A'
ANL C,P0.1//A'B
MOV P1.3,C//TEMP P1.3=A'B
MOV C,P0.2//C
CPL C//C'
ANL C,P1.3//A'BC'
MOV P1.4,C//TEMP P1.4=A'BC'
MOV C,P0.1//CARRY =B
CPL C//B'
ANL C,P0.0//AB'
MOV P1.5,C//TEMP P1.5=AB'
MOV C,P0.2//C
CPL C
ANL C,P1.5//AB'C'
MOV P1.6,C//TEMP P1.6=AB'C'
MOV C,P0.0//CARRY =A
CPL C//A'
ANL C,P0.2//A'C
MOV P1.7,C//TEMP P1.7=A'C
MOV C,P0.1//B
CPL C//B'
ANL C,P1.7//A'CB'
MOV P2.1,C//TEMP P2.1=A'B'C
MOV C,P1.2//CARRY =ABC
ORL C,P1.4//ABC+A'BC'
MOV P2.2,C//TEMP P2.2=ABC+A'BC'
MOV C,P1.6//CARRY=AB'C'
ORL C,P2.2//AB'C'+ABC+A'BC'
MOV P2.3,C//TEMP P2.3=AB'C'+ABC+A'BC'
MOV C,P2.1//CARRY=A'B'C
ORL C,P2.3//A'B'C+AB'C'+ABC+A'BC'
MOV P3.0,C// RESULT STORING IN P3.0 PORT
MOV C,P0.1//B
ANL C,P0.2//BC
MOV P2.7,C//TEMP P2.7=BC
MOV C,P1.1//CARRY =AB
ORL C,P2.7//AB+BC
MOV P2.6,C//TEMP..P2.6=AB+BC
MOV C,P0.0//A
ANL C,P0.2//AC
ORL C,P2.6//AC+AB+BC - CARRY FOR FULL ADDER CIRCUIT
MOV P3.1,C// RESULT STORING IN P3.1 PORT
HERE: SJMP HERE //
END