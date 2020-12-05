org 0000h
	mov a, #00h;
	mov dptr, #200h;
	mov r1, #0eh;
	mov r0, #40h;
loop: clr a
	movc a,@a+dptr;
	mov @r0, a;
	inc dptr;
	inc r0;
	djnz r1, loop;
	 here:sjmp here

	org 0200h	
	db"VIT UNIVERSITY"
	end