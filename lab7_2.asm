org 0000h
mov tmod,#10h;
here: mov tl1, #33h;
mov th1, #0feh;
cpl p1.0;
acall delay;
sjmp here

delay: setb tr1;
again: jnb tf1, again;
clr tr1;
clr tf1;
ret;
end