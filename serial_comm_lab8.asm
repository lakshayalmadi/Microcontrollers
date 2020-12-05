org 0000h
xx: mov dptr, #mydata
mov tmod, #20h
mov th1, #-3
mov scon, #50h
setb tr1
mov r1,#0ah
again: clr  a
movc a, @a+dptr
mov sbuf, a
here: jnb ti, here
clr ti
inc dptr
djnz r1, again
sjmp xx
mydata: db'18BEC0391'
end