org 0000h
ljmp main
org 0023h
ljmp serial
org 0030h
main: setb p1.2
mov tmod, #20h
mov th1, #-3
mov scon, #50h
mov ie, #10010000b
setb tr1
back: mov c, p1.2
mov p1.7, c
sjmp back
serial: jb t1, trans
mov a, sbuf
mov p2,a
clr ri
reti
trans: clr t1
reti
end