org 0000h
mov dptr, #200h;
mov a, #03h;
mov r1, a;
mov r0,a;
addc a,r1;
mov r1,a;
mov a,r0;
movc a, @a+dptr;
addc a,#09h
addc a,r1
mov r2,a;
here: sjmp here
org 200h
db 00h,01h,  04h, 09h, 10h, 19h, 24h, 31h, 40h, 51h;
end