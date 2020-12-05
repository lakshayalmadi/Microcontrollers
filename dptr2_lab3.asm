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
	mov r0, #40h;
	mov r1, #60h;
	mov r3, #0eh;
	loop2: clr a
	mov a, @r0;
	mov @r1, a;
	inc r0;
	inc r1;
	djnz r3,  loop2;
	here: sjmp here
	
	org 0200h	
	db"VIT UNIVERSITY"
	end