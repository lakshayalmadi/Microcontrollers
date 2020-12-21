ORG 0000H // Lakshay Almadi 18BEC0391
MOV TMOD,#01100001B // timer 0 mode1, counter 1 mode
MOV TH1,#0 // TH1=0 the high byte
SETB P3.5 // seting hing port P3.5
AGAIN:
SETB TR1 // start timer1
BACK: MOV A,TL1 //copying lower byte data to accumulator
MOV P2,A //copying value of A to Port 2
CJNE A,#0AH,BACK // conditional jump till A=0H
CLR TR1 //initialising timer 1
HERE:
MOV TL0,#33H // TLO=33H low byte
MOV TH0,#0FEH // TLO=FEH low byte
CPL P1.2 // toggle p1.2
ACALL DELAY //calling delay function
SJMP HERE //short jump to here
DELAY: SETB TR0 //start the timer
GAIN: JNB TF0,GAIN
CLR TR0 //stop timer0
CLR TF0 //stop flag0
CLR TR1 //stop timer1
CLR TF1 //stop flag1
SJMP AGAIN //short jump to again loop
RET //controls return address located in the stack of the function
END // Lakshay Almadi 18BEC0391
