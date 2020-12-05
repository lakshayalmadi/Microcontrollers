org 0000h
mov tmod, #20h
mov  th1, #-6
mov scon, #50h
setb tr1
here: jnb ri, here
mov a, sbuf
mov p1, a
clr ri
sjmp here
end